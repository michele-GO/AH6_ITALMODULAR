CREATE TRIGGER T_MACINR_AU
  AFTER UPDATE
  ON macinr
  FOR EACH ROW
BEGIN 

	CALL P_MOVINR('si', old.situazione, old.art_codice, old.tma_codice, old.quantita);

	CALL P_MOVINR('no', new.situazione, new.art_codice, new.tma_codice, new.quantita);

END
