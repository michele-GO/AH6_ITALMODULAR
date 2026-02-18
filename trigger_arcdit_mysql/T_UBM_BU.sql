CREATE TRIGGER T_UBM_BU_0
  BEFORE UPDATE
  ON `ubm`
  FOR EACH ROW
BEGIN 


IF NEW.TIPO_MOVIMENTO = 'carico' or NEW.TIPO_MOVIMENTO = 'ordinato' THEN
  set new.segno = 1;
END IF;

IF NEW.TIPO_MOVIMENTO = 'scarico' or NEW.TIPO_MOVIMENTO = 'impegnato' THEN
  set new.segno = -1;
END IF;

END
