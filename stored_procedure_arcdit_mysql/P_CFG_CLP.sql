CREATE PROCEDURE P_CFG_CLP 
(
  IN  i_operazione         char(1),
  IN  i_cfg_tipo           char(1),  
  IN  i_cfg_codice         char(8),  
  IN  i_descrizione1       varchar(120),  
  IN  i_descrizione2       varchar(40),
  IN  i_gen_codice         char(8)
)
BEGIN
  if i_operazione = 'I' then
    insert into cfg (cfg_tipo, cfg_codice, descrizione1, descrizione2, gen_codice)
      values (i_cfg_tipo, i_cfg_codice, i_descrizione1, i_descrizione2, i_gen_codice);
	end if;

  if i_operazione = 'U' then
    update cfg set descrizione1 = i_descrizione1, descrizione2 = i_descrizione2, gen_codice = i_gen_codice
      where cfg_tipo = i_cfg_tipo and cfg_codice = i_cfg_codice;
  end if;

  if i_operazione = 'D' then
    delete from cfgese where cfg_tipo = i_cfg_tipo and cfg_codice = i_cfg_codice;
    delete from cfg where cfg_tipo = i_cfg_tipo and cfg_codice = i_cfg_codice;
  end if;
END
