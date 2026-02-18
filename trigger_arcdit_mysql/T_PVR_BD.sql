CREATE TRIGGER T_PVR_BD
  BEFORE DELETE
  ON `pvr`
  FOR EACH ROW
BEGIN 

delete from pvd where progressivo = old.progressivo and riga_origine = old.riga;

delete from qtatgl where modulo = 'vendite' and left(tipo_documento, 10) = 'preventivo'
and progressivo = old.progressivo and riga = old.riga;

END
