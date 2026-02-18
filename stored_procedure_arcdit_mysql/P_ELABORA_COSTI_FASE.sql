/*
CREATE PROCEDURE P_ELABORA_COSTI_FASE(IN i_codfas VARCHAR(8), IN i_datain DATE, IN i_aggiorna VARCHAR(2))
  COMMENT 'Procedura di aggiornamento costi della fase di lavoro'
BEGIN
  declare l_id_fas         integer;
  declare l_oreatt         integer;
  declare l_minatt         integer;
  declare l_maccod         varchar(8);  
  declare l_sltatt         varchar(8);
  declare l_sltlav         varchar(8);
  declare l_coscal         decimal(18,6);
  declare l_coslav         decimal(18,6);
  declare l_cosatt         decimal(18,6);
  declare l_cosmac         decimal(18,6);
  declare l_costot         decimal(18,6);
  declare l_datain         date;
  
  if i_datain is null then 
	  set l_datain = currentdate(); 
  else 
    set l_datain = i_datain;
  end if;
  
  select fas.id, fas.mac_codice, fas.ore_attrezzaggio, fas.minuti_attrezzaggio,
    fas.slt_codice_attrezzaggio, fas.slt_codice_lavoro, fas.costo_calcolato
  from fas 
  where fas.codice = i_codfas 
  into l_id_fas, l_maccod, l_oreatt, l_minatt, l_sltatt, l_sltlav, l_coscal;
   
  set l_coslav = f_costo_squadra_lavoro(l_sltlav, l_datain);  
  set l_cosatt = f_costo_squadra_lavoro(l_sltatt, l_datain); 
  set l_cosmac = f_costo_macchine(l_maccod, l_datain);   
  set l_costot = l_coslav + l_cosmac; 
  set l_cosatt = l_cosatt + l_cosmac ;
  set l_cosatt = l_cosatt * l_oreatt + (l_cosatt / 60 * l_minatt);
  
  update fas set fas.costo_calcolato = l_costot where fas.id = l_id_fas;
    
  if i_aggiorna = 'si' then
    insert into fascos (fas_codice, data_inizio, costo, costo_attrezzaggio) values(i_codfas, l_datain, l_costot, l_cosatt)
    on duplicate key update costo = l_costot, costo_attrezzaggio = l_cosatt;
	end if;
	
END
*/
