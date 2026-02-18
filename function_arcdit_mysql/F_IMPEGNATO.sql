CREATE FUNCTION F_IMPEGNATO(i_art_codice varchar(50), i_tma_codice varchar(04))
	RETURNS decimal(18,6)
    DETERMINISTIC
    COMMENT 'calcola impegnato da documenti'
BEGIN

DECLARE d_impegnato decimal(18,6) DEFAULT 0;

if i_tma_codice = '' then
  select

  coalesce((select sum(bvr.tum_quantita_base - bvr.tum_quantita_evasa_base) from bvr 
    inner join bvt on bvt.progressivo = bvr.progressivo
	left join tmo on tmo.codice = bvt.tmo_codice
    where bvr.art_codice = art.codice 
	and (tmo.esistenza = 'decrementa' or tmo.esistenza is null)
    and bvr.tma_codice <> '' and bvr.no_impegnato = 'no' and (bvr.situazione = 'inserito')), 0) +

  coalesce((select sum(cvr.tum_quantita_base - cvr.tum_quantita_evasa_base) from cvr 
    inner join cvt on cvt.progressivo = cvr.progressivo
	left join tmo on tmo.codice = cvt.tmo_codice
    where cvr.art_codice = art.codice 
	and (tmo.esistenza = 'decrementa' or tmo.esistenza is null)
    and cvr.tma_codice <> '' and cvr.no_impegnato = 'no' and (cvr.situazione = 'inserito')), 0) +

  coalesce((select sum(dvr.tum_quantita_base - dvr.tum_quantita_evasa_base) from dvr 
    inner join dvt on dvt.progressivo = dvr.progressivo
	left join tmo on tmo.codice = dvt.tmo_codice
    where dvr.art_codice = art.codice 
	and (tmo.esistenza = 'decrementa' or tmo.esistenza is null)
    and dvr.tma_codice <> '' and dvr.no_impegnato = 'no' and (dvr.situazione = 'inserito')), 0) +

  coalesce((select sum(fvr.tum_quantita_base - fvr.tum_quantita_evasa_base) from fvr 
    inner join fvt on fvt.progressivo = fvr.progressivo
	left join tmo on tmo.codice = fvt.tmo_codice
    where fvr.art_codice = art.codice 
	and (tmo.esistenza = 'decrementa' or tmo.esistenza is null)
    and fvr.tma_codice <> '' and fvr.no_impegnato = 'no' and (fvr.situazione = 'inserito')), 0) +

  coalesce((select sum(ovr.tum_quantita_base - ovr.tum_quantita_evasa_base) from ovr 
    where ovr.art_codice = art.codice 
    and ovr.tma_codice <> '' and ovr.no_impegnato = 'no' and (ovr.situazione = 'inserito' or ovr.situazione = 'evaso parziale')), 0) +

  coalesce((select sum(opr.quantita - opr.quantita_evasa) from opr 
    inner join opt on opt.progressivo = opr.progressivo
	left join tmo on tmo.codice = opt.tmo_codice_materie_prime
    where opr.art_codice = art.codice 
	and (tmo.esistenza = 'decrementa' or tmo.esistenza is null)
    and opr.tma_codice <> '' and (opr.situazione = 'inserito' or opr.situazione = 'evaso parziale')), 0)

  from art
  where art.codice = i_art_codice

  into d_impegnato;
