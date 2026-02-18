CREATE TRIGGER T_LSA_BD
  BEFORE DELETE
  ON LSA
  FOR EACH ROW
BEGIN 

delete from lsasc where id_lsa = old.id;

END
