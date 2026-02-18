CREATE TRIGGER T_PVR_AD
  AFTER DELETE
  ON `pvr`
  FOR EACH ROW
BEGIN 

if old.situazione <> 'annullato' then
	CALL P_MOVVEN_PVR('pvr', 'si', old.art_codice, old.tma_codice, old.situazione, old.progressivo,
		old.quantita, old.quantita_evasa, old.quantita_approntata, old.tum_quantita_base, old.tum_quantita_evasa_base, old.tum_quantita_approntata_base,
		old.importo_sconto_evaso, old.importo_evaso, old.documento_origine, old.doc_progressivo_origine, old.doc_riga_origine, old.saldo_acconto, 
		old.numero_colli, old.numero_confezioni, old.importo_sconto, old.importo, old.tiv_codice, old.tipo_movimento, old.no_impegnato,
		'si', 'si', 'si', 'si', 'si');
end if;

END
