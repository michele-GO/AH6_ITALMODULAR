CREATE TRIGGER T_BVR_BD
  BEFORE DELETE
  ON `bvr`
  FOR EACH ROW
BEGIN 

delete from bvd where progressivo = old.progressivo and riga_origine = old.riga;

delete from bvrd where id_riga = old.id;

delete from qtatgl where modulo = 'vendite' and tipo_documento = 'bolla'
and progressivo = old.progressivo and riga = old.riga;

END
