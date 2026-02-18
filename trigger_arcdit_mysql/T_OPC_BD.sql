CREATE TRIGGER T_OPC_BD
  BEFORE DELETE
  ON `opc`
  FOR EACH ROW
BEGIN 

delete from movfas where id_opc = old.id;
delete from opcdatfas where id_opc = old.id;

END
