CREATE TRIGGER T_SCT_BD
  BEFORE DELETE
  ON sct
  FOR EACH ROW
BEGIN 

delete from sctscq where id_sct = old.id;
delete from sctscc where id_sct = old.id;

END
