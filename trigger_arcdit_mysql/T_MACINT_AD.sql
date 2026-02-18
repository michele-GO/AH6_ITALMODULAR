CREATE TRIGGER T_MACINT_AD
  AFTER DELETE
  ON macint
  FOR EACH ROW
BEGIN 

	if old.macipt_progressivo <> 0 then
		update macipt set data_ultimo_intervento = (select data_inizio_intervento from macint 
		  where macipt_progressivo = old.macipt_progressivo and data_inizio_intervento is not null order by 1 desc limit 1)
		  where macipt. progressivo = old.macipt_progressivo;
	end if;

END
