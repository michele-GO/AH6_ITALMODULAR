CREATE TRIGGER T_OVR_BD
  BEFORE DELETE
  ON `ovr`
  FOR EACH ROW
BEGIN 

delete from ovd where progressivo = old.progressivo and riga_origine = old.riga;

delete from qtatgl where modulo = 'vendite' and tipo_documento = 'ordine'
and progressivo = old.progressivo and riga = old.riga;

END
