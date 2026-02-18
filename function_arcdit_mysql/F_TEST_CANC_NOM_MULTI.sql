CREATE FUNCTION F_TEST_CANC_NOM_MULTI(cod_nominativo VARCHAR(8)) RETURNS varchar(60)
    DETERMINISTIC
    COMMENT 'controlla se è possibile cancellara il nominativo passato o se è presente in altre tabelle'
BEGIN
DECLARE test_bcf INT DEFAULT 0;
DECLARE test_cli INT DEFAULT 0;
DECLARE test_frn INT DEFAULT 0;
DECLARE test_gng INT DEFAULT 0;
DECLARE test_naa INT DEFAULT 0;
DECLARE test_ncp INT DEFAULT 0;
DECLARE test_nmd INT DEFAULT 0;
DECLARE test_nml INT DEFAULT 0;
DECLARE continua INT DEFAULT 0;
DECLARE elenco_tabelle VARCHAR(50) DEFAULT '';

# controllo banche extra cli - for
select exists 
(select nom_codice from BCF
where nom_codice = cod_nominativo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'bcf';
END IF;

# controllo clienti
IF continua = 0 THEN
select exists 
(select codice from CLI
where codice = cod_nominativo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'cli';
END IF;
END IF;

# controllo fornitori
IF continua = 0 THEN
select exists 
(select codice from FRN
where codice = cod_nominativo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'frn';
END IF;
END IF;

# controllo gruppi nominativi google
IF continua = 0 THEN
select exists 
(select nom_codice from GNG
where nom_codice = cod_nominativo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'gng';
END IF;
END IF;

# controllo assistenza per nominativi
IF continua = 0 THEN
select exists 
(select nom_codice from NAA
where nom_codice = cod_nominativo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'naa';
END IF;
END IF;

# controllo comuni per nominativi
IF continua = 0 THEN
select exists 
(select nom_codice from NCP
where nom_codice = cod_nominativo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'ncp';
END IF;
END IF;

# controllo storico nominativi
IF continua = 0 THEN
select exists 
(select nom_codice from NMD
where nom_codice = cod_nominativo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'nmd';
END IF;
END IF;

# controllo indirizzi email aggiuntivi
IF continua = 0 THEN
select exists 
(select nom_codice from NML
where nom_codice = cod_nominativo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'nml';
END IF;
END IF;

IF continua = 0 THEN
	RETURN 'si';
ELSE
	RETURN concat (schema(), ' - ', elenco_tabelle);
END IF;

END
