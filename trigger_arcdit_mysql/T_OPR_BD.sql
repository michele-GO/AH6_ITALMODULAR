CREATE TRIGGER T_OPR_BD
  BEFORE DELETE
  ON `opr`
  FOR EACH ROW
BEGIN 

CALL P_MOVVEN_OPR('opr', 'si', old.art_codice, old.tma_codice, old.situazione, old.progressivo,
  old.quantita, old.quantita_evasa, old.quantita_approntata, old.quantita, old.quantita_evasa, old.quantita_approntata, 
  0, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', old.no_impegnato,	'no', 'si', 'no', 'no', 'si');

delete from ltm 
where documento_origine = 'ordine produzione' and doc_progressivo_origine = old.progressivo and doc_riga_origine = old.riga;

END
