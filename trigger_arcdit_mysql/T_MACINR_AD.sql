CREATE TRIGGER T_MACINR_AD
  AFTER DELETE
  ON macinr
  FOR EACH ROW
BEGIN 

	CALL P_MOVINR('si', old.situazione, old.art_codice, old.tma_codice, old.quantita);

END
