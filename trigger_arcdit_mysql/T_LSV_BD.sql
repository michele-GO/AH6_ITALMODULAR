CREATE TRIGGER T_LSV_BD
  BEFORE DELETE
  ON LSV
  FOR EACH ROW
BEGIN 

delete from lsvsc where id_lsv = old.id;

END
