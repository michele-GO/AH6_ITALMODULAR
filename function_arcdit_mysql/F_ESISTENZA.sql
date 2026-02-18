CREATE FUNCTION F_ESISTENZA(i_art_codice varchar(50), i_tma_codice varchar(04), i_ese_codice varchar(04), 
    i_data_inizio date, i_data_fine date) 
	RETURNS decimal(18,6)
    DETERMINISTIC
    COMMENT 'calcola esistenza articolo da MMR'
BEGIN

DECLARE d_esistenza decimal(18,6) DEFAULT 0;

if i_tma_codice = '' then
  select coalesce(sum(mmr.quantita_entrate - mmr.quantita_uscite), 0) from mmr
  inner join mmt on mmt.progressivo = mmr.progressivo
  inner join tma on tma.codice = mmr.tma_codice
  where mmr.art_codice = i_art_codice and mmt.ese_codice = i_ese_codice and
    mmt.data_registrazione between i_data_inizio and i_data_fine and tma.proprieta = 'si'
  into d_esistenza;
else
  select coalesce(sum(mmr.quantita_entrate - mmr.quantita_uscite), 0) from mmr
  inner join mmt on mmt.progressivo = mmr.progressivo
  inner join tma on tma.codice = mmr.tma_codice
  where mmr.art_codice = i_art_codice and mmt.ese_codice = i_ese_codice and mmr.tma_codice = i_tma_codice and
    mmt.data_registrazione between i_data_inizio and i_data_fine and tma.proprieta = 'si'
  into d_esistenza;
end if;

RETURN d_esistenza;

END
