CREATE PROCEDURE P_CANC_BAR_MULTI(IN art_codice varchar(50), codice_barre varchar(30))
    MODIFIES SQL DATA
    COMMENT 'chiama la function di controllo dei nominativi delle altre ditte ed eventualmente cancella il nominativo'
BEGIN
	DECLARE continua INT DEFAULT FALSE;
	DECLARE nome_db CHAR(64);
	DECLARE cursore CURSOR FOR 
		select concat('arc_', lower(arc.prd.dit_codice)) as db_multiaziendali
		from arc.prd join information_schema.SCHEMATA on concat('arc_', lower(arc.prd.dit_codice)) = information_schema.SCHEMATA.SCHEMA_NAME
			join arc.dit on arc.prd.dit_codice = arc.dit.codice
		where arc.prd.prg_codice = 'GESBAR'
		and arc.dit.ignora_tabelle_multiaziendali = 'no'
		and information_schema.SCHEMATA.SCHEMA_NAME not like '%_storico'
		and information_schema.SCHEMATA.SCHEMA_NAME <> schema()
		and arc.prd.attivo = 'si'
		and (select arc.prd.attivo 
			from arc.prd 
			join information_schema.SCHEMATA on concat('arc_', lower(arc.prd.dit_codice)) = information_schema.SCHEMATA.SCHEMA_NAME
			where arc.prd.prg_codice = 'GESBAR'
			and information_schema.SCHEMATA.SCHEMA_NAME = schema()) = 'si';	
		
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET continua = TRUE;

	open cursore;
	
	set @cancella = 'si';

	
/*
	ciclo_controllo: LOOP
		FETCH cursore INTO nome_db;		
		IF continua THEN
      	LEAVE ciclo_controllo;
    	END IF;		
		SET @query = CONCAT("SET @cancella = " , nome_db, ".F_TEST_CANC_NOM_MULTI('", cod_nominativo ,"')");
		PREPARE s from @query;
		EXECUTE s;			
		IF @cancella <> 'si' THEN
			LEAVE ciclo_controllo;
		END IF;				
	END LOOP;		
	
	close cursore;
	open cursore;
	SET continua = FALSE;
		
	IF @cancella = 'si' THEN
*/
	
	ciclo_cancellazione: LOOP
		FETCH cursore INTO nome_db;
		IF continua THEN
			LEAVE ciclo_cancellazione;
		END IF;
	
		set @query = CONCAT("delete from " , nome_db, ".bar where art_codice = '", art_codice ,"' and codice_barre = '", codice_barre ,"';");
		PREPARE s from @query;
		EXECUTE s;
		DEALLOCATE PREPARE s;
	END LOOP;

/*
		END IF;		
*/

	close cursore;						
END
