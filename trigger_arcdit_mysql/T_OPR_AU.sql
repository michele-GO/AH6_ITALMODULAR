CREATE TRIGGER T_OPR_AU
  AFTER UPDATE
  ON `opr`
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
or old.quantita_approntata <> new.quantita_approntata
or old.no_impegnato <> new.no_impegnato then

  set d_iva = 'no';

  if (old.art_codice <> new.art_codice or old.tma_codice <> new.tma_codice or old.quantita <> new.quantita or old.situazione <> new.situazione or
			old.quantita_evasa <> new.quantita_evasa or old.quantita_approntata <> new.quantita_approntata or old.no_impegnato <> new.no_impegnato) then
    set d_mag = 'si';
  else
    set d_mag = 'no';
  end if;

  set d_testata = 'no';

  set d_importi_riga_origine = 'no';

  set d_situazione_riga_origine = 'no';

  CALL P_MOVVEN_OPR('opr', 'si', old.art_codice, old.tma_codice, old.situazione, old.progressivo,
		old.quantita, old.quantita_evasa, old.quantita_approntata, old.quantita, old.quantita_evasa, old.quantita_approntata, 
		0, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', old.no_impegnato, d_iva, d_mag, d_testata, d_importi_riga_origine, d_situazione_riga_origine);

  CALL P_MOVVEN_OPR('opr', 'no', new.art_codice, new.tma_codice, new.situazione, new.progressivo,
		new.quantita, new.quantita_evasa, new.quantita_approntata, new.quantita, new.quantita_evasa, new.quantita_approntata, 
		0, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', new.no_impegnato,
		d_iva, d_mag, 'no', d_importi_riga_origine, 'no');

end if;

END
