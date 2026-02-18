CREATE PROCEDURE P_LTM_LOT 
(
  IN  `i_operazione`              varchar(1),
  IN  `i_art_codice_old`          varchar(50),
  IN  `i_lotto_old`               varchar(30),
  IN  `i_tma_codice_old`          varchar(4),
  IN  `i_quantita_old`            numeric(18,4),
  IN  `i_esistenza_old`           varchar(10),
  IN  `i_art_codice_new`          varchar(50),
  IN  `i_lotto_new`               varchar(30),
  IN  `i_tma_codice_new`          varchar(4),
  IN  `i_quantita_new`            numeric(18,4),
  IN  `i_esistenza_new`           varchar(10),
  IN  `i_data_registrazione_new`  date
)
BEGIN 
  declare d_quantita 				numeric(18,4);
  declare d_art_codice 				varchar(50);
  declare d_lotto 					varchar(30);
  declare d_tma_codice 				varchar(4);
  declare d_esistenza 				varchar(20);
  declare d_giorni_mese 			varchar(30);
  declare d_giorni_scadenza 		integer;
  declare d_mesi_scadenza 			integer;
  declare d_numero_giorno 			integer;
  declare d_data_registrazione 		date;
  declare d_data_scadenza 			date;
  declare d_arrotondamento 			varchar(20);
  declare d_giorno_fisso_scadenza 	integer;

  if (i_operazione = 'D') or (i_operazione = 'U') then
    set d_art_codice = i_art_codice_old;
    set d_lotto = i_lotto_old;
    set d_tma_codice = i_tma_codice_old;
    set d_quantita = i_quantita_old * -1;
    set d_esistenza = i_esistenza_old;
    if (i_esistenza_old = 'ignora') then
       set d_quantita = 0;
    end if;
    if (i_esistenza_old = 'decrementa') then
       set d_quantita = d_quantita * -1;
    end if;

    /* aggiorna lot - ltp */
    if (not exists(select id from ltp where art_codice = d_art_codice and lot_codice = d_lotto and tma_codice = d_tma_codice)) then
      insert into ltp (art_codice, lot_codice, tma_codice) values (d_art_codice, d_lotto, d_tma_codice);
    end if;

    if (d_esistenza = 'approntato') then
		update lot set approntato = approntato + d_quantita, disponibilita = disponibilita - d_quantita 
			where art_codice = d_art_codice and lotto = d_lotto;
		update ltp set approntato = approntato + d_quantita, disponibilita = disponibilita - d_quantita 
			where art_codice = d_art_codice and lot_codice = d_lotto and tma_codice = d_tma_codice;
