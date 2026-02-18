CREATE TRIGGER T_TTI_BD
  BEFORE DELETE
  ON `tti`
  FOR EACH ROW
BEGIN 

delete from ttisp where id_tti = old.id;

delete from ttisi where id_tti = old.id;

END
