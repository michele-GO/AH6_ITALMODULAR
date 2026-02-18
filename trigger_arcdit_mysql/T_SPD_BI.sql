CREATE TRIGGER T_SPD_BI_0
  BEFORE INSERT
  ON `spd`
  FOR EACH ROW
BEGIN 


IF NEW.PROGRESSIVO = 0  THEN
  CALL P_CAMPO_VUOTO('spd','progressivo');
END IF;

IF NEW.ID IS NOT NULL THEN
  SET NEW.ID = null;
END IF;

if new.tipo_fatturazione = 'mittente' then
  set new.cli_codice_fatturazione = new.cli_codice_mittente;
elseif new.tipo_fatturazione = 'destinatario' then
  set new.cli_codice_fatturazione = new.cli_codice_destinatario;
elseif new.tipo_fatturazione = 'vettore' then
  set new.cli_codice_fatturazione = new.cli_codice_vettore;
end if;

END
