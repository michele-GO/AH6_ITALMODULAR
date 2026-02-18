CREATE TRIGGER T_MACCH_BD
  BEFORE DELETE
  ON macch
  FOR EACH ROW
BEGIN 

delete from macchdoc where macch_codice = old.codice;

END
