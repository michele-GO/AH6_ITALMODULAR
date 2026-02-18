CREATE TRIGGER T_OPT_AU
  AFTER UPDATE
  ON `opt`
  FOR EACH ROW
BEGIN 
DECLARE D_IVA 						VARCHAR(02);
DECLARE D_MAG 						VARCHAR(02);
DECLARE D_TESTATA					VARCHAR(02);
DECLARE D_IMPORTI_RIGA_ORIGINE		VARCHAR(02);
DECLARE D_SITUAZIONE_RIGA_ORIGINE	VARCHAR(02);

if old.art_codice <> new.art_codice
or old.tma_codice_finiti <> new.tma_codice_finiti
or old.situazione <> new.situazione
or old.progressivo <> new.progressivo
or old.quantita <> new.quantita
or old.quantita_evasa <> new.quantita_evasa
or old.no_ordinato <> new.no_ordinato then

  set d_iva = 'no';

  if (old.art_codice <> new.art_codice or old.tma_codice_finiti <> new.tma_codice_finiti or old.situazione <> new.situazione or
		old.quantita <> new.quantita or old.quantita_evasa <> new.quantita_evasa or old.no_ordinato <> new.no_ordinato) then
	set d_mag = 'si';
  else
    set d_mag = 'no';
  end if;

  set d_testata = 'no';

  set d_importi_riga_origine = 'no';

  set d_situazione_riga_origine = 'no';

  if old.situazione <> new.situazione then
    update opr set opr.situazione = new.situazione where opr.progressivo = new.progressivo;
  end if;

  CALL P_MOVACQ_OPT('opt', 'si', old.art_codice, old.tma_codice_finiti, old.situazione, old.progressivo,
	old.quantita, old.quantita_evasa, old.quantita, old.quantita_evasa, 0, 0, 0, 0, '', 0, 0, '', 0, 0, '', '', 
	old.no_ordinato, d_iva, d_mag, d_testata, d_importi_riga_origine, d_situazione_riga_origine);

  CALL P_MOVACQ_OPT('opt', 'no', new.art_codice, new.tma_codice_finiti, new.situazione, new.progressivo,
	new.quantita, new.quantita_evasa, new.quantita, new.quantita_evasa, 0, 0, 0, 0, '', 0, 0, '', 0, 0, '', '', 
	new.no_ordinato, d_iva, d_mag, 'no', d_importi_riga_origine, 'no');

end if;

END
