CREATE PROCEDURE P_MOVACQ_OAR
(
  IN I_TABELLA 												VARCHAR(8),
  IN I_STORNA 												VARCHAR(2),
  IN I_ART_CODICE 										VARCHAR(50),
  IN I_TMA_CODICE 										VARCHAR(4),
  IN I_SITUAZIONE 										VARCHAR(30),
  IN I_PROGRESSIVO 										INTEGER,
  IN I_QUANTITA 											numeric(18,4),
  IN I_QUANTITA_EVASA 								numeric(18,4),
  IN I_TUM_QUANTITA_BASE 							numeric(18,4),
  IN I_TUM_QUANTITA_EVASA_BASE 				numeric(18,4),
  IN I_NUMERO_COLLI             			integer,
  IN I_NUMERO_CONFEZIONI        			integer,
  IN I_IMPORTO_SCONTO_EVASO						numeric(18,2),
  IN I_IMPORTO_EVASO 									numeric(18,2),
  IN I_DOCUMENTO_ORIGINE 							VARCHAR(30),
  IN I_DOC_PROGRESSIVO_ORIGINE 				INTEGER,
  IN I_DOC_RIGA_ORIGINE 							INTEGER,
  IN I_SALDO_ACCONTO 									VARCHAR(10),
  IN I_IMPORTO_SCONTO									numeric(18,2),
  IN I_IMPORTO 												numeric(18,2),
  IN I_TIV_CODICE 										VARCHAR(4),
  IN I_TIPO_MOVIMENTO 								VARCHAR(20),
  IN I_NO_ORDINATO 										VARCHAR(2),
  IN I_IVA			             					varchar(2),
  IN I_MAG			             					varchar(2),
  IN I_TESTATA		             				varchar(2),
  IN I_IMPORTI_RIGA_ORIGINE    				varchar(2),
  IN I_SITUAZIONE_RIGA_ORIGINE 				varchar(2)
)
BEGIN 
DECLARE D_TIPO_DOCUMENTO 					VARCHAR(30);
DECLARE D_TDA_CODICE_DIFFERITE 				VARCHAR(4);
DECLARE D_TMO_CODICE 						VARCHAR(4);
DECLARE D_ESISTENZA 						VARCHAR(10);
DECLARE D_NUMERO_RIGHE 						INTEGER;
DECLARE D_NUMERO_RIGHE_EVASE 				INTEGER;
DECLARE D_QUANTITA_ORDINATA 				numeric(18,4);
DECLARE D_TUM_QUANTITA_ORDINATA_BASE 		numeric(18,4);
DECLARE D_IMPORTO_SCONTO_EVASO 				numeric(18,2);
DECLARE D_IMPORTO_EVASO 					numeric(18,2);
DECLARE D_SITUAZIONE 						VARCHAR(30);
DECLARE D_NUMERO_RIGHE_EVASE_ORIGINE		INTEGER;
DECLARE D_NUMERO_COLLI_ORIGINE 				INTEGER;
DECLARE D_NUMERO_CONFEZIONI_ORIGINE 		INTEGER;
DECLARE D_QUANTITA_ORIGINE 					numeric(18,4);
DECLARE D_TUM_QUANTITA_ORIGINE_BASE 		numeric(18,4);
DECLARE D_IMPORTO_SCONTO_ORIGINE 			numeric(18,2);
DECLARE D_IMPORTO_ORIGINE 					numeric(18,2);
DECLARE D_QUANTITA 							numeric(18,4);
DECLARE D_QUANTITA_EVASA 					numeric(18,4);
DECLARE D_TUM_QUANTITA_BASE 				numeric(18,4);
DECLARE D_TUM_QUANTITA_EVASA_BASE 			numeric(18,4);
DECLARE D_IMPORTO 							numeric(18,2);
DECLARE D_TIPO_ARTICOLO 					VARCHAR(20);
DECLARE D_PERCENTUALE 						numeric(18,2);
DECLARE D_ID		 						INTEGER;
DECLARE D_SALDO_ACCONTO						VARCHAR(10);
DECLARE D_TMA_CODICE_IMP_ORD				VARCHAR(4);
DECLARE D_FRN_CODICE						VARCHAR(08);
DECLARE D_DATA_DOCUMENTO					DATE;
DECLARE D_NUMERO_DOCUMENTO 					DECIMAL(18,0);
DECLARE D_FRN_GESTIONE_VUOTI				VARCHAR(20);
DECLARE D_VUODOC_PROGRESSIVO				INTEGER;
DECLARE D_VUODOC_QUANTITA					NUMERIC(18,6);
DECLARE D_VUODOC_TLV_CODICE					VARCHAR(04);
DECLARE D_VUODOC_PREZZO						NUMERIC(18,4);
DECLARE D_DITTA								VARCHAR(04);
DECLARE D_ART_GESTIONE_VUOTI				VARCHAR(10);
DECLARE D_ART_VUO_CODICE					VARCHAR(04);

	select @dit_codice into d_ditta;
	
	select gestione_vuoti, vuo_codice from art where codice = i_art_codice into d_art_gestione_vuoti, d_art_vuo_codice;

	set d_quantita_ordinata = i_quantita - i_quantita_evasa;
	set d_tum_quantita_ordinata_base = i_tum_quantita_base - i_tum_quantita_evasa_base;
	set d_importo = i_importo;
	if (i_storna = 'si') then
		set d_quantita_ordinata = d_quantita_ordinata * -1;
		set d_tum_quantita_ordinata_base = d_tum_quantita_ordinata_base * -1;
	set d_importo = d_importo * -1;
	end if;

	if (i_tabella = 'rar') then
		select tipo_documento, data_documento, numero_documento, frn_codice, tda_codice_differite, tmo_codice from rat where progressivo = i_progressivo
			into d_tipo_documento, d_data_documento, d_numero_documento, d_frn_codice, d_tda_codice_differite, d_tmo_codice;
	elseif (i_tabella = 'oar') then
		select tipo_documento, data_documento, numero_documento, frn_codice, tda_codice_differite, tmo_codice from oat where progressivo = i_progressivo
			into d_tipo_documento, d_data_documento, d_numero_documento, d_frn_codice, d_tda_codice_differite, d_tmo_codice;
	elseif (i_tabella = 'dar') then
		select tipo_documento, data_documento, numero_documento, frn_codice, tda_codice_differite, tmo_codice from dat where progressivo = i_progressivo
			into d_tipo_documento, d_data_documento, d_numero_documento, d_frn_codice, d_tda_codice_differite, d_tmo_codice;
	elseif (i_tabella = 'far') then
		select tipo_documento, data_documento, numero_documento, frn_codice, tda_codice_differite, tmo_codice from fat where progressivo = i_progressivo
			into d_tipo_documento, d_data_documento, d_numero_documento, d_frn_codice, d_tda_codice_differite, d_tmo_codice;
	elseif (i_tabella = 'opt') then
		set d_tipo_documento = 'ordini produzione';
		set d_tda_codice_differite = '';
		select tmo_codice_finiti from opt where progressivo = i_progressivo
			into d_tmo_codice;
	end if;
		
	/*  vuoti  */  	
	set d_vuodoc_prezzo = 0;
	if d_art_gestione_vuoti <> 'no' and (d_tipo_documento = 'ddt' or d_tipo_documento = 'fattura') then
		if d_frn_codice is not null then
			select gestione_vuoti from frn where codice = d_frn_codice into d_frn_gestione_vuoti;
			if d_frn_gestione_vuoti <> 'no' then
				set d_vuodoc_quantita = 0;
					
				if d_art_gestione_vuoti = 'colli' then
					set d_vuodoc_quantita = i_numero_colli;
				elseif d_art_gestione_vuoti = 'confezioni' then
					set d_vuodoc_quantita = i_numero_confezioni;
				elseif d_art_gestione_vuoti = 'quantità' then
					set d_vuodoc_quantita = i_quantita;
				end if;
				if (i_storna = 'si') then
					set d_vuodoc_quantita = d_vuodoc_quantita * -1;
				end if;
					
				if d_frn_gestione_vuoti = 'con cauzione' then
					select prezzo from fls where art_codice = (select art_codice from vuo where codice = d_art_vuo_codice) and frn_codice = d_frn_codice 
						and data_inizio <= d_data_documento and data_fine >= d_data_documento into d_vuodoc_prezzo;
					if d_vuodoc_prezzo is null then
						set d_vuodoc_prezzo = 0;
					end if;
				else
					set d_vuodoc_prezzo = 0;
				end if;
				
				
				if (not exists(select id from vuodoc where cfg_tipo = 'F' and cfg_codice = d_frn_codice and proprieta_cliente = 'no' and documento_origine = d_tipo_documento
						and doc_progressivo_origine = i_progressivo and vuo_codice = d_art_vuo_codice and reso = 'no')) then
					if (not exists(select id from arc.prs where codice = 'S_VUODOC_PROGRESSIVO' and codice_ditta = d_ditta)) then
						insert into arc.prs (codice, codice_ditta, valore) values ('S_VUODOC_PROGRESSIVO', d_ditta, 1);
						set d_vuodoc_progressivo = 1;
					else
						select valore from arc.prs where codice = 'S_VUODOC_PROGRESSIVO' and codice_ditta = d_ditta into d_vuodoc_progressivo;
						set d_vuodoc_progressivo = d_vuodoc_progressivo + 1;
						update arc.prs set valore = d_vuodoc_progressivo where codice = 'S_VUODOC_PROGRESSIVO' and codice_ditta = d_ditta;
					end if;
					insert into vuodoc (progressivo, cfg_tipo, cfg_codice, data_registrazione, descrizione, vuo_codice, quantita, prezzo, documento_origine, doc_progressivo_origine) 
						values (d_vuodoc_progressivo, 'F', d_frn_codice, d_data_documento, concat(d_tipo_documento, ' n. ', d_numero_documento, ' del ', date_format(d_data_documento, '%d/%m/%Y')),
							d_art_vuo_codice, d_vuodoc_quantita, d_vuodoc_prezzo, d_tipo_documento, i_progressivo);
				else
					update vuodoc set quantita = quantita + d_vuodoc_quantita
						where cfg_tipo = 'F' and cfg_codice = d_frn_codice and proprieta_cliente = 'no' and documento_origine = d_tipo_documento and doc_progressivo_origine = i_progressivo and vuo_codice = d_art_vuo_codice 
						and inserito_fattura_differita = 'no' and reso = 'no';
				end if;
				delete from vuodoc where cfg_tipo = 'F' and cfg_codice = d_frn_codice and documento_origine = d_tipo_documento and doc_progressivo_origine = i_progressivo and vuo_codice = d_art_vuo_codice
					and reso = 'no' and quantita = 0;

				/*  per ora non gestito prezzo
				if d_vuodoc_prezzo <> 0 then
					select tiv_codice_vendite from art where codice = (select art_codice from vuo where codice = d_art_vuo_codice) into d_vuodoc_tiv_codice;
					set d_vuodoc_importo = round(d_vuodoc_quantita * d_vuodoc_prezzo, 2);
				end if;
				*/
			end if;
		end if;
	end if;
		
	if i_iva = 'si' or i_mag = 'si' or i_testata = 'si' or i_importi_riga_origine = 'si' or i_situazione_riga_origine = 'si'  then
  
		/*  aggiornamento ex sommatoria  */
		if (i_iva = 'si' and i_art_codice <> '' and i_tiv_codice <> '' and i_tabella <> 'opt') then
			if (i_tabella = 'rar') then
				if (not exists(select id from rai where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento)) then
					insert into rai (progressivo, tiv_codice, tipo_movimento, importo) values (i_progressivo, i_tiv_codice, i_tipo_movimento, d_importo);
				else
					update rai set importo = importo + d_importo where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento;
				end if;
			elseif (i_tabella = 'oar') then
				if (not exists(select id from oai where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento)) then
					insert into oai (progressivo, tiv_codice, tipo_movimento, importo) values (i_progressivo, i_tiv_codice, i_tipo_movimento, d_importo);
				else
					update oai set importo = importo + d_importo where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento;
				end if;
			elseif (i_tabella = 'dar') then
				if (not exists(select id from dai where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento)) then
					insert into dai (progressivo, tiv_codice, tipo_movimento, importo) values (i_progressivo, i_tiv_codice, i_tipo_movimento, d_importo);
				else
					update dai set importo = importo + d_importo where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento;
				end if;
			elseif (i_tabella = 'far') then
				if (not exists(select id from fai where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento)) then
					insert into fai (progressivo, tiv_codice, tipo_movimento, importo) values (i_progressivo, i_tiv_codice, i_tipo_movimento, d_importo);
				else
					update fai set importo = importo + d_importo where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento;
				end if;
			end if;
		end if;
		
		/*  ordinato  */  	
		if (i_mag = 'si' and i_art_codice <> '' and i_tma_codice <> '' and (i_situazione = 'inserito' or i_situazione = 'evaso parziale')) then
			if d_tipo_documento = 'ordine' then
				set d_esistenza = 'incrementa';
			elseif (d_tmo_codice = '') then
				set d_esistenza = 'ignora';
			else
				select esistenza from tmo where codice = d_tmo_codice into d_esistenza;
			end if;

			if (d_esistenza <> 'ignora') and (i_no_ordinato = 'no') then
				select tma_codice_impegnato_ordinato from tma where codice = i_tma_codice into d_tma_codice_imp_ord;
				if d_tma_codice_imp_ord = '' then
					set d_tma_codice_imp_ord = i_tma_codice;
				end if;

				if (d_esistenza = 'decrementa') then
					set d_quantita_ordinata = d_quantita_ordinata * -1;
					set d_tum_quantita_ordinata_base = d_tum_quantita_ordinata_base * -1;
				end if;
				if (not exists(select id from mag where art_codice = i_art_codice and tma_codice = d_tma_codice_imp_ord)) then
					insert into mag (art_codice, tma_codice) values (i_art_codice, d_tma_codice_imp_ord);
				end if;

				update mag set ordinato = ordinato + d_tum_quantita_ordinata_base
					where art_codice = i_art_codice and tma_codice = d_tma_codice_imp_ord;
			end if;
		end if;

		/*  aggiorna situazione su testata ordini e preventivi  e ddt conto acquisto*/
		if i_testata = 'si' and i_art_codice <> '' and (d_tipo_documento = 'preventivo' or d_tipo_documento = 'ordine' or d_tipo_documento = 'ddt') then
			set d_situazione = 'inserito';
      
			if d_tipo_documento = 'preventivo' then
        if (select count(riga) from rar where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from rar where progressivo = i_progressivo and art_codice <> '' and situazione = 'revisionato') and
						((select count(riga) from rar where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'revisionato';
        elseif (select count(riga) from rar where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from rar where progressivo = i_progressivo and art_codice <> '' and situazione = 'annullato') and
						((select count(riga) from rar where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'annullato';
        elseif (select count(riga) from rar where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from rar where progressivo = i_progressivo and art_codice <> '' and (situazione = 'evaso' or situazione = 'annullato')) and
						((select count(riga) from rar where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'evaso';
				elseif (select count(riga) from rar where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from rar where progressivo = i_progressivo and art_codice <> '' and (situazione = 'inserito' or situazione = 'annullato')) then
					set d_situazione = 'inserito';
				else
					set d_situazione = 'evaso parziale';
				end if;

				update rat set situazione = d_situazione where progressivo = i_progressivo;
			end if;
	  
			if d_tipo_documento = 'ordine' then
        if (select count(riga) from oar where progressivo = i_progressivo) =
						(select count(riga) from oar where progressivo = i_progressivo and situazione = 'revisionato') and
						((select count(riga) from oar where progressivo = i_progressivo) <> 0) then
					set d_situazione = 'revisionato';
        elseif (select count(riga) from oar where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from oar where progressivo = i_progressivo and art_codice <> '' and situazione = 'annullato') and
						((select count(riga) from oar where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'annullato';
        elseif (select count(riga) from oar where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from oar where progressivo = i_progressivo and art_codice <> '' and (situazione = 'evaso' or situazione = 'annullato')) and
						((select count(riga) from oar where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'evaso';
				elseif (select count(riga) from oar where progressivo = i_progressivo and art_codice <> '') =
          (select count(riga) from oar where progressivo = i_progressivo and art_codice <> '' and (situazione = 'inserito' or situazione = 'annullato')) then
					set d_situazione = 'inserito';
				else
					set d_situazione = 'evaso parziale';
				end if;

				update oat set situazione = d_situazione where progressivo = i_progressivo;
			end if;

			if d_tipo_documento = 'ddt' then
        if (select count(riga) from dar where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from dar where progressivo = i_progressivo and art_codice <> '' and (situazione = 'consolidato' or situazione = 'annullato')) and
						((select count(riga) from dar where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'consolidato';
				elseif (select count(riga) from dar where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from dar where progressivo = i_progressivo and art_codice <> '' and (situazione = 'evaso' or situazione = 'annullato')) and
						((select count(riga) from dar where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'evaso';
				elseif (select count(riga) from dar where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from dar where progressivo = i_progressivo and art_codice <> '' and (situazione = 'inserito' or situazione = 'annullato')) then
					set d_situazione = 'inserito';
				else
					set d_situazione = 'consolidato parziale';
				end if;

				update dat set situazione = d_situazione where progressivo = i_progressivo;
			end if;

		end if;
		
		/*  aggiorna situazione documento origine  */
		if i_art_codice <> '' and (i_documento_origine <> '' and i_documento_origine <> 'rda' and d_tipo_documento <> 'fattura differita') then

			/*  totalizzazione importi  */
			if i_importi_riga_origine = 'si' then
				set d_numero_colli_origine = i_numero_colli;
				set d_numero_confezioni_origine = i_numero_confezioni;
				set d_tum_quantita_origine_base = i_tum_quantita_base;
				set d_quantita_origine = i_quantita;
				set d_importo_sconto_origine = i_importo_sconto;
				set d_importo_origine = i_importo;

				if (i_storna = 'si') then
					set d_numero_colli_origine = d_numero_colli_origine * -1;
					set d_numero_confezioni_origine = d_numero_confezioni_origine * -1;
					set d_tum_quantita_origine_base = d_tum_quantita_origine_base * -1;
					set d_quantita_origine = d_quantita_origine * -1;
					set d_importo_sconto_origine = d_importo_sconto_origine * -1;
					set d_importo_origine = d_importo_origine * -1;
				end if;

				if (i_documento_origine = 'preventivo acq') then
					update rar set numero_colli_evasi = numero_colli_evasi + d_numero_colli_origine,
						numero_confezioni_evase = numero_confezioni_evase + d_numero_confezioni_origine,
						tum_quantita_evasa_base = tum_quantita_evasa_base + d_tum_quantita_origine_base,
						quantita_evasa = quantita_evasa + d_quantita_origine,
						importo_sconto_evaso = importo_sconto_evaso + d_importo_sconto_origine,
						importo_evaso = importo_evaso + d_importo_origine
						where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;

					select tipo_documento from rat where progressivo = i_doc_progressivo_origine into d_tipo_documento;
					select quantita, quantita_evasa, tum_quantita_base, tum_quantita_evasa_base, importo_sconto_evaso, importo_evaso from rar
						where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine
						into d_quantita, d_quantita_evasa, d_tum_quantita_base, d_tum_quantita_evasa_base, d_importo_sconto_evaso, d_importo_evaso;
				elseif (i_documento_origine = 'ordine acq') then
					update oar set numero_colli_evasi = numero_colli_evasi + d_numero_colli_origine,
						numero_confezioni_evase = numero_confezioni_evase + d_numero_confezioni_origine,
						tum_quantita_evasa_base = tum_quantita_evasa_base + d_tum_quantita_origine_base,
						quantita_evasa = quantita_evasa + d_quantita_origine,
						importo_sconto_evaso = importo_sconto_evaso + d_importo_sconto_origine,
						importo_evaso = importo_evaso + d_importo_origine
						where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;

					select tipo_documento from oat where progressivo = i_doc_progressivo_origine into d_tipo_documento;
					select quantita, quantita_evasa, tum_quantita_base, tum_quantita_evasa_base, importo_sconto_evaso, importo_evaso from oar
						where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine
						into d_quantita, d_quantita_evasa, d_tum_quantita_base, d_tum_quantita_evasa_base, d_importo_sconto_evaso, d_importo_evaso;
				elseif (i_documento_origine = 'ddt ven') then
					update dvr set numero_colli_evasi = numero_colli_evasi + d_numero_colli_origine,
						numero_confezioni_evase = numero_confezioni_evase + d_numero_confezioni_origine,
						tum_quantita_evasa_base = tum_quantita_evasa_base + d_tum_quantita_origine_base,
						quantita_evasa = quantita_evasa + d_quantita_origine
						where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;

					select tipo_documento from dvt where progressivo = i_doc_progressivo_origine into d_tipo_documento;
					select quantita, quantita_evasa, tum_quantita_base, tum_quantita_evasa_base, importo_sconto_evaso, importo_evaso from dvr
						where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine
						into d_quantita, d_quantita_evasa, d_tum_quantita_base, d_tum_quantita_evasa_base, d_importo_sconto_evaso, d_importo_evaso;
				elseif (i_documento_origine = 'ddt acq') then
					update dar set numero_colli_evasi = numero_colli_evasi + d_numero_colli_origine,
						numero_confezioni_evase = numero_confezioni_evase + d_numero_confezioni_origine,
						tum_quantita_evasa_base = tum_quantita_evasa_base + d_tum_quantita_origine_base,
						quantita_evasa = quantita_evasa + d_quantita_origine,
						importo_sconto_evaso = importo_sconto_evaso + d_importo_sconto_origine,
						importo_evaso = importo_evaso + d_importo_origine
						where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;

					select tipo_documento from dat where progressivo = i_doc_progressivo_origine into d_tipo_documento;
					select quantita, quantita_evasa, tum_quantita_base, tum_quantita_evasa_base, importo_sconto_evaso, importo_evaso from dar
						where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine
						into d_quantita, d_quantita_evasa, d_tum_quantita_base, d_tum_quantita_evasa_base, d_importo_sconto_evaso, d_importo_evaso;
				end if;
			end if;
		
			/*  setta situazione riga in evasione  */	
			if i_situazione_riga_origine = 'si' then
				if (i_documento_origine = 'ordine acq') then
					select saldo_acconto from far where documento_origine = i_documento_origine and 
						doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
		
					if (d_saldo_acconto is null or d_saldo_acconto <> 'saldo') then
						select saldo_acconto from dar where documento_origine = i_documento_origine and 
							doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
					end if;
					if (d_saldo_acconto = 'saldo') then
						update oar set situazione = 'evaso' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
					else
						select saldo_acconto from far where documento_origine = i_documento_origine and 
							doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
						if (d_saldo_acconto is null or d_saldo_acconto <> 'acconto') then
							select saldo_acconto from dar where documento_origine = i_documento_origine and 
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
						end if;
						if (d_saldo_acconto = 'acconto') then
							update oar set situazione = 'evaso parziale' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
						else
							update oar set situazione = 'inserito' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
						end if;
					end if;
				end if;

				if (i_documento_origine = 'preventivo acq') then
					select saldo_acconto from oar where documento_origine = i_documento_origine and 
						doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
		
					if (d_saldo_acconto = 'saldo') then
						update rar set situazione = 'evaso' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
					else
						select saldo_acconto from oar where documento_origine = i_documento_origine and 
							doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
						
						if (d_saldo_acconto = 'acconto') then
							update rar set situazione = 'evaso parziale' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
						else
							update rar set situazione = 'inserito' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
						end if;
					end if;
				end if;
		
				if (i_documento_origine = 'ddt ven') then
					select saldo_acconto from dar where documento_origine = i_documento_origine and 
						doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
		
					if (d_saldo_acconto is null or d_saldo_acconto <> 'saldo') then
						select saldo_acconto from fvr where documento_origine = i_documento_origine and 
							doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
					end if;

					if (d_saldo_acconto = 'saldo') then
						update dvr set situazione = 'consolidato' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
					else
						select saldo_acconto from dar where documento_origine = i_documento_origine and 
							doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
						
						if (d_saldo_acconto is null or d_saldo_acconto <> 'acconto') then
							select saldo_acconto from fvr where documento_origine = i_documento_origine and 
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
						end if;

						if (d_saldo_acconto = 'acconto') then
							update dvr set situazione = 'consolidato parziale' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
						else
							update dvr set situazione = 'evaso' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
						end if;
					end if;
				end if;

				if (i_documento_origine = 'ddt acq') then
					select saldo_acconto from far where documento_origine = i_documento_origine and 
						doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
		
					if (d_saldo_acconto is null or d_saldo_acconto <> 'saldo') then
						select saldo_acconto from dvr where documento_origine = i_documento_origine and 
							doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
					end if;

					if (d_saldo_acconto = 'saldo') then
						update dar set situazione = 'consolidato' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
					else
						select saldo_acconto from far where documento_origine = i_documento_origine and 
							doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
						
						if (d_saldo_acconto is null or d_saldo_acconto <> 'acconto') then
							select saldo_acconto from dvr where documento_origine = i_documento_origine and 
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
						end if;

						if (d_saldo_acconto = 'acconto') then
							update dar set situazione = 'consolidato parziale' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
						else
							update dar set situazione = 'evaso' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
						end if;
					end if;
				end if;
			end if;

		end if;

	end if;

END
