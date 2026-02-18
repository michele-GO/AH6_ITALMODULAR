CREATE PROCEDURE P_CANC_TVF_MULTI
(
IN cod_valuta VARCHAR(8),
IN data_validita DATE
)
    MODIFIES SQL DATA
    COMMENT 'cancella lo storico nominativo DAGLI ARCHIVI MULTIAZIENDALI'
BEGIN
	DECLARE continua INT DEFAULT FALSE;
	DECLARE nome_db CHAR(64);
	DECLARE cursore CURSOR FOR 
		select concat('arc_', lower(arc.prd.dit_codice)) as db_multiaziendali
		from arc.prd join information_schema.SCHEMATA on concat('arc_', lower(arc.prd.dit_codice)) = information_schema.SCHEMATA.SCHEMA_NAME
			join arc.dit on arc.prd.dit_codice = arc.dit.codice
		where arc.prd.prg_codice = 'GESTVF'
		and arc.dit.ignora_tabelle_multiaziendali = 'no'
		and information_schema.SCHEMATA.SCHEMA_NAME not like '%_storico'
		and information_schema.SCHEMATA.SCHEMA_NAME <> schema()
		and arc.prd.attivo = 'si'
		and (select arc.prd.attivo 
			from arc.prd 
			join information_schema.SCHEMATA on concat('arc_', lower(arc.prd.dit_codice)) = information_schema.SCHEMATA.SCHEMA_NAME
			where arc.prd.prg_codice = 'GESTVF'
			and information_schema.SCHEMATA.SCHEMA_NAME = schema()) = 'si';	
		
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET continua = TRUE;

	open cursore;
	
	SET @cancella = 'si';
	SET continua = FALSE;
		
   	ciclo_cancellazione: LOOP
			FETCH cursore INTO nome_db;
			IF continua THEN
      		LEAVE ciclo_cancellazione;
    		END IF;
			set @query = CONCAT("delete from " , nome_db, ".tvf where tva_codice = '", cod_valuta ,"' and data = '", data_validita,"'");
			PREPARE s from @query;
			EXECUTE s;
			DEALLOCATE PREPARE s;
		END LOOP;
	
	close cursore;						
END
