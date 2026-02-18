CREATE TRIGGER T_PKPD_BU_0
  BEFORE UPDATE
  ON pkpd
  FOR EACH ROW
BEGIN 


update pkr
set pkr.pkpr_riga = new.riga
where pkr.progressivo = new.progressivo and pkr.riga = new.pkr_riga;


END
