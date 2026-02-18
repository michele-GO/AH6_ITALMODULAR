CREATE TRIGGER T_DVR_AI
  AFTER INSERT
  ON `dvr`
  FOR EACH ROW
BEGIN 

  CALL P_MOVVEN_DVR('dvr', 'no', new.art_codice, new.tma_codice, new.situazione, new.progressivo,
    new.quantita, new.quantita_evasa, new.quantita_approntata, new.tum_quantita_base, new.tum_quantita_evasa_base, new.tum_quantita_approntata_base,
	new.importo_sconto_evaso, new.importo_evaso, new.documento_origine, new.doc_progressivo_origine, new.doc_riga_origine, new.saldo_acconto, 
    new.numero_colli, new.numero_confezioni, new.importo_sconto, new.importo, new.tiv_codice, new.tipo_movimento, new.no_impegnato,
	'si', 'si', 'si', 'si', 'si');
	
  if new.documento_origine = 'produzione' then
	update opc set situazione = 'iniziata', quantita_iniziata = quantita_iniziata + new.quantita
		where progressivo = new.doc_progressivo_origine and id = new.doc_riga_origine and (select avanzamento_fasi from opt where progressivo = new.doc_progressivo_origine) = 'si';
  end if;
	

END
