CREATE TRIGGER T_CLS_BD
  BEFORE DELETE
  ON CLS
  FOR EACH ROW
BEGIN 

delete from clssc where id_cls = old.id;

END
