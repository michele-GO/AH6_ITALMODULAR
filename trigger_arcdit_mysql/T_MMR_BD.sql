CREATE TRIGGER T_MMR_BD
  BEFORE DELETE
  ON `mmr`
  FOR EACH ROW
BEGIN 

delete from cmm where documento_origine = 'movimenti magazzino' 
and doc_progressivo_origine = old.progressivo 
and doc_riga_origine = old.riga;

delete from ltm where documento_origine = 'movimenti magazzino' 
and doc_progressivo_origine = old.progressivo 
and doc_riga_origine = old.riga;

delete from lct where documento_origine = 'movimenti magazzino' 
and doc_progressivo_origine = old.progressivo 
and doc_riga_origine = old.riga;

delete from lcr where documento_origine = 'movimenti magazzino' 
and doc_progressivo_origine = old.progressivo 
and doc_riga_origine = old.riga;

delete from ubm where documento_origine = 'movimenti magazzino' 
and doc_progressivo_origine = old.progressivo 
and doc_riga_origine = old.riga;

delete from qtatgl where modulo = 'magazzino' and tipo_documento = ''
and progressivo = old.progressivo and riga = old.riga;

CALL p_mmr_mmt 
(OLD.PROGRESSIVO,
OLD.QUANTITA * -1,
OLD.IMPORTO * -1,
OLD.IMPORTO_EURO * -1,
OLD.IMPORTO_SPESE * -1,
OLD.IMPORTO_SPESE_EURO * -1,
OLD.TIPO_MOVIMENTO);

CALL p_mmr_mag 
('D',
OLD.ID,
OLD.PROGRESSIVO,
OLD.art_codice,
OLD.quantita,
OLD.tipo_movimento,
OLD.importo,
OLD.importo_euro,
OLD.importo_spese,
OLD.importo_spese_euro,
OLD.tma_codice,
0, 0, '', 0, 0, '', '', '', 0, 0, 0, 0, '');

END
