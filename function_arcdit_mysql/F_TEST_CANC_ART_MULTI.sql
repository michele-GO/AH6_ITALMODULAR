CREATE FUNCTION F_TEST_CANC_ART_MULTI(cod_articolo VARCHAR(50)) RETURNS varchar(60)
    DETERMINISTIC
    COMMENT 'cancella articolo passato se non presente negli archivi principali'
BEGIN

DECLARE test_lsv INT DEFAULT 0;
DECLARE test_bar INT DEFAULT 0;
DECLARE test_mag INT DEFAULT 0;
DECLARE test_lsa INT DEFAULT 0;
DECLARE test_rar INT DEFAULT 0;
DECLARE test_pvr INT DEFAULT 0;
DECLARE test_rda INT DEFAULT 0;
DECLARE test_arcl INT DEFAULT 0;
DECLARE test_arf INT DEFAULT 0;
DECLARE test_cls INT DEFAULT 0;
DECLARE test_fls INT DEFAULT 0;
DECLARE test_dsb INT DEFAULT 0;
DECLARE elenco_tabelle VARCHAR(50) DEFAULT '';

# controllo listini d'acquisto
select exists 
(select art_codice from LSV
where art_codice = cod_articolo) INTO test_lsv;
IF test_lsv = 1 THEN
	SET elenco_tabelle = concat(elenco_tabelle, ' lsv');
END IF;

# controllo barcode
select exists 
(select art_codice from BAR
where art_codice = cod_articolo) INTO test_bar;
IF test_bar = 1 THEN
	SET elenco_tabelle = concat(elenco_tabelle, ' bar');
END IF;

# controllo in magazzino
select exists 
(select art_codice from MAG
where art_codice = cod_articolo) INTO test_mag;
IF test_mag = 1 THEN
	SET elenco_tabelle = concat(elenco_tabelle, ' mag');
END IF;

# controllo listini d'acquisto
select exists 
(select art_codice from LSA
where art_codice = cod_articolo) INTO test_lsa;
IF test_lsa = 1 THEN
	SET elenco_tabelle = concat(elenco_tabelle, ' lsa');
END IF;

# controllo preventivi d'acquisto
select exists 
(select art_codice from RAR
where art_codice = cod_articolo) INTO test_rar;
IF test_rar = 1 THEN
	SET elenco_tabelle = concat(elenco_tabelle, ' rar');
END IF;

# controllo preventivi di vendita
select exists 
(select art_codice from PVR
where art_codice = cod_articolo) INTO test_pvr;
IF test_pvr = 1 THEN
	SET elenco_tabelle = concat(elenco_tabelle, ' pvr');
END IF;

# controllo richieste d'acquisto
select exists 
(select art_codice_richiesta from RDA
where art_codice_richiesta = cod_articolo) INTO test_rda;
IF test_rda = 1 THEN
	SET elenco_tabelle = concat(elenco_tabelle, ' rda');
END IF;

# controllo articoli clienti
select exists 
(select art_codice from ARCL
where art_codice = cod_articolo) INTO test_arcl;
IF test_arcl = 1 THEN
	SET elenco_tabelle = concat(elenco_tabelle, ' arcl');
END IF;

# controllo articoli fornitori
select exists 
(select art_codice from ARF
where art_codice = cod_articolo) INTO test_arf;
IF test_arf = 1 THEN
	SET elenco_tabelle = concat(elenco_tabelle, ' arf');
END IF;

# controllo listini di vendita personalizzati
select exists 
(select art_codice from CLS
where art_codice = cod_articolo) INTO test_cls;
IF test_cls = 1 THEN
	SET elenco_tabelle = concat(elenco_tabelle, ' cls');
END IF;

# controllo listini d'acquisto personalizzati
select exists 
(select art_codice from FLS
where art_codice = cod_articolo) INTO test_fls;
IF test_fls = 1 THEN
	SET elenco_tabelle = concat(elenco_tabelle, ' fls');
END IF;

# controllo distinta base
select exists 
(select art_codice_padre, art_codice_padre from DSB
where art_codice_padre = cod_articolo or
art_codice_figlio = cod_articolo) INTO test_dsb;
IF test_dsb = 1 THEN
	SET elenco_tabelle = concat(elenco_tabelle, ' dsb');
END IF;

IF test_lsv = 0 and test_bar = 0 and test_mag = 0 and test_lsa = 0
	and test_rar = 0 and test_pvr = 0 and test_rda = 0 and test_arcl = 0 
	and test_arf = 0 and test_cls = 0 and test_fls = 0 and test_dsb = 0 THEN
	RETURN 'si';
ELSE
	RETURN concat (schema(), ' - ', elenco_tabelle);
END IF;

END
