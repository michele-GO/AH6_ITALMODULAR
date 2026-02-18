CREATE TRIGGER T_LTM_AU
  AFTER UPDATE
  ON `ltm`
  FOR EACH ROW
BEGIN 

if old.art_codice <> new.art_codice
or old.lotto <> new.lotto
or old.tma_codice <> new.tma_codice
or old.quantita <> new.quantita
or old.esistenza <> new.esistenza then

  CALL p_ltm_lot ('U', OLD.art_codice, OLD.lotto, OLD.tma_codice, OLD.quantita, OLD.esistenza,
	NEW.art_codice, NEW.lotto, NEW.tma_codice, NEW.quantita, NEW.esistenza, NEW.data_registrazione);

end if;

END
