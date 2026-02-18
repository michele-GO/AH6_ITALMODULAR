CREATE TRIGGER T_F24_BD
  BEFORE DELETE
  ON `f24`
  FOR EACH ROW
BEGIN 

delete from f24era where f24_progressivo = old.progressivo;
delete from f24inps where f24_progressivo = old.progressivo;
delete from f24reg where f24_progressivo = old.progressivo;
delete from f24imu where f24_progressivo = old.progressivo;
delete from f24ina where f24_progressivo = old.progressivo;
delete from f24alt where f24_progressivo = old.progressivo;

END
