CREATE TRIGGER T_PVR_AI
  AFTER INSERT
  ON `pvr`
  FOR EACH ROW
BEGIN 

CALL P_MOVVEN_PVR('pvr', 'no', new.art_codice, new.tma_codice, new.situazione, new.progressivo,
  new.quantita, new.quantita_evasa, new.quantita_approntata, new.tum_quantita_base, new.tum_quantita_evasa_base, new.tum_quantita_approntata_base,
  new.importo_sconto_evaso, new.importo_evaso, new.documento_origine, new.doc_progressivo_origine, new.doc_riga_origine, new.saldo_acconto, 
  new.numero_colli, new.numero_confezioni, new.importo_sconto, new.importo, new.tiv_codice, new.tipo_movimento, new.no_impegnato,
	'si', 'si', 'si', 'si', 'si');

END
