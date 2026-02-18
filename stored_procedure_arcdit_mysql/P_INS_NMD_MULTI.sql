CREATE PROCEDURE P_INS_NMD_MULTI
(
IN cod_nominativo VARCHAR(8),
IN fine_validita DATE
)
    MODIFIES SQL DATA
    COMMENT 'inserimento / modifica dello storico nominativi su archivi multiaziendali'
BEGIN
	DECLARE continua INT DEFAULT FALSE;
	DECLARE nome_db CHAR(64);
	DECLARE cursore CURSOR FOR 
		select concat('arc_', lower(arc.prd.dit_codice)) as db_multiaziendali
		from arc.prd join information_schema.SCHEMATA on concat('arc_', lower(arc.prd.dit_codice)) = information_schema.SCHEMATA.SCHEMA_NAME
			join arc.dit on arc.prd.dit_codice = arc.dit.codice
		where arc.prd.prg_codice = 'GESNMD'
		and arc.dit.ignora_tabelle_multiaziendali = 'no'
		and information_schema.SCHEMATA.SCHEMA_NAME not like '%_storico'
		and information_schema.SCHEMATA.SCHEMA_NAME <> schema()
		and arc.prd.attivo = 'si'
		and (select arc.prd.attivo 
			from arc.prd 
			join information_schema.SCHEMATA on concat('arc_', lower(arc.prd.dit_codice)) = information_schema.SCHEMATA.SCHEMA_NAME
			where arc.prd.prg_codice = 'GESNMD'
			and information_schema.SCHEMATA.SCHEMA_NAME = schema()) = 'si';
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET continua = TRUE;

	open cursore;
	SET continua = FALSE;

	ciclo_inserimento: LOOP
		FETCH cursore INTO nome_db;
		IF continua THEN
     		LEAVE ciclo_inserimento;
   	END IF;
    		
   	set @query_controllo = CONCAT("select exists (select * from " , nome_db,
			".nmd where nom_codice = '", cod_nominativo ,"' and data_fine = '", fine_validita,"') INTO @esiste;");
		PREPARE c from @query_controllo;
		EXECUTE c;
		DEALLOCATE PREPARE c;
    		
    	IF @esiste <> 1 THEN
    		# se non esiste viene creato
			set @query_inserimento = CONCAT("insert into " , nome_db, ".nmd (select * from " , schema(), 
			".nmd where nom_codice = '", cod_nominativo ,"' and data_fine = '", fine_validita,"');");
		ELSE
			# se esiste gia'  da altre parti viene aggiornato
			set @query_inserimento = CONCAT("replace into " , nome_db, ".nmd (select * from " , schema(), 
			".nmd where nom_codice = '", cod_nominativo ,"' and data_fine = '", fine_validita,"');");						
		END IF;	
		
		PREPARE ins from @query_inserimento;
		EXECUTE ins;
		DEALLOCATE PREPARE ins;	
	END LOOP;
	
	close cursore;
	
END