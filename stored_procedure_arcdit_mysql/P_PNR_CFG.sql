CREATE PROCEDURE P_PNR_CFG
(IN  i_operazione             char(1), 
IN  i_progressivo_old         int, 
IN  i_cfg_tipo_old            char(1), 
IN  i_cfg_codice_old          varchar(8), 
IN  i_partite_old             char(1), 
IN  i_importo_dare_euro_old   numeric(18,2),
IN  i_importo_avere_euro_old  numeric(18,2),
IN  i_importo_dare_old   			numeric(18,2),
IN  i_importo_avere_old  			numeric(18,2),
IN  i_progressivo_new         int, 
IN  i_cfg_tipo_new            char(1), 
IN  i_cfg_codice_new          varchar(8), 
IN  i_partite_new             char(1), 
IN  i_importo_dare_euro_new   numeric(18,2),
IN  i_importo_avere_euro_new  numeric(18,2),
IN  i_importo_dare_new   			numeric(18,2),
IN  i_importo_avere_new  			numeric(18,2))
 
BEGIN 
declare d_tipo_movimento varchar(30); 
declare d_ese_codice varchar(4); 
declare d_tco_codice varchar(4); 
declare d_importo_dare_euro numeric(18, 2); 
declare d_importo_avere_euro numeric(18, 2); 
declare d_importo_dare numeric(18, 2); 
declare d_importo_avere numeric(18, 2); 
declare d_importo_insoluto numeric(18, 2); 
declare d_importo_apertura numeric(18, 2); 
declare d_importo_chiusura numeric(18, 2); 
declare d_numero_insoluto int; 

if (i_operazione = 'D') or (i_operazione = 'U') then 
  set d_importo_dare_euro = i_importo_dare_euro_old * -1; 
  set d_importo_avere_euro = i_importo_avere_euro_old * -1; 
  set d_importo_dare = i_importo_dare_old * -1; 
  set d_importo_avere = i_importo_avere_old * -1; 
  select tco.tipo_movimento, pnt.ese_codice 
  from pnt 
  inner join tco on tco.codice = pnt.tco_codice 
  where progressivo = i_progressivo_old into d_tipo_movimento, d_ese_codice; 
  
  /* aggiorna cfg */ 
  update cfg set 
  importo_saldo = importo_saldo + d_importo_dare_euro - d_importo_avere_euro,
  importo_saldo_tva = importo_saldo_tva + d_importo_dare - d_importo_avere
  where cfg_tipo = i_cfg_tipo_old and cfg_codice = i_cfg_codice_old; 
  
  /* aggiorna cfgese */ 
/*
  if (i_partite_old = 'I' and i_cfg_tipo_old = 'C') then 
    set d_numero_insoluto = -1; 
    if (d_importo_dare_euro <> 0) then 
      set d_importo_insoluto = d_importo_dare_euro; 
    else 
     set d_importo_insoluto = d_importo_avere_euro * -1; 
    end if; 
  else 
    set d_importo_insoluto = 0; 
    set d_numero_insoluto = 0; 
  end if; 

  if (d_tipo_movimento = 'apertura bilancio') then 
    set d_importo_apertura = d_importo_dare_euro - d_importo_avere_euro; 
  else 
    set d_importo_apertura = 0; 
  end if; 

  if (d_tipo_movimento = 'chiusura bilancio') then 
    set d_importo_chiusura = d_importo_dare_euro - d_importo_avere_euro; 
  else 
    set d_importo_chiusura = 0; 
  end if; 

  if (not exists(select id from cfgese where cfg_tipo = i_cfg_tipo_old and cfg_codice = i_cfg_codice_old and 
    ese_codice = d_ese_codice)) then 
    insert into cfgese 
      (cfg_tipo, cfg_codice, ese_codice, importo_saldo, importo_saldo_tva, numero_insoluti, importo_insoluti, importo_apertura, importo_chiusura) 
    values 
      (i_cfg_tipo_old, i_cfg_codice_old, d_ese_codice, d_importo_dare_euro - d_importo_avere_euro, d_importo_dare - d_importo_avere, d_numero_insoluto, d_importo_insoluto, d_importo_apertura, d_importo_chiusura); 
  else 
    update cfgese set 
      importo_saldo = importo_saldo + d_importo_dare_euro - d_importo_avere_euro, 
      importo_saldo_tva = importo_saldo_tva + d_importo_dare - d_importo_avere, 
      numero_insoluti = numero_insoluti + d_numero_insoluto, 
      importo_insoluti = importo_insoluti + d_importo_insoluto, 
      importo_apertura = importo_apertura + d_importo_apertura, 
      importo_chiusura = importo_chiusura + d_importo_chiusura 
    where cfg_tipo = i_cfg_tipo_old and cfg_codice = i_cfg_codice_old and ese_codice = d_ese_codice; 
  end if; 
*/

