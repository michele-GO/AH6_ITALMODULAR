CREATE TRIGGER T_DVT_BD
  BEFORE DELETE
  ON `dvt`
  FOR EACH ROW
BEGIN 

CALL P_SCHTRS('dvt', old.progressivo);

delete from dvd where progressivo = old.progressivo;

delete from dvcmrr where progressivo = old.progressivo;
delete from dvcmrt where progressivo = old.progressivo;

END
