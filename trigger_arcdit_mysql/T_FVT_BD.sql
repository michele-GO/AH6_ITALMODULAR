CREATE TRIGGER T_FVT_BD
  BEFORE DELETE
  ON `fvt`
  FOR EACH ROW
BEGIN 

CALL P_SCHTRS('fvt', old.progressivo);

delete from cascon where left(documento_origine, 7) = 'fattura' and doc_progressivo_origine = old.progressivo;
delete from fvd where progressivo = old.progressivo;

delete from fvcmrr where progressivo = old.progressivo;
delete from fvcmrt where progressivo = old.progressivo;

END
