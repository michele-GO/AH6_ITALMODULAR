CREATE TRIGGER T_PKPD_BD
  BEFORE DELETE
  ON pkpd
  FOR EACH ROW
BEGIN 

update pkr
set pkr.pkpr_riga = 0
where pkr.progressivo = old.progressivo and pkr.riga = old.pkr_riga;

END
