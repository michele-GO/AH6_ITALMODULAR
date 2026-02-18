CREATE TRIGGER T_CVR_BD
  BEFORE DELETE
  ON `cvr`
  FOR EACH ROW
BEGIN 

delete from cvd where progressivo = old.progressivo and riga_origine = old.riga;

delete from qtatgl where modulo = 'vendite' and tipo_documento = 'corrispettivo'
and progressivo = old.progressivo and riga = old.riga;

END
