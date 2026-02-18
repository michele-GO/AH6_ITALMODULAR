CREATE FUNCTION F_ORDINATO(i_art_codice varchar(50), i_tma_codice varchar(04))
	RETURNS decimal(18,6)
    DETERMINISTIC
    COMMENT 'calcola ordinato da documenti'
BEGIN

DECLARE d_ordinato decimal(18,6) DEFAULT 0;

if i_tma_codice = '' then
  select

  coalesce((select sum(dar.tum_quantita_base - dar.tum_quantita_evasa_base) from dar 
    inner join dat on dat.progressivo = dar.progressivo
	left join tmo on tmo.codice = dat.tmo_codice
    where dar.art_codice = art.codice 
	and (tmo.esistenza = 'incrementa' or tmo.esistenza is null)
    and dar.tma_codice <> '' and (dar.situazione = 'inserito')), 0) +

  coalesce((select sum(far.tum_quantita_base - far.tum_quantita_evasa_base) from far 
    inner join fat on fat.progressivo = far.progressivo
	left join tmo on tmo.codice = fat.tmo_codice
    where far.art_codice = art.codice 
	and (tmo.esistenza = 'incrementa' or tmo.esistenza is null)
    and far.tma_codice <> '' and (far.situazione = 'inserito')), 0) +

  coalesce((select sum(oar.tum_quantita_base - oar.tum_quantita_evasa_base) from oar 
    where oar.art_codice = art.codice 
    and oar.tma_codice <> '' and (oar.situazione = 'inserito' or oar.situazione = 'evaso parziale')), 0) +

  coalesce((select sum(opt.quantita - opt.quantita_evasa) from opt 
	left join tmo on tmo.codice = opt.tmo_codice_finiti
    where opt.art_codice = art.codice 
	and (tmo.esistenza = 'incrementa' or tmo.esistenza is null)
    and opt.tma_codice_finiti <> '' and (opt.situazione = 'inserito' or opt.situazione = 'evaso parziale')), 0) -
	
  coalesce((select sum(dar.tum_quantita_base - dar.tum_quantita_evasa_base) from dar 
    inner join dat on dat.progressivo = dar.progressivo
	left join tmo on tmo.codice = dat.tmo_codice
    where dar.art_codice = art.codice 
	and tmo.esistenza = 'decrementa'
    and dar.tma_codice <> '' and (dar.situazione = 'inserito')), 0) -

  coalesce((select sum(far.tum_quantita_base - far.tum_quantita_evasa_base) from far 
    inner join fat on fat.progressivo = far.progressivo
	left join tmo on tmo.codice = fat.tmo_codice
    where far.art_codice = art.codice 
	and tmo.esistenza = 'decrementa'
    and far.tma_codice <> '' and (far.situazione = 'inserito')), 0) -
	
  coalesce((select sum(opt.quantita - opt.quantita_evasa) from opt 
	left join tmo on tmo.codice = opt.tmo_codice_finiti
    where opt.art_codice = art.codice 
	and tmo.esistenza = 'decrementa'
    and opt.tma_codice_finiti <> '' and (opt.situazione = 'inserito' or opt.situazione = 'evaso parziale')), 0)

  from art
  where art.codice = i_art_codice

  into d_ordinato;
else
  select

  coalesce((select sum(dar.tum_quantita_base - dar.tum_quantita_evasa_base) from dar 
    inner join dat on dat.progressivo = dar.progressivo
	left join tmo on tmo.codice = dat.tmo_codice
    where dar.art_codice = art.codice 
    and dar.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and (tmo.esistenza = 'incrementa' or tmo.esistenza is null)
	and (dar.situazione = 'inserito')), 0) +

  coalesce((select sum(far.tum_quantita_base - far.tum_quantita_evasa_base) from far 
    inner join fat on fat.progressivo = far.progressivo
	left join tmo on tmo.codice = fat.tmo_codice
    where far.art_codice = art.codice 
    and far.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and (tmo.esistenza = 'incrementa' or tmo.esistenza is null)
	and (far.situazione = 'inserito')), 0) +

  coalesce((select sum(oar.tum_quantita_base - oar.tum_quantita_evasa_base) from oar 
    where oar.art_codice = art.codice 
    and oar.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and (oar.situazione = 'inserito' or oar.situazione = 'evaso parziale')), 0) +

  coalesce((select sum(opt.quantita - opt.quantita_evasa) from opt 
	left join tmo on tmo.codice = opt.tmo_codice_finiti
    where opt.art_codice = art.codice 
    and opt.tma_codice_finiti = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and (tmo.esistenza = 'incrementa' or tmo.esistenza is null)
	and (opt.situazione = 'inserito' or opt.situazione = 'evaso parziale')), 0) -

  coalesce((select sum(dar.tum_quantita_base - dar.tum_quantita_evasa_base) from dar 
    inner join dat on dat.progressivo = dar.progressivo
	left join tmo on tmo.codice = dat.tmo_codice
    where dar.art_codice = art.codice 
    and dar.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and tmo.esistenza = 'decrementa'
	and (dar.situazione = 'inserito')), 0) -

  coalesce((select sum(far.tum_quantita_base - far.tum_quantita_evasa_base) from far 
    inner join fat on fat.progressivo = far.progressivo
	left join tmo on tmo.codice = fat.tmo_codice
    where far.art_codice = art.codice 
    and far.tma_codice = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and tmo.esistenza = 'decrementa'
	and (far.situazione = 'inserito')), 0) -

  coalesce((select sum(opt.quantita - opt.quantita_evasa) from opt 
	left join tmo on tmo.codice = opt.tmo_codice_finiti
    where opt.art_codice = art.codice 
    and opt.tma_codice_finiti = case when tma.tma_codice_impegnato_ordinato <> '' then tma.tma_codice_impegnato_ordinato else tma.codice end
	and tmo.esistenza = 'decrementa'
	and (opt.situazione = 'inserito' or opt.situazione = 'evaso parziale')), 0)

  from art
  inner join tma on tma.codice = i_tma_codice
  where art.codice = i_art_codice

  into d_ordinato;
end if;
  

RETURN d_ordinato;

END
