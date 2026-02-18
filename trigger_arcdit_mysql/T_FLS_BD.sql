CREATE TRIGGER T_FLS_BD
  BEFORE DELETE
  ON FLS
  FOR EACH ROW
BEGIN 

delete from flssc where flssc.id_fls = old.id;
delete from flsfas where flsfas.id_fls = old.id;

END
