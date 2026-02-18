CREATE FUNCTION F_CERCA_PREZZO(i_cli_codice varchar(08), i_ind_codice varchar(08), i_art_codice varchar(50), 
  i_tlv_codice varchar(04), i_tva_codice varchar(04), i_cambio decimal(18,6), i_data date) 
	RETURNS varchar(30)
    DETERMINISTIC
    COMMENT 'listini di vendita'
BEGIN

DECLARE d_tva_codice      varchar(04);
DECLARE d_cambio          decimal(18,6);
DECLARE d_tlv_codice      varchar(04);
DECLARE d_tva_codice_tlv  varchar(04);
DECLARE d_cambio_tlv      decimal(18,6);
DECLARE d_ts1_codice      varchar(04);
DECLARE d_ts3_codice      varchar(04);
DECLARE d_tsm_codice_cli  varchar(04);
DECLARE d_id              integer;
DECLARE d_escludi_sconto_incondizionato  varchar(02);
DECLARE d_listino_01      varchar(30);
DECLARE d_listino_02      varchar(30);
DECLARE d_listino_03      varchar(30);
DECLARE d_listino_04      varchar(30);
DECLARE d_listino_05      varchar(30);
DECLARE d_listino_06      varchar(30);
DECLARE d_listino_07      varchar(30);
DECLARE d_listino_08      varchar(30);
DECLARE d_listino_09      varchar(30);
DECLARE d_listino_10      varchar(30);
DECLARE d_listino_11      varchar(30);
DECLARE d_valore_cls      varchar(30);
DECLARE d_prezzo_cls      decimal(18,6);
DECLARE d_tsm_codice_cls  varchar(04);


/*  ATTENZIONE TUM_CODICE  +/

/*  valori di ritorno  */
DECLARE d_prezzo          decimal(18,6) DEFAULT 0.0;
DECLARE d_tsm_codice      varchar(04) DEFAULT '';
DECLARE d_tsm_codice_art  varchar(04) DEFAULT '';

DECLARE d_valore          varchar(30) DEFAULT '';

/*  settaggi iniziali  */
select nom.tva_codice, cli.tlv_codice, cli.ts1_codice, cli.tsm_codice,
    case when tvf.cambio is null then tva.cambio else tvf.cambio end from cli
  inner join nom on nom.codice = cli.codice
  inner join tva on tva.codice = nom.tva_codice
  left join tvf on tvf.tva_codice = nom.tva_codice and tvf.data = i_data
  where cli.codice = i_cli_codice 
into d_tva_codice, d_tlv_codice, d_ts1_codice, d_tsm_codice_cli, d_cambio;

if i_tva_codice <> '' then
  set d_tva_codice = i_tlv_codice;
end if;

if i_tlv_codice <> '' then
  set d_tlv_codice = i_tlv_codice;
end if;

if i_cambio <> 0 then
  set d_cambio = i_cambio;
end if;

select ts3_codice from art where codice = i_art_codice into d_ts3_codice;


/*  cerca LSV  */
select prezzo, tsm_codice, escludi_sconto_incondizionato, tlv.tva_codice,
    case when tvf.cambio is null then tva.cambio else tvf.cambio end from lsv
  inner join tlv on tlv.codice = lsv.tlv_codice
  inner join tva on tva.codice = tlv.tva_codice
  left join tvf on tvf.tva_codice = tlv.tva_codice and tvf.data = i_data
  where i_data between data_inizio and data_fine 
  and art_codice = i_art_codice and tlv_codice = d_tlv_codice
into d_prezzo, d_tsm_codice, d_escludi_sconto_incondizionato, d_tva_codice_tlv, d_cambio_tlv;

if d_escludi_sconto_incondizionato <> 'si' and d_tsm_codice_cli <> '' then
  set d_tsm_codice = d_tsm_codice_cli;
end if;

if d_tva_codice <> d_tva_codice_tlv then
  set d_prezzo := d_prezzo * d_cambio_tlv / d_cambio;
end if;


/*  cerca CLS  */
select id from cls 
  where i_data between data_inizio and data_fine 
  and (cli_codice = i_cli_codice or cli_codice = '')
  and (ts1_codice = d_ts1_codice or ts1_codice = '')
  and (art_codice = i_art_codice or art_codice = '')
  and (ts3_codice = d_ts3_codice or ts3_codice = '')
  limit 1
