CREATE TRIGGER T_MMR_AU
  AFTER UPDATE
  ON `mmr`
  FOR EACH ROW
BEGIN 

IF OLD.QUANTITA <> NEW.QUANTITA OR OLD.IMPORTO <> NEW.IMPORTO OR OLD.IMPORTO_EURO <> NEW.IMPORTO_EURO OR 
    OLD.IMPORTO_SPESE <> NEW.IMPORTO_SPESE OR OLD.IMPORTO_SPESE_EURO <> NEW.IMPORTO_SPESE_EURO OR OLD.TIPO_MOVIMENTO <> NEW.TIPO_MOVIMENTO THEN
	
  CALL p_mmr_mmt (OLD.PROGRESSIVO, OLD.QUANTITA * -1, OLD.IMPORTO * -1, OLD.IMPORTO_EURO * -1, OLD.IMPORTO_SPESE * -1,
    OLD.IMPORTO_SPESE_EURO * -1, OLD.TIPO_MOVIMENTO);

  CALL p_mmr_mmt (NEW.PROGRESSIVO, NEW.QUANTITA, NEW.IMPORTO, NEW.IMPORTO_EURO, NEW.IMPORTO_SPESE, NEW.IMPORTO_SPESE_EURO, NEW.TIPO_MOVIMENTO);
END IF;

IF OLD.art_codice <> NEW.art_codice OR OLD.quantita <> NEW.quantita OR OLD.tipo_movimento <> NEW.tipo_movimento OR OLD.importo <> NEW.importo OR 
    OLD.importo_euro <> NEW.importo_euro OR OLD.importo_spese <> NEW.importo_spese OR OLD.importo_spese_euro <> NEW.importo_spese_euro OR 
	OLD.tma_codice <> NEW.tma_codice THEN

  CALL p_mmr_mag ('U', OLD.ID, OLD.PROGRESSIVO, OLD.art_codice, OLD.quantita, OLD.tipo_movimento, OLD.importo, OLD.importo_euro,
    OLD.importo_spese, OLD.importo_spese_euro, OLD.tma_codice,

    NEW.ID, NEW.PROGRESSIVO, NEW.art_codice, NEW.quantita, NEW.prezzo, NEW.tsm_codice, NEW.tsm_codice_art, NEW.tipo_movimento, NEW.importo,
    NEW.importo_euro, NEW.importo_spese, NEW.importo_spese_euro, NEW.tma_codice);
END IF;

END