/*
    elseif (d_esistenza = 'impegnato') then
		update lot set impegnato = impegnato + d_quantita where art_codice = d_art_codice and lotto = d_lotto;
		update ltp set impegnato = impegnato + d_quantita where art_codice = d_art_codice and lot_codice = d_lotto and tma_codice = d_tma_codice;
*/
	else
		update lot set esistenza = esistenza + d_quantita, disponibilita = disponibilita + d_quantita where art_codice = d_art_codice and lotto = d_lotto;
		update ltp set esistenza = esistenza + d_quantita, disponibilita = disponibilita + d_quantita where art_codice = d_art_codice and lot_codice = d_lotto and tma_codice = d_tma_codice;
    end if;
    if d_esistenza = 'incrementa' or d_esistenza = 'decrementa' then
      update lot set chiuso = 'si' where art_codice = d_art_codice and lotto = d_lotto and esistenza = 0;
      update lot set chiuso = 'no' where art_codice = d_art_codice and lotto = d_lotto and esistenza <> 0;
    end if;
  end if;

  if (i_operazione = 'I') or (i_operazione = 'U') then
    set d_art_codice = i_art_codice_new;
    set d_lotto = i_lotto_new;
    set d_tma_codice = i_tma_codice_new;
    set d_data_registrazione = i_data_registrazione_new;
    set d_quantita = i_quantita_new;
    set d_esistenza = i_esistenza_new;
    if (d_esistenza = 'ignora') then
       set d_quantita = 0;
    end if;
    if (d_esistenza = 'decrementa') then
       set d_quantita = d_quantita * -1;
    end if;

    /* crea lot se non esiste */
    if /*(i_operazione = 'I' and*/ (not exists(select id from lot where art_codice = d_art_codice and lotto = d_lotto))/*)*/ then
      set d_data_scadenza = null;

      /* calcola giorni scadenza */
      select giorni_scadenza, arrotondamento_giorni_scadenza, giorno_fisso_scadenza from art 
        where codice = d_art_codice
        into d_giorni_scadenza, d_arrotondamento, d_giorno_fisso_scadenza;

      if (d_esistenza = 'incrementa' and d_giorni_scadenza <> 0) then
        if (mod(d_giorni_scadenza, 30) = 0) then
          set d_giorni_mese = 'mesi';
        else
          set d_giorni_mese = 'giorni';
        end if;

        if (d_giorni_mese = 'giorni') then
          set d_data_scadenza = adddate(d_data_registrazione, d_giorni_scadenza);
        else
          set d_data_scadenza = subdate(d_data_registrazione, 1);
          set d_mesi_scadenza = d_giorni_scadenza / 30;
          set d_data_scadenza = adddate(d_data_scadenza, interval d_mesi_scadenza month);
        end if;

        if (d_arrotondamento = 'settimana') then
          while (dayofweek(d_data_scadenza) <> 1) do
            set d_data_scadenza = subdate(d_data_scadenza, 1);
            set d_numero_giorno = dayofweek(d_data_scadenza);
          end while;
        elseif (d_arrotondamento = 'quindicina') then
          if (extract(day from d_data_scadenza) < 16) then
            while (extract(day from d_data_scadenza) <> 1) do
              set d_data_scadenza = subdate(d_data_scadenza, 1);
            end while;
          else
            while (extract(day from d_data_scadenza) <> 16) do
              set d_data_scadenza = subdate(d_data_scadenza, 1);
            end while;
          end if;
        elseif (d_arrotondamento = 'mese' and d_giorno_fisso_scadenza <> 0) then
          if (extract(day from d_data_scadenza) < d_giorno_fisso_scadenza) then
            while (extract(day from d_data_scadenza) <> d_giorno_fisso_scadenza) do
              set d_data_scadenza = adddate(d_data_scadenza, 1);
            end while;
          elseif (extract(day from d_data_scadenza) > d_giorno_fisso_scadenza) then
            while (extract(day from d_data_scadenza) <> d_giorno_fisso_scadenza) do
              set d_data_scadenza = adddate(d_data_scadenza, 1);
            end while;
          end if;
        end if;
      end if;

      if (d_data_scadenza is null) then
        insert into lot (art_codice, lotto, descrizione) values (d_art_codice, d_lotto, d_lotto);
      else
        insert into lot (art_codice, lotto, descrizione, data_scadenza) 
          values (d_art_codice, d_lotto, d_lotto, d_data_scadenza);
      end if;
    end if;

    /* aggiorna lot - ltp */
    if (not exists(select id from ltp where art_codice = d_art_codice and lot_codice = d_lotto and tma_codice = d_tma_codice)) then
      insert into ltp (art_codice, lot_codice, tma_codice) values (d_art_codice, d_lotto, d_tma_codice);
    end if;

    if (d_esistenza = 'approntato') then
		update lot set approntato = approntato + d_quantita, disponibilita = disponibilita - d_quantita 
			where art_codice = d_art_codice and lotto = d_lotto;
		update ltp set approntato = approntato + d_quantita, disponibilita = disponibilita - d_quantita 
			where art_codice = d_art_codice and lot_codice = d_lotto and tma_codice = d_tma_codice;
/*
    elseif (d_esistenza = 'impegnato') then
		update lot set impegnato = impegnato + d_quantita where art_codice = d_art_codice and lotto = d_lotto;
		update ltp set impegnato = impegnato + d_quantita where art_codice = d_art_codice and lot_codice = d_lotto and tma_codice = d_tma_codice;
*/
    else
		update lot set esistenza = esistenza + d_quantita, disponibilita = disponibilita + d_quantita 
			where art_codice = d_art_codice and lotto = d_lotto;
		update ltp set esistenza = esistenza + d_quantita, disponibilita = disponibilita + d_quantita 
			where art_codice = d_art_codice and lot_codice = d_lotto and tma_codice = d_tma_codice;
    end if;
    if d_esistenza = 'incrementa' or d_esistenza = 'decrementa' then
      update lot set chiuso = 'si' where art_codice = d_art_codice and lotto = d_lotto and esistenza = 0;
      update lot set chiuso = 'no' where art_codice = d_art_codice and lotto = d_lotto and esistenza <> 0;
    end if;
  end if;

END
