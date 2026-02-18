CREATE TRIGGER T_UBM_BI_0
  BEFORE INSERT
  ON `ubm`
  FOR EACH ROW
BEGIN 


IF NEW.TIPO_MOVIMENTO = 'carico' or NEW.TIPO_MOVIMENTO = 'ordinato' THEN
  set new.segno = 1;
END IF;

IF NEW.TIPO_MOVIMENTO = 'scarico' or NEW.TIPO_MOVIMENTO = 'impegnato' THEN
  set new.segno = -1;
END IF;

IF NEW.PROGRESSIVO = 0 THEN
  CALL P_CAMPO_VUOTO('ubm', 'progressivo');
END IF;

IF NEW.ART_CODICE = '' THEN
  CALL P_CAMPO_VUOTO('ubm', 'art_codice');
END IF;

IF NEW.TUB_CODICE = '' THEN
  CALL P_CAMPO_VUOTO('ubm', 'tub_codice');
END IF;

IF NEW.TIPO_MOVIMENTO = '' THEN
  CALL P_CAMPO_VUOTO('ubm', 'tipo_movimento');
END IF;

IF NEW.ID IS NOT NULL THEN
  SET NEW.ID = null;
END IF;

END
