CREATE TRIGGER T_MACINT_AU
  AFTER UPDATE
  ON macint
  FOR EACH ROW
BEGIN 

	if new.data_inizio_intervento is null and old.data_inizio_intervento is not null then
		update macipt set data_ultimo_intervento = (select data_inizio_intervento from macint 
		  where macipt_progressivo = old.macipt_progressivo and data_inizio_intervento is not null order by 1 desc limit 1)
		  where macipt.progressivo = new.macipt_progressivo;
	elseif new.macipt_progressivo <> 0 and new.data_inizio_intervento is not null and 
	  (new.data_inizio_intervento > (select data_ultimo_intervento from macipt where progressivo = new.macipt_progressivo) or
	  (select data_ultimo_intervento from macipt where progressivo = new.macipt_progressivo) is null) then
		update macipt set data_ultimo_intervento = new.data_inizio_intervento
		  where macipt.progressivo = new.macipt_progressivo;
	end if;

	if new.situazione <> old.situazione then
		update macinr set situazione = new.situazione where progressivo = new.progressivo;
	end if;

END
