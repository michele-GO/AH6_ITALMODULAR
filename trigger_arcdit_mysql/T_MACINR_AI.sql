CREATE TRIGGER T_MACINR_AI
  AFTER INSERT
  ON macinr
  FOR EACH ROW
BEGIN 

	CALL P_MOVINR('no', new.situazione, new.art_codice, new.tma_codice, new.quantita);

END
