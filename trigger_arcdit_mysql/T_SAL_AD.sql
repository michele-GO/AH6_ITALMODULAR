CREATE TRIGGER T_SAL_AD
  AFTER DELETE
  ON `sal`
  FOR EACH ROW
BEGIN 

update cmm set selezionato_sal = 'no', sal_progressivo = 0 where sal_progressivo = old.progressivo;
update cmd set selezionato_sal = 'no', sal_progressivo = 0 where sal_progressivo = old.progressivo;

END
