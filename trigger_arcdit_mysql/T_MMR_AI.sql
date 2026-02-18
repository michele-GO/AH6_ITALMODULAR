CREATE TRIGGER T_MMR_AI
  AFTER INSERT
  ON `mmr`
  FOR EACH ROW
BEGIN 

CALL p_mmr_mmt 
(NEW.PROGRESSIVO,
NEW.QUANTITA,
NEW.IMPORTO,
NEW.IMPORTO_EURO,
NEW.IMPORTO_SPESE,
NEW.IMPORTO_SPESE_EURO,
NEW.TIPO_MOVIMENTO);

CALL p_mmr_mag 
('I',
0, 0, '', 0, '', 0, 0, 0, 0, '',
NEW.ID,
NEW.PROGRESSIVO,
NEW.art_codice,
NEW.quantita,
NEW.prezzo,
NEW.tsm_codice,
NEW.tsm_codice_art,
NEW.tipo_movimento,
NEW.importo,
NEW.importo_euro,
NEW.importo_spese,
NEW.importo_spese_euro,
NEW.tma_codice);

END
