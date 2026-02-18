CREATE FUNCTION F_CERCA_CLS(i_listino varchar(30), i_cli_codice varchar(08), i_ind_codice varchar(08), i_art_codice varchar(50), 
  i_ts1_codice varchar(04), i_ts3_codice varchar(04), i_data date) 
	RETURNS varchar(30)
    DETERMINISTIC
    COMMENT 'listini clienti'
BEGIN

/*  valori di ritorno  */
DECLARE d_prezzo          decimal(18,6) DEFAULT 0.0;
DECLARE d_tsm_codice      varchar(04) DEFAULT '';

DECLARE d_valore          varchar(30) DEFAULT '';

if i_listino = 'cliente/articolo' then
  select prezzo, tsm_codice from cls 
    where i_data between data_inizio and data_fine 
    and cli_codice = i_cli_codice and ind_codice = '' and art_codice = i_art_codice
    and ts1_codice = '' and ts3_codice = ''
  into d_prezzo, d_tsm_codice;

  if d_prezzo is not null then
    set d_valore = concat(d_prezzo, '|', d_tsm_codice);
  end if;
  
elseif i_listino = 'cliente/categoria articoli' then
  select prezzo, tsm_codice from cls 
    where i_data between data_inizio and data_fine 
    and cli_codice = i_cli_codice and ind_codice = '' and art_codice = ''
    and ts1_codice = '' and ts3_codice = i_ts3_codice
  into d_prezzo, d_tsm_codice;

  if d_prezzo is not null then
    set d_valore = concat(d_prezzo, '|', d_tsm_codice);
  end if;
  
elseif i_listino = 'cliente' then
  select prezzo, tsm_codice from cls 
    where i_data between data_inizio and data_fine 
    and cli_codice = i_cli_codice and ind_codice = '' and art_codice = ''
    and ts1_codice = '' and ts3_codice = ''
  into d_prezzo, d_tsm_codice;

  if d_prezzo is not null then
    set d_valore = concat(d_prezzo, '|', d_tsm_codice);
  end if;
  
elseif i_listino = 'categoria clienti/articolo' then
  select prezzo, tsm_codice from cls 
    where i_data between data_inizio and data_fine 
    and cli_codice = '' and ind_codice = '' and art_codice = i_art_codice
    and ts1_codice = i_ts1_codice and ts3_codice = ''
  into d_prezzo, d_tsm_codice;

  if d_prezzo is not null then
    set d_valore = concat(d_prezzo, '|', d_tsm_codice);
  end if;
  
elseif i_listino = 'categoria clienti/categoria articoli' then
  select prezzo, tsm_codice from cls 
    where i_data between data_inizio and data_fine 
    and cli_codice = '' and ind_codice = '' and art_codice = ''
    and ts1_codice = i_ts1_codice and ts3_codice = i_ts3_codice
  into d_prezzo, d_tsm_codice;

  if d_prezzo is not null then
    set d_valore = concat(d_prezzo, '|', d_tsm_codice);
  end if;
  
elseif i_listino = 'categoria clienti' then
  select prezzo, tsm_codice from cls 
    where i_data between data_inizio and data_fine 
    and cli_codice = '' and ind_codice = '' and art_codice = ''
    and ts1_codice = i_ts1_codice and ts3_codice = ''
  into d_prezzo, d_tsm_codice;

  if d_prezzo is not null then
    set d_valore = concat(d_prezzo, '|', d_tsm_codice);
  end if;
  
elseif i_listino = 'articolo' then
  select prezzo, tsm_codice from cls 
    where i_data between data_inizio and data_fine 
    and cli_codice = '' and ind_codice = '' and art_codice = i_art_codice
    and ts1_codice = '' and ts3_codice = ''
  into d_prezzo, d_tsm_codice;

  if d_prezzo is not null then
    set d_valore = concat(d_prezzo, '|', d_tsm_codice);
  end if;
  
elseif i_listino = 'categoria articoli' then
  select prezzo, tsm_codice from cls 
    where i_data between data_inizio and data_fine 
    and cli_codice = '' and ind_codice = '' and art_codice = ''
    and ts1_codice = '' and ts3_codice = i_ts3_codice
  into d_prezzo, d_tsm_codice;

  if d_prezzo is not null then
    set d_valore = concat(d_prezzo, '|', d_tsm_codice);
  end if;
  
elseif i_listino = 'tutti' then
  select prezzo, tsm_codice from cls 
    where i_data between data_inizio and data_fine 
    and cli_codice = i_cli_codice and ind_codice = i_ind_codice and art_codice = i_art_codice
    and ts1_codice = i_ts1_codice and ts3_codice = i_ts3_codice
  into d_prezzo, d_tsm_codice;

  if d_prezzo is not null then
    set d_valore = concat(d_prezzo, '|', d_tsm_codice);
  end if;
  
elseif i_listino = 'filiale/articolo' then
  select prezzo, tsm_codice from cls 
    where i_data between data_inizio and data_fine 
    and cli_codice = i_cli_codice and ind_codice = i_ind_codice and art_codice = i_art_codice
    and ts1_codice = '' and ts3_codice = ''
  into d_prezzo, d_tsm_codice;

  if d_prezzo is not null then
    set d_valore = concat(d_prezzo, '|', d_tsm_codice);
  end if;
  
elseif i_listino = 'filiale/categoria articoli' then
  select prezzo, tsm_codice from cls 
    where i_data between data_inizio and data_fine 
    and cli_codice = i_cli_codice and ind_codice = i_ind_codice and art_codice = ''
    and ts1_codice = '' and ts3_codice = i_ts3_codice
  into d_prezzo, d_tsm_codice;

  if d_prezzo is not null then
    set d_valore = concat(d_prezzo, '|', d_tsm_codice);
  end if;
  
elseif i_listino = 'filiale' then
  select prezzo, tsm_codice from cls 
    where i_data between data_inizio and data_fine 
    and cli_codice = i_cli_codice and ind_codice = i_ind_codice and art_codice = ''
    and ts1_codice = '' and ts3_codice = ''
  into d_prezzo, d_tsm_codice;

  if d_prezzo is not null then
    set d_valore = concat(d_prezzo, '|', d_tsm_codice);
  end if;
  
end if;

RETURN d_valore;

END
