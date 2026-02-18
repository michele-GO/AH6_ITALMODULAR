CREATE FUNCTION F_QUANTITA_APERTURA(i_art_codice varchar(50), i_tma_codice varchar(04), i_ese_codice varchar(04)) 
	RETURNS decimal(18,6)
    DETERMINISTIC
    COMMENT 'calcola quantità apertura da MMR'
BEGIN

DECLARE d_quantita decimal(18,6);

if i_tma_codice = '' then
  select coalesce(sum(mmr.quantita), 0)
    from mmr
    inner join mmt on mmt.progressivo = mmr.progressivo
    inner join tma on tma.codice = mmr.tma_codice
    where mmr.art_codice = i_art_codice
      and mmt.ese_codice = i_ese_codice 
	  and tma.proprieta = 'si' 
  	and mmt.tipo_movimento = 'apertura inventario'
  into d_quantita;
else
  select coalesce(sum(mmr.quantita), 0)
    from mmr
    inner join mmt on mmt.progressivo = mmr.progressivo
    inner join tma on tma.codice = mmr.tma_codice
    where mmr.art_codice = i_art_codice
      and mmr.tma_codice = i_tma_codice
      and mmt.ese_codice = i_ese_codice 
	  and tma.proprieta = 'si' 
  	and mmt.tipo_movimento = 'apertura inventario'
  into d_quantita;
end if;

RETURN d_quantita;

END
