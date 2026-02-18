CREATE TRIGGER T_OPT_AI
  AFTER INSERT
  ON `opt`
  FOR EACH ROW
BEGIN 

CALL P_MOVACQ_OPT('opt', 'no', new.art_codice, new.tma_codice_finiti, new.situazione, new.progressivo,
  new.quantita, new.quantita_evasa, new.quantita, new.quantita_evasa, 0, 0, 0, 0, '', 0, 0, '', 0, 0, '', '', 
	new.no_ordinato, 'no', 'si', 'no', 'no', 'si');

END
