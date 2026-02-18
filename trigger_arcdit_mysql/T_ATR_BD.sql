CREATE TRIGGER T_ATR_BD
  BEFORE DELETE
  ON ATR
  FOR EACH ROW
BEGIN 

delete from atrc where id_atr = old.id;

END
