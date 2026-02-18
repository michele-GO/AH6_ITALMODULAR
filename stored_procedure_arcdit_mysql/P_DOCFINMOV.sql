CREATE DEFINER=`root`@`%` PROCEDURE `P_DOCFINMOV`(
	IN `i_operazione` CHAR(1),
	IN `i_progressivo` INT,
	IN `i_riga` INT,
	IN `i_cfg_codice` VARCHAR(8),
	IN `i_importo` DECIMAL(18,6)
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT 'REGISTRAZIONE MOVIMENTI DA PASSARE A DOCFINANCE'
BEGIN
DECLARE d_utn_codice varchar(8);     
DECLARE d_ese_codice varchar(4);
DECLARE d_dit_codice varchar(4);           
DECLARE d_data_registrazione date;
DECLARE d_tco_codice varchar(4);
DECLARE d_descrizione varchar(200);
DECLARE d_cau_codice_attiva varchar(2);
DECLARE d_gen_codice_attiva varchar(2);


SET d_utn_codice =LEFT(USER(),LOCATE('@',USER())-1);

SELECT  UTN.DIT_CODICE 
FROM ARC.UTN
WHERE UTN.CODICE=D_UTN_CODICE
INTO D_DIT_CODICE; 
		
IF i_progressivo > 0 then
	SELECT ESE_CODICE,DATA_REGISTRAZIONE,TCO_CODICE,SUBSTR(DESCRIZIONE,1,200)
   FROM pnt 
	WHERE pnt.progressivo = i_progressivo
   into d_ese_codice,d_data_registrazione,d_tco_codice,d_descrizione;
        
	SELECT ATTIVO
   FROM docfincau
	WHERE 
	dit_codice=d_dit_codice and 
	tco_codice = d_tco_codice
   into d_cau_codice_attiva;
        
   SELECT ALTRI_MOVIMENTI_DOCFINANCE
   FROM gen
	WHERE 
	codice=i_cfg_codice
   into d_gen_codice_attiva;

   IF (d_cau_codice_attiva = 'si') and
      (d_gen_codice_attiva = 'si') then
      if i_operazione = 'I' then
			INSERT INTO docfinmov 
         		(     ese_codice,
                     progressivo,
                     riga,
                     tco_codice,
                     data_registrazione,
                     cfg_codice,
                     tva_codice,
                     importo_euro,
                     importo,
                     contabilizzato
                    )
                     VALUES 
                    (
                    d_ese_codice,
                    i_progressivo,
                    i_riga,
                    d_tco_codice,
                    d_data_registrazione,
                    i_cfg_codice,
                    'EURO',
                    i_importo,
                    i_importo,
                    'no'
              );
         END IF;
            
      	IF i_operazione = 'U' then
         	UPDATE docfinmov
            SET 	tco_codice = d_tco_codice,
            		data_registrazione = d_data_registrazione ,
               	cfg_codice = i_cfg_codice,
               	tva_codice = 'EURO',
               	importo_euro = i_importo,
               	importo = i_importo,
               	contabilizzato = 'no'
            WHERE progressivo = i_progressivo
            AND riga = i_riga ;
         END IF;
            
         if i_operazione = 'D' then
				UPDATE docfinmov
					SET 	importo_euro = 0,
                  	importo = 0,
                     contabilizzato = 'no'
               where progressivo = i_progressivo
               and riga = i_riga ;
         END IF;
	END IF;
       
END IF;

END