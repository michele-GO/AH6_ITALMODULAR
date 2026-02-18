CREATE TRIGGER T_PVVR_BI_0
  BEFORE INSERT
  ON `pvvr`
  FOR EACH ROW
BEGIN 


IF NEW.progressivo = 0 THEN
  CALL P_CAMPO_VUOTO('pvvr', 'progressivo');
END IF;

IF NEW.riga = 0 THEN
  CALL P_CAMPO_VUOTO('pvvr', 'riga');
END IF;

IF NEW.punto_vendita = '' THEN
  CALL P_CAMPO_VUOTO('pvvr', 'punto_vendita');
END IF;

IF NEW.ID IS NOT NULL THEN
  SET NEW.ID = null;
END IF;

END
