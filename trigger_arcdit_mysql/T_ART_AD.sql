CREATE TRIGGER T_ART_AD
  AFTER DELETE
  ON `art`
  FOR EACH ROW
BEGIN 

delete from art23 where art_codice = old.codice;

END
