CREATE TRIGGER T_SPD_BU_0
  BEFORE UPDATE
  ON `spd`
  FOR EACH ROW
BEGIN 


if new.tipo_fatturazione = 'mittente' then
  set new.cli_codice_fatturazione = new.cli_codice_mittente;
elseif new.tipo_fatturazione = 'destinatario' then
  set new.cli_codice_fatturazione = new.cli_codice_destinatario;
elseif new.tipo_fatturazione = 'vettore' then
  set new.cli_codice_fatturazione = new.cli_codice_vettore;
end if;

END
