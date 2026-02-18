CREATE TRIGGER T_DAR_AU
  AFTER UPDATE
  ON `dar`
  FOR EACH ROW
BEGIN 
DECLARE D_IVA 						VARCHAR(02);
DECLARE D_MAG 						VARCHAR(02);
DECLARE D_TESTATA					VARCHAR(02);
DECLARE D_IMPORTI_RIGA_ORIGINE		VARCHAR(02);
DECLARE D_SITUAZIONE_RIGA_ORIGINE	VARCHAR(02);

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

  if old.importo <> new.importo or old.tipo_movimento <> new.tipo_movimento or old.tiv_codice <> new.tiv_codice then
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

  CALL P_MOVACQ_DAR('dar', 'si', old.art_codice, old.tma_codice, old.situazione, old.progressivo,
	old.quantita, old.quantita_evasa, old.tum_quantita_base, old.tum_quantita_evasa_base, 
	old.numero_colli, old.numero_confezioni, old.importo_sconto_evaso, old.importo_evaso,
	old.documento_origine, old.doc_progressivo_origine, old.doc_riga_origine, old.saldo_acconto, old.importo_sconto, old.importo,
	old.tiv_codice, old.tipo_movimento, old.no_ordinato, d_iva, d_mag, d_testata, d_importi_riga_origine, d_situazione_riga_origine);

  CALL P_MOVACQ_DAR('dar', 'no', new.art_codice, new.tma_codice, new.situazione, new.progressivo,
	new.quantita, new.quantita_evasa, new.tum_quantita_base, new.tum_quantita_evasa_base, 
	new.numero_colli, new.numero_confezioni, new.importo_sconto_evaso, new.importo_evaso,
	new.documento_origine, new.doc_progressivo_origine, new.doc_riga_origine, new.saldo_acconto, new.importo_sconto, new.importo,
	new.tiv_codice, new.tipo_movimento, new.no_ordinato, d_iva, d_mag, 'no', d_importi_riga_origine, 'no');

end if;

END
