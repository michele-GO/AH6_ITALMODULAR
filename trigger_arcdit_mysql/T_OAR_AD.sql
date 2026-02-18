CREATE TRIGGER T_OAR_AD
  AFTER DELETE
  ON `oar`
  FOR EACH ROW
BEGIN 

delete from qtatgl where modulo = 'acquisti' and tipo_documento = 'ordine'
and progressivo = old.progressivo and riga = old.riga;

if old.situazione <> 'annullato' then
	CALL P_MOVACQ_OAR('oar', 'si', old.art_codice, old.tma_codice, old.situazione, old.progressivo,
		old.quantita, old.quantita_evasa, old.tum_quantita_base, old.tum_quantita_evasa_base, 
		old.numero_colli, old.numero_confezioni, old.importo_sconto_evaso, old.importo_evaso,
		old.documento_origine, old.doc_progressivo_origine, old.doc_riga_origine, old.saldo_acconto, old.importo_sconto, old.importo,
		old.tiv_codice, old.tipo_movimento, old.no_ordinato, 'si', 'si', 'si', 'si', 'si');
end if;

/*
if old.documento_origine = 'produzione' and (select avanzamento_fasi from opt where progressivo = old.doc_progressivo_origine) = 'si' then
	update opc set costo_totale = 0 where id = old.doc_riga_origine;
end if;
*/

END
