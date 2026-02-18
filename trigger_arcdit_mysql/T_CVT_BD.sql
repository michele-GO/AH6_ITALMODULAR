CREATE TRIGGER T_CVT_BD
  BEFORE DELETE
  ON `cvt`
  FOR EACH ROW
BEGIN 

CALL P_SCHTRS('cvt', old.progressivo);

delete from cascon where documento_origine = 'corrispettivo ven' and doc_progressivo_origine = old.progressivo;
delete from cvd where progressivo = old.progressivo;

delete from cvcmrr where progressivo = old.progressivo;
delete from cvcmrt where progressivo = old.progressivo;

END
