CREATE TRIGGER T_OPR_AD
  AFTER DELETE
  ON `opr`
  FOR EACH ROW
BEGIN 

/*
CALL P_MOVVEN_OPR('opr', 'si', old.art_codice, old.tma_codice, old.situazione, old.progressivo,
  old.quantita, old.quantita_evasa, old.quantita_approntata, old.quantita, old.quantita_evasa, old.quantita_approntata, 
  0, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', old.no_impegnato,	'no', 'si', 'no', 'no', 'si');
*/

END
