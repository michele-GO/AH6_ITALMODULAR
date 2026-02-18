CREATE PROCEDURE P_MMR_MAG 
(
  IN  `i_operazione`               varchar(1),
  IN  `i_id_old`          	   	   int,
  IN  `i_progressivo_old`          int,
  IN  `i_art_codice_old`           varchar(50),
  IN  `i_quantita_old`             numeric(18,4),
  IN  `i_tipo_movimento_old`       varchar(20),
  IN  `i_importo_old`              numeric(18,2),
  IN  `i_importo_euro_old`         numeric(18,2),
  IN  `i_importo_spese_old`        numeric(18,2),
  IN  `i_importo_spese_euro_old`   numeric(18,2),
  IN  `i_tma_codice_old`           varchar(4),

  IN  `i_id_new`              	   int,
  IN  `i_progressivo_new`          int,
  IN  `i_art_codice_new`           varchar(50),
  IN  `i_quantita_new`             numeric(18,4),
  IN  `i_prezzo_new`               numeric(18,6),
  IN  `i_tsm_codice_new`           varchar(04),
  IN  `i_tsm_codice_art_new`       varchar(04),
  IN  `i_tipo_movimento_new`       varchar(20),
  IN  `i_importo_new`              numeric(18,2),
  IN  `i_importo_euro_new`         numeric(18,2),
  IN  `i_importo_spese_new`        numeric(18,2),
  IN  `i_importo_spese_euro_new`   numeric(18,2),
  IN  `i_tma_codice_new`           varchar(4)
)
BEGIN 
  declare d_ese_codice 				varchar(4);
  declare d_data_registrazione 		date;
  declare d_tva_codice 				varchar(04);
  declare d_cambio 					numeric(18, 6);
  declare d_art_codice 				varchar(50);
  declare d_quantita 				numeric(18, 4);
  declare d_prezzo 					numeric(18, 6);
  declare d_tsm_codice 				varchar(4);
  declare d_tsm_codice_art 			varchar(4);
  declare d_tipo_movimento 			varchar(20);
  declare d_tmo_tipo_movimento 		varchar(20);
  declare d_importo 				numeric(18, 2);
  declare d_importo_euro 			numeric(18, 2);
  declare d_spese 					numeric(18, 2);
  declare d_spese_euro 				numeric(18, 2);
  declare d_tmo_codice 				varchar(4);
  declare d_tma_codice 				varchar(4);
  declare d_prezzo_lordo 			numeric(18, 6);
  declare d_esistenza 				varchar(20);
  declare d_ultimi_valori 			varchar(20);
  declare d_valorizzazione 			varchar(30);

  declare d_data_carico	    		date;
  declare d_tva_codice_carico		varchar(04);
  declare d_prezzo_carico 			numeric(18, 6);
  declare d_prezzo_lordo_carico 	numeric(18, 6);
  declare d_tsm_codice_carico 		varchar(4);
  declare d_tsm_codice_art_carico 	varchar(4);
  

  if (i_operazione = 'I') or (i_operazione = 'U') then
    select mmt.data_registrazione, mmt.tmo_codice, mmt.ese_codice, mmt.tva_codice, mmt.cambio, tmo.esistenza,
      tmo.tipo_movimento, tmo.ultimi_valori, tmo.valorizzazione
    from mmt
    inner join tmo on tmo.codice = mmt.tmo_codice
    where mmt.progressivo = i_progressivo_new
    into d_data_registrazione, d_tmo_codice, d_ese_codice, d_tva_codice, d_cambio, d_esistenza, d_tmo_tipo_movimento,
      d_ultimi_valori, d_valorizzazione;

    set d_art_codice = i_art_codice_new;
    set d_quantita = i_quantita_new;
    set d_prezzo = i_prezzo_new;
    set d_tsm_codice = i_tsm_codice_new;
    set d_tsm_codice_art = i_tsm_codice_art_new;
    set d_tipo_movimento = i_tipo_movimento_new;
    set d_importo = i_importo_new;
    set d_importo_euro = i_importo_euro_new;
    set d_spese = i_importo_spese_new;
    set d_spese_euro = i_importo_spese_euro_new;
    set d_tma_codice = i_tma_codice_new;

    if (d_tipo_movimento = 'omaggio' or d_tipo_movimento = 'sconto merce') then
      set d_prezzo = 0;
      set d_tsm_codice = '';
      set d_tsm_codice_art = '';
      set d_importo = 0;
      set d_importo_euro = 0;
      set d_spese = 0;
      set d_spese_euro = 0;
    end if;

    set d_prezzo_lordo = d_prezzo;
    if (d_prezzo <> 0 and d_tsm_codice = '' and d_tsm_codice_art = '' and d_spese = 0) then
      set d_prezzo = d_prezzo / d_cambio;
    else
      if (d_quantita = 0) then
        set d_prezzo = 0;
      else
        set d_prezzo = (d_importo_euro + d_spese_euro) / d_quantita;
      end if;
    end if;

    /* aggiorna MAG */
    if (d_esistenza = 'incrementa') then
      set d_quantita = d_quantita;
    end if;
    if (d_esistenza = 'decrementa') then
      set d_quantita = d_quantita * - 1;
    end if;
    if (d_esistenza = 'ignora') then
      set d_quantita = 0;
    end if;

    if (not exists(select id from mag where art_codice = d_art_codice and tma_codice = d_tma_codice)) then
      insert into mag (art_codice, tma_codice, esistenza) 
        values (d_art_codice, d_tma_codice, d_quantita);
    else
      update mag set esistenza = esistenza + d_quantita 
        where art_codice = d_art_codice and tma_codice = d_tma_codice;
    end if;

    if (d_ultimi_valori = 'carico' and d_prezzo <> 0) then
      update mag set prezzo_carico = d_prezzo
        where art_codice = d_art_codice and tma_codice = d_tma_codice
        and (d_data_registrazione >= data_carico or data_carico is null);
    end if;

    if (d_ultimi_valori = 'carico' and d_prezzo_lordo <> 0) then
      update mag set data_carico = d_data_registrazione, prezzo_carico_lordo = d_prezzo_lordo,
        tsm_codice_carico = d_tsm_codice, tsm_codice_art_carico = d_tsm_codice_art, tva_codice_carico = d_tva_codice
      where art_codice = d_art_codice and tma_codice = d_tma_codice and
        (d_data_registrazione >= data_carico or data_carico is null);
	end if;

    if (d_ultimi_valori = 'scarico' and d_prezzo <> 0) then
      update mag set prezzo_scarico = d_prezzo
        where art_codice = d_art_codice and tma_codice = d_tma_codice
        and (d_data_registrazione >= data_carico or data_carico is null);
    end if;

    if (d_ultimi_valori = 'scarico' and d_prezzo_lordo <> 0) then
      update mag set data_scarico = d_data_registrazione, prezzo_scarico_lordo = d_prezzo_lordo,
        tsm_codice_scarico = d_tsm_codice, tsm_codice_art_scarico = d_tsm_codice_art, tva_codice_scarico = d_tva_codice
      where art_codice = d_art_codice and tma_codice = d_tma_codice;
    end if;

    /* aggiorna MAGESE */
    if (not exists(select id from magese where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice)) then
      insert into magese (art_codice, tma_codice, ese_codice, esistenza) 
        values (d_art_codice, d_tma_codice, d_ese_codice, d_quantita);
    else
      update magese set esistenza = esistenza + d_quantita where 
        art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
    end if;

    if (d_tmo_tipo_movimento = 'apertura inventario') then
      update magese set quantita_apertura = quantita_apertura + d_quantita, valore_apertura = valore_apertura + d_importo_euro 
        where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
    end if;

    if (d_tmo_tipo_movimento = 'chiusura inventario') then
      update magese set quantita_chiusura = quantita_chiusura - d_quantita, valore_chiusura = valore_chiusura + d_importo_euro 
        where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
    end if;

    if (d_esistenza = 'incrementa') then
      if (d_valorizzazione = 'incrementa') then
        if (not (d_importo_euro = 0 and d_spese_euro = 0 and d_tipo_movimento = 'normale')) then
          update magese set quantita_entrate_val = quantita_entrate_val + d_quantita 
            where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
        end if;
        update magese set valore_entrate_val = valore_entrate_val + d_importo_euro + d_spese_euro
          where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
      end if;
      if (d_valorizzazione = 'decrementa') then
        if (not (d_importo_euro = 0 and d_spese_euro = 0 and d_tipo_movimento = 'normale')) then
          update magese set quantita_entrate_val = quantita_entrate_val - d_quantita
            where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
        end if;
        update magese set valore_entrate_val = valore_entrate_val - d_importo_euro - d_spese_euro
          where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
      end if;
    end if;
    if (d_esistenza = 'decrementa') then
      if (d_valorizzazione = 'incrementa') then
        if (not (d_importo_euro = 0 and d_spese_euro = 0 and d_tipo_movimento = 'normale')) then
          update magese set quantita_entrate_val = quantita_entrate_val - d_quantita 
            where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
        end if;
        update magese set valore_entrate_val = valore_entrate_val + d_importo_euro + d_spese_euro
          where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
      end if;
      if (d_valorizzazione = 'decrementa') then
        if (not (d_importo_euro = 0 and d_spese_euro = 0 and d_tipo_movimento = 'normale')) then
          update magese set quantita_entrate_val = quantita_entrate_val + d_quantita 
            where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
        end if;
        update magese set valore_entrate_val = valore_entrate_val - d_importo_euro - d_spese_euro
          where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
      end if;
    end if;
    
    if (d_ultimi_valori = 'carico' and d_prezzo <> 0) then
      update magese set prezzo_carico = d_prezzo, data_carico = d_data_registrazione
        where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice
        and (d_data_registrazione >= data_carico or data_carico is null);
    end if;
	
	/*  aggiorna prezzo medio scarico  */
 	if (d_ultimi_valori = 'scarico') and (d_esistenza = 'decrementa') then
      if d_tipo_movimento = 'normale' then
        update magese set valore_uscite_val = valore_uscite_val + d_importo_euro + d_spese_euro
          where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
      end if;
      update magese set quantita_uscite_val = quantita_uscite_val - d_quantita
        where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
    end if;	
    if (d_ultimi_valori = 'scarico') and (d_esistenza = 'incrementa') then
      if d_tipo_movimento = 'normale' then
        update magese set valore_uscite_val = valore_uscite_val - d_importo_euro - d_spese_euro
          where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
      end if;
      update magese set quantita_uscite_val = quantita_uscite_val + d_quantita 
        where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
    end if;	
	/*  fine aggiorna prezzo medio scarico  */
  end if;
  
  if (i_operazione = 'D') or (i_operazione = 'U') then
    select mmt.data_registrazione, mmt.tmo_codice, mmt.ese_codice, mmt.cambio, 
      tmo.esistenza, tmo.tipo_movimento, tmo.ultimi_valori, tmo.valorizzazione
    from mmt
    inner join tmo on tmo.codice = mmt.tmo_codice
    where mmt.progressivo = i_progressivo_old
    into d_data_registrazione, d_tmo_codice, d_ese_codice, d_cambio, d_esistenza, 
      d_tmo_tipo_movimento, d_ultimi_valori, d_valorizzazione;

    set d_art_codice = i_art_codice_old;
    set d_quantita = i_quantita_old * -1;
    set d_tipo_movimento = i_tipo_movimento_old;
    set d_importo = i_importo_old * -1;
    set d_importo_euro = i_importo_euro_old * -1;
    set d_spese = i_importo_spese_old * -1;
    set d_spese_euro = i_importo_spese_euro_old * -1;
    set d_tma_codice = i_tma_codice_old;

    if (d_tipo_movimento = 'omaggio') or (d_tipo_movimento = 'sconto merce') then
      set d_importo = 0;
      set d_importo_euro = 0;
      set d_spese = 0;
      set d_spese_euro = 0;
    end if;

    /* aggiorna MAG */
    if (d_esistenza = 'incrementa') then
      set d_quantita = d_quantita;
    end if;
    if (d_esistenza = 'decrementa') then
      set d_quantita = d_quantita * - 1;
    end if;
    if (d_esistenza = 'ignora') then
      set d_quantita = 0;
    end if;

    if (not exists(select id from mag where art_codice = d_art_codice and tma_codice = d_tma_codice)) then
      insert into mag (art_codice, tma_codice, esistenza) 
        values (d_art_codice, d_tma_codice, d_quantita);
    else
      update mag set esistenza = esistenza + d_quantita 
        where art_codice = d_art_codice and tma_codice = d_tma_codice;
    end if;

	if i_operazione = 'D' then
      if d_ultimi_valori = 'carico' then
    	select mmt.data_registrazione, 
		  case when mmr.quantita <> 0 then mmr.importo / mmr.quantita else mmr.importo end,
		  case when mmr.prezzo <> 0 then mmr.prezzo else mmr.importo end,
		  mmr.tsm_codice, mmr.tsm_codice_art, mmt.tva_codice
		  from mmr 
		  inner join mmt on mmt.progressivo = mmr.progressivo
		  inner join tmo on tmo.codice = mmt.tmo_codice
		  where mmr.art_codice = d_art_codice and mmr.tma_codice = d_tma_codice and tmo.ultimi_valori = 'carico' and mmr.id <> i_id_old
          order by mmt.data_registrazione desc limit 1
          into d_data_carico, d_prezzo_carico, d_prezzo_lordo_carico, d_tsm_codice_carico, d_tsm_codice_art_carico, d_tva_codice_carico;

	    update mag set data_carico = d_data_carico, prezzo_carico = coalesce(d_prezzo_carico, 0), prezzo_carico_lordo = coalesce(d_prezzo_lordo_carico, 0), 
		    tsm_codice_carico = coalesce(d_tsm_codice_carico, ''), tsm_codice_art_carico = coalesce(d_tsm_codice_art_carico, ''), 
			tva_codice_carico = coalesce(d_tva_codice_carico, '')
   	    where mag.art_codice = d_art_codice and mag.tma_codice = d_tma_codice;

      end if;
	end if;

    /* aggiorna MAGESE */
    if (not exists(select id from magese where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice)) then
      insert into magese (art_codice, tma_codice, ese_codice, esistenza) 
        values (d_art_codice, d_tma_codice, d_ese_codice, d_quantita);
    else
      update magese set esistenza = esistenza + d_quantita 
        where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
    end if;

    if (d_tmo_tipo_movimento = 'apertura inventario') then
      update magese set quantita_apertura = quantita_apertura + d_quantita, valore_apertura = valore_apertura + d_importo_euro
        where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
    end if;

    if (d_tmo_tipo_movimento = 'chiusura inventario') then
      update magese set quantita_chiusura = quantita_chiusura - d_quantita, valore_chiusura = valore_chiusura + d_importo_euro
        where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
    end if;

    if (d_esistenza = 'incrementa') then
      if (d_valorizzazione = 'incrementa') then
        if (not (d_importo_euro = 0 and d_spese_euro = 0 and d_tipo_movimento = 'normale')) then
          update magese set quantita_entrate_val = quantita_entrate_val + d_quantita 
            where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
        end if;
        update magese set valore_entrate_val = valore_entrate_val + d_importo_euro + d_spese_euro
          where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
      end if;
      if (d_valorizzazione = 'decrementa') then
        if (not (d_importo_euro = 0 and d_spese_euro = 0 and d_tipo_movimento = 'normale')) then
          update magese set quantita_entrate_val = quantita_entrate_val - d_quantita 
            where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
        end if;
        update magese set valore_entrate_val = valore_entrate_val - d_importo_euro - d_spese_euro
          where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
      end if;
    end if;
    if (d_esistenza = 'decrementa') then
      if (d_valorizzazione = 'incrementa') then
        if (not (d_importo_euro = 0 and d_spese_euro = 0 and d_tipo_movimento = 'normale')) then
          update magese set quantita_entrate_val = quantita_entrate_val - d_quantita 
            where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
        end if;
        update magese set valore_entrate_val = valore_entrate_val + d_importo_euro + d_spese_euro
          where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
      end if;
      if (d_valorizzazione = 'decrementa') then
        if (not (d_importo_euro = 0 and d_spese_euro = 0 and d_tipo_movimento = 'normale')) then
          update magese set quantita_entrate_val = quantita_entrate_val + d_quantita 
            where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
        end if;
        update magese set valore_entrate_val = valore_entrate_val - d_importo_euro - d_spese_euro 
          where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
      end if;
    end if;

	if i_operazione = 'D' then
      if d_ultimi_valori = 'carico' then
	    if d_data_carico between @data_inizio and @data_bilancio then
    	  update magese set data_carico = d_data_carico, prezzo_carico = coalesce(d_prezzo_carico, 0)
    	    where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
		else
    	  update magese set data_carico = null, prezzo_carico = 0
    	    where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
		end if;
	  end if;
	end if;

	/*  aggiorna prezzo medio scarico  */
    if (d_ultimi_valori = 'scarico') and (d_esistenza = 'decrementa') then
      if d_tipo_movimento = 'normale' then
        update magese set valore_uscite_val = valore_uscite_val + d_importo_euro + d_spese_euro
          where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
      end if;
      update magese set quantita_uscite_val = quantita_uscite_val - d_quantita
        where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
    end if;	
    if (d_ultimi_valori = 'scarico') and (d_esistenza = 'incrementa') then
      if d_tipo_movimento = 'normale' then
        update magese set valore_uscite_val = valore_uscite_val - d_importo_euro - d_spese_euro
          where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
      end if;
      update magese set quantita_uscite_val = quantita_uscite_val + d_quantita 
        where art_codice = d_art_codice and tma_codice = d_tma_codice and ese_codice = d_ese_codice;
    end if;	
	/*  fine aggiorna prezzo medio scarico  */
  end if;


END
