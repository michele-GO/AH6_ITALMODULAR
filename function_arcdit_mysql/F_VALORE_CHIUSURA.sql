CREATE FUNCTION F_VALORE_CHIUSURA(i_art_codice varchar(50), i_ese_codice varchar(04)) 
	RETURNS decimal(18,6)
    DETERMINISTIC
    COMMENT 'calcola valore chiusura da MMR'
BEGIN

DECLARE d_valore decimal(18,6);

select coalesce(round(sum(mmr.importo_euro + mmr.importo_spese_euro), 2), 0)
  from mmr
  inner join mmt on mmt.progressivo = mmr.progressivo
  inner join tma on tma.codice = mmr.tma_codice
  where mmr.art_codice = i_art_codice
    and mmt.ese_codice = i_ese_codice 
	and tma.proprieta = 'si' 
	and mmt.tipo_movimento = 'chiusura inventario'
into d_valore;

RETURN d_valore;

END
