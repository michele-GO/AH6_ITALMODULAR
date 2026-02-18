CREATE PROCEDURE P_INS_ART_MULTI(IN p_codice varchar(50))
    MODIFIES SQL DATA
    COMMENT 'inserimento / modifica multiplo articoli'
BEGIN
	DECLARE continua INT DEFAULT FALSE;
	DECLARE nome_db CHAR(64);
	DECLARE cursore CURSOR FOR 
		select concat('arc_', lower(arc.prd.dit_codice)) as db_multiaziendali
		from arc.prd join information_schema.SCHEMATA on concat('arc_', lower(arc.prd.dit_codice)) = information_schema.SCHEMATA.SCHEMA_NAME
			join arc.dit on arc.prd.dit_codice = arc.dit.codice
		where arc.prd.prg_codice = 'GESART'
		and arc.dit.ignora_tabelle_multiaziendali = 'no'
		and information_schema.SCHEMATA.SCHEMA_NAME not like '%_storico'
		and information_schema.SCHEMATA.SCHEMA_NAME <> schema()
		and arc.prd.attivo = 'si'
		and (select arc.prd.attivo 
			from arc.prd 
			join information_schema.SCHEMATA on concat('arc_', lower(arc.prd.dit_codice)) = information_schema.SCHEMATA.SCHEMA_NAME
			where arc.prd.prg_codice = 'GESART'
			and information_schema.SCHEMATA.SCHEMA_NAME = schema()) = 'si';
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET continua = TRUE;

	open cursore;
	SET continua = FALSE;

	ciclo_inserimento: LOOP
		FETCH cursore INTO nome_db;
		IF continua THEN
     		LEAVE ciclo_inserimento;
   	END IF;
    		
   	set @query_controllo = CONCAT("select exists (select * from " , nome_db, ".art where codice = '", p_codice ,"') INTO @esiste;");
		PREPARE c from @query_controllo;
		EXECUTE c;
    		
    	IF @esiste <> 1 THEN
    		# se non esiste l'articolo viene creato
			set @query_inserimento = CONCAT("insert into " , nome_db, ".art (select * from " , schema(), ".art where codice = '", p_codice ,"');");
		ELSE
			# se esiste già da altre parti viene aggiornato
			set @query_inserimento = CONCAT("replace into " , nome_db, ".art (select * from " , schema(), ".art where codice = '", p_codice ,"');");						
		END IF;	
		
		PREPARE ins from @query_inserimento;
		EXECUTE ins;
		
		DEALLOCATE PREPARE c;
		DEALLOCATE PREPARE ins;
	END LOOP;
	
	close cursore;	
END
