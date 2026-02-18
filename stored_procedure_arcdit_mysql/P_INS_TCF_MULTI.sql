CREATE PROCEDURE P_INS_TCF_MULTI(IN p_codice varchar(10))
    MODIFIES SQL DATA
    COMMENT 'inserimento / modifica multiplo categorie fornitori'
BEGIN
	DECLARE continua INT DEFAULT FALSE;
	DECLARE nome_db CHAR(64);
	DECLARE cursore CURSOR FOR 
		select concat('arc_', lower(arc.prd.dit_codice)) as db_multiaziendali
		from arc.prd join information_schema.SCHEMATA on concat('arc_', lower(arc.prd.dit_codice)) = information_schema.SCHEMATA.SCHEMA_NAME
			join arc.dit on arc.prd.dit_codice = arc.dit.codice
		where arc.prd.prg_codice = 'GESTCF'
		and arc.dit.ignora_tabelle_multiaziendali = 'no'
		and information_schema.SCHEMATA.SCHEMA_NAME not like '%_storico'
		and information_schema.SCHEMATA.SCHEMA_NAME <> schema()
		and arc.prd.attivo = 'si'
		and (select arc.prd.attivo 
			from arc.prd 
			join information_schema.SCHEMATA on concat('arc_', lower(arc.prd.dit_codice)) = information_schema.SCHEMATA.SCHEMA_NAME
			where arc.prd.prg_codice = 'GESTCF'
			and information_schema.SCHEMATA.SCHEMA_NAME = schema()) = 'si';
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET continua = TRUE;

	open cursore;
	SET continua = FALSE;

	ciclo_inserimento: LOOP
		FETCH cursore INTO nome_db;
		IF continua THEN
     		LEAVE ciclo_inserimento;
   	END IF;
    		
   	set @query_controllo = CONCAT("select exists (select * from " , nome_db, ".tcf where codice = '", p_codice ,"') INTO @esiste;");
		PREPARE c from @query_controllo;
		EXECUTE c;
    		
    	IF @esiste <> 1 THEN
    		# se non esiste il codice viene creato
			set @query_inserimento = CONCAT("insert into " , nome_db, ".tcf (select * from " , schema(), ".tcf where codice = '", p_codice ,"');");
		ELSE
			# se esiste già viene aggiornato
			set @query_inserimento = CONCAT("replace into " , nome_db, ".tcf (select * from " , schema(), ".tcf where codice = '", p_codice ,"');");
		END IF;	
		
		PREPARE ins from @query_inserimento;
		EXECUTE ins;
	END LOOP;
	
	close cursore;
	DEALLOCATE PREPARE c;
	DEALLOCATE PREPARE ins;	
END
