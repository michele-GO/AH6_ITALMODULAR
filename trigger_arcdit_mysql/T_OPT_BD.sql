CREATE TRIGGER T_OPT_BD
  BEFORE DELETE
  ON `opt`
  FOR EACH ROW
BEGIN 

CALL P_MOVACQ_OPT('opt', 'si', old.art_codice, old.tma_codice_finiti, old.situazione, old.progressivo,
  old.quantita, old.quantita_evasa, old.quantita, old.quantita_evasa, 0, 0, 0, 0, '', 0, 0, '', 0, 0, '', '', 
	old.no_ordinato, 'no', 'si', 'no', 'no', 'si');
	
CALL P_CICLI(old.progressivo);

DELETE FROM OPD WHERE PROGRESSIVO = OLD.PROGRESSIVO;

END
