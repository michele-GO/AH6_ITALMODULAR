CREATE TRIGGER T_TEC_BD
  BEFORE DELETE
  ON tec
  FOR EACH ROW
BEGIN 

delete from tcz where tec_codice = old.codice;
delete from teccos where tec_codice = old.codice;

END
