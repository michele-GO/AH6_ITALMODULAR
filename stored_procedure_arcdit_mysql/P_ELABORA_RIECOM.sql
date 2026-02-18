/*
CREATE PROCEDURE P_ELABORA_RIECOM(IN i_codcom VARCHAR(20), IN i_tipolo VARCHAR(10), IN i_utente VARCHAR(8))
BEGIN
  delete from  arc_ordinamento.riecom where arc_ordinamento.riecom.utente_crea = i_utente;
     
  insert into arc_ordinamento.riecom (
    arc_ordinamento.riecom.utente_crea,
    arc_ordinamento.riecom.tipo_record,
    arc_ordinamento.riecom.codice_tabella,
    arc_ordinamento.riecom.descrizione,
    arc_ordinamento.riecom.consuntivo,
    arc_ordinamento.riecom.totale_min_cons,
    arc_ordinamento.riecom.totale_ore_cons,
    arc_ordinamento.riecom.rimborso_chilometrico)
  select i_utente, 'dip', coalesce(cmd.dip_codice, ''), coalesce(dip.descrizione, '') as descri,
    coalesce(cmd.costo_totale, 0) as totale, sum(coalesce(cmd.minuti, 0)) as totmin,
	 sum(coalesce(cmd.ore, 0)) as totore, sum(coalesce(cmd.rimborso_chilometrico,0)) as totckm
  from cmd 
	inner join dip on dip.codice = cmd.dip_codice
  where cmd.cms_codice = i_codcom and (cmd.tipologia = i_tipolo or i_tipolo = '') 
	group by dip.codice;

  insert into arc_ordinamento.riecom (
    arc_ordinamento.riecom.utente_crea,
    arc_ordinamento.riecom.tipo_record,
    arc_ordinamento.riecom.codice_tabella,
    arc_ordinamento.riecom.descrizione,
    arc_ordinamento.riecom.consuntivo,
    arc_ordinamento.riecom.totale_min_cons,
    arc_ordinamento.riecom.totale_ore_cons,
    arc_ordinamento.riecom.rimborso_chilometrico)
  select i_utente, 'fas', coalesce(cmd.fas_codice, ''), coalesce(fas.descrizione, '') as descri,
    coalesce(cmd.fase_costo_totale, 0) as totale, sum(coalesce(cmd.minuti, 0)) as totmin,
		sum(coalesce(cmd.ore, 0)) as totore, sum(coalesce(cmd.rimborso_chilometrico, 0)) as totckm
  from cmd 
	inner join fas on fas.codice = cmd.fas_codice 
  where cmd.cms_codice = i_codcom and (cmd.tipologia = i_tipolo or i_tipolo='') 
	group by cmd.fas_codice;	 

  insert into arc_ordinamento.riecom (
    arc_ordinamento.riecom.utente_crea,
    arc_ordinamento.riecom.tipo_record,
    arc_ordinamento.riecom.codice_tabella,
    arc_ordinamento.riecom.descrizione,
    arc_ordinamento.riecom.consuntivo,
    arc_ordinamento.riecom.totale_min_cons,
    arc_ordinamento.riecom.totale_ore_cons,
    arc_ordinamento.riecom.rimborso_chilometrico)
  select i_utente, 'tch', coalesce(tch.codice, ''), coalesce(tch.descrizione, '') as descri,
    coalesce(cmd.costo_totale, 0) as totale, sum(coalesce(cmd.minuti, 0)) as totmin,
		sum(coalesce(cmd.ore, 0)) as totore, sum(coalesce(cmd.rimborso_chilometrico, 0)) as totckm 
  from  cmd 
	inner join dip on dip.codice = cmd.dip_codice join tch on tch.codice = dip.tch_codice
  where cmd.cms_codice = i_codcom and (cmd.tipologia = i_tipolo or i_tipolo = '') 
	group by tch.codice;
  
  insert into arc_ordinamento.riecom(
    arc_ordinamento.riecom.utente_crea,
    arc_ordinamento.riecom.tipo_record,
    arc_ordinamento.riecom.codice_tabella,
	  rc_ordinamento.riecom.descrizione,  
    arc_ordinamento.riecom.totale_ore_prev)         
    select i_utente,'fas', coalesce(cmtpf.fas_codice,''), coalesce(fas.DESCRIZIONE,''), sum(cmtpf.ore_previste)
    from cms 
    inner join cmt on cmt.CMS_CODICE = cms.CODICE
    inner join cmtpf on cmtpf.id_cmt = cmt.id
    inner join fas on fas.CODICE = cmtpf.fas_codice
    where cms.CODICE = i_codcom
    group by cms.CODICE, cmtpf.fas_codice 
  on duplicate key update arc_ordinamento.riecom.totale_ore_prev = (select sum(cmtpf.ore_previste)
    from cms 
    inner join cmt on cmt.CMS_CODICE = cms.CODICE
    inner join cmtpf on cmtpf.id_cmt = cmt.id
    inner join fas on fas.CODICE = cmtpf.fas_codice
    where cms.CODICE = i_codcom and fas.codice = arc_ordinamento.riecom.codice_tabella);
      
  insert into arc_ordinamento.riecom(
    arc_ordinamento.riecom.utente_crea,
    arc_ordinamento.riecom.tipo_record,
    arc_ordinamento.riecom.codice_tabella,
		arc_ordinamento.riecom.descrizione,  
    arc_ordinamento.riecom.totale_ore_prev)         
    select i_utente,'tch', coalesce(cmtpo.tch_codice,''), coalesce(tch.DESCRIZIONE,''), sum( cmtpo.ore_totali) 
    from cms 
    inner join cmt on cmt.CMS_CODICE = cms.CODICE
    inner join cmtpo on cmtpo.id_cmt = cmt.id
    inner join tch on tch.CODICE = cmtpo.tch_codice
    where cms.CODICE = i_codcom
    group by cms.CODICE, cmtpo.tch_codice 
  on duplicate key update arc_ordinamento.riecom.totale_ore_prev = (select sum( cmtpo.ore_totali)
    from cms 
    inner join cmt on cmt.CMS_CODICE = cms.CODICE
    inner join cmtpo on cmtpo.id_cmt = cmt.id
    inner join tch on tch.CODICE = cmtpo.tch_codice
    where cms.CODICE = i_codcom and tch.codice = arc_ordinamento.riecom.codice_tabella);

  update arc_ordinamento.riecom set
    arc_ordinamento.riecom.totale_ore_cons = arc_ordinamento.riecom.totale_ore_cons + (arc_ordinamento.riecom.totale_min_cons div 60),
    arc_ordinamento.riecom.totale_min_cons = (arc_ordinamento.riecom.totale_min_cons mod 60),
    arc_ordinamento.riecom.appoggio01 = '',
    arc_ordinamento.riecom.appoggio02 = ''         
  where arc_ordinamento.riecom.utente_crea = i_utente;    

END
*/