end if; 

if (i_operazione = 'I') or (i_operazione = 'U') then 
  set d_importo_dare_euro = i_importo_dare_euro_new; 
  set d_importo_avere_euro = i_importo_avere_euro_new; 
  set d_importo_dare = i_importo_dare_new; 
  set d_importo_avere = i_importo_avere_new; 
  select tco.tipo_movimento, pnt.ese_codice 
    from pnt 
    inner join tco on tco.codice = pnt.tco_codice 
    where progressivo = i_progressivo_new into d_tipo_movimento, d_ese_codice; 
	
  /* aggiorna cfg */ 
  update cfg set 
    importo_saldo = importo_saldo + d_importo_dare_euro - d_importo_avere_euro,
    importo_saldo_tva = importo_saldo_tva + d_importo_dare - d_importo_avere
  where cfg_tipo = i_cfg_tipo_new and cfg_codice = i_cfg_codice_new; 
  
  /* aggiorna cfgese */ 
/*
  if (i_partite_new = 'I' and i_cfg_tipo_new = 'C') then 
    set d_numero_insoluto = 1; 
    if (d_importo_dare_euro <> 0) then 
      set d_importo_insoluto = d_importo_dare_euro; 
    else 
      set d_importo_insoluto = d_importo_avere_euro; 
    end if; 
  else 
    set d_importo_insoluto = 0; 
    set d_numero_insoluto = 0; 
  end if; 
  
  if (d_tipo_movimento = 'apertura bilancio') then 
    set d_importo_apertura = d_importo_dare_euro - d_importo_avere_euro; 
  else 
    set d_importo_apertura = 0; 
  end if; 
  
  if (d_tipo_movimento = 'chiusura bilancio') then 
    set d_importo_chiusura = d_importo_dare_euro - d_importo_avere_euro; 
  else 
    set d_importo_chiusura = 0; 
  end if; 
  
  if (not exists(select id from cfgese where cfg_tipo = i_cfg_tipo_new and cfg_codice = i_cfg_codice_new and ese_codice = d_ese_codice)) then 
    insert into cfgese 
      (cfg_tipo, cfg_codice, ese_codice, importo_saldo, importo_saldo_tva, numero_insoluti, importo_insoluti, importo_apertura, importo_chiusura) 
    values 
      (i_cfg_tipo_new, i_cfg_codice_new, d_ese_codice, d_importo_dare_euro - d_importo_avere_euro, d_importo_dare - d_importo_avere, d_numero_insoluto, d_importo_insoluto, d_importo_apertura, d_importo_chiusura); 
  else 
    update cfgese set 
      importo_saldo = importo_saldo + d_importo_dare_euro - d_importo_avere_euro, 
      importo_saldo_tva = importo_saldo_tva + d_importo_dare - d_importo_avere, 
      numero_insoluti = numero_insoluti + d_numero_insoluto, 
      importo_insoluti = importo_insoluti + d_importo_insoluto, 
      importo_apertura = importo_apertura + d_importo_apertura, 
      importo_chiusura = importo_chiusura + d_importo_chiusura 
    where cfg_tipo = i_cfg_tipo_new and cfg_codice = i_cfg_codice_new and ese_codice = d_ese_codice; 
  end if; 
*/

end if; 

END

