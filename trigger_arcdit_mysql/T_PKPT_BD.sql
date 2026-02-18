CREATE TRIGGER T_PKPT_BD
  BEFORE DELETE
  ON pkpt
  FOR EACH ROW
BEGIN 

delete from pkpd where pkpd.progressivo = old.progressivo;

delete from pkpr where pkpr.progressivo = old.progressivo;

END
