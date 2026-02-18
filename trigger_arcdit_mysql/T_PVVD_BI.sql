CREATE TRIGGER T_PVVD_BI_0
  BEFORE INSERT
  ON `pvvd`
  FOR EACH ROW
BEGIN 


IF NEW.progressivo = 0 THEN
  CALL P_CAMPO_VUOTO('pvvd', 'progressivo');
END IF;

IF NEW.riga = 0 THEN
  CALL P_CAMPO_VUOTO('pvvd', 'riga');
END IF;

IF NEW.dsv_codice = '' THEN
  CALL P_CAMPO_VUOTO('pvvd', 'dsv_codice');
END IF;

IF NEW.ID IS NOT NULL THEN
  SET NEW.ID = null;
END IF;

END
