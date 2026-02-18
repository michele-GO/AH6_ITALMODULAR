CREATE TRIGGER T_MACINT_AI
  AFTER INSERT
  ON macint
  FOR EACH ROW
BEGIN 

	if new.macipt_progressivo <> 0 and new.data_inizio_intervento is not null and 
	  (new.data_inizio_intervento > (select data_ultimo_intervento from macipt where progressivo = new.macipt_progressivo) or
	  (select data_ultimo_intervento from macipt where progressivo = new.macipt_progressivo) is null) then
		update macipt set data_ultimo_intervento = new.data_inizio_intervento
		  where macipt.progressivo = new.macipt_progressivo;
	end if;

END
