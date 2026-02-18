CREATE TRIGGER T_UBM_AU
  AFTER UPDATE
  ON `ubm`
  FOR EACH ROW
BEGIN 

if old.art_codice <> new.art_codice
or old.tub_codice <> new.tub_codice
or old.tipo_movimento <> new.tipo_movimento
or old.quantita <> new.quantita then

  CALL p_ubm_ubi ('U', OLD.art_codice, OLD.tub_codice, OLD.tipo_movimento, OLD.quantita,
	NEW.art_codice, NEW.tub_codice, NEW.tipo_movimento, NEW.quantita);

end if;

END
