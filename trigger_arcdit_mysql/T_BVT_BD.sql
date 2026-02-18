CREATE TRIGGER T_BVT_BD
  BEFORE DELETE
  ON `bvt`
  FOR EACH ROW
BEGIN 

CALL P_SCHTRS('bvt', old.progressivo);

delete from bvd where progressivo = old.progressivo;

delete from bvcmrr where progressivo = old.progressivo;
delete from bvcmrt where progressivo = old.progressivo;

END
