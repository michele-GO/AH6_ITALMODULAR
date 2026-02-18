CREATE TRIGGER T_CSP_BD
  BEFORE DELETE
  ON `csp`
  FOR EACH ROW
BEGIN 

delete from cspanad where progressivo = old.id;
delete from cspanar where progressivo = old.id;
delete from cspanat where progressivo = old.id;

END
