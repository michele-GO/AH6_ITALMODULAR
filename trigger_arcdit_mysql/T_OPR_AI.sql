CREATE TRIGGER T_OPR_AI
  AFTER INSERT
  ON `opr`
  FOR EACH ROW
BEGIN 

CALL P_MOVVEN_OPR('opr', 'no', new.art_codice, new.tma_codice, new.situazione, new.progressivo,
  new.quantita, new.quantita_evasa, new.quantita_approntata, new.quantita, new.quantita_evasa, new.quantita_approntata, 
  0, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', new.no_impegnato,	'no', 'si', 'no', 'no', 'si');

END
