CREATE TRIGGER T_PVVT_BI_0
  BEFORE INSERT
  ON `pvvt`
  FOR EACH ROW
BEGIN 


IF NEW.progressivo = 0 THEN
  CALL P_CAMPO_VUOTO('pvvt', 'progressivo');
END IF;

IF NEW.cli_codice = '' THEN
  CALL P_CAMPO_VUOTO('pvvt', 'cli_codice');
END IF;

IF NEW.ID IS NOT NULL THEN
  SET NEW.ID = null;
END IF;

END
