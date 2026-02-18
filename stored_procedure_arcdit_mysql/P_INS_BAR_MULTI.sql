CREATE PROCEDURE P_INS_BAR_MULTI
(
IN art_codice VARCHAR(50),
IN codice_barre VARCHAR(30)
)
    MODIFIES SQL DATA
    COMMENT 'inserimento / modifica codice barre'
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
	SET continua = FALSE;

	ciclo_inserimento: LOOP
		FETCH cursore INTO nome_db;
		IF continua THEN
     		LEAVE ciclo_inserimento;
		END IF;

		set @query_inserimento = CONCAT("replace into " , nome_db, ".bar (select * from " , schema(),
			".bar where art_codice = '", art_codice ,"' and codice_barre = '", codice_barre ,"') ;");

		PREPARE c from @query_inserimento;
		EXECUTE c;
		DEALLOCATE PREPARE c;
	END LOOP;

	close cursore;

END