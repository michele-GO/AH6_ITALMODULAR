CREATE TRIGGER T_OAR_AU
  AFTER UPDATE
  ON `oar`
  FOR EACH ROW
BEGIN 
DECLARE D_IVA 											VARCHAR(02);
DECLARE D_MAG 											VARCHAR(02);
DECLARE D_TESTATA										VARCHAR(02);
DECLARE D_IMPORTI_RIGA_ORIGINE			VARCHAR(02);
DECLARE D_SITUAZIONE_RIGA_ORIGINE		VARCHAR(02);
DECLARE D_QUANTITA_APPRONTATA     	NUMERIC(18,4);
DECLARE D_SALDO_ACCONTO_APPRONTATO	VARCHAR(08);
DECLARE D_EVADERE_APPRONTATO				VARCHAR(02);

if old.art_codice <> new.art_codice
or old.tma_codice <> new.tma_codice
or old.situazione <> new.situazione
or old.progressivo <> new.progressivo
or old.quantita <> new.quantita
or old.quantita_evasa <> new.quantita_evasa
or old.tum_quantita_base <> new.tum_quantita_base
or old.tum_quantita_evasa_base <> new.tum_quantita_evasa_base
or old.numero_colli <> new.numero_colli
or old.numero_confezioni <> new.numero_confezioni
or old.importo_sconto_evaso <> new.importo_sconto_evaso
or old.importo_evaso <> new.importo_evaso
or old.documento_origine <> new.documento_origine
or old.doc_progressivo_origine <> new.doc_progressivo_origine
or old.doc_riga_origine <> new.doc_riga_origine
or old.saldo_acconto <> new.saldo_acconto
or old.importo_sconto <> new.importo_sconto
or old.importo <> new.importo
or old.tiv_codice <> new.tiv_codice
or old.tipo_movimento <> new.tipo_movimento
or old.no_ordinato <> new.no_ordinato then

  if old.importo <> new.importo or old.tipo_movimento <> new.tipo_movimento or old.tiv_codice <> new.tiv_codice or new.situazione = 'annullato' then
    set d_iva = 'si';
  else
    set d_iva = 'no';
  end if;

  if (old.art_codice <> new.art_codice or old.tma_codice <> new.tma_codice or old.tum_quantita_base <> new.tum_quantita_base or old.situazione <> new.situazione or
			old.tum_quantita_evasa_base <> new.tum_quantita_evasa_base or old.no_ordinato <> new.no_ordinato) and 
			old.situazione <> 'consolidato' and new.situazione <> 'consolidato' then
		set d_mag = 'si';
  else
    set d_mag = 'no';
  end if;

  if (old.situazione <> new.situazione) then
    set d_testata = 'si';
  else
    set d_testata = 'no';
  end if;

  if old.quantita <> new.quantita or old.tum_quantita_base <> new.tum_quantita_base or old.importo_sconto <> new.importo_sconto or old.importo <> new.importo then
	  set d_importi_riga_origine = 'si';
  else
    set d_importi_riga_origine = 'no';
  end if;

  if old.saldo_acconto <> new.saldo_acconto then
    set d_situazione_riga_origine = 'si';
  else
    set d_situazione_riga_origine = 'no';
  end if;

		CALL P_MOVACQ_OAR('oar', 'si', old.art_codice, old.tma_codice, old.situazione, old.progressivo,
			old.quantita, old.quantita_evasa, old.tum_quantita_base, old.tum_quantita_evasa_base, 
			old.numero_colli, old.numero_confezioni, old.importo_sconto_evaso, old.importo_evaso,
			old.documento_origine, old.doc_progressivo_origine, old.doc_riga_origine, old.saldo_acconto, old.importo_sconto, old.importo,
			old.tiv_codice, old.tipo_movimento, old.no_ordinato, d_iva, d_mag, d_testata, d_importi_riga_origine, d_situazione_riga_origine);
	
  if new.situazione <> 'annullato' then
		CALL P_MOVACQ_OAR('oar', 'no', new.art_codice, new.tma_codice, new.situazione, new.progressivo,
			new.quantita, new.quantita_evasa, new.tum_quantita_base, new.tum_quantita_evasa_base, 
			new.numero_colli, new.numero_confezioni, new.importo_sconto_evaso, new.importo_evaso,
			new.documento_origine, new.doc_progressivo_origine, new.doc_riga_origine, new.saldo_acconto, new.importo_sconto, new.importo,
			new.tiv_codice, new.tipo_movimento, new.no_ordinato, d_iva, d_mag, 'no', d_importi_riga_origine, 'no');
  end if;

/*
  if (new.ovr_tipo = 'cliente') and (new.tum_quantita_evasa_base <> old.tum_quantita_evasa_base) then
	  if (select tda.approntamento_automatico from oat inner join tda on tda.codice = oat.tda_codice
  		  where progressivo = new.progressivo) = 'si' then
			set d_quantita_approntata = new.tum_quantita_evasa_base - old.tum_quantita_evasa_base;
			if (d_quantita_approntata > 0) and ((select quantita - quantita_evasa from ovr where progressivo = new.ovr_progressivo and riga = new.ovr_riga) < d_quantita_approntata) then
			  set d_quantita_approntata = (select quantita - quantita_evasa from ovr where progressivo = new.ovr_progressivo and riga = new.ovr_riga);
			end if;
			if (d_quantita_approntata < (select quantita - quantita_evasa from ovr where progressivo = new.ovr_progressivo and riga = new.ovr_riga)) then
				set d_saldo_acconto_approntato = 'acconto';
				set d_evadere_approntato = 'no';
			else
				set d_saldo_acconto_approntato = 'saldo';
				set d_evadere_approntato = 'si';
			end if;
			update ovr set quantita_approntata = quantita_approntata + d_quantita_approntata, saldo_acconto_approntato = d_saldo_acconto_approntato,
					evadere_approntato = d_evadere_approntato
				where progressivo = new.ovr_progressivo and riga = new.ovr_riga;
			update ovr set saldo_acconto_approntato = '', evadere_approntato = ''
				where progressivo = new.ovr_progressivo and riga = new.ovr_riga and quantita_approntata = 0;
		end if;
	end if;
*/

end if;

if new.documento_origine = 'produzione' and (select avanzamento_fasi from opt where progressivo = new.doc_progressivo_origine) = 'si' then
	update opc set costo_totale = new.importo_euro, data_consegna = new.data_consegna
	where id = new.doc_riga_origine;
end if;


END
