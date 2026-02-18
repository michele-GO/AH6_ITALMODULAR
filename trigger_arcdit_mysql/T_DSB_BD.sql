CREATE TRIGGER T_DSB_BD
  BEFORE DELETE
  ON dsb
  FOR EACH ROW
BEGIN 

delete from dsbv where id_dsb = old.id;

END
