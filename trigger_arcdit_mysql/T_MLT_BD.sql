CREATE TRIGGER T_MLT_BD
  BEFORE DELETE
  ON `mlt`
  FOR EACH ROW
BEGIN 

delete from mlr where progressivo = old.progressivo;

END
