CREATE TRIGGER T_OAR_AI
  AFTER INSERT
  ON `oar`
  FOR EACH ROW
BEGIN 

CALL P_MOVACQ_OAR('oar', 'no', new.art_codice, new.tma_codice, new.situazione, new.progressivo,
  new.quantita, new.quantita_evasa, new.tum_quantita_base, new.tum_quantita_evasa_base, 
	new.numero_colli, new.numero_confezioni, new.importo_sconto_evaso, new.importo_evaso,
  new.documento_origine, new.doc_progressivo_origine, new.doc_riga_origine, new.saldo_acconto, new.importo_sconto, new.importo,
  new.tiv_codice, new.tipo_movimento, new.no_ordinato, 'si', 'si', 'si', 'si', 'si');

if new.documento_origine = 'produzione' and (select avanzamento_fasi from opt where progressivo = new.doc_progressivo_origine) = 'si' then
	update opc set costo_totale = new.importo_euro where id = new.doc_riga_origine;
end if;

END
