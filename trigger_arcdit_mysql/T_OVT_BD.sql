CREATE TRIGGER T_OVT_BD
  BEFORE DELETE
  ON `ovt`
  FOR EACH ROW
BEGIN 

CALL P_SCHTRS('ovt', old.progressivo);

delete from ovd where progressivo = old.progressivo;

delete from prvm where progressivo = old.progressivo;

delete from ovcmrr where progressivo = old.progressivo;
delete from ovcmrt where progressivo = old.progressivo;

END
