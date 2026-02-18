CREATE FUNCTION F_PROSSIMO_CONGUAGLIO(i_atr_progressivo int(11), i_atr_riga int(11)) 
	RETURNS date
    DETERMINISTIC
    COMMENT 'calcola la data del prossimo conguaglio del contratto'
BEGIN

DECLARE d_return date;

set @rata :=
(select atr.data_inizio_contratto
from atr
where atr.riga = i_atr_riga and atr.progressivo = i_atr_progressivo);

select date_sub(rata, interval 1 day) prossimo_conguaglio
from
(select @rata := date_add(@rata, interval periodicita_conguaglio_copie month) rata
from atr
inner join tcn on atr.tcn_codice = tcn.codice
cross join gio
where atr.riga = i_atr_riga and atr.progressivo = i_atr_progressivo
and @rata < atr.data_fine_contratto) q
where rata > current_date
order by rata asc
limit 1
into d_return;


RETURN d_return;

END
