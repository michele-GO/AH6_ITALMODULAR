CREATE TRIGGER T_NGT_BI_0
  BEFORE INSERT
  ON `ngt`
  FOR EACH ROW
BEGIN 


IF NEW.PROGRESSIVO = 0 THEN
  CALL P_CAMPO_VUOTO('ngt', 'progressivo');
END IF;

IF NEW.data_registrazione is null THEN
  CALL P_CAMPO_VUOTO('ngt', 'data_registrazione');
END IF;

IF NEW.cli_codice = '' THEN
  CALL P_CAMPO_VUOTO('ngt', 'cli_codice');
END IF;

IF NEW.ID IS NOT NULL THEN
  SET NEW.ID = null;
END IF;

END
