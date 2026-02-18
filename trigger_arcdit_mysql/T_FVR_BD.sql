CREATE TRIGGER T_FVR_BD
  BEFORE DELETE
  ON `fvr`
  FOR EACH ROW
BEGIN 

delete from fvd where progressivo = old.progressivo and riga_origine = old.riga;

delete from fvrd where id_riga = old.id;

delete from qtatgl where modulo = 'vendite' 
and (left(tipo_documento, 7) = 'fattura' or tipo_documento = 'nota credito')
and progressivo = old.progressivo and riga = old.riga;

END