else
  select

  coalesce((select sum(bvr.tum_quantita_base - bvr.tum_quantita_evasa_base) from bvr 
    inner join bvt on bvt.progressivo = bvr.progressivo
	left join tmo on tmo.codice = bvt.tmo_codice
    where bvr.art_codice = art.codice 
    and bvr.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and (tmo.esistenza = 'decrementa' or tmo.esistenza is null)
    and bvr.no_impegnato = 'no' and (bvr.situazione = 'inserito')), 0) +

  coalesce((select sum(cvr.tum_quantita_base - cvr.tum_quantita_evasa_base) from cvr 
    inner join cvt on cvt.progressivo = cvr.progressivo
	left join tmo on tmo.codice = cvt.tmo_codice
    where cvr.art_codice = art.codice 
    and cvr.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and (tmo.esistenza = 'decrementa' or tmo.esistenza is null)
    and cvr.no_impegnato = 'no' and (cvr.situazione = 'inserito')), 0) +

  coalesce((select sum(dvr.tum_quantita_base - dvr.tum_quantita_evasa_base) from dvr 
    inner join dvt on dvt.progressivo = dvr.progressivo
	left join tmo on tmo.codice = dvt.tmo_codice
    where dvr.art_codice = art.codice 
    and dvr.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and (tmo.esistenza = 'decrementa' or tmo.esistenza is null)
    and dvr.no_impegnato = 'no' and (dvr.situazione = 'inserito')), 0) +

  coalesce((select sum(fvr.tum_quantita_base - fvr.tum_quantita_evasa_base) from fvr 
    inner join fvt on fvt.progressivo = fvr.progressivo
	left join tmo on tmo.codice = fvt.tmo_codice
    where fvr.art_codice = art.codice 
    and fvr.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and (tmo.esistenza = 'decrementa' or tmo.esistenza is null)
    and fvr.no_impegnato = 'no' and (fvr.situazione = 'inserito')), 0) +

  coalesce((select sum(ovr.tum_quantita_base - ovr.tum_quantita_evasa_base) from ovr 
    where ovr.art_codice = art.codice 
    and ovr.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and ovr.no_impegnato = 'no' and (ovr.situazione = 'inserito' or ovr.situazione = 'evaso parziale')), 0) +

  coalesce((select sum(opr.quantita - opr.quantita_evasa) from opr 
    inner join opt on opt.progressivo = opr.progressivo
	left join tmo on tmo.codice = opt.tmo_codice_materie_prime
    where opr.art_codice = art.codice 
    and opr.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and (tmo.esistenza = 'decrementa' or tmo.esistenza is null)
	and (opr.situazione = 'inserito' or opr.situazione = 'evaso parziale')), 0) +

  coalesce((select sum(macinr.quantita) from macinr inner join macint on macint.progressivo = macinr.progressivo
    where macinr.art_codice = art.codice 
    and macinr.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and macint.situazione <> 'evaso'), 0) -
	
  coalesce((select sum(bvr.tum_quantita_base - bvr.tum_quantita_evasa_base) from bvr 
    inner join bvt on bvt.progressivo = bvr.progressivo
	left join tmo on tmo.codice = bvt.tmo_codice
    where bvr.art_codice = art.codice 
    and bvr.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and tmo.esistenza = 'incrementa'
    and bvr.no_impegnato = 'no' and (bvr.situazione = 'inserito')), 0) -

  coalesce((select sum(cvr.tum_quantita_base - cvr.tum_quantita_evasa_base) from cvr 
    inner join cvt on cvt.progressivo = cvr.progressivo
	left join tmo on tmo.codice = cvt.tmo_codice
    where cvr.art_codice = art.codice 
    and cvr.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and tmo.esistenza = 'incrementa'
    and cvr.no_impegnato = 'no' and (cvr.situazione = 'inserito')), 0) -

  coalesce((select sum(dvr.tum_quantita_base - dvr.tum_quantita_evasa_base) from dvr 
    inner join dvt on dvt.progressivo = dvr.progressivo
	left join tmo on tmo.codice = dvt.tmo_codice
    where dvr.art_codice = art.codice 
    and dvr.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and tmo.esistenza = 'incrementa'
    and dvr.no_impegnato = 'no' and (dvr.situazione = 'inserito')), 0) -

  coalesce((select sum(fvr.tum_quantita_base - fvr.tum_quantita_evasa_base) from fvr 
    inner join fvt on fvt.progressivo = fvr.progressivo
	left join tmo on tmo.codice = fvt.tmo_codice
    where fvr.art_codice = art.codice 
    and fvr.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and tmo.esistenza = 'incrementa'
    and fvr.no_impegnato = 'no' and (fvr.situazione = 'inserito')), 0) -

  coalesce((select sum(opr.quantita - opr.quantita_evasa) from opr 
    inner join opt on opt.progressivo = opr.progressivo
	left join tmo on tmo.codice = opt.tmo_codice_materie_prime
    where opr.art_codice = art.codice 
    and opr.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and tmo.esistenza = 'incrementa'
	and (opr.situazione = 'inserito' or opr.situazione = 'evaso parziale')), 0)


  from art
  inner join tma on tma.codice = i_tma_codice
  where art.codice = i_art_codice

  into d_impegnato;
end if;
  

RETURN d_impegnato;

END
