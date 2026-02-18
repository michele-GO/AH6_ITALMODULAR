CREATE TRIGGER T_PVVD_BD
  BEFORE DELETE
  ON `pvvd`
  FOR EACH ROW
BEGIN 

delete from pvva where id_pvvd = old.id;

END
