CREATE TRIGGER T_CAT_AU
  AFTER UPDATE
  ON `cat`
  FOR EACH ROW
BEGIN 

/*
if OLD.PVT_PROGRESSIVO <> 0 and NEW.PVT_PROGRESSIVO = 0 then
	CALL P_CAT_PVT('D', OLD.PVT_PROGRESSIVO, OLD.PVR_RIGA);
elseif OLD.PVT_PROGRESSIVO = 0 and NEW.PVT_PROGRESSIVO <> 0 then
	CALL P_CAT_PVT('U', NEW.PVT_PROGRESSIVO, NEW.PVR_RIGA);
end if;
*/

if OLD.IMPORTO_PUNTI_UTILIZZATO <> new.IMPORTO_PUNTI_UTILIZZATO then
  CALL P_CAR_CAT_PTI(OLD.CLI_CODICE, OLD.DATA_PUNTI, OLD.IMPORTO_PUNTI_UTILIZZATO * -1);
  CALL P_CAR_CAT_PTI(NEW.CLI_CODICE, NEW.DATA_PUNTI, NEW.IMPORTO_PUNTI_UTILIZZATO);
end if;

if new.ripct_progressivo <> 0 then
  if new.situazione = 'chiusa' then
    update ripct set ripct.situazione = '4 chiusa', ripct.data_chiusura = current_date where ripct.progressivo = new.ripct_progressivo;
  elseif new.situazione = 'aperta' then
    update ripct set ripct.situazione = '3 caricata', ripct.data_chiusura = null where ripct.progressivo = new.ripct_progressivo;
  end if;

end if;

END
