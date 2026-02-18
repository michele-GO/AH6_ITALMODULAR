CREATE FUNCTION F_VALORE_USCITE_VAL(i_art_codice varchar(50), i_ese_codice varchar(04), i_data_inizio date, i_data_fine date) 
	RETURNS decimal(18,6)
    DETERMINISTIC
    COMMENT 'calcola qauntità entrate val da MMR'
BEGIN

DECLARE d_valore decimal(18,6);

select 
round((select coalesce(sum(mmr.importo_euro + mmr.importo_spese_euro), 0) from mmr
  inner join mmt on mmt.progressivo = mmr.progressivo
  inner join tmo on tmo.codice = mmt.tmo_codice
  inner join tma on tma.codice = mmr.tma_codice
  where mmr.art_codice = art.codice 
	and mmr.tipo_movimento = 'normale'
    and mmt.ese_codice = i_ese_codice 
	and mmt.data_registrazione between i_data_inizio and i_data_fine 
	and tma.proprieta = 'si' 
	and tmo.ultimi_valori = 'scarico' 
	and tmo.esistenza = 'decrementa') -
(select coalesce(sum(mmr.importo_euro + mmr.importo_spese_euro), 0) from mmr
  inner join mmt on mmt.progressivo = mmr.progressivo
  inner join tmo on tmo.codice = mmt.tmo_codice
  inner join tma on tma.codice = mmr.tma_codice
  where mmr.art_codice = art.codice 
	and mmr.tipo_movimento = 'normale'
    and mmt.ese_codice = i_ese_codice 
	and mmt.data_registrazione between i_data_inizio and i_data_fine 
	and tma.proprieta = 'si' 
	and tmo.ultimi_valori = 'scarico' 
	and tmo.esistenza = 'incrementa'), 2)
from art where art.codice = i_art_codice
into d_valore;

RETURN d_valore;

END
