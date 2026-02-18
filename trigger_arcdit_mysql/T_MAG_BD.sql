CREATE TRIGGER T_MAG_BD
  BEFORE DELETE
  ON mag
  FOR EACH ROW
BEGIN 

delete from magese where art_codice = old.art_codice and tma_codice = old.tma_codice;

END
