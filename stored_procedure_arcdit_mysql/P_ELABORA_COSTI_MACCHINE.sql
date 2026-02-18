/*
CREATE PROCEDURE P_ELABORA_COSTI_MACCHINE(IN i_codmac VARCHAR(8), IN i_datain DATE, IN i_aggiorna VARCHAR(2))
    COMMENT 'Aggiorna costi su tabella macchine'
BEGIN
  declare l_valore                 decimal(18,6);
  declare l_idmac                  integer;
  declare l_anni_ammortamento      integer;
  declare l_costo_acquisto         decimal(18,6);
  declare l_contratto_manutenzione decimal(18,6);
  declare l_ore_annue_previste     integer;
  declare l_elaboro_da_cdc         varchar(2);
  declare l_cen_anno_riferimento   integer; 
  declare l_cen_percentuale        decimal(18,6);
  declare l_tvc_percentuale        decimal(18,6);
  declare l_cen_codice             varchar(8);
  declare l_tvc_codice             varchar(8);
  declare l_totale                 decimal(18,6);
  declare l_datain                 date;
  declare l_datafi                 date;
  declare l_codmac                 varchar(8);
  
  select id, anni_ammortamento, costo_acquisto, contratto_manutenzione, ore_annue_previste,
     elaboro_da_cdc, cen_anno_riferimento, cen_percentuale, tvc_percentuale, cen_codice, tvc_codice, codice 
  from mac 
	where codice = i_codmac 
	into l_idmac, l_anni_ammortamento, l_costo_acquisto, l_contratto_manutenzione, l_ore_annue_previste,
	  l_elaboro_da_cdc, l_cen_anno_riferimento, l_cen_percentuale, l_tvc_percentuale, l_cen_codice, l_tvc_codice, l_codmac;
	  
  if l_anni_ammortamento > 0 and l_costo_acquisto > 0 then 
    set l_valore = (l_costo_acquisto / l_anni_ammortamento);
  else 
	 set l_valore = 0;
  end if;
  set l_totale = 0;
  
  if l_elaboro_da_cdc = 'si' and l_cen_anno_riferimento > 2000 then 
    set l_datain = '2010-01-01';
    set l_datafi = '2010-01-01';
    if l_tvc_codice <> '' and l_cen_codice <> '' then 
      select coalesce(sum(cem.importo_dare_euro + cem.importo_avere_euro), 0) 
	    from cem 
	    where cem.cen_codice = l_cen_codice and
		    cem.tvc_codice = l_tvc_codice and
		    year(cem.data_registrazione) = l_cen_anno_riferimento 
        into l_totale;
      set l_totale = l_totale * l_cen_percentuale / 100;
      set l_totale = l_totale * l_tvc_percentuale / 100;
    end if; 
    if l_tvc_codice = '' and l_cen_codice <> '' then 
      select coalesce(sum(cem.importo_dare_euro + cem.importo_avere_euro), 0)
	    from cem 
	    where cem.cen_codice = l_cen_codice and year(cem.data_registrazione) = l_cen_anno_riferimento 
      into l_totale;
      set l_totale=l_totale * l_cen_percentuale / 100;
    end if;
	  if l_tvc_codice <> '' and l_cen_codice = '' then 
      select coalesce(sum(cem.importo_dare_euro + cem.importo_avere_euro), 0)
	    from cem 
	    where cem.tvc_codice = l_tvc_codice and year(cem.data_registrazione) = l_cen_anno_riferimento 
      into l_totale;
      set l_totale = l_totale * l_tvc_percentuale / 100;
    end if;  
    if l_totale < 0 then 
		  set l_totale = l_totale * -1;
    end if; 
  end if;
 
  set l_valore = l_valore + l_contratto_manutenzione + l_totale ;
  
  if l_ore_annue_previste <> 0 and l_valore <> 0 then 
    set l_valore = l_valore / l_ore_annue_previste;
  end if; 
  update mac set costo_orario_calcolato = l_valore where id=l_idmac ;
     
  if i_aggiorna = 'si' then
    insert into maccos(mac_codice, data_inizio, costo) values(l_codmac, i_datain, l_valore)
    on duplicate key update data_inizio = i_datain, costo = l_valore;
	end if;
	
END
*/
