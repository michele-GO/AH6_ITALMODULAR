CREATE FUNCTION F_GIORNI_COMPETENZE(i_data date, i_data_inizio date, i_data_fine date)
	RETURNS integer
    DETERMINISTIC
    COMMENT 'calcola giorni competenza'
BEGIN

DECLARE d_data_inizio date;
DECLARE d_data_fine date;

DECLARE d_giorni integer DEFAULT 0;

if i_data_inizio < @data_inizio then
  set d_data_inizio = @data_inizio;
else
  set d_data_inizio = i_data_inizio;
end if;

if i_data_fine > @data_fine then
  set d_data_fine = @data_fine;
else
  set d_data_fine = i_data_fine;
end if;

if i_data < d_data_inizio or i_data_fine < @data_inizio then
  set d_giorni = 0;
elseif i_data > d_data_fine then
  set d_giorni = datediff(d_data_fine, d_data_inizio) + 1;
else
  set d_giorni = datediff(i_data, d_data_inizio) + 1;
end if;

RETURN d_giorni;

END
