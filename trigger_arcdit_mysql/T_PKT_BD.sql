CREATE TRIGGER T_PKT_BD
  BEFORE DELETE
  ON pkt
  FOR EACH ROW
BEGIN 

delete from pkpt where pkpt.progressivo = old.progressivo;


END
