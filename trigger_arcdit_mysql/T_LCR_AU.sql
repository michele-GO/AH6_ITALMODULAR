CREATE TRIGGER T_LCR_AU
  AFTER UPDATE
  ON `lcr`
  FOR EACH ROW
BEGIN 

if old.quantita_tum <> new.quantita_tum
or old.quantita <> new.quantita then

  CALL P_LCR_LCT 
	(NEW.PROGRESSIVO, NEW.QUANTITA_TUM - OLD.QUANTITA_TUM, NEW.QUANTITA - OLD.QUANTITA);

end if;

END