into d_id;
  
if d_id is not null then
  select listino_01, listino_02, listino_03, listino_04, listino_05, listino_06, 
      listino_07, listino_08, listino_09, listino_10, listino_11 from arc.dit
    where codice = @dit_codice
  into d_listino_01, d_listino_02, d_listino_03, d_listino_04, d_listino_05, d_listino_06, 
      d_listino_07, d_listino_08, d_listino_09, d_listino_10, d_listino_11;

  set d_valore_cls = '';
  if d_listino_01 <> 'nessuno' then
    select f_cerca_cls(d_listino_01, i_cli_codice, i_ind_codice, i_art_codice, d_ts1_codice, d_ts3_codice, i_data) into d_valore_cls;
    if d_listino_02 <> 'nessuno' and d_valore_cls = '' then 
      select f_cerca_cls(d_listino_02, i_cli_codice, i_ind_codice, i_art_codice, d_ts1_codice, d_ts3_codice, i_data) into d_valore_cls;
      if d_listino_03 <> 'nessuno' and d_valore_cls = '' then 
        select f_cerca_cls(d_listino_03, i_cli_codice, i_ind_codice, i_art_codice, d_ts1_codice, d_ts3_codice, i_data) into d_valore_cls;
        if d_listino_04 <> 'nessuno' and d_valore_cls = '' then 
          select f_cerca_cls(d_listino_04, i_cli_codice, i_ind_codice, i_art_codice, d_ts1_codice, d_ts3_codice, i_data) into d_valore_cls;
          if d_listino_05 <> 'nessuno' and d_valore_cls = '' then 
            select f_cerca_cls(d_listino_05, i_cli_codice, i_ind_codice, i_art_codice, d_ts1_codice, d_ts3_codice, i_data) into d_valore_cls;
            if d_listino_06 <> 'nessuno' and d_valore_cls = '' then 
              select f_cerca_cls(d_listino_06, i_cli_codice, i_ind_codice, i_art_codice, d_ts1_codice, d_ts3_codice, i_data) into d_valore_cls;
              if d_listino_07 <> 'nessuno' and d_valore_cls = '' then 
                select f_cerca_cls(d_listino_07, i_cli_codice, i_ind_codice, i_art_codice, d_ts1_codice, d_ts3_codice, i_data) into d_valore_cls;
                if d_listino_08 <> 'nessuno' and d_valore_cls = '' then 
                  select f_cerca_cls(d_listino_08, i_cli_codice, i_ind_codice, i_art_codice, d_ts1_codice, d_ts3_codice, i_data) into d_valore_cls;
                  if d_listino_09 <> 'nessuno' and d_valore_cls = '' then 
                    select f_cerca_cls(d_listino_09, i_cli_codice, i_ind_codice, i_art_codice, d_ts1_codice, d_ts3_codice, i_data) into d_valore_cls;
                    if d_listino_10 <> 'nessuno' and d_valore_cls = '' then 
                      select f_cerca_cls(d_listino_10, i_cli_codice, i_ind_codice, i_art_codice, d_ts1_codice, d_ts3_codice, i_data) into d_valore_cls;
                      if d_listino_11 <> 'nessuno' and d_valore_cls = '' then 
                        select f_cerca_cls(d_listino_11, i_cli_codice, i_ind_codice, i_art_codice, d_ts1_codice, d_ts3_codice, i_data) into d_valore_cls;
                      end if;
                    end if;
                  end if;
                end if;
              end if;
            end if;
          end if;
        end if;
      end if;
    end if;
  end if;
    
  if d_valore_cls <> '' then
    set d_prezzo_cls = substring(d_valore_cls, 1, locate('|', d_valore_cls) - 1);
    set d_tsm_codice_cls = trim(substring(d_valore_cls, locate('|', d_valore_cls) + 1, lenght(d_valore_cls)));
	
	if d_prezzo_cls <> 0 then
	  set d_prezzo = d_prezzo_cls;
	end if;
	if d_tsm_codice_cls <> '' then
	  set d_tsm_codice = d_tsm_codice_cls;
	end if;
  end if;  
  
end if;


set d_valore = concat(d_prezzo, '|', d_tsm_codice, '|', d_tsm_codice_art);

RETURN d_valore;

END
