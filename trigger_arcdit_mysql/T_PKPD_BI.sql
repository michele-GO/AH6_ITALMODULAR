CREATE TRIGGER T_PKPD_BI_0
  BEFORE INSERT
  ON pkpd
  FOR EACH ROW
BEGIN 


IF NEW.PROGRESSIVO = 0 THEN
  CALL P_CAMPO_VUOTO('pkpd','progressivo');
END IF;
IF NEW.RIGA = 0 THEN
  CALL P_CAMPO_VUOTO('pkpd','riga');
END IF;
IF NEW.RIGA_DETTAGLIO = 0 THEN
  CALL P_CAMPO_VUOTO('pkpd','riga_dettaglio');
END IF;

IF NEW.ID IS NOT NULL THEN
  SET NEW.ID = null;
END IF;

update pkr
set pkr.pkpr_riga = new.riga
where pkr.progressivo = new.progressivo and pkr.riga = new.pkr_riga;

END
