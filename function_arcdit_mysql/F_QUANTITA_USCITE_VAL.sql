CREATE FUNCTION F_QUANTITA_USCITE_VAL(i_art_codice varchar(50), i_ese_codice varchar(04), i_data_inizio date, i_data_fine date) 
	RETURNS decimal(18,6)
    DETERMINISTIC
    COMMENT 'calcola qauntità uscite val da MMR'
BEGIN

DECLARE d_quantita decimal(18,6) DEFAULT 0;

select
(select coalesce(sum(mmr.quantita), 0) from mmr
  inner join mmt on mmt.progressivo = mmr.progressivo
  inner join tmo on tmo.codice = mmt.tmo_codice
  inner join tma on tma.codice = mmr.tma_codice
  where mmr.art_codice = art.codice 
    and mmt.ese_codice = i_ese_codice 
	and mmt.data_registrazione between i_data_inizio and i_data_fine 
	and tma.proprieta = 'si' 
	and tmo.ultimi_valori = 'scarico' 
	and tmo.esistenza = 'decrementa') -
(select coalesce(sum(mmr.quantita), 0) from mmr
  inner join mmt on mmt.progressivo = mmr.progressivo
  inner join tmo on tmo.codice = mmt.tmo_codice
  inner join tma on tma.codice = mmr.tma_codice
  where mmr.art_codice = art.codice 
    and mmt.ese_codice = i_ese_codice 
	and mmt.data_registrazione between i_data_inizio and i_data_fine 
	and tma.proprieta = 'si' 
	and tmo.ultimi_valori = 'scarico' 
	and tmo.esistenza = 'incrementa')
from art where art.codice = i_art_codice
into d_quantita;

RETURN d_quantita;

END
