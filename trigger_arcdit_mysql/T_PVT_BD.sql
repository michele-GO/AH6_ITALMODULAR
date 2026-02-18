CREATE TRIGGER T_PVT_BD
  BEFORE DELETE
  ON `pvt`
  FOR EACH ROW
BEGIN 

CALL P_SCHTRS('pvt', old.progressivo);

delete from pvd where progressivo = old.progressivo;

delete from pvcmrr where progressivo = old.progressivo;
delete from pvcmrt where progressivo = old.progressivo;

END
