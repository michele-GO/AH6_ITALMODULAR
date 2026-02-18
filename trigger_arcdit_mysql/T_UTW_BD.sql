CREATE TRIGGER T_UTW_BD
  BEFORE DELETE
  ON `utw`
  FOR EACH ROW
BEGIN 

delete from utwart where utw_codice = old.codice;
delete from utwtlv where utw_codice = old.codice;

END
