CREATE PROCEDURE P_MOVVEN_FVR
(
  IN  I_TABELLA                  			varchar(08),
  IN  I_STORNA                   			varchar(2),
  IN  I_ART_CODICE               			varchar(50),
  IN  I_TMA_CODICE               			varchar(4),
  IN  I_SITUAZIONE               			varchar(30),
  IN  I_PROGRESSIVO              			integer,
  IN  I_QUANTITA                 			numeric(18,4),
  IN  I_QUANTITA_EVASA           			numeric(18,4),
  IN  I_QUANTITA_APPRONTATA      			numeric(18,4),
  IN  I_TUM_QUANTITA_BASE 					numeric(18,4),
  IN  I_TUM_QUANTITA_EVASA_BASE 			numeric(18,4),
  IN  I_TUM_QUANTITA_APPRONTATA_BASE		numeric(18,4),
  IN  I_IMPORTO_SCONTO_EVASO     			numeric(18,4),
  IN  I_IMPORTO_EVASO            			numeric(18,4),
  IN  I_DOCUMENTO_ORIGINE        			varchar(30),
  IN  I_DOC_PROGRESSIVO_ORIGINE  			integer,
  IN  I_DOC_RIGA_ORIGINE         			integer,
  IN  I_SALDO_ACCONTO            			varchar(10),
  IN  I_NUMERO_COLLI             			integer,
  IN  I_NUMERO_CONFEZIONI        			integer,
  IN  I_IMPORTO_SCONTO           			numeric(18,4),
  IN  I_IMPORTO                  			numeric(18,4),
  IN  I_TIV_CODICE 				 			varchar(4),
  IN  I_TIPO_MOVIMENTO 			 			varchar(20),
  IN  I_NO_IMPEGNATO             			varchar(2),
  IN  I_IVA			             			varchar(2),
  IN  I_MAG			             			varchar(2),
  IN  I_TESTATA		             			varchar(2),
  IN  I_IMPORTI_RIGA_ORIGINE     			varchar(2),
  IN  I_SITUAZIONE_RIGA_ORIGINE  			varchar(2)
)
BEGIN
DECLARE D_TIPO_DOCUMENTO 					VARCHAR(30);
DECLARE D_NUMERO_DOCUMENTO 					DECIMAL(18,0);
DECLARE D_TDO_CODICE_DIFFERITE 				VARCHAR(4);
DECLARE D_TMO_CODICE 						VARCHAR(4);
DECLARE D_ESISTENZA 						VARCHAR(10);
DECLARE D_NUMERO_RIGHE 						INTEGER;
DECLARE D_NUMERO_RIGHE_EVASE 				INTEGER;
DECLARE D_QUANTITA_IMPEGNATA 				numeric(18,4);
DECLARE D_QUANTITA_APPRONTATA 				numeric(18,4);
DECLARE D_TUM_QUANTITA_IMPEGNATA_BASE			numeric(18,4);
DECLARE D_TUM_QUANTITA_APPRONTATA_BASE		numeric(18,4);
DECLARE D_IMPORTO_SCONTO_EVASO 				numeric(18,2);
DECLARE D_IMPORTO_EVASO 					numeric(18,2);
DECLARE D_SITUAZIONE 						VARCHAR(30);
DECLARE D_NUMERO_RIGHE_EVASE_ORIGINE		INTEGER;
DECLARE D_NUMERO_COLLI_ORIGINE 				INTEGER;
DECLARE D_NUMERO_CONFEZIONI_ORIGINE 		INTEGER;
DECLARE D_QUANTITA_ORIGINE 					numeric(18,4);
DECLARE D_TUM_QUANTITA_ORIGINE_BASE			numeric(18,4);
DECLARE D_IMPORTO_SCONTO_ORIGINE 			numeric(18,2);
DECLARE D_IMPORTO_ORIGINE 					numeric(18,2);
DECLARE D_QUANTITA 							numeric(18,4);
DECLARE D_QUANTITA_EVASA 					numeric(18,4);
DECLARE D_TUM_QUANTITA_BASE 				numeric(18,4);
DECLARE D_TUM_QUANTITA_EVASA_BASE 			numeric(18,4);
DECLARE D_IMPORTO_SCONTO					numeric(18,2);
DECLARE D_IMPORTO 							numeric(18,2);
DECLARE D_IMPONIBILE_TRASPORTO 				numeric(18,2);
DECLARE D_TIPO_ARTICOLO 					VARCHAR(20);
DECLARE D_LISTINO_CON_IVA 					VARCHAR(2);
DECLARE D_PERCENTUALE 						numeric(18,2);
DECLARE D_ID		 						INTEGER;
DECLARE D_SALDO_ACCONTO						VARCHAR(10);
DECLARE D_TMA_CODICE_IMP_ORD				VARCHAR(4);
DECLARE D_ART_CODICE_MAGAZZINO				VARCHAR(50);
DECLARE D_ART_GESTIONE_VUOTI				VARCHAR(10);
DECLARE D_ART_VUO_CODICE					VARCHAR(04);
DECLARE D_CLI_CODICE						VARCHAR(08);
DECLARE D_DATA_DOCUMENTO					DATE;
DECLARE D_CLI_GESTIONE_VUOTI				VARCHAR(20);
DECLARE D_VUODOC_PROGRESSIVO				INTEGER;
DECLARE D_VUODOC_QUANTITA					NUMERIC(18,6);
DECLARE D_VUODOC_TLV_CODICE					VARCHAR(04);
DECLARE D_VUODOC_PREZZO						NUMERIC(18,4);
DECLARE D_DITTA								VARCHAR(04);
DECLARE D_ACCORPA							VARCHAR(02);
DECLARE D_VUODOC_TIV_CODICE					VARCHAR(04);
DECLARE D_VUODOC_IMPORTO					NUMERIC(18,2);

	select @dit_codice into d_ditta;

	select art_codice_magazzino, gestione_vuoti, vuo_codice from art where codice = i_art_codice into d_art_codice_magazzino, d_art_gestione_vuoti, d_art_vuo_codice;
	if d_art_codice_magazzino <> '' then
		set i_art_codice = d_art_codice_magazzino;
	end if;

	if (i_tabella <> 'ovr') and (i_tabella <> 'opr') then
		set d_quantita_approntata = 0;
		set d_tum_quantita_approntata_base = 0;
	else
		set d_quantita_approntata = i_quantita_approntata;
		set d_tum_quantita_approntata_base = i_tum_quantita_approntata_base;
	end if;
	set d_quantita_impegnata = i_quantita - i_quantita_evasa;
	set d_tum_quantita_impegnata_base = i_tum_quantita_base - i_tum_quantita_evasa_base;
	set d_importo_sconto = i_importo_sconto;
	set d_importo = i_importo;
	if (i_storna = 'si') then
		set d_quantita_impegnata = d_quantita_impegnata * -1;
		set d_tum_quantita_impegnata_base = d_tum_quantita_impegnata_base * -1;
		set d_quantita_approntata = d_quantita_approntata * -1;
		set d_tum_quantita_approntata_base = d_tum_quantita_approntata_base * -1;
		set d_importo_sconto = d_importo_sconto * -1;
		set d_importo = d_importo * -1;
	end if;

	if (i_tabella = 'pvr') then
		select cli_codice, data_documento, numero_documento, tipo_documento, tdo_codice_differite, tmo_codice, listino_con_iva from pvt where progressivo = i_progressivo
			into d_cli_codice, d_data_documento, d_numero_documento, d_tipo_documento, d_tdo_codice_differite, d_tmo_codice, d_listino_con_iva;
	elseif (i_tabella = 'ovr') then
		select cli_codice, data_documento, numero_documento, tipo_documento, tdo_codice_differite, tmo_codice, listino_con_iva from ovt where progressivo = i_progressivo
			into d_cli_codice, d_data_documento, d_numero_documento, d_tipo_documento, d_tdo_codice_differite, d_tmo_codice, d_listino_con_iva;
	elseif (i_tabella = 'bvr') then
		select cli_codice, data_documento, numero_documento, tipo_documento, tdo_codice_differite, tmo_codice, listino_con_iva from bvt where progressivo = i_progressivo
			into d_cli_codice, d_data_documento, d_numero_documento, d_tipo_documento, d_tdo_codice_differite, d_tmo_codice, d_listino_con_iva;
	elseif (i_tabella = 'cvr') then
		select cli_codice, data_documento, numero_documento, tipo_documento, tdo_codice_differite, tmo_codice, listino_con_iva from cvt where progressivo = i_progressivo
			into d_cli_codice, d_data_documento, d_numero_documento, d_tipo_documento, d_tdo_codice_differite, d_tmo_codice, d_listino_con_iva;
	elseif (i_tabella = 'dvr') then
		select cli_codice, data_documento, numero_documento, tipo_documento, tdo_codice_differite, tmo_codice, listino_con_iva from dvt where progressivo = i_progressivo
			into d_cli_codice, d_data_documento, d_numero_documento, d_tipo_documento, d_tdo_codice_differite, d_tmo_codice, d_listino_con_iva;
	elseif (i_tabella = 'fvr') then
		select cli_codice, data_documento, numero_documento, tipo_documento, tdo_codice_differite, tmo_codice, listino_con_iva from fvt where progressivo = i_progressivo
			into d_cli_codice, d_data_documento, d_numero_documento, d_tipo_documento, d_tdo_codice_differite, d_tmo_codice, d_listino_con_iva;
	elseif (i_tabella = 'opr') then
		set d_tipo_documento = 'ordini produzione';
		set d_tdo_codice_differite = '';
		select tmo_codice_materie_prime from opt where progressivo = i_progressivo
			into d_tmo_codice;
	end if;

	/*  vuoti  */
	set d_vuodoc_prezzo = 0;
	if d_art_gestione_vuoti <> 'no' and (d_tipo_documento = 'bolla' or d_tipo_documento = 'corrispettivo' or d_tipo_documento = 'ddt'
			or d_tipo_documento = 'fattura accompagnatoria' or d_tipo_documento = 'fattura differita') then
		if d_cli_codice is not null then
			select gestione_vuoti from cli where codice = d_cli_codice into d_cli_gestione_vuoti;
			if d_cli_gestione_vuoti <> 'no' then
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

				if d_cli_gestione_vuoti = 'con cauzione' then
					select tlv_codice from tvu where codice = d_ditta into d_vuodoc_tlv_codice;
					select prezzo from lsv where art_codice = (select art_codice from vuo where codice = d_art_vuo_codice) and tlv_codice = d_vuodoc_tlv_codice
						and data_inizio <= d_data_documento and data_fine >= d_data_documento into d_vuodoc_prezzo;
					if d_vuodoc_prezzo is null then
						set d_vuodoc_prezzo = 0;
					end if;
				else
					set d_vuodoc_prezzo = 0;
				end if;

				if (not exists(select id from vuodoc where cfg_tipo = 'C' and cfg_codice = d_cli_codice and proprieta_cliente = 'no' and documento_origine = d_tipo_documento
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
						values (d_vuodoc_progressivo, 'C', d_cli_codice, d_data_documento, concat(d_tipo_documento, ' n. ', d_numero_documento, ' del ', date_format(d_data_documento, '%d/%m/%Y')),
							d_art_vuo_codice, d_vuodoc_quantita, d_vuodoc_prezzo, d_tipo_documento, i_progressivo);
				else
					update vuodoc set quantita = quantita + d_vuodoc_quantita
						where cfg_tipo = 'C' and cfg_codice = d_cli_codice and proprieta_cliente = 'no' and documento_origine = d_tipo_documento and doc_progressivo_origine = i_progressivo and vuo_codice = d_art_vuo_codice
						and inserito_fattura_differita = 'no' and reso = 'no';
				end if;
				delete from vuodoc where cfg_tipo = 'C' and cfg_codice = d_cli_codice and documento_origine = d_tipo_documento and doc_progressivo_origine = i_progressivo and vuo_codice = d_art_vuo_codice
					and reso = 'no' and quantita = 0;

				if d_vuodoc_prezzo <> 0 then
					select tiv_codice_vendite from art where codice = (select art_codice from vuo where codice = d_art_vuo_codice) into d_vuodoc_tiv_codice;
					set d_vuodoc_importo = round(d_vuodoc_quantita * d_vuodoc_prezzo, 2);
				end if;
			end if;
		end if;
	end if;

	if i_iva = 'si' or i_mag = 'si' or i_testata = 'si' or i_importi_riga_origine = 'si' or i_situazione_riga_origine = 'si'  then
		/*  aggiornamento ex sommatoria  */
		if (i_iva = 'si' and i_art_codice <> '' and i_tiv_codice <> '' and i_tabella <> 'opr') then
			select tipo_articolo from art where codice = i_art_codice into d_tipo_articolo;

			if ((d_tipo_articolo = 'fiscale' or d_tipo_articolo = 'fuori magazzino') and i_tipo_movimento = 'normale') then
				set d_imponibile_trasporto = d_importo;
			else
				set d_imponibile_trasporto = 0;
			end if;

			if (i_tabella = 'pvr') then
				if (not exists(select id from pvi where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento)) then
					insert into pvi (progressivo, tiv_codice, tipo_movimento, importo, importo_imponibile_trasporto)
						values (i_progressivo, i_tiv_codice, i_tipo_movimento, d_importo, d_imponibile_trasporto);
				else
					update pvi set importo = importo + d_importo, importo_imponibile_trasporto = importo_imponibile_trasporto + d_imponibile_trasporto
						where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento;
				end if;
			elseif (i_tabella = 'ovr') then
				if (not exists(select id from ovi where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento)) then
					insert into ovi (progressivo, tiv_codice, tipo_movimento, importo, importo_imponibile_trasporto)
						values (i_progressivo, i_tiv_codice, i_tipo_movimento, d_importo, d_imponibile_trasporto);
				else
					update ovi set importo = importo + d_importo, importo_imponibile_trasporto = importo_imponibile_trasporto + d_imponibile_trasporto
						where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento;
				end if;
			elseif (i_tabella = 'bvr') then
				if (not exists(select id from bvi where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento)) then
					insert into bvi (progressivo, tiv_codice, tipo_movimento, importo, importo_imponibile_trasporto)
						values (i_progressivo, i_tiv_codice, i_tipo_movimento, d_importo, d_imponibile_trasporto);
				else
					update bvi set importo = importo + d_importo, importo_imponibile_trasporto = importo_imponibile_trasporto + d_imponibile_trasporto
						where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento;
				end if;

				/*  vuoti  */
				if d_vuodoc_prezzo <> 0 then
					if (not exists(select id from bvi where progressivo = i_progressivo and tiv_codice = d_vuodoc_tiv_codice and tipo_movimento = 'normale')) then
						insert into bvi (progressivo, tiv_codice, tipo_movimento, importo, importo_vuoti)
							values (i_progressivo, d_vuodoc_tiv_codice, 'normale', d_vuodoc_importo, d_vuodoc_importo);
					else
						update bvi set importo = importo + d_vuodoc_importo, importo_vuoti = importo_vuoti + d_vuodoc_importo
							where progressivo = i_progressivo and tiv_codice = d_vuodoc_tiv_codice and tipo_movimento = 'normale';
					end if;
				end if;
			elseif (i_tabella = 'cvr') then
				if (not exists(select id from cvi where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento)) then
					insert into cvi (progressivo, tiv_codice, tipo_movimento, importo, importo_imponibile_trasporto)
						values (i_progressivo, i_tiv_codice, i_tipo_movimento, d_importo, d_imponibile_trasporto);
				else
					update cvi set importo = importo + d_importo, importo_imponibile_trasporto = importo_imponibile_trasporto + d_imponibile_trasporto
						where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento;
				end if;

				/*  vuoti  */
				if d_vuodoc_prezzo <> 0 then
					if (not exists(select id from cvi where progressivo = i_progressivo and tiv_codice = d_vuodoc_tiv_codice and tipo_movimento = 'normale')) then
						insert into cvi (progressivo, tiv_codice, tipo_movimento, importo, importo_vuoti)
							values (i_progressivo, d_vuodoc_tiv_codice, 'normale', d_vuodoc_importo, d_vuodoc_importo);
					else
						update cvi set importo = importo + d_vuodoc_importo, importo_vuoti = importo_vuoti + d_vuodoc_importo
							where progressivo = i_progressivo and tiv_codice = d_vuodoc_tiv_codice and tipo_movimento = 'normale';
					end if;
				end if;
			elseif (i_tabella = 'dvr') then
				if (not exists(select id from dvi where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento)) then
					insert into dvi (progressivo, tiv_codice, tipo_movimento, importo, importo_imponibile_trasporto)
						values (i_progressivo, i_tiv_codice, i_tipo_movimento, d_importo, d_imponibile_trasporto);
				else
					update dvi set importo = importo + d_importo, importo_imponibile_trasporto = importo_imponibile_trasporto + d_imponibile_trasporto
						where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento;
				end if;

				/*  vuoti  */
				if d_vuodoc_prezzo <> 0 then
					if (not exists(select id from dvi where progressivo = i_progressivo and tiv_codice = d_vuodoc_tiv_codice and tipo_movimento = 'normale')) then
						insert into dvi (progressivo, tiv_codice, tipo_movimento, importo, importo_vuoti)
							values (i_progressivo, d_vuodoc_tiv_codice, 'normale', d_vuodoc_importo, d_vuodoc_importo);
					else
						update dvi set importo = importo + d_vuodoc_importo, importo_vuoti = importo_vuoti + d_vuodoc_importo
							where progressivo = i_progressivo and tiv_codice = d_vuodoc_tiv_codice and tipo_movimento = 'normale';
					end if;
				end if;
			elseif (i_tabella = 'fvr') then
				if (not exists(select id from fvi where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento)) then
					insert into fvi (progressivo, tiv_codice, tipo_movimento, importo, importo_imponibile_trasporto)
						values (i_progressivo, i_tiv_codice, i_tipo_movimento, d_importo, d_imponibile_trasporto);
				else
					update fvi set importo = importo + d_importo, importo_imponibile_trasporto = importo_imponibile_trasporto + d_imponibile_trasporto
						where progressivo = i_progressivo and tiv_codice = i_tiv_codice and tipo_movimento = i_tipo_movimento;
				end if;

				/*  vuoti  */
				if d_vuodoc_prezzo <> 0 then
					if (not exists(select id from fvi where progressivo = i_progressivo and tiv_codice = d_vuodoc_tiv_codice and tipo_movimento = 'normale')) then
						insert into fvi (progressivo, tiv_codice, tipo_movimento, importo, importo_vuoti)
							values (i_progressivo, d_vuodoc_tiv_codice, 'normale', d_vuodoc_importo, d_vuodoc_importo);
					else
						update fvi set importo = importo + d_vuodoc_importo, importo_vuoti = importo_vuoti + d_vuodoc_importo
							where progressivo = i_progressivo and tiv_codice = d_vuodoc_tiv_codice and tipo_movimento = 'normale';
					end if;
				end if;
			end if;
		end if;

		/*  impegnato approntato  */
		if (i_mag = 'si' and i_art_codice <> '' and i_tma_codice <> '' and (i_situazione = 'inserito' or i_situazione = 'evaso parziale')) then
			if d_tipo_documento = 'ordine' then
				set d_esistenza = 'decrementa';
			elseif (d_tmo_codice = '') then
				set d_esistenza = 'ignora';
			else
				select esistenza from tmo where codice = d_tmo_codice into d_esistenza;
			end if;

			if (d_esistenza <> 'ignora') and (i_no_impegnato = 'no') then
				select tma_codice_impegnato_ordinato from tma where codice = i_tma_codice into d_tma_codice_imp_ord;
				if d_tma_codice_imp_ord = '' then
					set d_tma_codice_imp_ord = i_tma_codice;
				end if;

				if (d_esistenza = 'incrementa') then
					set d_quantita_impegnata = d_quantita_impegnata * -1;
					set d_tum_quantita_impegnata_base = d_tum_quantita_impegnata_base * -1;
					set d_quantita_approntata = d_quantita_approntata * -1;
					set d_tum_quantita_approntata_base = d_tum_quantita_approntata_base * -1;
				end if;
				if (not exists(select id from mag where art_codice = i_art_codice and tma_codice = d_tma_codice_imp_ord)) then
					insert into mag (art_codice, tma_codice) values (i_art_codice, d_tma_codice_imp_ord);
				end if;
				update mag set impegnato = impegnato + d_tum_quantita_impegnata_base, approntato = approntato + d_tum_quantita_approntata_base
					where art_codice = i_art_codice and tma_codice = d_tma_codice_imp_ord;
			end if;
		end if;

		/*  aggiorna situazione su testata ordini, preventivi, ddt conto vendita e ddt a fornitori */
		if i_testata = 'si' and i_art_codice <> '' and (d_tipo_documento = 'preventivo' or d_tipo_documento = 'preventivo nominativi' or d_tipo_documento = 'ordine' or
				d_tipo_documento = 'ddt fornitori' or (d_tipo_documento = 'ddt' and d_tdo_codice_differite = '')) then
					set d_situazione = 'inserito';

			if (d_tipo_documento = 'preventivo' or d_tipo_documento = 'preventivo nominativi') then
        if (select count(riga) from pvr where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from pvr where progressivo = i_progressivo and art_codice <> '' and situazione = 'revisionato') and
						((select count(riga) from pvr where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'revisionato';
        elseif (select count(riga) from pvr where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from pvr where progressivo = i_progressivo and art_codice <> '' and situazione = 'annullato') and
						((select count(riga) from pvr where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'annullato';
        elseif (select count(riga) from pvr where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from pvr where progressivo = i_progressivo and art_codice <> '' and (situazione = 'evaso' or situazione = 'annullato')) and
						((select count(riga) from pvr where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'evaso';
				elseif (select count(riga) from pvr where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from pvr where progressivo = i_progressivo and art_codice <> '' and (situazione = 'inserito' or situazione = 'annullato')) then
					set d_situazione = 'inserito';
				else
					set d_situazione = 'evaso parziale';
				end if;

				update pvt set situazione = d_situazione where progressivo = i_progressivo;
			end if;

			if d_tipo_documento = 'ordine' then
        if (select count(riga) from ovr where progressivo = i_progressivo) =
						(select count(riga) from ovr where progressivo = i_progressivo and situazione = 'revisionato') and
						((select count(riga) from ovr where progressivo = i_progressivo) <> 0) then
					set d_situazione = 'revisionato';
        elseif (select count(riga) from ovr where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from ovr where progressivo = i_progressivo and art_codice <> '' and situazione = 'annullato') and
						((select count(riga) from ovr where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'annullato';
				elseif (select count(riga) from ovr where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from ovr where progressivo = i_progressivo and art_codice <> '' and (situazione = 'evaso' or situazione = 'annullato')) and
						((select count(riga) from ovr where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'evaso';
				elseif (select count(riga) from ovr where progressivo = i_progressivo and art_codice <> '') =
          (select count(riga) from ovr where progressivo = i_progressivo and art_codice <> '' and (situazione = 'inserito' or situazione = 'annullato')) then
					set d_situazione = 'inserito';
				else
					set d_situazione = 'evaso parziale';
				end if;

				update ovt set situazione = d_situazione where progressivo = i_progressivo;
			end if;

			if d_tipo_documento = 'ddt' then
        if (select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '' and (situazione = 'consolidato' or situazione = 'annullato')) and
						((select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'consolidato';
				elseif (select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '' and (situazione = 'evaso' or situazione = 'annullato')) and
						((select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'evaso';
				elseif (select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '' and (situazione = 'inserito' or situazione = 'annullato')) then
					set d_situazione = 'inserito';
				else
					set d_situazione = 'consolidato parziale';
				end if;

				update dvt set situazione = d_situazione where progressivo = i_progressivo;
			end if;

			if d_tipo_documento = 'ddt fornitori' then
				if (select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '' and (situazione = 'consolidato' or situazione = 'annullato')) and
						((select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'consolidato';
				elseif (select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '' and (situazione = 'evaso' or situazione = 'annullato')) and
						((select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '') <> 0) then
					set d_situazione = 'evaso';
				elseif (select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '') =
						(select count(riga) from dvr where progressivo = i_progressivo and art_codice <> '' and (situazione = 'inserito' or situazione = 'annullato')) then
					set d_situazione = 'inserito';
				else
					set d_situazione = 'consolidato parziale';
				end if;

				update dvt set situazione = d_situazione where progressivo = i_progressivo;
			end if;

		end if;

		/*  aggiorna situazione documento origine  */
		if i_art_codice <> '' and (i_documento_origine <> '' and (d_tipo_documento <> 'fattura differita' or
				(d_tipo_documento = 'fattura differita' and (i_documento_origine = 'ordine ven' or
        i_documento_origine = 'preventivo ven')))) then

    		if (i_documento_origine = 'produzione' and d_tipo_documento = 'ddt fornitori') then
			/*  totalizzazione importi  */
				if i_importi_riga_origine = 'si' then
					set d_quantita_origine = i_quantita;
					if (i_storna = 'si') then
						set d_quantita_origine = d_quantita_origine * -1;
					end if;

					select accorpa_ddt_conto_lavoro from arc.dit05 where codice = d_ditta into d_accorpa;

					if d_accorpa <> 'si' then
						update opr set quantita_spedita = quantita_spedita + d_quantita_origine
							where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
                    end if;
				end if;
			else
				/*  totalizzazione importi  */
				if i_importi_riga_origine = 'si' then
					set d_numero_colli_origine = i_numero_colli;
					set d_numero_confezioni_origine = i_numero_confezioni;
					set d_quantita_origine = i_quantita;
					set d_tum_quantita_origine_base = i_tum_quantita_base;
					set d_importo_sconto_origine = i_importo_sconto;
					set d_importo_origine = i_importo;

					if (i_storna = 'si') then
						set d_numero_colli_origine = d_numero_colli_origine * -1;
						set d_numero_confezioni_origine = d_numero_confezioni_origine * -1;
						set d_quantita_origine = d_quantita_origine * -1;
						set d_tum_quantita_origine_base = d_tum_quantita_origine_base * -1;
						set d_importo_sconto_origine = d_importo_sconto_origine * -1;
						set d_importo_origine = d_importo_origine * -1;
					end if;

					if (i_documento_origine = 'preventivo ven') then
						update pvr set numero_colli_evasi = numero_colli_evasi + d_numero_colli_origine,
							numero_confezioni_evase = numero_confezioni_evase + d_numero_confezioni_origine,
							quantita_evasa = quantita_evasa + d_quantita_origine,
							tum_quantita_evasa_base = tum_quantita_evasa_base + d_tum_quantita_origine_base,
							importo_sconto_evaso = importo_sconto_evaso + d_importo_sconto_origine,
							importo_evaso = importo_evaso + d_importo_origine
							where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;

						select tipo_documento from pvt where progressivo = i_doc_progressivo_origine into d_tipo_documento;
						select quantita, quantita_evasa, tum_quantita_base, tum_quantita_evasa_base, importo_sconto_evaso, importo_evaso from pvr
							where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine
							into d_quantita, d_quantita_evasa, d_tum_quantita_base, d_tum_quantita_evasa_base, d_importo_sconto_evaso, d_importo_evaso;
					elseif (i_documento_origine = 'ordine ven') then
						update ovr set numero_colli_evasi = numero_colli_evasi + d_numero_colli_origine,
							numero_confezioni_evase = numero_confezioni_evase + d_numero_confezioni_origine,
							quantita_evasa = quantita_evasa + d_quantita_origine,
							tum_quantita_evasa_base = tum_quantita_evasa_base + d_tum_quantita_origine_base,
							importo_sconto_evaso = importo_sconto_evaso + d_importo_sconto_origine,
							importo_evaso = importo_evaso + d_importo_origine
							where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;

						select tipo_documento from ovt where progressivo = i_doc_progressivo_origine into d_tipo_documento;
						select quantita, quantita_evasa, tum_quantita_base, tum_quantita_evasa_base, importo_sconto_evaso, importo_evaso from ovr
							where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine
							into d_quantita, d_quantita_evasa, d_tum_quantita_base, d_tum_quantita_evasa_base, d_importo_sconto_evaso, d_importo_evaso;
					elseif (i_documento_origine = 'ddt ven') then
						update dvr set numero_colli_evasi = numero_colli_evasi + d_numero_colli_origine,
							numero_confezioni_evase = numero_confezioni_evase + d_numero_confezioni_origine,
							quantita_evasa = quantita_evasa + d_quantita_origine,
							tum_quantita_evasa_base = tum_quantita_evasa_base + d_tum_quantita_origine_base,
							importo_sconto_evaso = importo_sconto_evaso + d_importo_sconto_origine,
							importo_evaso = importo_evaso + d_importo_origine
							where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;

						select tipo_documento from dvt where progressivo = i_doc_progressivo_origine into d_tipo_documento;
						select quantita, quantita_evasa, tum_quantita_base, tum_quantita_evasa_base, importo_sconto_evaso, importo_evaso from dvr
							where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine
							into d_quantita, d_quantita_evasa, d_tum_quantita_base, d_tum_quantita_evasa_base, d_importo_sconto_evaso, d_importo_evaso;
					elseif (i_documento_origine = 'ddt acq') then
						update dar set numero_colli_evasi = numero_colli_evasi + d_numero_colli_origine,
							numero_confezioni_evase = numero_confezioni_evase + d_numero_confezioni_origine,
							quantita_evasa = quantita_evasa + d_quantita_origine,
							tum_quantita_evasa_base = tum_quantita_evasa_base + d_tum_quantita_origine_base,
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
					if (i_documento_origine = 'ordine ven') then
						select saldo_acconto from fvr where documento_origine = i_documento_origine and
							doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;

						if (d_saldo_acconto is null or d_saldo_acconto <> 'saldo') then
							select saldo_acconto from dvr where documento_origine = i_documento_origine and
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
						end if;
						if (d_saldo_acconto is null or d_saldo_acconto <> 'saldo') then
							select saldo_acconto from bvr where documento_origine = i_documento_origine and
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
						end if;
						if (d_saldo_acconto is null or d_saldo_acconto <> 'saldo') then
							select saldo_acconto from cvr where documento_origine = i_documento_origine and
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
						end if;
						if (d_saldo_acconto = 'saldo') then
							update ovr set situazione = 'evaso' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
						else
							select saldo_acconto from fvr where documento_origine = i_documento_origine and
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
							if (d_saldo_acconto is null or d_saldo_acconto <> 'acconto') then
								select saldo_acconto from dvr where documento_origine = i_documento_origine and
									doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
							end if;
							if (d_saldo_acconto is null or d_saldo_acconto <> 'acconto') then
								select saldo_acconto from bvr where documento_origine = i_documento_origine and
									doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
							end if;
							if (d_saldo_acconto is null or d_saldo_acconto <> 'acconto') then
								select saldo_acconto from cvr where documento_origine = i_documento_origine and
									doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
							end if;
							if (d_saldo_acconto = 'acconto') then
								update ovr set situazione = 'evaso parziale' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
							else
								update ovr set situazione = 'inserito' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
							end if;
						end if;
					end if;

					if (i_documento_origine = 'preventivo ven') then
						select saldo_acconto from ovr where documento_origine = i_documento_origine and
							doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;

						if (d_saldo_acconto is null or d_saldo_acconto <> 'saldo') then
							select saldo_acconto from fvr where documento_origine = i_documento_origine and
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
						end if;
						if (d_saldo_acconto is null or d_saldo_acconto <> 'saldo') then
							select saldo_acconto from dvr where documento_origine = i_documento_origine and
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
						end if;
						if (d_saldo_acconto is null or d_saldo_acconto <> 'saldo') then
							select saldo_acconto from bvr where documento_origine = i_documento_origine and
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
						end if;
						if (d_saldo_acconto is null or d_saldo_acconto <> 'saldo') then
							select saldo_acconto from cvr where documento_origine = i_documento_origine and
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
						end if;
						if (d_saldo_acconto = 'saldo') then
							update pvr set situazione = 'evaso' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
						else
							select saldo_acconto from ovr where documento_origine = i_documento_origine and
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
							if (d_saldo_acconto is null or d_saldo_acconto <> 'acconto') then
								select saldo_acconto from fvr where documento_origine = i_documento_origine and
									doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
							end if;
							if (d_saldo_acconto is null or d_saldo_acconto <> 'acconto') then
								select saldo_acconto from dvr where documento_origine = i_documento_origine and
									doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
							end if;
							if (d_saldo_acconto is null or d_saldo_acconto <> 'acconto') then
								select saldo_acconto from bvr where documento_origine = i_documento_origine and
									doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
							end if;
							if (d_saldo_acconto is null or d_saldo_acconto <> 'acconto') then
								select saldo_acconto from cvr where documento_origine = i_documento_origine and
									doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
							end if;

							if (d_saldo_acconto = 'acconto') then
								update pvr set situazione = 'evaso parziale' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
							else
								update pvr set situazione = 'inserito' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
							end if;
						end if;
					end if;

					if (i_documento_origine = 'ddt ven') then
						select saldo_acconto from fvr where documento_origine = i_documento_origine and
							doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;

						if (d_saldo_acconto is null or d_saldo_acconto <> 'saldo') then
							select saldo_acconto from bvr where documento_origine = i_documento_origine and
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
						end if;

						if (d_saldo_acconto is null or d_saldo_acconto <> 'saldo') then
							select saldo_acconto from dar where documento_origine = i_documento_origine and
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'saldo' limit 1 into d_saldo_acconto;
						end if;

						if (d_saldo_acconto = 'saldo') then
							update dvr set situazione = 'consolidato' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
							if (select tdo_codice_differite from dvt where progressivo = i_doc_progressivo_origine) <> '' then
							  update dvt set situazione = 'consolidato' where progressivo = i_doc_progressivo_origine;
					        end if;
						else
							select saldo_acconto from fvr where documento_origine = i_documento_origine and
								doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;

							if (d_saldo_acconto is null or d_saldo_acconto <> 'acconto') then
								select saldo_acconto from bvr where documento_origine = i_documento_origine and
									doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
							end if;

							if (d_saldo_acconto is null or d_saldo_acconto <> 'acconto') then
								select saldo_acconto from dar where documento_origine = i_documento_origine and
									doc_progressivo_origine = i_doc_progressivo_origine and doc_riga_origine = i_doc_riga_origine and saldo_acconto = 'acconto' limit 1 into d_saldo_acconto;
							end if;

							if (d_saldo_acconto = 'acconto') then
								update dvr set situazione = 'consolidato parziale' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
							else
								update dvr set situazione = 'evaso' where progressivo = i_doc_progressivo_origine and riga = i_doc_riga_origine;
								if (select tdo_codice_differite from dvt where progressivo = i_doc_progressivo_origine) <> '' then
		      					  update dvt set situazione = 'evaso' where progressivo = i_doc_progressivo_origine;
    				            end if;
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

	end if;

END
