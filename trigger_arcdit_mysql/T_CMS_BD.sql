CREATE TRIGGER T_CMS_BD
  BEFORE DELETE
  ON cms
  FOR EACH ROW
BEGIN 

delete from cmslav where cms_codice = old.codice;

END
