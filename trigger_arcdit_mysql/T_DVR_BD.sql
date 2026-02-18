CREATE TRIGGER T_DVR_BD
  BEFORE DELETE
  ON `dvr`
  FOR EACH ROW
BEGIN 

delete from dvd where progressivo = old.progressivo and riga_origine = old.riga;

delete from dvrd where id_riga = old.id;

delete from qtatgl where modulo = 'vendite' and left(tipo_documento, 3) = 'ddt'
and progressivo = old.progressivo and riga = old.riga;

END
