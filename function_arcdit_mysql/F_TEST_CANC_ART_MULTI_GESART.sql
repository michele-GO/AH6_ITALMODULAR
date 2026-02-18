CREATE FUNCTION F_TEST_CANC_ART_MULTI_GESART(cod_articolo VARCHAR(50)) RETURNS varchar(60)
    DETERMINISTIC
    COMMENT 'cancella articolo passato se non presente negli archivi principali'
BEGIN
DECLARE continua INT DEFAULT 0;

DECLARE elenco_tabelle VARCHAR(50) DEFAULT '';

# controllo listini d'acquisto
select exists 
(select art_codice from LSV
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'lsv';
END IF;

# controllo barcode
IF continua = 0 THEN
select exists 
(select art_codice from BAR
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'bar';
END IF;
END IF;

# controllo in magazzino
IF continua = 0 THEN
select exists 
(select art_codice from MAG
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'mag';
END IF;
END IF;

# controllo listini d'acquisto
IF continua = 0 THEN
select exists 
(select art_codice from LSA
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'lsa';
END IF;
END IF;

# controllo preventivi d'acquisto
IF continua = 0 THEN
select exists 
(select art_codice from RAR
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'rar';
END IF;
END IF;

# controllo preventivi di vendita
IF continua = 0 THEN
select exists 
(select art_codice from PVR
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'pvr';
END IF;
END IF;

# controllo richieste d'acquisto
IF continua = 0 THEN
select exists 
(select art_codice_richiesta, art_codice from RDA
where art_codice_richiesta = cod_articolo
	or art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'rda';
END IF;
END IF;

# controllo articoli clienti
IF continua = 0 THEN
select exists 
(select art_codice from ARCL
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'arcl';
END IF;
END IF;

# controllo articoli fornitori
IF continua = 0 THEN
select exists 
(select art_codice from ARF
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'arf';
END IF;
END IF;

# controllo listini di vendita personalizzati
IF continua = 0 THEN
select exists 
(select art_codice from CLS
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'cls';
END IF;
END IF;

# controllo listini d'acquisto personalizzati
IF continua = 0 THEN
select exists 
(select art_codice from FLS
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'fls';
END IF;
END IF;

# controllo distinta base
IF continua = 0 THEN
select exists 
(select art_codice_padre, art_codice_padre from DSB
where art_codice_padre = cod_articolo or
art_codice_figlio = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'dsb';
END IF;
END IF;

#controllo accessori
IF continua = 0 THEN
select exists 
(select art_codice, art_codice_accessorio from ACC
where art_codice = cod_articolo or
art_codice_accessorio = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'acc';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from ara
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'ara';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice_magazzino, art_codice_raee from art
where art_codice_magazzino = cod_articolo or
art_codice_raee = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'art';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from artmt
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'artmt';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from artmd
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'artmd';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from arv
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'arv';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from bvr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'bvr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from cac
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'cac';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from cad
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'cad';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice, art_codice_lavorazione, art_codice_uscita, art_codice_entrata from cic
where art_codice = cod_articolo or art_codice_lavorazione = cod_articolo
	or art_codice_uscita = cod_articolo or art_codice_entrata = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'cic';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from cla
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'cla';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice_vettore_spd from cli
where art_codice_vettore_spd = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'cli';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from cls
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'cls';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from cmm
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'cmm';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from cnf
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'cnf';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from cod
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'cod';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from ctc
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'ctc';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from cvr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'cvr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from dar
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'dar';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from dvr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'dvr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from dwr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'dwr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice, art_codice_equivalente, art_codice_finito from equ
where art_codice = cod_articolo or art_codice_equivalente = cod_articolo
	or art_codice_finito = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'equ';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from far
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'far';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from fvr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'fvr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice, art_codice_componente from kit
where art_codice = cod_articolo 
	or art_codice_componente = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'kit';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from inv
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'inv';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice, art_codice_lavorazione from lct
where art_codice = cod_articolo 
	or art_codice_lavorazione = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'lct';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from lif
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'lif';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from lot
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'lot';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from ltm
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'ltm';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from ltp
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'ltp';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from mmr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'mmr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice, art_codice_fattura from mtr
where art_codice = cod_articolo 
	or art_codice_fattura = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'mtr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from nct
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'nct';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from ngr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'ngr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from ngv
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'ngv';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from oar
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'oar';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from olr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'olt';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from olt
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'olt';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from opr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'opr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice, art_codice_finito, art_codice_semilavorato from opt
where art_codice = cod_articolo or art_codice_semilavorato = cod_articolo
	or art_codice_finito = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'opt';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from ord
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'ord';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from ore
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'ore';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from orf
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'orf';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from orm
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'orm';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from orr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'orr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from ovr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'ovr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from pca
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'pca';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from pkd
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'pkd';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from pva
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'pva';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from rcr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'rcr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice, art_codice_semilavorato from rct
where art_codice = cod_articolo 
	or art_codice_semilavorato = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'rct';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from rdo
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'rdo';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from rmt
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'rmt';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from sal
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'sal';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from sot
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'sot';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from spd
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'spd';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from sta
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'sta';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from stv
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'stv';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice_contratti, art_codice_commesse_preventivi,
	art_codice_commesse_scalare, art_codice_commesse_viaggi,
	art_codice_commesse_rimborsi, art_codice_commesse_extra,
	art_codice_punti, art_codice_commesse_chiamate,
	art_codice_commesse_diritto_chi from tat
where art_codice_contratti = cod_articolo 
	or art_codice_commesse_preventivi = cod_articolo
	or art_codice_commesse_scalare = cod_articolo
	or art_codice_commesse_viaggi = cod_articolo
	or art_codice_commesse_rimborsi = cod_articolo
	or art_codice_commesse_extra = cod_articolo
	or art_codice_punti = cod_articolo
	or art_codice_commesse_chiamate = cod_articolo
	or art_codice_commesse_diritto_chi = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'tat';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from tcr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'tcr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from tlt
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'tlt';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from tpr
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'tpr';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from tr1
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'tr1';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from tr2
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'tr2';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice_finito, art_codice_semilavorato,
	art_codice_materia_prima from vardsb
where art_codice_finito = cod_articolo 
	or art_codice_semilavorato = cod_articolo
	or art_codice_materia_prima = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'vardsb';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from vda
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'vda';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from vdq
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'vdq';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select art_codice from ver
where art_codice = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'ver';
END IF;
END IF;

IF continua = 0 THEN
select exists 
(select arc.dit.art_codice_potenziale, arc.dit.art_codice_spese_trasporto,
	arc.dit.art_codice_spese_incasso, arc.dit.art_codice_bollo, 
	arc.dit.art_codice_spese_extra, arc.dit.art_codice_cassa_professionisti,
	arc.dit.art_codice_mancante, arc.dit.art_codice_sconto_cassa,
	arc.dit.art_codice_sconti_fattura, arc.dit.art_codice_sconto_cassa_acq,
	arc.dit.art_codice_sconti_fattura_acq, arc.dit.art_codice_spese_acq from arc.dit
where arc.dit.art_codice_potenziale = cod_articolo
	or arc.dit.art_codice_spese_trasporto = cod_articolo
	or arc.dit.art_codice_spese_incasso = cod_articolo
	or arc.dit.art_codice_bollo = cod_articolo
	or arc.dit.art_codice_spese_extra = cod_articolo
	or arc.dit.art_codice_cassa_professionisti = cod_articolo
	or arc.dit.art_codice_mancante = cod_articolo
	or arc.dit.art_codice_sconto_cassa = cod_articolo
	or arc.dit.art_codice_sconti_fattura = cod_articolo
	or arc.dit.art_codice_sconto_cassa_acq = cod_articolo
	or arc.dit.art_codice_sconti_fattura_acq = cod_articolo
	or arc.dit.art_codice_spese_acq = cod_articolo) INTO continua;
IF continua = 1 THEN
	SET elenco_tabelle = 'ARC.dit';
END IF;
END IF;

IF continua = 0 THEN
	RETURN 'si';
ELSE
	RETURN concat (schema(), ' - ', elenco_tabelle);
END IF;

END
