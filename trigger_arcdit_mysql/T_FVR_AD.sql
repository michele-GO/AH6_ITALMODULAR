CREATE TRIGGER T_FVR_AD
  AFTER DELETE
  ON `fvr`
  FOR EACH ROW
BEGIN 

CALL P_MOVVEN_FVR('fvr', 'si', old.art_codice, old.tma_codice, old.situazione, old.progressivo,
  old.quantita, old.quantita_evasa, old.quantita_approntata, old.tum_quantita_base, old.tum_quantita_evasa_base, old.tum_quantita_approntata_base,
  old.importo_sconto_evaso, old.importo_evaso, old.documento_origine, old.doc_progressivo_origine, old.doc_riga_origine, old.saldo_acconto, 
  old.numero_colli, old.numero_confezioni, old.importo_sconto, old.importo, old.tiv_codice, old.tipo_movimento, old.no_impegnato,
	'si', 'si', 'si', 'si', 'si');

END
