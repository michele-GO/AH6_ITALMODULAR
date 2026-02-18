unit GGGESACQ;

interface

uses
  system.sysutils, system.variants, system.classes, system.dateutils,

  winapi.windows, winapi.messages,

  vcl.graphics, vcl.controls, vcl.forms, vcl.dialogs, vcl.grids, vcl.dbgrids,
  vcl.comctrls, vcl.toolwin, vcl.buttons, vcl.extctrls, vcl.dbctrls, vcl.stdctrls,
  vcl.mask, vcl.menus, vcl.winxctrls,

  data.db,

  myaccess, memds, virtualtable, dbaccess, query_go,

  rzdbgrid, rztabs, rzspnedt, rzlabel, rzpanel, rzdbedit, rzlistvw, rztreevw,
  rzradchk, rzbutton, rzsplit, rzcmbobx, rzprgres, rzshelldialogs, rzdbcmbo,
  rzdbchk, rzedit, rzgroupbar, raizeedit_go,

  ZZCOLLI_CONFEZIONI, ZZTOTACQ, ZZQTAMIN, ZZMOVMAG, ZZDICINT, ZZCERCA_PREZZO,
  ZZRMA, ZZNCA, ZZCALSCA, ZZCALL_OFF_STOCK, DMARC, GGGESDOC, ZZSELEZIONE,
  ZZSPESE_ACQ, ZZIBAN;

type

  TGESACQ = class(TGESDOC)
    Label4: TRzlabel;
    v_tda_codice: TRzDBEdit_go;
    l_numero_documento_alfa: TRzLabel;
    v_numero_documento: TRzDBNumericEdit_go;
    Label11: TRzlabel;
    v_serie_documento: TRzDBEdit_go;
    Label6: TRzlabel;
    v_tla_codice: TRzDBEdit_go;
    Label2: TRzlabel;
    v_tpa_codice: TRzDBEdit_go;
    Label5: TRzlabel;
    v_tsm_codice: TRzDBEdit_go;
    Label15: TRzlabel;
    v_tva_codice: TRzDBEdit_go;
    Label16: TRzlabel;
    v_cambio: TRzDBNumericEdit_go;
    tab_testata_magazzino: TRztabsheet;
    Label9: TRzlabel;
    v_tmo_codice: TRzDBEdit_go;
    Label3: TRzlabel;
    v_tma_codice: TRzDBEdit_go;
    Label7: TRzlabel;
    v_tma_codice_collegato: TRzDBEdit_go;
    tab_testata_finanziario: TRztabsheet;
    Label20: TRzlabel;
    v_codice_abi: TRzDBEdit_go;
    Label21: TRzlabel;
    v_codice_cab: TRzDBEdit_go;
    Label42: TRzlabel;
    v_tba_codice: TRzDBEdit_go;
    Label22: TRzlabel;
    v_tmo_codice_collegato: TRzDBEdit_go;
    tab_testata_spedizione: TRztabsheet;
    Label23: TRzlabel;
    v_tsp_codice: TRzDBEdit_go;
    Label25: TRzlabel;
    v_tpo_codice: TRzDBEdit_go;
    tab_testata_riferimento: TRztabsheet;
    Label47: TRzlabel;
    v_tiv_codice: TRzDBEdit_go;
    Label49: TRzlabel;
    v_riferimento: TRzDBEdit_go;
    Label50: TRzlabel;
    v_data_riferimento: TRzDBDateTimeEdit_go;
    Label51: TRzlabel;
    v_tcd_codice_apertura: TRzDBEdit_go;
    Label53: TRzlabel;
    v_tcd_codice_chiusura: TRzDBEdit_go;
    tab_testata_spese: TRztabsheet;
    Label19: TRzlabel;
    v_art_codice: TRzDBEdit_go;
    Label24: TRzlabel;
    Label26: TRzlabel;
    v_quantita: TRzDBNumericEdit_go;
    v_l_prezzo: TRzlabel;
    v_prezzo: TRzDBNumericEdit_go;
    v_l_tsm_codice_righe: TRzlabel;
    v_tsm_codice_righe: TRzDBEdit_go;
    v_l_tipo_movimento: TRzlabel;
    v_tipo_movimento: TRzDBComboBox_go;
    v_l_importo: TRzlabel;
    v_importo: TRzDBNumericEdit_go;
    Panel2: TRzpanel;
    box_esistenza_disponibilita: TGroupBox;
    v_esistenza_deposito: TRzDBNumericEdit_go;
    v_esistenza_totale: TRzDBNumericEdit_go;
    Label13: TRzlabel;
    v_data_documento: TRzDBDateTimeEdit_go;
    esistenza_deposito: tmyquery_go;
    esistenza_deposito_ds: tmydatasource;
    esistenza_totale: tmyquery_go;
    esistenza_totale_ds: tmydatasource;
    Label63: TRzlabel;
    v_conto_corrente: TRzDBEdit_go;
    Label64: TRzlabel;
    v_cin: TRzDBEdit_go;
    Label65: TRzlabel;
    cmm: tmyquery_go;
    tda: tmyquery_go;
    v_rettifica_intra: TRzDbcheckbox;
    Panel7: TRzpanel;
    v_listino_con_iva: TRzDbcheckbox;
    frn: tmyquery_go;
    nom: tmyquery_go;
    ltm: tmyquery_go;
    art: tmyquery_go;
    Label71: TRzlabel;
    v_tna_codice_intra: TRzDBEdit_go;
    tool_evasione: TToolButton;
    riga_documento_evaso: tmyquery_go;
    saldo_acconto: tmyquery_go;
    cpa: tmyquery_go;
    duplica_righe: tmyquery_go;
    v_mese_rettifica_intra: TRzDBNumericEdit_go;
    v_trimestre_rettifica_intra: TRzDBNumericEdit_go;
    v_anno_rettifica_intra: TRzDBNumericEdit_go;
    Label58: TRzlabel;
    v_tsm_codice_sconto: TRzDBEdit_go;
    Label59: TRzlabel;
    v_importo_sconto: TRzDBNumericEdit_go;
    Panel5: TRzpanel;
    Label27: TRzlabel;
    v_descrizione_spese_01: TRzDBEdit_go;
    Label29: TRzlabel;
    v_importo_spese_01: TRzDBNumericEdit_go;
    v_iva_ripartita_spese_01: TRzDbcheckbox;
    Label30: TRzlabel;
    v_tiv_codice_spese_01: TRzDBEdit_go;
    v_costo_ripartito_spese_01: TRzDbcheckbox;
    Label31: TRzlabel;
    v_gen_codice_spese_01: TRzDBEdit_go;
    v_descrizione_spese_02: TRzDBEdit_go;
    v_importo_spese_02: TRzDBNumericEdit_go;
    v_iva_ripartita_spese_02: TRzDbcheckbox;
    v_tiv_codice_spese_02: TRzDBEdit_go;
    v_costo_ripartito_spese_02: TRzDbcheckbox;
    v_gen_codice_spese_02: TRzDBEdit_go;
    v_descrizione_spese_03: TRzDBEdit_go;
    v_importo_spese_03: TRzDBNumericEdit_go;
    v_iva_ripartita_spese_03: TRzDbcheckbox;
    v_tiv_codice_spese_03: TRzDBEdit_go;
    v_costo_ripartito_spese_03: TRzDbcheckbox;
    v_gen_codice_spese_03: TRzDBEdit_go;
    v_descrizione_spese_04: TRzDBEdit_go;
    v_importo_spese_04: TRzDBNumericEdit_go;
    v_iva_ripartita_spese_04: TRzDbcheckbox;
    v_tiv_codice_spese_04: TRzDBEdit_go;
    v_costo_ripartito_spese_04: TRzDbcheckbox;
    v_gen_codice_spese_04: TRzDBEdit_go;
    Panel4: TRzpanel;
    v_l_quantita_residua: TRzlabel;
    v_quantita_residua: TRzDBNumericEdit_go;
    Label33: TRzlabel;
    v_saldo_acconto: TRzDBComboBox_go;
    GroupBox3: TGroupBox;
    Label67: TRzlabel;
    v_importo_sconto_finale: TRzDBNumericEdit_go;
    Label68: TRzlabel;
    v_importo_sconto_cassa: TRzDBNumericEdit_go;
    Label34: TRzlabel;
    v_iban: TRzDBEdit_go;
    Label35: TRzlabel;
    v_bic: TRzDBEdit_go;
    mmt: tmyquery_go;
    mmr: tmyquery_go;
    Label37: TRzlabel;
    v_data_consegna_righe: TRzDBDateTimeEdit_go;
    Label38: TRzlabel;
    Label57: TRzlabel;
    v_data_consegna: TRzDBDateTimeEdit_go;
    Label8: TRzlabel;
    v_data_validita: TRzDBDateTimeEdit_go;
    Label72: TRzlabel;
    v_descrizione1_riga: TRzDBEdit_go;
    v_descrizione2_riga: TRzDBEdit_go;
    cli: tmyquery_go;
    lct: tmyquery_go;
    lcr: tmyquery_go;
    v_tsm_codice_art: TRzDBEdit_go;
    Label1: TRzlabel;
    v_importo_spese_extra: TRzDBNumericEdit_go;
    Label28: TRzlabel;
    v_data_registrazione: TRzDBDateTimeEdit_go;
    Label36: TRzlabel;
    Label75: TRzlabel;
    v_data_inizio_conteggio: TRzDBDateTimeEdit_go;
    tab_testata_destinazione: TRztabsheet;
    Label40: TRzlabel;
    v_indirizzo: TRzDBEdit_go;
    Label43: TRzlabel;
    v_descrizione1: TRzDBEdit_go;
    Label44: TRzlabel;
    v_descrizione2: TRzDBEdit_go;
    Label45: TRzlabel;
    v_via: TRzDBEdit_go;
    Label46: TRzlabel;
    v_cap: TRzDBEdit_go;
    Label48: TRzlabel;
    v_citta: TRzDBEdit_go;
    Label52: TRzlabel;
    v_provincia: TRzDBEdit_go;
    Label55: TRzlabel;
    v_tna_codice: TRzDBEdit_go;
    inf: tmyquery_go;
    v_esistenza: TRzRapidFireButton;
    Label79: TRzlabel;
    v_data_inizio_competenza: TRzDBDateTimeEdit_go;
    v_data_fine_competenza: TRzDBDateTimeEdit_go;
    v_scadenziario_manuale: TRzDbcheckbox;
    Label54: TRzlabel;
    v_tbp_codice: TRzDBEdit_go;
    v_reverse_change: TRzDbcheckbox;
    Label14: TRzlabel;
    v_importo_pagato: TRzDBNumericEdit_go;
    v_art_tub_codice: TRzDBEditDescrizione_go;
    v_art_tum_codice: TRzDBEditDescrizione_go;
    Label17: TRzlabel;
    v_importo_sconto_righe: TRzDBNumericEdit_go;
    v_l_frn_codice: TRzlabel;
    v_frn_codice: TRzDBEdit_go;
    abi: tmyquery_go;
    abi_ds: tmydatasource;
    cab: tmyquery_go;
    cab_ds: tmydatasource;
    RzDBEditDescrizione_go21: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go22: TRzDBEditDescrizione_go;
    Panel1: TRzpanel;
    v_l_esercizio: TRzlabel;
    v_esercizio: TRzDBEdit_go;
    v_iva_sospensione: TRzDbcheckbox;
    v_percipienti: TRzDbcheckbox;
    frn_ds: tmydatasource;
    cancella_iva: tmyquery_go;
    tda_ds: tmydatasource;
    v_tda_descrizione: TRzDBEditDescrizione_go;
    tsm_righe: tmyquery_go;
    tsm_righe_ds: tmydatasource;
    tsm_art: tmyquery_go;
    tsm_art_ds: tmydatasource;
    RzDBEditDescrizione_go19: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go20: TRzDBEditDescrizione_go;
    tla: tmyquery_go;
    tla_ds: tmydatasource;
    tpa: tmyquery_go;
    tpa_ds: tmydatasource;
    tva: tmyquery_go;
    tva_ds: tmydatasource;
    tsm: tmyquery_go;
    tsm_ds: tmydatasource;
    v_tla_descrizione: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go1: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go2: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go3: TRzDBEditDescrizione_go;
    Label32: TRzlabel;
    v_stampato: TRzDBEdit_go;
    tiv: tmyquery_go;
    tiv_ds: tmydatasource;
    RzDBEditDescrizione_go8: TRzDBEditDescrizione_go;
    cms: tmyquery_go;
    cms_ds: tmydatasource;
    cmt: tmyquery_go;
    cmt_ds: tmydatasource;
    tcd_apertura: tmyquery_go;
    tcd_apertura_ds: tmydatasource;
    tcd_chiusura: tmyquery_go;
    tcd_chiusura_ds: tmydatasource;
    RzDBEditDescrizione_go10: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go11: TRzDBEditDescrizione_go;
    tna_intra: tmyquery_go;
    tna_intra_ds: tmydatasource;
    RzDBEditDescrizione_go12: TRzDBEditDescrizione_go;
    tba: tmyquery_go;
    tba_ds: tmydatasource;
    RzDBEditDescrizione_go6: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go7: TRzDBEditDescrizione_go;
    tbp: tmyquery_go;
    tbp_ds: tmydatasource;
    v_frn_descrizione: trzdbeditdescrizione_go;
    tmo: tmyquery_go;
    tmo_ds: tmydatasource;
    tma: tmyquery_go;
    tma_ds: tmydatasource;
    tmo_collegato: tmyquery_go;
    tmo_collegato_ds: tmydatasource;
    tma_collegato: tmyquery_go;
    tma_collegato_ds: tmydatasource;
    RzDBEditDescrizione_go9: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go13: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go14: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go15: TRzDBEditDescrizione_go;
    tna: tmyquery_go;
    tna_ds: tmydatasource;
    v_tna_descrizione: TRzDBEditDescrizione_go;
    tsp: tmyquery_go;
    tsp_ds: tmydatasource;
    tpo: tmyquery_go;
    tpo_ds: tmydatasource;
    RzDBEditDescrizione_go16: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go17: TRzDBEditDescrizione_go;
    tsm_sconto: tmyquery_go;
    tsm_sconto_ds: tmydatasource;
    RzDBEditDescrizione_go18: TRzDBEditDescrizione_go;
    v_tum_codice: TRzDBEdit_go;
    tum: tmyquery_go;
    DataSource1: tmydatasource;
    gen_spese_01: tmyquery_go;
    gen_spese_02: tmyquery_go;
    gen_spese_03: tmyquery_go;
    gen_spese_04: tmyquery_go;
    Label56: TRzlabel;
    v_cli_codice: TRzDBEdit_go;
    RzDBEditDescrizione_go23: TRzDBEditDescrizione_go;
    cli_01: tmyquery_go;
    cli_01_ds: tmydatasource;
    v_giorno: TRzEdit_go;
    Label39: TRzlabel;
    Label41: TRzlabel;
    v_cms_codice: TRzDBEdit_go;
    v_tipologia: TRzDBEdit_go;
    RzDBEditDescrizione_go4: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go5: TRzDBEditDescrizione_go;
    Label81: TRzlabel;
    v_contatto_commerciale: TRzDBEdit_go;
    Panel11: TRzpanel;
    Label80: TRzlabel;
    RxDBComboEdit1: TRzDBEdit_go;
    Label60: TRzlabel;
    v_importo_totale_digitato: TRzDBNumericEdit_go;
    cem: tmyquery_go;
    lsv: tmyquery_go;
    lsv_ds: tmydatasource;
    Panel9: TRzpanel;
    GroupBox4: TGroupBox;
    RxDBCalcEdit1: TRzDBNumericEdit_go;
    RxDBComboEdit2: TRzDBEdit_go;
    pannello_quantita_base: TRzPanel;
    box_quantita_base: TGroupBox;
    v_tum_quantita_base: trzdbnumericedit_go;
    v_esistenza_principale: TRzDBNumericEdit_go;
    esistenza_principale: tmyquery_go;
    esistenza_principale_ds: tmydatasource;
    eseguita_evasione: tmyquery_go;
    gen: tmyquery_go;
    v_l_descrizione_primanota: TRzlabel;
    v_descrizione_primanota: TRzDBEdit_go;
    tab_testata_note: TRztabsheet;
    v_note: TRzDbmemo_go;
    tool_etiart: TToolButton;
    v_revisione: TRzDBNumericEdit_go;
    v_note_righe: TRzDbmemo_go;
    v_scadenze: TRzRapidFireButton;
    Label61: TRzlabel;
    Label78: TRzlabel;
    v_numero_colli: TRzDBNumericEdit_go;
    v_numero_confezioni_totali: TRzDBNumericEdit_go;
    Label62: TRzlabel;
    Label66: TRzlabel;
    Label70: TRzlabel;
    v_volume: TRzDBNumericEdit_go;
    v_peso_lordo: TRzDBNumericEdit_go;
    v_peso_netto: TRzDBNumericEdit_go;
    v_l_data_competenza_plafond: TRzlabel;
    v_data_competenza_plafond: TRzDBDateTimeEdit_go;
    v_l_colli: TRzlabel;
    v_numero_colli_riga: TRzDBNumericEdit_go;
    v_l_confezioni: TRzlabel;
    v_numero_confezioni: TRzDBNumericEdit_go;
    art_doppi: tmyquery_go;
    tabella_virtuale: TVirtualTable;
    tabella_virtuale_ds: tmydatasource;
    tabella_virtualedata_documento: TDateField;
    tabella_virtualenumero_documento: TFloatField;
    tabella_virtualeriga: TIntegerField;
    tabella_virtualeprogressivo: TIntegerField;
    tabella_virtualenostro_codice: TStringField;
    tabella_virtualedescrizione: TStringField;
    tabella_virtualevostro_codice: TStringField;
    tabella_virtualeum: TStringField;
    tabella_virtualequantita: TFloatField;
    tabella_virtualeprezzo: TFloatField;
    tabella_virtualepercentuale_sconto_01: TFloatField;
    tabella_virtualepercentuale_sconto_02: TFloatField;
    tabella_virtualeimporto_sconto: TFloatField;
    Label73: TRzlabel;
    v_data_consegna_confermata: TRzDBDateTimeEdit_go;
    utntda: tmyquery_go;
    tab_testata_analitica: TRztabsheet;
    Label74: TRzlabel;
    v_cen_codice: TRzDBEdit_go;
    RzDBEditDescrizione_go24: TRzDBEditDescrizione_go;
    Label76: TRzlabel;
    v_tvc_codice: TRzDBEdit_go;
    RzDBEditDescrizione_go25: TRzDBEditDescrizione_go;
    cen: tmyquery_go;
    cen_ds: tmydatasource;
    tvc: tmyquery_go;
    tvc_ds: tmydatasource;
    artp: tmyquery_go;
    v_analitica_spese: TGroupBox;
    v_analitica_spese_01: TRzRapidFireButton;
    v_analitica_spese_02: TRzRapidFireButton;
    v_analitica_spese_03: TRzRapidFireButton;
    v_analitica_spese_04: TRzRapidFireButton;
    v_analitica_sconto_cassa: TRzRapidFireButton;
    v_analitica_sconto_finale: TRzRapidFireButton;
    RzDBEditDescrizione_go26: TRzDBEditDescrizione_go;
    gen_spese_01_ds: tmydatasource;
    gen_spese_02_ds: tmydatasource;
    gen_spese_03_ds: tmydatasource;
    gen_spese_04_ds: tmydatasource;
    RzDBEditDescrizione_go27: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go28: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go29: TRzDBEditDescrizione_go;
    v_art_codice_barcode: TRzEdit_go;
    v_non_fatturare: TRzDBCheckBox;
    tab_pannello_bottoni_nuovi_storni: TRzTabSheet;
    v_intra_testata: TRzDBCheckBox;
    ubm: TMyQuery_go;
    RzLabel1: TRzLabel;
    v_lti_progressivo: trzdbnumericedit_go;
    v_cfg_tipo: trzedit_go;
    RzLabel4: TRzLabel;
    v_modalita_ripartizione: trzdbcombobox_go;
    v_numero_documento_alfa: trzdbedit_go;
    v_incasso_saldo: TRzDBCheckBox;
    RzLabel3: TRzLabel;
    v_data_competenza_iva: trzdbdatetimeedit_go;
    v_giorni_consegna: trzdbnumericedit_go;
    v_utn_codice_inviato: trzdbedit_go;
    RzLabel2: TRzLabel;
    v_intra: TRzDBCheckBox;
    v_no_ordinato: TRzDBCheckBox;
    tool_sequenza: TToolButton;
    Label86: TRzLabel;
    v_IMPORTO_TOTALE_IMPONIBILE: trzdbnumericedit_go;
    Label85: TRzLabel;
    v_IMPORTO_TOTALE: trzdbnumericedit_go;
    l_numero_documento: TRzLabel;
    ind: TMyQuery_go;
    RzLabel8: TRzLabel;
    v_data_competenza_bilancio: trzdbdatetimeedit_go;
    tool_documenti_collegati: TToolButton;
    PopupMenu_documenti: TPopupMenu;
    tool_assegna_immagine: TMenuItem;
    tool_visualizza_immagine: TMenuItem;
    N1: TMenuItem;
    tool_documenti_allegati: TMenuItem;
    N2: TMenuItem;
    tool_invia_excel: TMenuItem;
    tool_ricevi_excel: TMenuItem;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    Label18: TRzLabel;
    RzLabel5: TRzLabel;
    v_situazione: trzdbedit_go;
    v_situazione_riga_documento: trzdbedit_go;
    v_bloccato: TRzRapidFireButton;
    v_consolida: TRzRapidFireButton;
    v_evadere: TRzRapidFireButton;
    v_tutte: TRzRapidFireButton;
    v_senza_prezzo: TRzRapidFireButton;
    CategoryPanel2: TCategoryPanel;
    v_storno_evasione: TRzRapidFireButton;
    v_storno_consolidamento: TRzRapidFireButton;
    v_storno_differite: TRzRapidFireButton;
    v_totalizza: TToolButton;
    v_accettato: TRzDBCheckBox;
    v_pagper: TRzRapidFireButton;
    v_codice_articolo_fornitore: TRzRapidFireButton;
    v_lettore: TRzRapidFireButton;
    pannello_destra_02: TCategoryPanel;
    v_log_revisione: TRzRapidFireButton;
    v_annulla_documento: TRzRapidFireButton;
    v_bottone_percipienti: TRzRapidFireButton;
    v_situazione_acconto: TRzRapidFireButton;
    CategoryPanel1: TCategoryPanel;
    v_accessori: TRzRapidFireButton;
    v_non_conformita: TRzRapidFireButton;
    v_crea_listino_fornitore: TRzRapidFireButton;
    v_crea_listino_vendita: TRzRapidFireButton;
    v_produzione_conto_terzi: TRzRapidFireButton;
    v_manutezione_macchinari: TRzRapidFireButton;
    v_manutezione_interventi: TRzRapidFireButton;
    v_annulla_riga_documento: TRzRapidFireButton;
    v_gestione_collegato: TRzRapidFireButton;
    v_rdo: TRzRapidFireButton;
    v_revisione_documento: TRzRapidFireButton;
    CategoryPanel3: TCategoryPanel;
    v_analitica: TRzRapidFireButton;
    v_commesse: TRzRapidFireButton;
    v_conto_terzi: TRzRapidFireButton;
    v_lotti: TRzRapidFireButton;
    v_ubicazioni: TRzRapidFireButton;
    v_modula: TRzRapidFireButton;
    artvardet: TMyQuery_go;
    artvardet_ds: TMyDataSource;
    oar: TMyQuery_go;
    RzLabel24: TRzLabel;
    RzLabel25: TRzLabel;
    v_var_codice: trzdbedit_go;
    v_var_descrizione: trzdbeditdescrizione_go;
    v_dettaglio: trzdbedit_go;
    trzdbeditdescrizione_go7: trzdbeditdescrizione_go;
    duplica_righe_tgl: TMyQuery_go;
    qtatgl: TMyQuery_go;
    v_distinta_base: TRzRapidFireButton;
    v_evadi_riga_documento: TRzRapidFireButton;
    v_dettaglio_taglie: TRzRapidFireButton;
    art_oar: TMyQuery_go;

    procedure pannello_campiEnter(Sender: TObject);
    procedure v_tda_codiceEnter(Sender: TObject);
    procedure v_numero_documentoEnter(Sender: TObject);
    procedure v_data_documentoEnter(Sender: TObject);
    procedure v_frn_codiceEnter(Sender: TObject);
    procedure pannello_codiceEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure v_tda_codiceExit(Sender: TObject);
    procedure v_tmo_codiceExit(Sender: TObject);
    procedure v_tma_codiceExit(Sender: TObject);
    procedure v_tma_codice_collegatoExit(Sender: TObject);
    procedure v_numero_documentoExit(Sender: TObject);
    procedure v_data_documentoExit(Sender: TObject);
    procedure v_frn_codiceExit(Sender: TObject);
    procedure v_tla_codiceExit(Sender: TObject);
    procedure v_tpa_codiceExit(Sender: TObject);
    procedure v_tsm_codiceExit(Sender: TObject);
    procedure v_tva_codiceExit(Sender: TObject);
    procedure v_codice_cabEnter(Sender: TObject);
    procedure v_tba_codiceExit(Sender: TObject);
    procedure v_codice_abiExit(Sender: TObject);
    procedure v_codice_cabExit(Sender: TObject);
    procedure v_tmo_codice_collegatoExit(Sender: TObject);
    procedure v_tiv_codiceExit(Sender: TObject);
    procedure v_tcd_codice_aperturaExit(Sender: TObject);
    procedure v_tcd_codice_chiusuraExit(Sender: TObject);
    procedure v_tsp_codiceExit(Sender: TObject);
    procedure v_tpo_codiceExit(Sender: TObject);
    procedure v_griglia_righeExit(Sender: TObject);
    procedure v_griglia_righeEnter(Sender: TObject);
    procedure pannello_righeEnter(Sender: TObject);
    procedure v_art_codiceEnter(Sender: TObject);
    procedure v_prezzoEnter(Sender: TObject);
    procedure v_art_codiceExit(Sender: TObject);
    procedure v_quantitaExit(Sender: TObject);
    procedure v_prezzoExit(Sender: TObject);
    procedure v_tsm_codice_righeExit(Sender: TObject);
    procedure v_importoExit(Sender: TObject);
    procedure v_cambioExit(Sender: TObject);
    procedure pannello_codiceExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_gestione_collegatoClick(Sender: TObject);
    procedure v_commesseClick(Sender: TObject);
    procedure v_lottiClick(Sender: TObject);
    procedure v_tna_codice_intraExit(Sender: TObject);
    procedure v_griglia_righeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tool_evasioneClick(Sender: TObject);
    procedure pannello_campiExit(Sender: TObject);
    procedure v_totalizzaClick(Sender: TObject);
    procedure v_progressivoEnter(Sender: TObject);
    procedure v_tipo_movimentoExit(Sender: TObject);
    procedure v_art_codiceChange(Sender: TObject);
    procedure v_rettifica_intraExit(Sender: TObject);
    procedure v_rettifica_intraClick(Sender: TObject);
    procedure v_mese_rettifica_intraExit(Sender: TObject);
    procedure v_trimestre_rettifica_intraExit(Sender: TObject);
    procedure v_anno_rettifica_intraExit(Sender: TObject);
    procedure v_esistenza_depositoChange(Sender: TObject);
    procedure v_esistenza_totaleChange(Sender: TObject);
    procedure v_tsm_codice_scontoExit(Sender: TObject);
    procedure v_data_registrazioneExit(Sender: TObject);
    procedure v_descrizione_spese_01Change(Sender: TObject);
    procedure v_iva_ripartita_spese_01Click(Sender: TObject);
    procedure v_costo_ripartito_spese_01Click(Sender: TObject);
    procedure v_tiv_codice_spese_01Exit(Sender: TObject);
    procedure v_iva_ripartita_spese_01Exit(Sender: TObject);
    procedure v_costo_ripartito_spese_01Exit(Sender: TObject);
    procedure v_gen_codice_spese_01Exit(Sender: TObject);
    procedure v_descrizione_spese_02Change(Sender: TObject);
    procedure v_descrizione_spese_03Change(Sender: TObject);
    procedure v_descrizione_spese_04Change(Sender: TObject);
    procedure v_iva_ripartita_spese_02Click(Sender: TObject);
    procedure v_iva_ripartita_spese_02Exit(Sender: TObject);
    procedure v_iva_ripartita_spese_03Click(Sender: TObject);
    procedure v_iva_ripartita_spese_03Exit(Sender: TObject);
    procedure v_iva_ripartita_spese_04Click(Sender: TObject);
    procedure v_iva_ripartita_spese_04Exit(Sender: TObject);
    procedure v_tiv_codice_spese_02Exit(Sender: TObject);
    procedure v_tiv_codice_spese_03Exit(Sender: TObject);
    procedure v_tiv_codice_spese_04Exit(Sender: TObject);
    procedure v_costo_ripartito_spese_02Click(Sender: TObject);
    procedure v_costo_ripartito_spese_02Exit(Sender: TObject);
    procedure v_costo_ripartito_spese_03Click(Sender: TObject);
    procedure v_costo_ripartito_spese_03Exit(Sender: TObject);
    procedure v_costo_ripartito_spese_04Click(Sender: TObject);
    procedure v_costo_ripartito_spese_04Exit(Sender: TObject);
    procedure v_gen_codice_spese_02Exit(Sender: TObject);
    procedure v_gen_codice_spese_03Exit(Sender: TObject);
    procedure v_gen_codice_spese_04Exit(Sender: TObject);
    procedure v_descrizione_spese_01Exit(Sender: TObject);
    procedure v_descrizione_spese_02Exit(Sender: TObject);
    procedure v_descrizione_spese_03Exit(Sender: TObject);
    procedure v_descrizione_spese_04Exit(Sender: TObject);
    procedure pannello_righeExit(Sender: TObject);
    procedure v_saldo_accontoExit(Sender: TObject);
    procedure v_prezzoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_bottone_percipientiClick(Sender: TObject);
    procedure v_consolidaClick(Sender: TObject);
    procedure v_senza_prezzoClick(Sender: TObject);
    procedure v_importo_scontoExit(Sender: TObject);
    procedure v_importo_spese_01Exit(Sender: TObject);
    procedure v_importo_spese_02Exit(Sender: TObject);
    procedure v_importo_spese_03Exit(Sender: TObject);
    procedure v_importo_spese_04Exit(Sender: TObject);
    procedure v_conto_correnteExit(Sender: TObject);
    procedure v_frn_codiceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pannello_griglia_righeExit(Sender: TObject);
    procedure v_tum_codiceExit(Sender: TObject);
    procedure v_quantitaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_cms_codiceExit(Sender: TObject);
    procedure v_tipologiaEnter(Sender: TObject);
    procedure v_tipologiaExit(Sender: TObject);
    procedure v_conto_terziClick(Sender: TObject);
    procedure v_accessoriClick(Sender: TObject);
    procedure v_codice_abiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_art_codiceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_descrizione2_rigaEnter(Sender: TObject);
    procedure v_distinta_baseClick(Sender: TObject);
    procedure v_annulla_riga_documentoClick(Sender: TObject);
    procedure v_esistenzaClick(Sender: TObject);
    procedure v_tva_codiceChange(Sender: TObject);

    procedure tabella_dsStateChange(Sender: TObject);
    procedure v_tsm_codice_artExit(Sender: TObject);
    procedure v_evadi_riga_documentoClick(Sender: TObject);
    procedure v_crea_listino_fornitoreClick(Sender: TObject);
    procedure v_crea_listino_venditaClick(Sender: TObject);
    procedure v_indirizzoEnter(Sender: TObject);
    procedure v_indirizzoExit(Sender: TObject);
    procedure v_tna_codiceExit(Sender: TObject);
    procedure tool_assegna_immagineClick(Sender: TObject);
    procedure tool_visualizza_immagineClick(Sender: TObject);
    procedure v_codice_articolo_fornitoreClick(Sender: TObject);
    procedure v_tbp_codiceExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_lettoreClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure v_importo_sconto_righeExit(Sender: TObject);
    procedure tool_f2Click(Sender: TObject);
    procedure v_ibanExit(Sender: TObject);
    procedure v_tmo_codiceEnter(Sender: TObject);
    procedure v_tpa_codiceEnter(Sender: TObject);
    procedure v_tva_codiceEnter(Sender: TObject);
    procedure v_quantitaEnter(Sender: TObject);
    procedure v_tsm_codice_righeEnter(Sender: TObject);
    procedure v_importoEnter(Sender: TObject);
    procedure v_tipo_movimentoEnter(Sender: TObject);
    procedure v_saldo_accontoEnter(Sender: TObject);
    procedure v_tum_codiceEnter(Sender: TObject);
    procedure v_importo_sconto_righeEnter(Sender: TObject);
    procedure v_cli_codiceExit(Sender: TObject);
    procedure v_data_registrazioneChange(Sender: TObject);
    procedure v_bloccatoClick(Sender: TObject);
    procedure tool_f4Click(Sender: TObject);
    procedure v_evadereClick(Sender: TObject);
    procedure v_tutteClick(Sender: TObject);
    procedure v_analiticaClick(Sender: TObject);
    procedure v_analitica_spese_01Click(Sender: TObject);
    procedure v_analitica_spese_02Click(Sender: TObject);
    procedure v_analitica_spese_03Click(Sender: TObject);
    procedure v_analitica_spese_04Click(Sender: TObject);
    procedure v_analitica_sconto_cassaClick(Sender: TObject);
    procedure v_analitica_sconto_finaleClick(Sender: TObject);
    procedure v_tsm_codice_artEnter(Sender: TObject);
    procedure v_cms_codiceEnter(Sender: TObject);
    procedure tool_documenti_allegatiClick(Sender: TObject);
    procedure v_esistenza_principaleChange(Sender: TObject);
    procedure v_rdoClick(Sender: TObject);
    procedure tool_etiartClick(Sender: TObject);
    procedure v_pagperClick(Sender: TObject);
    procedure v_revisione_documentoClick(Sender: TObject);
    procedure v_log_revisioneClick(Sender: TObject);
    procedure pannello_griglia_righeEnter(Sender: TObject);
    procedure v_scadenzeClick(Sender: TObject);
    procedure v_numero_colli_rigaEnter(Sender: TObject);
    procedure v_numero_colli_rigaExit(Sender: TObject);
    procedure v_numero_confezioniEnter(Sender: TObject);
    procedure v_numero_confezioniExit(Sender: TObject);
    procedure tool_invia_excelClick(Sender: TObject);
    procedure tool_ricevi_excelClick(Sender: TObject);
    procedure aggiorna_rda;
    procedure v_non_conformitaClick(Sender: TObject);
    procedure v_cen_codiceExit(Sender: TObject);
    procedure v_tvc_codiceExit(Sender: TObject);
    procedure v_cambioEnter(Sender: TObject);
    procedure v_annulla_documentoClick(Sender: TObject);
    procedure v_griglia_righeKeyPress(Sender: TObject; var Key: Char);
    procedure v_data_consegnaExit(Sender: TObject);
    procedure v_data_consegna_righeExit(Sender: TObject);
    procedure v_produzione_conto_terziClick(Sender: TObject);
    procedure v_storno_evasioneClick(Sender: TObject);
    procedure v_storno_consolidamentoClick(Sender: TObject);
    procedure v_storno_differiteClick(Sender: TObject);
    procedure v_reverse_changeClick(Sender: TObject);
    procedure v_intra_testataClick(Sender: TObject);
    procedure v_tum_quantita_baseEnter(Sender: TObject);
    procedure v_tum_quantita_baseExit(Sender: TObject);
    procedure v_data_competenza_plafondExit(Sender: TObject);
    procedure v_ubicazioniClick(Sender: TObject);
    procedure v_manutezione_macchinariClick(Sender: TObject);
    procedure v_manutezione_interventiClick(Sender: TObject);
    procedure v_situazione_accontoClick(Sender: TObject);
    procedure tool_invio_messaggioClick(Sender: TObject);
    procedure v_lti_progressivoExit(Sender: TObject);
    procedure v_lti_progressivoEnter(Sender: TObject);
    procedure v_data_inizio_conteggioExit(Sender: TObject);
    procedure v_importo_spese_extraChange(Sender: TObject);
    procedure v_importo_spese_extraExit(Sender: TObject);
    procedure v_importo_spese_extraEnter(Sender: TObject);
    procedure v_numero_documento_alfaEnter(Sender: TObject);
    procedure v_numero_documento_alfaExit(Sender: TObject);
    procedure v_giorni_consegnaEnter(Sender: TObject);
    procedure v_giorni_consegnaExit(Sender: TObject);
    procedure v_tsm_codiceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_tsm_codice_scontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_tsm_codice_righeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_tsm_codice_artKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_griglia_righeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tool_sequenzaClick(Sender: TObject);
    procedure v_modulaClick(Sender: TObject);
    procedure v_data_registrazioneEnter(Sender: TObject);
    procedure v_data_competenza_bilancioExit(Sender: TObject);
    procedure v_accettatoClick(Sender: TObject);
    procedure v_dettaglioEnter(Sender: TObject);
    procedure v_dettaglioExit(Sender: TObject);
    procedure v_prezzoChange(Sender: TObject);
    procedure v_tsm_codice_righeChange(Sender: TObject);
    procedure v_tsm_codice_artChange(Sender: TObject);
    procedure v_importo_sconto_righeChange(Sender: TObject);
    procedure v_tipo_movimentoChange(Sender: TObject);
    procedure v_importoChange(Sender: TObject);
    procedure tabella_righeAfterScroll(DataSet: TDataSet);
    procedure v_dettaglio_taglieClick(Sender: TObject);
    procedure tabella_righeBeforeCancel(DataSet: TDataSet);
    procedure v_data_competenza_ivaExit(Sender: TObject);
    procedure tool_ins_righeClick(Sender: TObject);
  protected
    dicint: tdicint;

    iban: tiban;
    movmag: tmovmag;
    cerca_prezzi: tcerca_prezzo;
    rma: trma;
    nca: tnca;
    calsca: tcalsca;
    totacq: ttotacq;
    qtamin: tqtamin;
    spese_acq: tspese_acq;
    cos: tcall_off_stock;

    tabella_controllo_art: tmyquery_go;
    tabella_controllo_art_ds: tmydatasource;

    tub_codice_globale: string;

    evasione_preventivo_ordine: boolean;
    art_codice_evasione_preventivo_ordine: string;

    sconto_massimo_art: double;

    aggiorna_totali_testata: boolean;
    analitica, commesse, lotti, conto_terzi, stampa_immediata, controllo_esistenza, esegui_dati_riga: string;
    tda_codice, sconto_imponibile_lordo: string;
    data_registrazione, data_precedente: tdatetime;
    numero_documento, numero_documento_precedente: double;

    gen_codice_sconti_fattura, gen_codice_sconto_cassa: string;
    tiv_codice_omaggi: string;

    vecchio_serie_documento, vecchio_tsm_codice_sconto, vecchio_tiv_codice, vecchio_tla_codice,
      vecchio_tsm_codice, vecchio_tma_codice, vecchio_tmo_codice, vecchio_tma_codice_collegato,
      vecchio_tmo_codice_collegato, vecchio_tpa_codice, vecchio_accettato,
      vecchio_tpo_codice, vecchio_listino_con_iva, vecchio_frn_codice, vecchio_gen_codice_spese_01,
      vecchio_gen_codice_spese_02, vecchio_gen_codice_spese_03, vecchio_gen_codice_spese_04,
      vecchio_gen_codice_sconto_cassa, vecchio_gen_codice_sconti_fattura, vecchio_cms_codice_testata,
      vecchio_tipologia_testata, vecchio_modalita_ripartizione, vecchio_no_ordinato: string;
    vecchio_numero_documento: double;
    vecchio_data_registrazione, vecchio_data_documento, vecchio_data_inizio_competenza, vecchio_data_fine_competenza,
      vecchio_data_consegna, vecchio_data_consegna_confermata: tdatetime;
    vecchio_cambio, vecchio_importo_spese_01, vecchio_importo_spese_02, vecchio_importo_spese_03, vecchio_importo_spese_04,
      vecchio_importo_spese_extra, vecchio_importo_sconto_cassa, vecchio_importo_sconto, vecchio_importo_sconto_finale: double;
    pezzi_confezione: integer;
    tipo_prezzo: string;

    vecchio_art_codice, vecchio_tsm_codice_righe, vecchio_tsm_codice_art, vecchio_tipo_movimento,
      vecchio_gen_codice_righe, vecchio_tiv_codice_righe, vecchio_saldo_acconto, vecchio_situazione_righe,
      vecchio_cms_codice, vecchio_tipologia, vecchio_tma_codice_righe, vecchio_ovr_tipo: string;
    vecchio_quantita, vecchio_prezzo, vecchio_tum_quantita_base, vecchio_importo,
      vecchio_importo_euro, vecchio_importo_iva_euro, vecchio_importo_iva: double;
    vecchio_numero_colli, vecchio_numero_confezioni: integer;

    tum_codice: tstringlist;
    tasto_ins_numero_documento: boolean;

    gestione_descrizione1, gestione_descrizione2, gestione_tum_codice, gestione_tipo_movimento,
      controllo_quantita, gestione_quantita, gestione_prezzo, gestione_sconto_fornitore,
      gestione_importo, gestione_data_consegna, gestione_numero_colli, gestione_numero_confezioni: string;

    inserimento_fattura_differita: boolean;

    sce_lista_multiselezione: TStringList;
    sce_lista_multiselezione_quantita: TStringList;

    pagina_riferimento, pagina_pagamento, pagina_magazzino, pagina_destinazione, pagina_spedizione,
      pagina_spese, pagina_note, pagina_analitica: boolean;

    mmt_progressivo_evaso: integer;

    cancella_documenti_acquisto_evasi: string;

    aggiorna_listini_acquisti, aggiorna_listini_vendita: string;
    controllo_articolo_livello_superiore: string;

    controllo_documenti_livello_superiore: string;

    codice_lotto_matricola_singolo, gestione_lotto_singolo, ultimo_prezzo: string;

    art_codice_sconto_cassa_acq, art_codice_sconti_fattura_acq, art_codice_spese_acq: string;
    taq_codice_sconto_cassa, taq_codice_sconti_fattura: string;
    progressivo_documento_evadere: integer;

    stampa_immediata_etichette: string;
    avviso_differite, storno_differite: boolean;
    generatore: string;
    consolidamento: string;

    bloccato_click, esiste_documento_analitica: boolean;

    tabella_scadenze: array of scadenze;

    progressivo_rma: integer;

    progressivo_nca: integer;
    tac_codice_nca: string;

    prezzo: double;
    tsm_codice, tsm_codice_art: string;

    lettore: boolean;
    scorporo_eseguito: boolean;

    ultimo_cms_codice, ultimo_tipologia: string;

    assegna_tutti_prodter: boolean;
    progressivo_prodter, riga_prodter: integer;
    eseguito_gesdocgri: boolean;

    riga_drag_drop: integer;

    salva_note_riga, salva_note_interne_riga: string;

    procedure tda_codice_controllo(blocco: boolean);
    procedure numero_documento_alfa_controllo;
    procedure numero_documento_controllo;
    procedure data_documento_controllo;
    procedure data_registrazione_controllo;
    procedure frn_codice_controllo(blocco: boolean);

    procedure tla_codice_controllo(blocco: boolean);
    procedure tpa_codice_controllo(blocco: boolean);
    procedure tsm_codice_controllo(blocco: boolean);
    procedure tva_codice_controllo(blocco: boolean);

    procedure tna_codice_intra_controllo(blocco: boolean);
    procedure v_data_inizio_conteggio_controllo;

    procedure v_lti_progressivo_controllo(blocco: boolean);
    procedure tiv_codice_controllo(blocco: boolean);
    procedure tiv_codice_spese_01_controllo(blocco: boolean);
    procedure tiv_codice_spese_02_controllo(blocco: boolean);
    procedure tiv_codice_spese_03_controllo(blocco: boolean);
    procedure tiv_codice_spese_04_controllo(blocco: boolean);
    procedure gen_codice_spese_01_controllo(blocco: boolean);
    procedure gen_codice_spese_02_controllo(blocco: boolean);
    procedure gen_codice_spese_03_controllo(blocco: boolean);
    procedure gen_codice_spese_04_controllo(blocco: boolean);
    procedure tcd_codice_apertura_controllo(blocco: boolean);
    procedure tcd_codice_chiusura_controllo(blocco: boolean);
    procedure cms_codice_controllo(blocco: boolean);
    procedure tipologia_controllo(blocco: boolean);
    procedure cen_codice_controllo(blocco: boolean);
    procedure tvc_codice_controllo(blocco: boolean);

    procedure codice_abi_controllo(blocco: boolean);
    procedure codice_cab_controllo(blocco: boolean);
    procedure conto_corrente_controllo;
    procedure tba_codice_controllo(blocco: boolean);
    procedure tbp_codice_controllo(blocco: boolean);
    procedure tmo_codice_controllo(blocco: boolean);
    procedure tma_codice_controllo(blocco: boolean);
    procedure tmo_codice_collegato_controllo(blocco: boolean);
    procedure tma_codice_collegato_controllo(blocco: boolean);
    procedure tsp_codice_controllo(blocco: boolean);
    procedure tpo_codice_controllo(blocco: boolean);
    procedure tsm_codice_sconto_controllo(blocco: boolean);

    procedure art_codice_controllo(blocco: boolean);
    procedure tum_codice_controllo(blocco: boolean);
    procedure quantita_controllo;
    procedure tsm_codice_righe_controllo(blocco: boolean);
    procedure tsm_codice_art_controllo(blocco: boolean);
    procedure gen_codice_righe_controllo;
    procedure tiv_codice_righe_controllo;
    procedure tna_codice_controllo(blocco: boolean);
    procedure cli_codice_controllo(blocco: boolean);

    procedure assegna_tda_codice;
    procedure assegna_frn_codice;
    procedure assegna_art_codice;
    procedure assegna_listino_con_iva;
    procedure assegna_tmo_codice;
    procedure assegna_cambio;
    procedure assegna_tcd_codice;
    procedure assegna_tsm_codice;

    procedure assegna_tla_codice;
    procedure assegna_tpa_codice;
    procedure assegna_tva_codice;
    procedure assegna_tiv_codice;
    procedure assegna_intra;
    procedure assegna_iva_sospensione;
    procedure assegna_tsp_codice;
    procedure assegna_tpo_codice;
    procedure assegna_ritenuta;
    procedure assegna_tna_codice_intra;
    procedure assegna_giorni_consegna;
    procedure assegna_data_consegna;
    procedure assegna_decimali;
    procedure assegna_decimali_quantita;
    procedure assegna_gen_codice;
    procedure assegna_tiv_codice_righe;
    procedure assegna_valore_intra;
    procedure assegna_valore_modalita_ripartizione;

    procedure abilita_bloccato;
    procedure abilita_tipo_documento;
    procedure abilita_tipo_documento_bolle_ddt;
    procedure abilita_bottoni(flag: boolean);
    procedure abilita_bottoni_analitica(flag: boolean);
    procedure abilita_art_codice;
    procedure abilita_intra;
    procedure abilita_bottone_dati_extra_testata;
    procedure abilita_modalita_ripartizione;

    procedure attiva_importo;

    procedure assegna_valore_tma_codice;
    procedure assegna_valore_tmo_codice_collegato;
    procedure assegna_valore_tma_codice_collegato;
    procedure assegna_valore_prezzo;
    procedure assegna_valore_tsm_codice_righe;
    procedure assegna_valore_cambio;
    procedure assegna_valore_art_codice;
    procedure assegna_valore_tla_codice;
    procedure assegna_valore_tpa_codice;
    procedure assegna_valore_tsm_codice;
    procedure assegna_valore_tva_codice;
    procedure assegna_valore_tiv_codice;
    procedure assegna_valore_codice_abi;
    procedure assegna_valore_codice_cab;
    procedure assegna_valore_tba_codice;
    procedure assegna_valore_tmo_codice;
    procedure assegna_valore_tma_codice_ordine;
    procedure assegna_valore_tma_codice_collegato_ordine;
    procedure assegna_valore_tsp_codice;
    procedure assegna_valore_ritenuta;
    procedure assegna_valore_tpo_codice;
    procedure assegna_valore_spese_01;
    procedure assegna_valore_spese_02;
    procedure assegna_valore_spese_03;
    procedure assegna_valore_spese_04;
    procedure assegna_valore_tiv_codice_spese_01;
    procedure assegna_valore_tiv_codice_spese_02;
    procedure assegna_valore_tiv_codice_spese_03;
    procedure assegna_valore_tiv_codice_spese_04;
    procedure assegna_valore_gen_codice_spese_01;
    procedure assegna_valore_gen_codice_spese_02;
    procedure assegna_valore_gen_codice_spese_03;
    procedure assegna_valore_gen_codice_spese_04;
    procedure assegna_valore_tma_codice_righe;

    procedure attiva_esiste(flag: boolean);
    procedure azzera_vecchio_testata; override;
    procedure assegna_vecchio_testata; override;
    procedure azzera_vecchio_righe; override;
    procedure assegna_vecchio_righe; override;

    procedure calcola_quantita_confezioni;
    procedure calcola_importo;
    procedure esegui_analitica(tipo: string); overload;
    procedure esegui_analitica(analitica_gen_codice, analitica_documento_origine, analitica_art_codice,
      analitica_descrizione, analitica_tipo_movimento: string;
      analitica_doc_progressivo_origine, analitica_progressivo, analitica_riga: integer;
      analitica_importo_euro, analitica_importo_iva_euro, analitica_importo_valuta, analitica_importo_iva_valuta: double;
      cen_codice, tvc_codice: string; tiv_codice: string = ''); overload;

    procedure esegui_commesse;
    procedure esegui_lotti;
    procedure esegui_ubicazioni;
    procedure esegui_ubicazioni_magazzino(tmo_codice, tma_codice: string);
    procedure varia_conto_terzi;
    procedure esegui_gesacq02;
    procedure aggiorna_archivi_collegati;
    procedure aggiorna_archivi_collegati_righe;
    procedure gestisci_collegato;
    procedure controllo_quantita_evasa;
    procedure controllo_numero_colli_evasi;
    procedure controllo_numero_confezioni_evase;

    procedure evasione_documento(tipo_documento_evasione: string; call_off_stock: boolean = false);
    procedure saldo_acconto_controllo;
    procedure abilita_storni(flag: boolean);
    procedure tipo_movimento_controllo;
    procedure mese_rettifica_intra_controllo;
    procedure trimestre_rettifica_intra_controllo;
    procedure anno_rettifica_intra_controllo;
    procedure date_competenza_controllo;

    procedure abilita_spese_01;
    procedure abilita_spese_02;
    procedure abilita_spese_03;
    procedure abilita_spese_04;
    procedure abilita_iva_spese_01;
    procedure abilita_iva_spese_02;
    procedure abilita_iva_spese_03;
    procedure abilita_iva_spese_04;
    procedure abilita_costo_spese_01;
    procedure abilita_costo_spese_02;
    procedure abilita_costo_spese_03;
    procedure abilita_costo_spese_04;
    procedure esegui_percipienti;

    procedure aggiorna_magazzino(tmo_codice: string; collegato: boolean);
    procedure aggiorna_magazzino_dettaglio(collegato: boolean);
    procedure cancella_magazzino(tmo_codice: string);
    procedure cancella_magazzino_dettaglio;
    procedure abilita_campi_opzionali(flag: boolean);

    procedure assegna_utn_codice_accettazione;
    procedure assegna_gestioni;
    procedure esegui_esistenza;
    procedure esegui_controllo_esistenza;
    procedure cerca_prezzo; overload;
    procedure cerca_prezzo(tipo: string); overload;

    procedure assegna_indirizzo;
    procedure assegna_inf;
    procedure assegna_ind;
    procedure indirizzo_controllo(blocco: boolean);
    procedure crea_listino_fornitore_acq;
    procedure controllare_documenti_livello_superiore;

    procedure stampa_etichette;
    procedure genera_tabella_etichette;
    procedure esegui_bottone_dati_extra_testata; override;
    procedure esegui_bottone_dati_extra_righe; override;

    procedure assegna_destinazione;
    procedure esegui_query_righe; override;
    procedure aggiorna_spese_movmag(tutto: boolean = false);
    procedure aggiorna_spese_movmag_differita;
    procedure crea_record_rma;
    procedure totalizza_colli;
    procedure calcola_quantita_colli;
    procedure assegna_contatto_commerciale;
    procedure crea_record_ncr;
    procedure produzione_conto_terzi;

    procedure assegna_query_navigazione; override;

    procedure aggiungi_righe_lettore(lista_art_codice, lista_codice_originale, lista_quantita,
      lista_prezzo, lista_codice_lotto, lista_data_scadenza, lista_descrizione1, lista_descrizione2,
      lista_progressivo_evasione, lista_riga_evasione, lista_tipo_evasione, lista_ubicazione: tstringlist;
      modalita: string = '');

    procedure esegui_gesdocgri;
    procedure assegna_campi_righe;

    function controllo_ordine_produzione: boolean;
    function controllo_esercizio_situazione: boolean;
    function controllo_situazione_righe: boolean;
    function controllo_cancella_situazione_righe: boolean;
    function controllo_ordini_preventivi: boolean;
    function conferma_tabindex: boolean; override;
    function esercizio_diverso: boolean;
    procedure assegna_cum;
    procedure v_data_competenza_bilancio_controllo;
    procedure assegna_data_competenza_bilancio;
    function assegna_art_obsoleto(art_codice: string): string;
    procedure v_dettaglio_controllo(blocco: boolean);
    procedure controllo_blocco_modifica_prezzi_vendita(sender: tobject);
    procedure assegna_tum_quantita_base;
    procedure cancella_qtatgl;
  public
    tipo_documento: string;

    procedure crea_conto_terzi; virtual;
    procedure visualizza_descrizioni; override;
    procedure visualizza_descrizioni_righe; override;
    procedure abilitazioni; override;
    procedure abilitazioni_righe; override;
    procedure abilita_pannello_campi(attivo: boolean); override;

    procedure set_codice_archivio; override;
    procedure get_codice_archivio; override;
    procedure controllo_campi; override;
    procedure controllo_campi_righe; override;
    procedure controllo_cancella; override;
    procedure controllo_edit; override;
    procedure controllo_cancella_righe; override;
    procedure controllo_edit_righe; override;

    procedure before_post; override;
    procedure after_post; override;
    procedure before_delete; override;
    procedure after_delete; override;
    procedure before_post_righe; override;
    procedure after_post_righe; override;
    procedure refresh; override;
    procedure before_delete_righe; override;
    procedure after_delete_righe; override;
    procedure abilita_pannello_righe(attivo: boolean); override;
    procedure stampa; override;
    procedure duplica; override;
    procedure annulla_riga_documento;

    procedure assegna_righe(accoda: word); override;

    procedure assegna_dataset; override;
    procedure annulla_dataset; override;
  end;

var
  GESACQ: TGESACQ;

implementation

{$r *.dfm}


uses GGGESACQ01, GGSCELTM, GGCODARTFR, GGGESDAA, GGPAGPER, GGANAREV, GGEVARMA, GGMAIL, GGVISFATNC, 
  GGGESACQ02, GGGENFADA, GGULTPRZ, GGGESPRI04, GGIMPALF, GGSCEACC, GGANAEQU, GGPRZACQ, GGSCEDSB, GGVISRIF, 
  GGVISLSV, GGVISLSA, GGSITARD, GGLTTERLASINH, GGETIART, GGVISDOCEV, GGEVADOCA, GGVISDESCL, 
  GGARFACQ, GGARCVEN, GGVISTOTDOC, GGVISBCF, GGIMPMOD, GGVISLET, GGPRODTER, GGVISORDA, GGGESDOCGRI, 
  ZZFIDO_FRN, ZZCALL_MODULA, GGQTATGL, ZZHELPER, ZZUTILS.ACQUISTI, ZZUTILS.COMMESSE, ZZUTILS.CONTABILITA,
  ZZUTILS.MAGAZZINO;

procedure TGESACQ.controllo_campi;
begin
  tda_codice_controllo(true);
  data_registrazione_controllo;
  data_documento_controllo;
  numero_documento_alfa_controllo;
  numero_documento_controllo;
  frn_codice_controllo(true);
  tla_codice_controllo(true);
  tpa_codice_controllo(true);
  tsm_codice_controllo(true);
  tva_codice_controllo(true);
  v_lti_progressivo_controllo(true);
  tiv_codice_controllo(true);
  tcd_codice_apertura_controllo(true);
  tcd_codice_chiusura_controllo(true);
  tna_codice_intra_controllo(true);
  v_data_inizio_conteggio_controllo;
  mese_rettifica_intra_controllo;
  trimestre_rettifica_intra_controllo;
  anno_rettifica_intra_controllo;
  codice_abi_controllo(true);
  codice_cab_controllo(true);
  conto_corrente_controllo;
  tba_codice_controllo(true);
  tbp_codice_controllo(true);
  tmo_codice_controllo(true);
  tma_codice_controllo(true);
  tmo_codice_collegato_controllo(true);
  tma_codice_collegato_controllo(true);
  cms_codice_controllo(true);
  tipologia_controllo(true);
  date_competenza_controllo;
  tna_codice_controllo(true);
  cli_codice_controllo(true);
  tsp_codice_controllo(true);
  tpo_codice_controllo(true);
  tsm_codice_sconto_controllo(true);
  tiv_codice_spese_01_controllo(true);
  tiv_codice_spese_02_controllo(true);
  tiv_codice_spese_03_controllo(true);
  tiv_codice_spese_04_controllo(true);
  gen_codice_spese_01_controllo(true);
  gen_codice_spese_02_controllo(true);
  gen_codice_spese_03_controllo(true);
  gen_codice_spese_04_controllo(true);
  cen_codice_controllo(true);
  tvc_codice_controllo(true);
end;

procedure TGESACQ.controllo_campi_righe;
begin
  art_codice_controllo(true);
  v_dettaglio_controllo(true);
  tum_codice_controllo(true);
  quantita_controllo;
  saldo_acconto_controllo;
  tsm_codice_righe_controllo(true);
  tsm_codice_art_controllo(true);
  tipo_movimento_controllo;
  tiv_codice_righe_controllo;
  gen_codice_righe_controllo;
end;

procedure TGESACQ.visualizza_descrizioni;
begin
  tda_codice_controllo(false);

  frn_codice_controllo(false);
  tla_codice_controllo(false);
  tpa_codice_controllo(false);
  tsm_codice_controllo(false);
  tva_codice_controllo(false);

  tiv_codice_controllo(false);
  tcd_codice_apertura_controllo(false);
  tcd_codice_chiusura_controllo(false);
  tna_codice_intra_controllo(false);

  codice_abi_controllo(false);
  codice_cab_controllo(false);
  tba_codice_controllo(false);
  tbp_codice_controllo(false);

  tmo_codice_controllo(false);
  tma_codice_controllo(false);
  tmo_codice_collegato_controllo(false);
  tma_codice_collegato_controllo(false);
  cms_codice_controllo(false);
  tipologia_controllo(false);

  tna_codice_controllo(false);
  cli_codice_controllo(false);

  tsp_codice_controllo(false);
  tpo_codice_controllo(false);
  tsm_codice_sconto_controllo(false);

  cen_codice_controllo(false);
  tvc_codice_controllo(false);

  if visarc_stampa then
  begin
    visarc_stampa := false;
    stampa;
  end;
end;

procedure TGESACQ.visualizza_descrizioni_righe;
begin
  art_codice_controllo(false);
  v_dettaglio_controllo(false);
  tum_codice_controllo(false);
  tsm_codice_righe_controllo(false);
  tsm_codice_art_controllo(false);
end;

procedure TGESACQ.refresh;
var
  tipo_numerazione: string;
begin
  if parte_attiva = 'pannello_campi' then
  begin
    if (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
    begin
      if tipo_documento = 'ordine' then
      begin
        tipo_numerazione := 'ORDINI FORNITORI';
      end
      else if tipo_documento = 'preventivo' then
      begin
        tipo_numerazione := 'PREVENTIVI FORNITORI';
      end;
      if v_revisione.value = 0 then
      begin
        arc.storna_numerazione(arc.arcdit, tipo_numerazione,
          v_serie_documento.text, v_data_documento.date, progressivo_cnt);
      end;
    end;
  end;

  inherited;
end;

procedure TGESACQ.before_post;
var
  errore, prosegui: boolean;
begin
  prosegui := true;

  if not prosegui then
  begin
    tabella.cancel;
    tabella.refresh;
    tabella_righe.refresh;
    fuoco(v_progressivo);
    abort;
  end
  else
  begin
    inherited;
    if not esiste then
    begin
      tda_codice := tabella.fieldbyname('tda_codice').asstring;
      data_registrazione := tabella.fieldbyname('data_registrazione').asdatetime;

      if tipo_documento <> 'ddt clienti' then
      begin
        if (tabella.fieldbyname('tco_codice').asstring <> '') or (tda.fieldbyname('proporre_contropartita').asstring = 'si') then
        begin
          errore := false;

          if tabella_edit(tabella) then
          begin
            read_tabella(arc.arcdit, 'tpe', 'codice', tabella.fieldbyname('tpe_codice').asstring, 'gen_codice_irpef');
            tabella.fieldbyname('gen_codice_ritenuta').asstring := archivio.fieldbyname('gen_codice_irpef').asstring;
            tabella.fieldbyname('tiv_codice_omaggi').asstring := tiv_codice_omaggi;

            cpa.close;
            cpa.params[0].asstring := frn.fieldbyname('tcf_codice').asstring;
            cpa.params[1].asstring := taq_codice_sconti_fattura;
            cpa.open;
            if cpa.eof then
            begin
              messaggio(000, 'poichè nella causale del documento è previsto l''aggiornamento contabile' + #13 +
                'va inserito il sottoconto di competenza degli sconti fattura nell''archivio -cpa-' + #13 + #13 +
                'eseguire il programma di gestione [GESCPA]');
              tab_control.activepage := tab_pagina1;
              if v_frn_codice.canfocus then
              begin
                v_frn_codice.setfocus;
              end;
              errore := true;
            end
            else
            begin
              tabella.fieldbyname('gen_codice_sconti_fattura').asstring := cpa.fieldbyname('gen_codice').asstring;
            end;

            cpa.close;
            cpa.params[0].asstring := frn.fieldbyname('tcf_codice').asstring;
            cpa.params[1].asstring := taq_codice_sconto_cassa;
            cpa.open;
            if cpa.eof then
            begin
              messaggio(000, 'poichè nella causale del documento è previsto l''aggiornamento contabile' + #13 +
                'va inserito il sottoconto di competenza dello sconto cassa nell''archivio -cpa-' + #13 + #13 +
                'eseguire il programma di gestione [GESCPA]');
              tab_control.activepage := tab_pagina1;
              if v_frn_codice.canfocus then
              begin
                v_frn_codice.setfocus;
              end;
              errore := true;
            end
            else
            begin
              tabella.fieldbyname('gen_codice_sconto_cassa').asstring := cpa.fieldbyname('gen_codice').asstring;
            end;
          end;

          if errore then
          begin
            abort;
          end;
        end;
      end;
    end;

    assegna_valore_tma_codice;
    assegna_valore_tma_codice_collegato;
    assegna_valore_cambio;

    assegna_valore_tla_codice;
    assegna_valore_tpa_codice;
    assegna_valore_tsm_codice;
    assegna_valore_tva_codice;
    assegna_valore_tiv_codice;
    assegna_valore_codice_abi;
    assegna_valore_codice_cab;
    assegna_valore_tba_codice;
    assegna_valore_tma_codice_ordine;
    assegna_valore_tmo_codice;
    assegna_valore_tmo_codice_collegato;
    assegna_valore_tma_codice_collegato_ordine;
    assegna_valore_tsp_codice;
    assegna_valore_tpo_codice;
    assegna_valore_ritenuta;
    assegna_valore_intra;
    assegna_valore_spese_01;
    assegna_valore_spese_02;
    assegna_valore_spese_03;
    assegna_valore_spese_04;
    assegna_valore_modalita_ripartizione;
    assegna_valore_tiv_codice_spese_01;
    assegna_valore_tiv_codice_spese_02;
    assegna_valore_tiv_codice_spese_03;
    assegna_valore_tiv_codice_spese_04;
    assegna_valore_gen_codice_spese_01;
    assegna_valore_gen_codice_spese_02;
    assegna_valore_gen_codice_spese_03;
    assegna_valore_gen_codice_spese_04;

    if (tabella.fieldbyname('accettato').asstring = 'si') and (vecchio_accettato = 'si') and
      (tabella.fieldbyname('situazione').asstring <> 'evaso') then
    begin
      assegna_utn_codice_accettazione;
    end;
  end;
end;

procedure TGESACQ.before_delete;
var
  tipo_numerazione: string;
  prosegui: boolean;

  allegati, ccf: tmyquery_go;
begin
  prosegui := true;

  if not prosegui then
  begin
    tabella.cancel;
    tabella.refresh;
    tabella_righe.refresh;
    fuoco(v_progressivo);
    abort;
  end
  else
  begin
    // ripristina numerazione
    if (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
    begin
      if tabella.fieldbyname('numero_documento').asfloat <> 0 then
      begin
        if tipo_documento = 'ordine' then
        begin
          tipo_numerazione := 'ORDINI FORNITORI';
        end
        else if tipo_documento = 'preventivo' then
        begin
          tipo_numerazione := 'PREVENTIVI FORNITORI';
        end;
        if tabella.fieldbyname('revisione').asinteger = 0 then
        begin
          arc.storna_numerazione(arc.arcdit, tipo_numerazione,
            tabella.fieldbyname('serie_documento').asstring, tabella.fieldbyname('data_documento').asdatetime,
            tabella.fieldbyname('numero_documento').asfloat);
        end;
      end;
    end;

    cancella_iva.close;
    cancella_iva.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
    cancella_iva.execsql;

    cem.close;
    cem.sql.clear;
    cem.sql.add('select * from cem');
    cem.sql.add('where documento_origine = :codice0');
    cem.sql.add('and doc_progressivo_origine = :codice2 and doc_riga_origine > 900000');
    cem.params[0].asstring := tipo_documento + ' acq';
    cem.params[1].asfloat := tabella.fieldbyname('progressivo').asfloat;
    cem.open;
    if not cem.eof then
    begin
      messaggio(000, 'i movimenti della contabilità analitica' + #13 +
        'collegati alla testata del documento verranno cancellati');
    end;
    while not cem.eof do
    begin
      cem.delete;
    end;

    if (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
    begin
      allegati := tmyquery_go.create(nil);
      allegati.connection := arc.arcdit;
      if tipo_documento = 'ordine' then
      begin
        allegati.sql.text := 'delete from oad where progressivo = :progressivo';
      end
      else if tipo_documento = 'preventivo' then
      begin
        allegati.sql.text := 'delete from pad where progressivo = :progressivo';
      end;
      allegati.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
      allegati.execsql;
      freeandnil(allegati);
    end;

    if tda.fieldbyname('ttc_codice').asstring <> '' then
    begin
      ccf := tmyquery_go.create(nil);
      ccf.connection := arc.arcdit;

      ccf.sql.add('select id');
      ccf.sql.add('from ccf');
      ccf.sql.add('where oggetto_contatto = :oggetto_contatto and cfg_codice = :cfg_codice and ttc_codice = :ttc_codice');
      ccf.sql.add('and documento_collegato = :documento_collegato and doc_progressivo_collegato = :doc_progressivo_collegato');

      try
        if tipo_documento = 'ddt clienti' then
        begin
          ccf.parambyname('oggetto_contatto').asstring := 'cliente';
        end
        else
        begin
          ccf.parambyname('oggetto_contatto').asstring := 'fornitore';
        end;
        ccf.parambyname('cfg_codice').asstring := tabella.fieldbyname('frn_codice').asstring;
        ccf.parambyname('ttc_codice').asstring := tda.fieldbyname('ttc_codice').asstring;
        ccf.parambyname('documento_collegato').asstring := tipo_documento;
        ccf.parambyname('doc_progressivo_collegato').asinteger := tabella.fieldbyname('progressivo').asinteger;
        ccf.open;
        if not ccf.isempty then
        begin
          messaggio(200, 'il documento è collegato ad un contatto di cui verrà eseguita la gestione');
          esegui_programma('GESCCF', vararrayof([tabella.fieldbyname('frn_codice').asstring, '']), true);
        end;
      finally
        ccf.free;
      end;
    end;

    inherited;
  end;
end;

procedure TGESACQ.assegna_utn_codice_accettazione;
begin
  messaggio(100, 'poichè il documento è stato modificato l''accettazione viene annullata');
  tabella.fieldbyname('accettato').asstring := 'no';
  tabella.fieldbyname('utn_codice_accettazione').asstring := '';
  tabella.fieldbyname('data_accettazione').asstring := '';
end;

procedure TGESACQ.after_delete;
begin
  inherited;
  aggiorna_totali_testata := false;
end;

procedure TGESACQ.after_post;
var
  eseguito_modifica: boolean;
  tma_codice_controllo: string;

  i: word;
  pagamenti_origine, pagamenti_evasione: tmyquery_go;
  stessa_data: boolean;
begin
  if esiste then
  begin
    tabella_righe.disablecontrols;
    aggiorna_totali_testata := true;

    eseguito_modifica := false;

    if (vecchio_data_registrazione <> tabella.fieldbyname('data_registrazione').asdatetime) or
      (vecchio_data_documento <> tabella.fieldbyname('data_documento').asdatetime) or
      (vecchio_serie_documento <> tabella.fieldbyname('serie_documento').asstring) or
      (vecchio_numero_documento <> tabella.fieldbyname('numero_documento').value) or
      (vecchio_frn_codice <> tabella.fieldbyname('frn_codice').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(100, 'aggiornamento archivi collegati al documento');
      aggiorna_archivi_collegati;
    end;

    if (vecchio_frn_codice <> tabella.fieldbyname('frn_codice').asstring) then
    begin
      if not((tipo_documento = 'ddt') and (tabella.fieldbyname('tda_codice_differite').asstring = '') or (tipo_documento = 'ddt clienti')) then
      begin
        eseguito_modifica := true;

        messaggio(200, 'essendo cambiato il codice intestatario documento' + #13 +
          'vengono aggiornati i dati collegati di tutte le righe non evase');

        messaggio(100, 'aggiornamento dati collegati all''intestatario');

        tabella_righe.close;
        tabella_righe.open;
        while not tabella_righe.eof do
        begin
          if tabella_righe.fieldbyname('art_codice').asstring <> '' then
          begin
            if (tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
              (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') then
            begin
              art.params[0].asstring := tabella_righe.fieldbyname('art_codice').asstring;
              art.close;
              art.open;
              if not art.eof then
              begin
                assegna_vecchio_righe;
                if tabella_edit(tabella_righe) then
                begin
                  assegna_gen_codice;
                  tabella_righe.post;
                end;
              end;
            end;
          end;
          tabella_righe.next;
        end;
      end;
    end;

    if (vecchio_tla_codice <> tabella.fieldbyname('tla_codice').asstring) then
    begin
      if messaggio(300, 'essendo cambiato il codice listino è possibile ricalcolare' + #13 +
        'i prezzi e gli importi di tutte le righe non evase' + #13 +
        'conferma per effettuare la modifica') = 1 then
      begin
        eseguito_modifica := true;

        tabella_righe.close;
        tabella_righe.open;
        while not tabella_righe.eof do
        begin
          if tabella_righe.fieldbyname('art_codice').asstring <> '' then
          begin
            if ((tipo_documento = 'preventivo') or (tipo_documento = 'ordine') and
              ((tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
              (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale')))
              or
              ((tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine')) then
            begin
              assegna_vecchio_righe;
              if tabella_edit(tabella_righe) then
              begin
                cerca_prezzo(tipo_prezzo);

                tabella_righe.fieldbyname('prezzo').asfloat := prezzo;
                tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;
                tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;

                calcola_importo;

                tabella_righe.post;
              end;
            end;
          end;

          tabella_righe.next;
        end;
      end;
    end;

    if (vecchio_tma_codice <> tabella.fieldbyname('tma_codice').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(200, 'essendo cambiato il codice deposito' + #13 +
        'viene riassegnato il deposito a tutte le righe non assegnate' + #13 +
        'e a quelle a cui era stato assegnato il deposito modificato');

      tma_codice_controllo := vecchio_tma_codice;

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if (tabella.fieldbyname('tma_codice').asstring = '') or (tabella_righe.fieldbyname('tma_codice').asstring = tma_codice_controllo) then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice').asstring;

              tabella_righe.post;
            end;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_tma_codice_collegato <> tabella.fieldbyname('tma_codice_collegato').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(200, 'essendo cambiato il codice deposito collegato' + #13 +
        'viene riassegnato il deposito collegato a tutte le righe non assegnate' + #13 +
        'e a quelle a cui era stato assegnato il deposito collegato modificato');

      tma_codice_controllo := vecchio_tma_codice_collegato;

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if tabella_righe.fieldbyname('tma_codice_collegato').asstring = tma_codice_controllo then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('tma_codice_collegato').asstring := tabella.fieldbyname('tma_codice_collegato').asstring;

              tabella_righe.post;
            end;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_tiv_codice <> tabella.fieldbyname('tiv_codice').asstring) then
    begin
      if not(((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '')) then
      begin
        eseguito_modifica := true;

        messaggio(200, 'essendo cambiato il codice I.V.A. vengono ricalcolati' + #13 +
          'gli importi lordi di tutte le righe non evase');

        messaggio(100, 'aggiornamento I.V.A. righe documento');

        tabella_righe.close;
        tabella_righe.open;
        while not tabella_righe.eof do
        begin
          if tabella_righe.fieldbyname('art_codice').asstring <> '' then
          begin
            if ((tipo_documento = 'preventivo') or (tipo_documento = 'ordine') and
              ((tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
              (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale')))
              or
              ((tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine')) then
            begin
              art.params[0].asstring := tabella_righe.fieldbyname('art_codice').asstring;
              art.close;
              art.open;
              if not art.eof then
              begin
                assegna_vecchio_righe;
                if tabella_edit(tabella_righe) then
                begin
                  assegna_tiv_codice_righe;
                  calcola_importo;
                  tabella_righe.post;
                end;
              end;
            end;
          end;

          tabella_righe.next;
        end;
      end;
    end;

    if (vecchio_listino_con_iva <> tabella.fieldbyname('listino_con_iva').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(200, 'essendo cambiato il tipo listino vengono ricalcolati i totali del documento');

      messaggio(100, 'aggiornamento totali documento');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if ((tipo_documento = 'preventivo') or (tipo_documento = 'ordine') and
            ((tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
            (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale')))
            or
            ((tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine')) then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin

              calcola_importo;

              tabella_righe.post;
            end;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (tipo_documento = 'preventivo') or (((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and
      (tabella.fieldbyname('tda_codice_differite').asstring = '')) then
    begin
      //
    end
    else
    begin
      if (vecchio_tma_codice <> tabella.fieldbyname('tma_codice').asstring) or
        (vecchio_tmo_codice <> tabella.fieldbyname('tmo_codice').asstring) then
      begin
        eseguito_modifica := true;

        if (vecchio_tma_codice <> tabella.fieldbyname('tma_codice').asstring) then
        begin
          messaggio(200, 'essendo cambiato il codice deposito vengono ricalcolati gli impegni articoli');
        end;
        if (vecchio_tmo_codice <> tabella.fieldbyname('tmo_codice').asstring) then
        begin
          messaggio(200, 'essendo cambiato il codice movimento magazzino vengono ricalcolati gli ordini articoli');
        end;

        messaggio(100, 'aggiornamento ordinato articoli righe documento');

        tabella_righe.close;
        tabella_righe.open;
        while not tabella_righe.eof do
        begin
          assegna_vecchio_righe;
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.post;
          end;

          tabella_righe.next;
        end;
      end;
    end;

    if (vecchio_cambio <> tabella.fieldbyname('cambio').asfloat) then
    begin
      eseguito_modifica := true;

      messaggio(200, 'essendo cambiato il valore del cambio vengono ricalcolati i totali del documento');

      messaggio(100, 'aggiornamento totali documento');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if ((tipo_documento = 'preventivo') or (tipo_documento = 'ordine') and
          ((tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
          (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale')))
          or
          ((tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine')) then
        begin
          assegna_vecchio_righe;
          if tabella_edit(tabella_righe) then
          begin
            calcola_importo;
            tabella_righe.post;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_data_inizio_competenza <> tabella.fieldbyname('data_inizio_competenza').asdatetime) then
    begin
      if (tipo_documento = 'fattura') or (tipo_documento = 'nota credito') then
      begin
        eseguito_modifica := true;

        messaggio(200, 'essendo cambiata la data inizio competenza' + #13 +
          'vengono aggiornate tutte le righe con date corrispondenti');

        messaggio(100, 'aggiornamento data inizio competenza righe documento');

        tabella_righe.close;
        tabella_righe.open;
        while not tabella_righe.eof do
        begin
          if tabella_righe.fieldbyname('data_inizio_competenza').asdatetime = vecchio_data_inizio_competenza then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('data_inizio_competenza').asstring := tabella.fieldbyname('data_inizio_competenza').asstring;
              tabella_righe.post;
            end;
          end;

          tabella_righe.next;
        end;
      end;
    end;

    if (vecchio_data_fine_competenza <> tabella.fieldbyname('data_fine_competenza').asdatetime) then
    begin
      if (tipo_documento = 'fattura') or (tipo_documento = 'nota credito') then
      begin
        eseguito_modifica := true;

        messaggio(200, 'essendo cambiata la data fine competenza' + #13 +
          'vengono aggiornate tutte le righe con date corrispondenti');

        messaggio(100, 'aggiornamento data fine competenza righe documento');

        tabella_righe.close;
        tabella_righe.open;
        while not tabella_righe.eof do
        begin
          if tabella_righe.fieldbyname('data_fine_competenza').asdatetime = vecchio_data_fine_competenza then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('data_fine_competenza').asstring := tabella.fieldbyname('data_fine_competenza').asstring;
              tabella_righe.post;
            end;
          end;

          tabella_righe.next;
        end;
      end;
    end;

    if (vecchio_data_consegna <> tabella.fieldbyname('data_consegna').asdatetime) and (tipo_documento = 'ordine') then
    begin
      eseguito_modifica := true;

      if messaggio(300, 'è cambiata la data consegna' + #13 +
        'conferma per aggiornate le righe') = 1 then
      begin
        stessa_data := true;
        if messaggio(300, 'conferma per modificare anche le righe con data diversa') = 1 then
        begin
          stessa_data := false;
        end;

        tabella_righe.close;
        tabella_righe.open;
        while not tabella_righe.eof do
        begin
          if tabella_righe.fieldbyname('art_codice').asstring <> '' then
          begin
            if (tabella_righe.fieldbyname('situazione').asstring = 'inserito') or (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') then
            begin
              if not stessa_data or (tabella_righe.fieldbyname('data_consegna').asdatetime = vecchio_data_consegna) then
              begin
                assegna_vecchio_righe;
                if tabella_edit(tabella_righe) then
                begin
                  tabella_righe.fieldbyname('data_consegna').asstring := tabella.fieldbyname('data_consegna').asstring;
                  tabella_righe.post;
                end;
              end;
            end;
          end;

          tabella_righe.next;
        end;
      end;
    end;

    if (vecchio_data_consegna_confermata <> tabella.fieldbyname('data_consegna_confermata').asdatetime) and (tipo_documento = 'ordine') then
    begin
      eseguito_modifica := true;

      if messaggio(300, 'è cambiata la data consegna confermata dal fornitore' + #13 +
        'si vogliono aggiornate tutte le righe con date corrispondenti') = 1 then
      begin
        tabella_righe.close;
        tabella_righe.open;
        while not tabella_righe.eof do
        begin
          if (tabella_righe.fieldbyname('data_consegna_confermata').asdatetime = vecchio_data_consegna_confermata) and
            ((tabella_righe.fieldbyname('situazione').asstring = 'inserito') or (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale')) then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('data_consegna_confermata').asstring := tabella.fieldbyname('data_consegna_confermata').asstring;
              tabella_righe.post;
            end;
          end;

          tabella_righe.next;
        end;
      end;
    end;

    if (vecchio_cms_codice_testata <> tabella.fieldbyname('cms_codice').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(200, 'essendo cambiato il codice commessa viene riassegnata' + #13 +
        'la commessa a tutte le righe a cui era stata assegnata la commessa modificata');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('cms_codice').asstring = vecchio_cms_codice_testata then
        begin
          assegna_vecchio_righe;
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
            tabella_righe.post;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_tipologia_testata <> tabella.fieldbyname('tipologia').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(200, 'essendo cambiato il codice sottocommessa viene riassegnata' + #13 +
        'la sottocommessa a tutte le righe a cui era stata assegnata la sottocommessa modificata');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('tipologia').asstring = vecchio_tipologia_testata then
        begin
          assegna_vecchio_righe;
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('tipologia').asstring := tabella.fieldbyname('tipologia').asstring;
            tabella_righe.post;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_no_ordinato <> tabella.fieldbyname('no_ordinato').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(200, 'essendo cambiata la modalità di assegnazione dell''ordinato' + #13 +
        'vengono modificate tutte le righe del documento');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        assegna_vecchio_righe;
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('no_ordinato').asstring := tabella.fieldbyname('no_ordinato').asstring;

          tabella_righe.post;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_importo_spese_01 <> tabella.fieldbyname('importo_spese_01').asfloat) or
      (vecchio_importo_spese_02 <> tabella.fieldbyname('importo_spese_02').asfloat) or
      (vecchio_importo_spese_03 <> tabella.fieldbyname('importo_spese_03').asfloat) or
      (vecchio_importo_spese_04 <> tabella.fieldbyname('importo_spese_04').asfloat) or
      (vecchio_importo_spese_extra <> tabella.fieldbyname('importo_spese_extra').asfloat) or
      (vecchio_modalita_ripartizione <> tabella.fieldbyname('modalita_ripartizione').asstring) then
    begin
      if (tabella.fieldbyname('tmo_codice').asstring <> '') and (tabella.fieldbyname('situazione').asstring = 'evaso') and
        ((tipo_documento = 'ddt') or (tipo_documento = 'fattura')) then
      begin
        eseguito_modifica := true;

        messaggio(200, 'essendo cambiate le spese globali del documento' + #13 +
          'vengono riconteggiate le spese del movimento di magazzino');

        mmt.close;
        mmt.sql.clear;
        mmt.sql.add('select *');
        mmt.sql.add('from mmt');
        mmt.sql.add('where documento_origine = :documento_origine');
        mmt.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');
        mmt.params[0].asstring := tabella.fieldbyname('tipo_documento').asstring + ' acq';
        mmt.params[1].asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
        mmt.open;

        aggiorna_spese_movmag(true);
      end
      else if tipo_documento = 'fattura differita' then
      begin
        eseguito_modifica := true;

        messaggio(200, 'essendo cambiate le spese globali del documento' + #13 +
          'vengono riconteggiate le spese dei movimenti di magazzino dei ddt collegati');

        aggiorna_spese_movmag_differita;
      end;
    end;

    if eseguito_modifica then
    begin
      tabella_righe.close;
      tabella_righe.open;
    end;
    tabella_righe.enablecontrols;
  end
  else
  begin
    if progressivo_documento_evadere <> 0 then
    begin
      pagamenti_origine := tmyquery_go.create(nil);
      pagamenti_origine.connection := arc.arcdit;
      pagamenti_evasione := tmyquery_go.create(nil);
      pagamenti_evasione.connection := arc.arcdit;

      if tipo_documento = 'ordine' then
      begin
        pagamenti_evasione.sql.text := 'select * from oap where progressivo = :progressivo';
        pagamenti_origine.sql.text := 'select * from rap where progressivo = :progressivo';
      end
      else if tipo_documento = 'ddt' then
      begin
        pagamenti_evasione.sql.text := 'select * from dap where progressivo = :progressivo';
        pagamenti_origine.sql.text := 'select * from oap where progressivo = :progressivo';
      end
      else
      begin
        pagamenti_evasione.sql.text := 'select * from fap where progressivo = :progressivo';
        pagamenti_origine.sql.text := 'select * from oap where progressivo = :progressivo';
      end;

      // pagamenti personalizzati
      pagamenti_origine.close;
      pagamenti_origine.parambyname('progressivo').asinteger := progressivo_documento_evadere;
      pagamenti_origine.open;
      if not pagamenti_origine.isempty then
      begin
        messaggio(100, 'evasione pagamento personalizzato');

        pagamenti_evasione.open;
        while not pagamenti_origine.eof do
        begin
          pagamenti_evasione.append;

          for i := 0 to pagamenti_origine.fieldcount - 1 do
          begin
            if (lowercase(pagamenti_origine.fields[i].fieldname) <> 'id') then
            begin
              pagamenti_evasione.fieldbyname(pagamenti_origine.fields[i].fieldname).value := pagamenti_origine.fields[i].value;
            end;
          end;
          pagamenti_evasione.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;

          pagamenti_evasione.post;

          pagamenti_origine.next;
        end;
      end;

      pagamenti_origine.free;
      pagamenti_evasione.free;
    end;
  end;
  assegna_vecchio_testata;
  inherited;
end;

procedure TGESACQ.before_post_righe;
var
  stringa: string;
  prosegui: boolean;
  query_articoli_ovr: tmyquery_go;
begin
  salva_note_riga := tabella_righe.fieldbyname('note').asstring;
  salva_note_interne_riga := tabella_righe.fieldbyname('note_interne').asstring;

  prosegui := true;

  if (tda.fieldbyname('acquisto_call_off_stock').asstring = 'si') and
    ((tabella_righe.fieldbyname('documento_origine').asstring = '') or
    (tabella_righe.fieldbyname('doc_progressivo_origine').asinteger = 0) or
    (tabella_righe.fieldbyname('doc_riga_origine').asinteger = 0)) then
  begin
    messaggio(000, 'i documenti di acquisto call-off-stock' + slinebreak +
      'devono far riferimento ad un documento di carico');
    prosegui := false;
  end;

  if not prosegui then
  begin
    tabella_righe.cancel;
    tabella.refresh;
    tabella_righe.refresh;
    fuoco(v_griglia_righe);
    abort;
  end
  else
  begin
    inherited;

    if (tabella_righe.fieldbyname('cms_codice').asstring <> tabella.fieldbyname('cms_codice').asstring) and
      (tabella.fieldbyname('cms_codice').asstring <> '') and (tabella_righe.fieldbyname('art_codice').asstring <> '') then
    begin
      messaggio(200, 'il codice commessa della riga è diverso da quello della testata documento');
    end;

    if tabella_righe.fieldbyname('art_codice').asstring <> '' then
    begin
      if tabella_righe.fieldbyname('peso_netto_riga').asfloat = 0 then
      begin
        tabella_righe.fieldbyname('peso_netto_riga').asfloat := arrotonda
          (art.fieldbyname('peso_netto').asfloat * tabella_righe.fieldbyname('tum_quantita_base').asfloat, 4);
      end;

      if (tabella.fieldbyname('situazione').asstring = 'evaso') and
        not((tipo_documento = 'preventivo') or (tipo_documento = 'ordine')) then
      begin
        tabella_righe.fieldbyname('situazione').asstring := 'evaso';
      end;
    end
    else
    begin
      tabella_righe.fieldbyname('data_consegna').asstring := '';
      tabella_righe.fieldbyname('data_consegna_confermata').value := null;
      tabella_righe.fieldbyname('cms_codice').asstring := '';
      tabella_righe.fieldbyname('tipologia').asstring := '';
      tabella_righe.fieldbyname('tma_codice').asstring := '';
      tabella_righe.fieldbyname('data_inizio_competenza').asstring := '';
      tabella_righe.fieldbyname('data_fine_competenza').asstring := '';
    end;

    assegna_valore_art_codice;
    assegna_valore_prezzo;
    assegna_valore_tsm_codice_righe;
    assegna_valore_tma_codice_righe;

    if (tabella_righe.fieldbyname('art_codice').asstring <> '') and (tabella_righe.fieldbyname('tma_codice').asstring = '') and
      (tabella.fieldbyname('tma_codice').asstring <> '') then
    begin
      tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice').asstring;
    end;

    // controllo che evasione ordini produzione a saldo sia per la quantità completa
    if (tabella_righe.fieldbyname('art_codice').asstring <> '') and (tabella_righe.fieldbyname('saldo_acconto').asstring = 'saldo') and
      (tabella_righe.fieldbyname('documento_origine').asstring = 'ordine acq') and
      (tabella_righe.fieldbyname('doc_progressivo_origine').asinteger <> 0) and
      (tabella_righe.fieldbyname('doc_riga_origine').asinteger <> 0) then
    begin
      riga_documento_evaso.sql.clear;
      riga_documento_evaso.sql.add('select documento_origine, tum_quantita_evasa_base from oar where progressivo = :progressivo and riga = :riga');
      riga_documento_evaso.params[0].asfloat := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
      riga_documento_evaso.params[1].asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
      riga_documento_evaso.close;
      riga_documento_evaso.open;
      if not riga_documento_evaso.eof then
      begin
        if riga_documento_evaso.fieldbyname('documento_origine').asstring = 'produzione' then
        begin
          if tabella_righe.fieldbyname('tum_quantita_base').asfloat <> riga_documento_evaso.fieldbyname('tum_quantita_evasa_base').asfloat then
          begin
            messaggio(000, 'gli ordini di produzione devono essere evasi a saldo per la quantità totale');
          end;
        end;
      end;
    end;

    if (tabella_righe.fieldbyname('descrizione1').asstring = '') and (tabella_righe.fieldbyname('totale_progressivo').asstring = 'si') then
    begin
      tabella_righe.fieldbyname('descrizione1').asstring := '------------------------------';
    end;

    if art.fieldbyname('tipo_articolo').asstring <> 'fuori listino' then
    begin
      tabella_righe.fieldbyname('artp_codice').asstring := '';
    end;

    //  avviso presenza articolo in ordini clienti senza RDA
    if not esiste_righe and (tda.fieldbyname('avviso_presenza_ovr').asstring = 'si') then
    begin
      query_articoli_ovr := tmyquery_go.create(nil);
      query_articoli_ovr.connection := arc.arcdit;

      query_articoli_ovr.sql.add('select concat(''cliente: '', '' '', trim(ovt.cli_codice), '' '', trim(cli.descrizione1), '' '', trim(cli.citta), '' '',');
      query_articoli_ovr.sql.add('''ordine: '', date_format(ovt.data_documento, ''%d-%m-%Y''), '' '', ovt.numero_documento, '' '',');
      query_articoli_ovr.sql.add('''quantità. '', ovr.tum_quantita_base - ovr.tum_quantita_evasa_base, '' '',');
      query_articoli_ovr.sql.add('''consegna: '', date_format(coalesce(ovt.data_consegna, current_date), ''%d-%m-%Y'')) descrizione,');
      query_articoli_ovr.sql.add('case');
      query_articoli_ovr.sql.add('when rda.situazione is null then ''''');
      query_articoli_ovr.sql.add('else ''presente RDA non ancora evasa''');
      query_articoli_ovr.sql.add('end rda_situazione');
      query_articoli_ovr.sql.add('from ovr');
      query_articoli_ovr.sql.add('inner join ovt on ovt.progressivo = ovr.progressivo');
      query_articoli_ovr.sql.add('inner join cli on cli.codice = ovt.cli_codice');
      query_articoli_ovr.sql.add('left join rda on rda.ovr_progressivo = ovr.progressivo and rda.ovr_riga = ovr.riga and rda.situazione <> ''evaso''');
      query_articoli_ovr.sql.add('where (ovr.situazione = ''inserito'' or ovr.situazione = ''evaso parziale'')');
      query_articoli_ovr.sql.add('and ovr.art_codice = :art_codice');
      query_articoli_ovr.sql.add('and (not exists(select id from rda where ovr_progressivo = ovt.progressivo and ovr_riga = ovr.riga)');
      query_articoli_ovr.sql.add('or exists(select id from rda where ovr_progressivo = ovt.progressivo and ovr_riga = ovr.riga and rda.situazione <> ''evaso''))');
      query_articoli_ovr.sql.add('and not exists(select id from oar where ovr_progressivo = ovt.progressivo  and ovr_riga = ovr.riga and ovr_tipo = ''cliente'')');
      query_articoli_ovr.sql.add('order by ovr.data_consegna');


      try
        if read_tabella(query_articoli_ovr, tabella_righe.fieldbyname('art_codice').asstring) then
        begin
          stringa := 'sono presenti i seguenti ordini clienti inevasi per l''articolo: ' + tabella_righe.fieldbyname('art_codice').asstring;
          while not query_articoli_ovr.eof do
          begin
            stringa := stringa + slinebreak + slinebreak + query_articoli_ovr.fieldbyname('descrizione').asstring;
            if query_articoli_ovr.fieldbyname('rda_situazione').asstring <> '' then
            begin
              stringa := stringa + slinebreak + query_articoli_ovr.fieldbyname('rda_situazione').asstring;
            end;
            query_articoli_ovr.next;
          end;

          messaggio(100, stringa);
        end;
      finally
        query_articoli_ovr.free;
      end;
    end;
  end;
end;

procedure TGESACQ.after_post_righe;
var
  progressivo: integer;
  riga_mmr: integer;
  importo_euro, prezzo_mov: double;

  tabelle_collegate, bvt_dvt, mov, cmm_mov, aggiorna_opr: tmyquery_go;
  salva_note, rdo, bvr_dvr: tmyquery_go;

  progressivo_opr, riga_opr: integer;
begin
  inherited;

  letto_barcode_articolo := false;
  quantita_barcode_articolo := 0;
  somma_quantita_barcode_articolo := false;

  if (salva_note_riga <> tabella_righe.fieldbyname('note').asstring) or
    (salva_note_interne_riga <> tabella_righe.fieldbyname('note_interne').asstring) then
  begin
    salva_note := tmyquery_go.create(nil);
    salva_note.connection := tabella_righe.connection;
    salva_note.sql.add('update x2x2 set note = :note, note_interne = :note_interne');
    salva_note.sql.add('where progressivo = :progressivo and riga = :riga');
    if tipo_documento = 'preventivo' then
    begin
      salva_note.sql.text := stringreplace(salva_note.sql.text, 'x2x2', 'rar', [rfreplaceall]);
    end
    else if tipo_documento = 'ordine' then
    begin
      salva_note.sql.text := stringreplace(salva_note.sql.text, 'x2x2', 'oar', [rfreplaceall]);
    end
    else if copy(tipo_documento, 1, 3) = 'ddt' then
    begin
      salva_note.sql.text := stringreplace(salva_note.sql.text, 'x2x2', 'dar', [rfreplaceall]);
    end
    else
    begin
      salva_note.sql.text := stringreplace(salva_note.sql.text, 'x2x2', 'far', [rfreplaceall]);
    end;
    salva_note.parambyname('note').asstring := salva_note_riga;
    salva_note.parambyname('note_interne').asstring := salva_note_interne_riga;
    salva_note.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
    salva_note.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
    salva_note.execsql;
    tabella_righe.refresh;
    tabella_righe.locate('progressivo;riga', vararrayof
      ([salva_note.parambyname('progressivo').asinteger, salva_note.parambyname('riga').asinteger]), []);
    freeandnil(salva_note);
  end;

  if tabella_righe.fieldbyname('cms_codice').asstring <> '' then
  begin
    ultimo_cms_codice := tabella_righe.fieldbyname('cms_codice').asstring;
    ultimo_tipologia := tabella_righe.fieldbyname('tipologia').asstring;
  end;

  aggiorna_totali_testata := true;

  if esiste_righe then
  begin
    if (tabella_righe.fieldbyname('ovr_progressivo').asfloat <> 0) and
      (tabella_righe.fieldbyname('quantita').asfloat <> vecchio_quantita) then
    begin
      if (tabella_righe.fieldbyname('ovr_tipo').asstring = 'cliente') then
      begin
        if read_tabella(arc.arcdit, 'ovt', 'progressivo', tabella_righe.fieldbyname('ovr_progressivo').asfloat) then
        begin
          messaggio(100, 'la riga è stata inserita a fronte dell''ordine del cliente ' +
            archivio.fieldbyname('cli_codice').asstring + #13 +
            'n. ' + archivio.fieldbyname('numero_documento').asstring +
            ' del ' + archivio.fieldbyname('data_documento').asstring);
        end;
      end
      else if (tabella_righe.fieldbyname('ovr_tipo').asstring = 'produzione') then
      begin
        if read_tabella(arc.arcdit, 'opt', 'progressivo', tabella_righe.fieldbyname('ovr_progressivo').asfloat) then
        begin
          messaggio(100, 'la riga è stata inserita a fronte dell''ordine di produzione n. ' +
            archivio.fieldbyname('numero_documento').asstring + ' del ' + archivio.fieldbyname('data_documento').asstring);
        end;
      end;
    end;

    if trim(vecchio_art_codice) <> '' then
    begin
      if (vecchio_gen_codice_righe <> tabella_righe.fieldbyname('gen_codice').asstring) then
      begin
        if analitica = 'si' then
        begin
          cem.close;
          cem.sql.clear;
          cem.sql.add('select * from cem');
          cem.sql.add('where documento_origine = :codice0');
          cem.sql.add('and doc_progressivo_origine = :codice2 and doc_riga_origine = :codice3');
          cem.params[0].AsString := tipo_documento + ' acq';
          cem.params[1].Asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
          cem.params[2].AsInteger := tabella_righe.fieldbyname('riga').asinteger;
          cem.open;
          cem.first;
          if not cem.eof then
          begin
            messaggio(200, 'essendo variata la contropartita acquisti' + #13 +
              'i movimenti della contabilità analitica collegati verranno cancellati' + #13 + #13 +
              'ricaricarli nuovamente');
            while not cem.eof do
            begin
              cem.delete;
            end;
          end
          else
          begin
            esegui_analitica('righe');
          end;
        end;
      end
      else
      begin
        if (vecchio_art_codice <> tabella_righe.fieldbyname('art_codice').asstring) or
          (arrotonda(vecchio_importo_euro) <> arrotonda(tabella_righe.fieldbyname('importo_euro').asfloat)) or
          (vecchio_cms_codice <> tabella_righe.fieldbyname('cms_codice').asstring) or
          (vecchio_tipologia <> tabella_righe.fieldbyname('tipologia').asstring) or
          (arrotonda(vecchio_tum_quantita_base, 4) <> arrotonda(tabella_righe.fieldbyname('tum_quantita_base').asfloat, 4)) then
        begin
          if (analitica = 'si') and (arrotonda(vecchio_importo_euro) <> arrotonda(tabella_righe.fieldbyname('importo_euro').asfloat)) then
          begin
            cem.SQL.clear;
            cem.SQL.add('select * from cem');
            cem.SQL.add('where documento_origine = :codice0');
            cem.SQL.add('and doc_progressivo_origine = :codice2');
            cem.SQL.add('and doc_riga_origine = :codice3 limit 1');
            cem.params[0].AsString := tipo_documento + ' acq';
            cem.params[1].Asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
            cem.params[2].AsInteger := tabella_righe.fieldbyname('riga').asinteger;
            cem.close;
            cem.open;
            if not cem.eof then
            begin
              messaggio(200, 'essendo variato l''importo della riga ' +
                inttostr(tabella_righe.fieldbyname('riga').asinteger) +
                '  codice articolo ' + tabella_righe.fieldbyname('art_codice').asstring + #13 +
                'è necessario riallineare l''archivio della contabilità analitica');
              esegui_analitica('righe');
            end;
          end;

          cmm.SQL.clear;
          cmm.SQL.add('select * from cmm');
          cmm.SQL.add('where documento_origine = :codice0');
          cmm.SQL.add('and doc_progressivo_origine = :codice2');
          cmm.SQL.add('and doc_riga_origine = :codice3 limit 1');
          cmm.params[0].AsString := tipo_documento + ' acq';
          cmm.params[1].Asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
          cmm.params[2].AsInteger := tabella_righe.fieldbyname('riga').asinteger;
          cmm.close;
          cmm.open;

          if not cmm.eof then
          begin
            messaggio(200, 'essendo variati il codice articolo, la commessa, la quantità o l''importo della riga ' +
              inttostr(tabella_righe.fieldbyname('riga').asinteger) +
              '  codice articolo ' + tabella_righe.fieldbyname('art_codice').asstring + #13 +
              'è necessario riallineare l''archivio commesse');
            esegui_commesse;
          end;
        end;
      end;

      if (vecchio_art_codice <> tabella_righe.fieldbyname('art_codice').asstring) then
      begin
        ltm.close;
        ltm.sql.text := 'select * from ltm where documento_origine = :documento_origine ' +
          'and doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
        ltm.params[0].asstring := tipo_documento + ' acq';
        ltm.params[1].asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
        ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
        ltm.open;
        ltm.first;
        if not ltm.eof then
        begin
          if art.fieldbyname('lotti').asstring = 'si' then
          begin
            messaggio(200, 'essendo variato l''articolo della riga' + #13 +
              'i movimenti dei lotti collegati verranno cancellati' + #13 + #13 +
              'ricaricarli nuovamente');
          end
          else
          begin
            messaggio(200, 'essendo variato l''articolo della riga' + #13 +
              'i movimenti dei lotti collegati verranno cancellati');
          end;
        end;
        while not ltm.eof do
        begin
          ltm.delete;
        end;
        ltm.close;

        //  ubicazioni
        ubm.close;
        ubm.sql.text := 'delete from ubm where documento_origine = :documento_origine and ' +
          'doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
        ubm.parambyname('documento_origine').asstring := tipo_documento + ' acq';
        ubm.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
        ubm.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
        ubm.execsql;
        esegui_ubicazioni;
      end
      else if arrotonda(vecchio_tum_quantita_base, 4) <> arrotonda(tabella_righe.fieldbyname('tum_quantita_base').asfloat, 4) then
      begin
        ltm.close;
        ltm.sql.text := 'select * from ltm where documento_origine = :documento_origine ' +
          'and doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
        ltm.params[0].asstring := tipo_documento + ' acq';
        ltm.params[1].asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
        ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
        ltm.open;

        if not ltm.eof then
        begin
          messaggio(200, 'essendo variata la quantità della riga ' +
            inttostr(tabella_righe.fieldbyname('riga').asinteger) +
            '  codice articolo ' + tabella_righe.fieldbyname('art_codice').asstring + #13 +
            'è necessario riallineare l''archivio lotti');
          esegui_lotti;
        end;

        //  ubicazioni
        if arc.dit.fieldbyname('ubicazione_multipla').asstring = 'si' then
        begin
          ubm.close;
          ubm.sql.text := 'select * from ubm where documento_origine = :documento_origine and ' +
            'doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
          ubm.parambyname('documento_origine').asstring := tipo_documento + ' acq';
          ubm.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
          ubm.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
          ubm.open;
          if not ubm.eof then
          begin
            messaggio(200, 'essendo variata la quantità della riga ' +
              inttostr(tabella_righe.fieldbyname('riga').asinteger) +
              '  codice articolo ' + tabella_righe.fieldbyname('art_codice').asstring + #13 +
              'è necessario riallineare l''archivio delle ubicazioni');
            esegui_ubicazioni;
          end;
        end;
      end;

      if vecchio_tma_codice_righe <> tabella_righe.fieldbyname('tma_codice').asstring then
      begin
        ltm.close;
        ltm.sql.text := 'select * from ltm where documento_origine = :documento_origine ' +
          'and doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
        ltm.params[0].asstring := tipo_documento + ' acq';
        ltm.params[1].asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
        ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
        ltm.open;
        if not ltm.eof then
        begin
          messaggio(200, 'essendo variato il codice deposito della riga' + #13 +
            'verranno aggiornati i movimenti dell''archivio lotti');
          ltm.first;
          while not ltm.eof do
          begin
            ltm.edit;
            ltm.fieldbyname('tma_codice').asstring := tabella_righe.fieldbyname('tma_codice').asstring;
            ltm.post;
            ltm.next;
          end;
        end;
        ltm.close;
      end;

      if (tipo_documento = 'ddt clienti') then
      begin
        if (vecchio_art_codice <> tabella_righe.fieldbyname('art_codice').asstring) then
        begin
          lct.close;
          lct.sql.clear;
          lct.sql.add('select * from lct');
          lct.sql.add('where documento_origine = :codice0');
          lct.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
          lct.params[0].AsString := tipo_documento + ' acq';
          lct.params[1].Asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
          lct.params[2].AsInteger := tabella_righe.fieldbyname('riga').asinteger;
          lct.open;
          lct.first;
          if not lct.eof then
          begin
            lcr.params[0].asfloat := lct.fieldbyname('progressivo').asfloat;
            lcr.close;
            lcr.open;
            if lcr.eof then
            begin
              messaggio(200, 'essendo variato l''articolo della riga' + #13 +
                'i movimenti delle lavorazioni conto terzi collegati verranno cancellati' + #13 + #13 +
                'ricaricarli nuovamente');

              while not lct.eof do
              begin
                lct.delete;
              end;
              crea_conto_terzi;
            end
            else
            begin
              messaggio(200, 'sono presenti movimenti di lavorazioni conto terzi con il progressivo ' +
                floattostr(lct.fieldbyname('progressivo').asfloat) + #13 +
                'che, essendo variato il codice articolo ed assendo movimentati,' + #13 +
                'vanno modificati manualmente non essendo possibile farlo automaticamente');
            end;
          end;
          lct.close;
        end
        else
        begin
          if arrotonda(vecchio_tum_quantita_base, 4) <> arrotonda(tabella_righe.fieldbyname('tum_quantita_base').asfloat, 4) then
          begin
            lct.SQL.clear;
            lct.SQL.add('select * from lct');
            lct.SQL.add('where documento_origine = :codice0');
            lct.SQL.add('and doc_progressivo_origine = :codice2');
            lct.SQL.add('and doc_riga_origine = :codice3 limit 1');
            lct.params[0].AsString := tipo_documento + ' acq';
            lct.params[1].Asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
            lct.params[2].AsInteger := tabella_righe.fieldbyname('riga').asinteger;
            lct.close;
            lct.open;

            if not lct.eof then
            begin
              messaggio(200, 'essendo variata la quantità della riga ' +
                inttostr(tabella_righe.fieldbyname('riga').asinteger) +
                '  codice articolo ' + tabella_righe.fieldbyname('art_codice').asstring + #13 +
                'è necessario riallineare l''archivio delle lavorazioni conto terzi');
              varia_conto_terzi;
            end;
            lct.close;
          end;
        end;
      end;
    end;

    if (tabella_righe.fieldbyname('art_codice').asstring <> '') and
      (tda.fieldbyname('acquisto_call_off_stock').asstring = 'si') then
    begin
      cos.aggiorna(tabella_righe.fieldbyname('progressivo').asinteger, tabella_righe.fieldbyname('riga').asinteger);
    end;

    //  aggiorna opr
    progressivo_opr := 0;
    riga_opr := 0;
    if (vecchio_quantita <> tabella_righe.fieldbyname('quantita').asfloat) or
      (vecchio_importo_euro <> tabella_righe.fieldbyname('importo_euro').asfloat) or
      (vecchio_ovr_tipo <> tabella_righe.fieldbyname('ovr_tipo').asstring) then
    begin
      if ((tipo_documento = 'ordine') and (tabella_righe.fieldbyname('ovr_tipo').asstring = 'produzione')) then
      begin
        progressivo_opr := tabella_righe.fieldbyname('ovr_progressivo').asinteger;
        riga_opr := tabella_righe.fieldbyname('ovr_riga').asinteger;
      end
      else if tabella_righe.fieldbyname('documento_origine').asstring = 'ordine acq' then
      begin
        read_tabella(oar, vararrayof([tabella_righe.fieldbyname('doc_progressivo_origine').asinteger,
          tabella_righe.fieldbyname('doc_riga_origine').asinteger]));
        progressivo_opr := oar.fieldbyname('ovr_progressivo').asinteger;
        riga_opr := tabella_righe.fieldbyname('ovr_riga').asinteger;
      end;

      if (progressivo_opr <> 0) and (riga_opr <> 0) and
        (arc.dit.fieldbyname('aggiorna_costo_da_acquisti').asstring = 'si') then
      begin
        aggiorna_opr := tmyquery_go.create(nil);
        aggiorna_opr.connection := arc.arcdit;
        try
          aggiorna_opr.sql.add('update opr');
          aggiorna_opr.sql.add('set costo_unitario = :costo_unitario');
          aggiorna_opr.sql.add('where progressivo = :progressivo and riga = :riga');
          aggiorna_opr.sql.add('and situazione = ''inserito''');


          aggiorna_opr.parambyname('costo_unitario').asfloat := arrotonda
            (tabella_righe.fieldbyname('importo_euro').asfloat / tabella_righe.fieldbyname('tum_quantita_base').asfloat, decimali_prezzo_acq_euro);
          aggiorna_opr.parambyname('progressivo').asinteger := progressivo_opr;
          aggiorna_opr.parambyname('riga').asinteger := riga_opr;
          aggiorna_opr.execsql;
        finally
          aggiorna_opr.free;
        end;
      end;
    end;
  end
  else
  begin
    produzione_conto_terzi;

    if tabella_righe.fieldbyname('art_codice').asstring <> '' then
    begin
      if (tabella.fieldbyname('situazione').asstring = 'evaso') and
        not((tipo_documento = 'preventivo') or (tipo_documento = 'ordine')) then
      begin
        // crea movimento di magazzino
        if tabella.fieldbyname('tmo_codice').asstring <> '' then
        begin
          mmt.close;
          mmt.sql.clear;
          mmt.sql.add('select * from mmt where progressivo = :progressivo');
          mmt.params[0].asinteger := mmt_progressivo_evaso;
          mmt.open;

          mmr.close;
          mmr.sql.clear;
          mmr.sql.add('select max(riga) riga');
          mmr.sql.add('from mmr');
          mmr.sql.add('where progressivo = :progressivo');
          mmr.params[0].asinteger := mmt_progressivo_evaso;
          mmr.open;
          if not mmr.eof then
          begin
            riga_mmr := mmr.fieldbyname('riga').asinteger;
          end
          else
          begin
            riga_mmr := 0;
          end;

          movmag.progressivo := mmt_progressivo_evaso;
          movmag.riga := riga_mmr + 1;
          movmag.art_codice := tabella_righe.fieldbyname('art_codice').asstring;
          movmag.tma_codice_mmr := tabella_righe.fieldbyname('tma_codice').asstring;
          movmag.quantita := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
          movmag.tsm_codice := tabella_righe.fieldbyname('tsm_codice').asstring;
          movmag.tsm_codice_art := tabella_righe.fieldbyname('tsm_codice_art').asstring;
          movmag.importo_sconto := tabella_righe.fieldbyname('importo_sconto').asfloat;

          if tabella.fieldbyname('listino_con_iva').asstring = 'no' then
          begin
            movmag.prezzo := tabella_righe.fieldbyname('prezzo').asfloat;
            movmag.importo := tabella_righe.fieldbyname('importo').asfloat;
            movmag.importo_euro := tabella_righe.fieldbyname('importo_euro').asfloat;
          end
          else
          begin
            read_tabella(arc.arcdit, 'tiv', 'codice', tabella_righe.fieldbyname('tiv_codice').asstring, 'percentuale');
            movmag.prezzo := arc.scorporo(tabella_righe.fieldbyname('prezzo').asfloat, archivio.fieldbyname('percentuale').asfloat, decimali_max_prezzo_acq);
            movmag.importo := arrotonda(tabella_righe.fieldbyname('importo').asfloat - tabella_righe.fieldbyname('importo_iva').asfloat);
            movmag.importo_euro := arrotonda(tabella_righe.fieldbyname('importo_euro').asfloat - tabella_righe.fieldbyname('importo_iva_euro').asfloat);
          end;

          if art.fieldbyname('tum_codice').asstring <> tabella_righe.fieldbyname('tum_codice').asstring then
          begin
            cifre_decimali_prezzo_acq := decimali_prezzo_acq(tabella.fieldbyname('tva_codice').asstring);
            try
              movmag.prezzo := arrotonda
                (tabella_righe.fieldbyname('importo_euro').asfloat / tabella_righe.fieldbyname('tum_quantita_base').asfloat, cifre_decimali_prezzo_acq);
            except
              movmag.prezzo := 0;
            end;
            movmag.tsm_codice := '';
            movmag.tsm_codice_art := '';
          end;

          movmag.tipo_movimento := tabella_righe.fieldbyname('tipo_movimento').asstring;
          movmag.importo_spese := 0;
          movmag.importo_spese_euro := 0;
          movmag.descrizione_mmr := '';
          movmag.opt_tipo_articolo := '';
          movmag.olt_tipo_articolo := '';
          movmag.mmr_doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
          movmag.cms_codice_righe := tabella_righe.fieldbyname('cms_codice').asstring;
          movmag.tipologia_righe := tabella_righe.fieldbyname('tipologia').asstring;

          movmag.crea_mmr;

          esegui_ubicazioni_magazzino(tabella.fieldbyname('tmo_codice').asstring, tabella_righe.fieldbyname('tma_codice').asstring);

          aggiorna_spese_movmag;
        end;
      end;

      esegui_analitica('righe');
      if (((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring <> '')) or
        (tipo_documento = 'fattura') or (tipo_documento = 'nota credito') then
      begin
        esegui_commesse;
      end;

      esegui_lotti;
      esegui_ubicazioni;
      crea_conto_terzi;
      crea_record_rma;
    end;

    if (tabella_righe.fieldbyname('art_codice').asstring <> '') and
      ((art.fieldbyname('descrizione_archivio_collega_01').asstring <> '') or
      (art.fieldbyname('descrizione_archivio_collega_02').asstring <> '') or
      (art.fieldbyname('descrizione_archivio_collegato_03').asstring <> '') or
      (art.fieldbyname('descrizione_archivio_collegato_04').asstring <> '')) then
    begin
      messaggio(100, 'l''articolo ha in anagrafica archivi collegati' + #13 +
        'per inserirli come allegati nel documento in gestione utilizzare il bottone sulla toolbar');
    end;
  end;

  // creazione non conformità
  if progressivo_nca <> 0 then
  begin
    crea_record_ncr;
  end;

  if trim(tabella_righe.fieldbyname('art_codice').asstring) <> '' then
  begin
    if (gestione_lotto_singolo = 'si') and (codice_lotto_matricola_singolo <> '') and (v_quantita.value <> 0) then
    begin
      ltm.sql.clear;
      ltm.sql.text := 'select * from ltm where progressivo = :progressivo';
      ltm.open;
      ltm.append;

      ltm.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(TMyConnection_go(ltm.connection), 'ltm_progressivo');
      ltm.fieldbyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
      ltm.fieldbyname('lotto').asstring := codice_lotto_matricola_singolo;
      ltm.fieldbyname('tma_codice').asstring := tabella_righe.fieldbyname('tma_codice').asstring;
      ltm.fieldbyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
      ltm.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_registrazione').asdatetime;
      ltm.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('quantita').asfloat;
      read_tabella(arc.arcdit, 'tmo', 'codice', v_tmo_codice.text);
      ltm.fieldbyname('esistenza').asstring := archivio.fieldbyname('esistenza').asstring;
      ltm.fieldbyname('documento_origine').asstring := tipo_documento + ' acq';
      ltm.fieldbyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
      if tipo_documento = 'ddt clienti' then
      begin
        ltm.fieldbyname('cfg_tipo').asstring := 'C';
      end
      else
      begin
        ltm.fieldbyname('cfg_tipo').asstring := 'F';
      end;
      ltm.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('frn_codice').asstring;
      ltm.fieldbyname('data_documento').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
      ltm.fieldbyname('serie_documento').asstring := tabella.fieldbyname('serie_documento').asstring;
      ltm.fieldbyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;

      ltm.post;
    end;

    // aggiorna movimento di magazzino documento evaso
    if (tabella_righe.fieldbyname('situazione').asstring = 'evaso') and
      (tabella.fieldbyname('tmo_codice').asstring <> '') then
    begin
      aggiorna_magazzino(tabella.fieldbyname('tmo_codice').asstring, false);

      if tabella.fieldbyname('tmo_codice_collegato').asstring <> '' then
      begin
        aggiorna_magazzino(tabella.fieldbyname('tmo_codice_collegato').asstring, true);
      end;
    end;

    assegna_vecchio_righe;
  end;

  if (tabella.fieldbyname('accettato').asstring = 'si') and
    (tabella.fieldbyname('situazione').asstring <> 'evaso') then
  begin
    if tabella_edit(tabella) then
    begin
      assegna_utn_codice_accettazione;
      no_eventi_post := true;
      tabella.post;
    end;
  end;

  if (aggiorna_listini_acquisti <> 'nessuno') and (tabella_righe.fieldbyname('importo').asfloat <> 0) then
  begin
    crea_listino_fornitore_acq;
  end;

  if (tipo_documento = 'fattura differita') and (tabella_righe.fieldbyname('documento_origine').asstring <> '') then
  begin
    if messaggio(300, 'modifica automatica del documento di origine della fattura differita' + #13 +
      'per allinearlo alle modifiche apportate alla fattura' + #13 +
      'la variazione potrebbe causare modifiche sul documento di origine non riscontrabili sulla fattura') = 1 then
    begin
      bvr_dvr := tmyquery_go.create(nil);
      bvr_dvr.connection := arc.arcdit;

      tabelle_collegate := tmyquery_go.create(nil);
      tabelle_collegate.connection := arc.arcdit;

      bvt_dvt := tmyquery_go.create(nil);
      bvt_dvt.connection := arc.arcdit;

      try
        bvr_dvr.sql.text := 'select * from dar where progressivo = :progressivo and riga = :riga';
        bvr_dvr.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
        bvr_dvr.parambyname('riga').asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
        bvr_dvr.open;
        if bvr_dvr.isempty then
        begin
          messaggio(200, 'la riga del documento di origine non esiste');
        end
        else
        begin
          bvt_dvt.sql.text := 'select * from dat where progressivo = :progressivo';
          bvt_dvt.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
          bvt_dvt.open;

          importo_euro := bvr_dvr.fieldbyname('importo_euro').asfloat;

          bvr_dvr.edit;

          bvr_dvr.fieldbyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
          bvr_dvr.fieldbyname('numero_colli').asinteger := tabella_righe.fieldbyname('numero_colli').asinteger;
          bvr_dvr.fieldbyname('numero_confezioni').asinteger := tabella_righe.fieldbyname('numero_confezioni').asinteger;
          bvr_dvr.fieldbyname('tum_codice').asstring := tabella_righe.fieldbyname('tum_codice').asstring;
          bvr_dvr.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('quantita').asfloat;
          bvr_dvr.fieldbyname('tum_quantita_base').asfloat := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
          bvr_dvr.fieldbyname('prezzo').asfloat := tabella_righe.fieldbyname('prezzo').asfloat;
          bvr_dvr.fieldbyname('tsm_codice').asstring := tabella_righe.fieldbyname('tsm_codice').asstring;
          bvr_dvr.fieldbyname('tsm_codice_art').asstring := tabella_righe.fieldbyname('tsm_codice_art').asstring;
          bvr_dvr.fieldbyname('importo_sconto').asfloat := tabella_righe.fieldbyname('importo_sconto').asfloat;
          bvr_dvr.fieldbyname('importo').asfloat := tabella_righe.fieldbyname('importo').asfloat;
          bvr_dvr.fieldbyname('importo_euro').asfloat := tabella_righe.fieldbyname('importo_euro').asfloat;
          bvr_dvr.fieldbyname('tipo_movimento').asstring := tabella_righe.fieldbyname('tipo_movimento').asstring;
          bvr_dvr.fieldbyname('importo_iva').asfloat := tabella_righe.fieldbyname('importo_iva').asfloat;
          bvr_dvr.fieldbyname('importo_iva_euro').asfloat := tabella_righe.fieldbyname('importo_iva_euro').asfloat;
          bvr_dvr.fieldbyname('tiv_codice').asstring := tabella_righe.fieldbyname('tiv_codice').asstring;
          bvr_dvr.fieldbyname('gen_codice').asstring := tabella_righe.fieldbyname('gen_codice').asstring;
          bvr_dvr.fieldbyname('gen_codice_storno').asstring := tabella_righe.fieldbyname('gen_codice_storno').asstring;
          bvr_dvr.fieldbyname('importo_statistico_intra').asfloat := tabella_righe.fieldbyname('importo_statistico_intra').asfloat;
          bvr_dvr.fieldbyname('descrizione1').asstring := tabella_righe.fieldbyname('descrizione1').asstring;
          bvr_dvr.fieldbyname('descrizione2').asstring := tabella_righe.fieldbyname('descrizione2').asstring;

          bvr_dvr.post;

          totacq.movacq_testata(TMyConnection_go(tabella.connection), 'ddt', bvr_dvr.fieldbyname('progressivo').asinteger);

          //  magazzino e commesse per ordini di produzione già evasi
          if (bvr_dvr.fieldbyname('cms_codice').asstring <> '') and (importo_euro = 0) and (bvr_dvr.fieldbyname('importo_euro').asfloat <> 0) then
          begin
            cmm_mov := tmyquery_go.create(nil);
            cmm_mov.connection := arc.arcdit;
            cmm_mov.sql.add('select * from cmm where documento_origine = ''movimenti magazzino''');
            cmm_mov.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');
            cmm_mov.sql.add('and doc_riga_origine = :doc_riga_origine');

            //  scarico materia prima
            mov := tmyquery_go.create(nil);
            mov.connection := arc.arcdit;
            mov.sql.add('select mmr.*');
            mov.sql.add('from mmr');
            mov.sql.add('inner join mmt on mmt.progressivo = mmr.progressivo');
            mov.sql.add('where mmt.data_registrazione >= :data_ddt and mmt.data_registrazione <= :data_fattura');
            mov.sql.add('and mmr.art_codice = :art_codice');
            mov.sql.add('and mmt.doc_progressivo_origine =');
            mov.sql.add('(select progressivo from opt where cms_codice = :cms_codice and tipologia = :tipologia limit 1)');

            mov.sql.add('and mmt.documento_origine = ''ordini produzione''');
            mov.sql.add('and mmr.doc_riga_origine <> 0');

            mov.parambyname('data_ddt').asdate := bvt_dvt.fieldbyname('data_registrazione').asdatetime;
            mov.parambyname('data_fattura').asdate := tabella.fieldbyname('data_registrazione').asdatetime;
            mov.parambyname('art_codice').asstring := bvr_dvr.fieldbyname('art_codice').asstring;
            mov.parambyname('cms_codice').asstring := bvr_dvr.fieldbyname('cms_codice').asstring;
            mov.parambyname('tipologia').asstring := bvr_dvr.fieldbyname('tipologia').asstring;

            mov.open;

            if not mov.isempty then
            begin
              mov.edit;
              mov.fieldbyname('importo').asfloat := arrotonda
                (mov.fieldbyname('quantita').asfloat * tabella_righe.fieldbyname('importo').asfloat / tabella_righe.fieldbyname('quantita').asfloat);
              mov.fieldbyname('importo_euro').asfloat := arrotonda
                (mov.fieldbyname('quantita').asfloat * tabella_righe.fieldbyname('importo_euro').asfloat / tabella_righe.fieldbyname('quantita').asfloat);
              try
                mov.fieldbyname('prezzo').asfloat := arrotonda
                  (mov.fieldbyname('importo').asfloat / mov.fieldbyname('quantita').asfloat, decimali_max_prezzo_acq);
              except
              end;
              mov.post;

              prezzo_mov := mov.fieldbyname('prezzo').asfloat;

              //  aggiorna commessa
              cmm_mov.close;
              cmm_mov.parambyname('doc_progressivo_origine').asinteger := mov.fieldbyname('progressivo').asinteger;
              cmm_mov.parambyname('doc_riga_origine').asinteger := mov.fieldbyname('riga').asinteger;
              cmm_mov.open;

              if not cmm_mov.isempty then
              begin
                cmm_mov.edit;
                cmm_mov.fieldbyname('importo').asfloat := mov.fieldbyname('importo_euro').asfloat;
                cmm_mov.post;
              end;
            end;

            //  carico finito
            mov.close;
            mov.sql.clear;
            mov.sql.add('select mmr.*');
            mov.sql.add('from mmr');
            mov.sql.add('inner join mmt on mmt.progressivo = mmr.progressivo');
            mov.sql.add('where mmt.data_registrazione >= :data_ddt and mmt.data_registrazione <= :data_fattura');
            mov.sql.add('and mmt.doc_progressivo_origine =');
            mov.sql.add('(select progressivo from opt where cms_codice = :cms_codice and tipologia = :tipologia limit 1)');
            mov.sql.add('and mmt.documento_origine = ''ordini produzione''');
            mov.sql.add('and mmr.doc_riga_origine = 0');

            mov.parambyname('data_ddt').asdate := bvt_dvt.fieldbyname('data_registrazione').asdatetime;
            mov.parambyname('data_fattura').asdate := tabella.fieldbyname('data_registrazione').asdatetime;
            mov.parambyname('cms_codice').asstring := bvr_dvr.fieldbyname('cms_codice').asstring;
            mov.parambyname('tipologia').asstring := bvr_dvr.fieldbyname('tipologia').asstring;

            mov.open;

            while not mov.eof do
            begin
              mov.edit;
              mov.fieldbyname('importo').asfloat := arrotonda
                (mov.fieldbyname('importo').asfloat + prezzo_mov * mov.fieldbyname('quantita').asfloat);
              mov.fieldbyname('importo_euro').asfloat := arrotonda
                (mov.fieldbyname('importo_euro').asfloat + prezzo_mov * mov.fieldbyname('quantita').asfloat);
              mov.fieldbyname('tsm_codice').asstring := '';
              mov.fieldbyname('tsm_codice_art').asstring := '';
              mov.fieldbyname('importo_sconto').asfloat := 0;
              try
                mov.fieldbyname('prezzo').asfloat := arrotonda
                  (mov.fieldbyname('importo').asfloat / mov.fieldbyname('quantita').asfloat, decimali_max_prezzo_acq);
              except
              end;
              mov.post;

              //  aggiorna commessa
              cmm_mov.close;
              cmm_mov.parambyname('doc_progressivo_origine').asinteger := mov.fieldbyname('progressivo').asinteger;
              cmm_mov.parambyname('doc_riga_origine').asinteger := mov.fieldbyname('riga').asinteger;
              cmm_mov.open;

              if not cmm_mov.isempty then
              begin
                cmm_mov.edit;
                cmm_mov.fieldbyname('importo').asfloat := mov.fieldbyname('importo_euro').asfloat;
                cmm_mov.post;
              end;

              mov.next;
            end;

            freeandnil(cmm_mov);
            freeandnil(mov);
          end;

          // aggiornamento manuale archivi collegati
          // analitica
          tabelle_collegate.close;
          tabelle_collegate.sql.text := 'select progressivo from cem ' +
            'where documento_origine = :documento_origine ' +
            'and doc_progressivo_origine = :doc_progressivo_origine ' +
            'and doc_riga_origine = :doc_riga_origine';
          tabelle_collegate.parambyname('documento_origine').asstring := tabella_righe.fieldbyname('documento_origine').asstring;
          tabelle_collegate.parambyname('doc_progressivo_origine').asinteger := bvr_dvr.fieldbyname('progressivo').asinteger;
          tabelle_collegate.parambyname('doc_riga_origine').asinteger := bvr_dvr.fieldbyname('riga').asinteger;
          tabelle_collegate.open;
          if not tabelle_collegate.isempty then
          begin
            messaggio(100, 'il documento di origine ha un movimento analitica collegato' + #13 +
              'la sua modifica va eseguita manualmente');
            esegui_carcem(vararrayof([tabella_righe.fieldbyname('documento_origine').asstring,
              bvr_dvr.fieldbyname('progressivo').asinteger, bvr_dvr.fieldbyname('riga').asinteger]),
              bvt_dvt.fieldbyname('data_registrazione').asdatetime, bvr_dvr.fieldbyname('gen_codice').asstring,
              bvr_dvr.fieldbyname('art_codice').asstring, 'F', bvt_dvt.fieldbyname('frn_codice').asstring, '', esercizio,
              bvt_dvt.fieldbyname('numero_documento').asfloat, bvr_dvr.fieldbyname('cms_codice').asstring,
              bvt_dvt.fieldbyname('data_documento').asdatetime, bvr_dvr.fieldbyname('importo_euro').asfloat, 0, true, false,
              bvr_dvr.fieldbyname('importo').asfloat, 0, bvt_dvt.fieldbyname('cambio').asfloat);
          end;

          // commesse
          tabelle_collegate.close;
          tabelle_collegate.sql.text := 'select progressivo from cmm ' +
            'where documento_origine = :documento_origine ' +
            'and doc_progressivo_origine = :doc_progressivo_origine ' +
            'and doc_riga_origine = :doc_riga_origine';
          tabelle_collegate.parambyname('documento_origine').asstring := tabella_righe.fieldbyname('documento_origine').asstring;
          tabelle_collegate.parambyname('doc_progressivo_origine').asinteger := bvr_dvr.fieldbyname('progressivo').asinteger;
          tabelle_collegate.parambyname('doc_riga_origine').asinteger := bvr_dvr.fieldbyname('riga').asinteger;
          tabelle_collegate.open;
          if not tabelle_collegate.isempty then
          begin
            messaggio(100, 'il documento di origine ha un movimento commesse collegato' + #13 +
              'la sua modifica va eseguita manualmente');
            esegui_carcmm(vararrayof([tabella_righe.fieldbyname('documento_origine').asstring,
              bvr_dvr.fieldbyname('progressivo').asinteger, bvr_dvr.fieldbyname('riga').asinteger]),
              'F', bvt_dvt.fieldbyname('frn_codice').asstring, bvr_dvr.fieldbyname('art_codice').asstring,
              bvt_dvt.fieldbyname('serie_documento').asstring, bvr_dvr.fieldbyname('descrizione1').asstring,
              bvr_dvr.fieldbyname('descrizione1').asstring,
              'costo', bvt_dvt.fieldbyname('data_documento').asdatetime,
              bvt_dvt.fieldbyname('data_documento').asdatetime, bvr_dvr.fieldbyname('importo_euro').asfloat,
              bvt_dvt.fieldbyname('numero_documento').asfloat, bvr_dvr.fieldbyname('cms_codice').asstring,
              bvr_dvr.fieldbyname('tipologia').asstring, bvr_dvr.fieldbyname('quantita').asfloat, true);
          end;

          // magazzino
          tabelle_collegate.close;
          tabelle_collegate.sql.text := 'select mmr.* from mmr ' +
            'inner join mmt on mmt.progressivo = mmr.progressivo ' +
            'where mmt.documento_origine = :documento_origine ' +
            'and mmt.doc_progressivo_origine = :doc_progressivo_origine ' +
            'and mmr.doc_riga_origine = :doc_riga_origine';
          tabelle_collegate.parambyname('documento_origine').asstring := tabella_righe.fieldbyname('documento_origine').asstring;
          tabelle_collegate.parambyname('doc_progressivo_origine').asinteger := bvr_dvr.fieldbyname('progressivo').asinteger;
          tabelle_collegate.parambyname('doc_riga_origine').asinteger := bvr_dvr.fieldbyname('riga').asinteger;
          tabelle_collegate.open;
          if not tabelle_collegate.isempty then
          begin
            if messaggio(300, 'modifica automatica del movimento di magazzino collegato') = 1 then
            begin
              tabelle_collegate.edit;

              tabelle_collegate.fieldbyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
              tabelle_collegate.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
              try
                tabelle_collegate.fieldbyname('prezzo').asfloat := arrotonda(
                  tabella_righe.fieldbyname('importo').asfloat / tabella_righe.fieldbyname('quantita').asfloat, decimali_max_prezzo);
                tabelle_collegate.fieldbyname('tsm_codice').asstring := tabella_righe.fieldbyname('tsm_codice').asstring;
                tabelle_collegate.fieldbyname('tsm_codice_art').asstring := tabella_righe.fieldbyname('tsm_codice_art').asstring;
                tabelle_collegate.fieldbyname('importo_sconto').asfloat := tabella_righe.fieldbyname('importo_sconto').asfloat;
              except
                tabelle_collegate.fieldbyname('prezzo').asfloat := 0;
                tabelle_collegate.fieldbyname('tsm_codice').asstring := '';
                tabelle_collegate.fieldbyname('tsm_codice_art').asstring := '';
                tabelle_collegate.fieldbyname('importo_sconto').asfloat := 0;
              end;
              tabelle_collegate.fieldbyname('importo').asfloat := tabella_righe.fieldbyname('importo').asfloat;
              tabelle_collegate.fieldbyname('importo_euro').asfloat := tabella_righe.fieldbyname('importo_euro').asfloat;
              tabelle_collegate.fieldbyname('tipo_movimento').asstring := tabella_righe.fieldbyname('tipo_movimento').asstring;

              tabelle_collegate.post;
            end;
          end;
        end;
      finally
        bvr_dvr.free;
        bvt_dvt.free;
        tabelle_collegate.free;
      end;
    end;
  end;

  // aggiorna da ordinare per richieste d'acquisto
  if (tabella_righe.fieldbyname('documento_origine').asstring = 'rda') and
    (tabella_righe.fieldbyname('importo').asfloat <> 0) then
  begin
    rdo := tmyquery_go.create(nil);
    rdo.connection := arc.arcdit;
    rdo.sql.add('select *');
    rdo.sql.add('from rdo');
    rdo.sql.add('where progressivo = :progressivo');
    try
      rdo.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
      rdo.open;
      if (rdo.recordcount = 1) and (tabella_righe.fieldbyname('importo').asfloat <> 0) then
      begin
        rdo.edit;
        rdo.fieldbyname('ordinare').asstring := 'si';
        rdo.post;
      end;
    finally
      rdo.free;
    end;
  end;
end;

procedure TGESACQ.produzione_conto_terzi;
var
  pr: tprodter;
  dar: tmyquery_go;
begin
  if tda.fieldbyname('produzione_conto_terzi').asstring = 'si' then
  begin
    if not assegna_tutti_prodter or (progressivo_prodter = 0) then
    begin
      pr := tprodter.create(nil);
      pr.cli_codice := tabella.fieldbyname('frn_codice').asstring;
      pr.tma_codice_passato := tabella.fieldbyname('tma_codice').asstring;
      pr.assegna_tutti := assegna_tutti_prodter;

      pr.tda_descrizione := tda.fieldbyname('descrizione_documento').asstring;
      pr.data_documento := tabella.fieldbyname('data_documento').asdatetime;
      pr.numero_documento := tabella.fieldbyname('numero_documento').asfloat;
      pr.serie_documento := tabella.fieldbyname('serie_documento').asstring;

      pr.showmodal;

      assegna_tutti_prodter := pr.assegna_tutti;
      progressivo_prodter := pr.progressivo;
      riga_prodter := pr.riga;
      pr.free;
    end;

    if (progressivo_prodter <> 0) and (riga_prodter <> 0) then
    begin
      dar := tmyquery_go.create(nil);
      dar.connection := arc.arcdit;
      dar.sql.text := 'update dar set ovr_tipo = ''conto terzi'', ovr_progressivo = :ovr_progressivo, ' +
        'ovr_riga = :ovr_riga where progressivo = :progressivo and riga = :riga';
      dar.parambyname('ovr_progressivo').asinteger := progressivo_prodter;
      dar.parambyname('ovr_riga').asinteger := riga_prodter;
      dar.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
      dar.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
      dar.execsql;
      dar.free;
    end;

    tabella_righe.refresh;
  end;
end;

procedure TGESACQ.crea_record_rma;
var
  tipo_documento_rma, cli_for: string;
begin
  if tda.fieldbyname('rma').asstring = 'si' then
  begin
    ltm.close;
    ltm.sql.text := 'select * from ltm where documento_origine = :documento_origine ' +
      'and doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
    ltm.params[0].asstring := tipo_documento + ' acq';
    ltm.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
    ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
    ltm.open;
    if (tipo_documento = 'ddt clienti') and (progressivo_rma = 0) then
    begin
      rma.data_registrazione := tabella.fieldbyname('data_registrazione').asdatetime;
      rma.cli_codice := tabella.fieldbyname('frn_codice').asstring;
      rma.art_codice := tabella_righe.fieldbyname('art_codice').asstring;
      rma.data_documento := tabella.fieldbyname('data_documento').asdatetime;
      rma.numero_documento := tabella.fieldbyname('numero_documento').asfloat;
      rma.serie_documento := tabella.fieldbyname('serie_documento').asstring;
      rma.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
      rma.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
      rma.quantita_entrate := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
      rma.quantita_uscite := 0;

      if ltm.isempty then
      begin
        rma.lot_codice := '';
      end
      else
      begin
        rma.lot_codice := ltm.fieldbyname('lotto').asstring;
      end;
      rma.crea_rmt;
    end
    else if (tipo_documento = 'ddt') or (tipo_documento = 'fattura') or (tipo_documento = 'nota credito') or
      (tipo_documento = 'ddt clienti') then
    begin
      if progressivo_rma <> 0 then
      begin
        cli_for := 'fornitore';
        if tipo_documento = 'ddt' then
        begin
          tipo_documento_rma := 'ddt da fornitore';
        end
        else if tipo_documento = 'fattura' then
        begin
          tipo_documento_rma := 'fattura da fornitore';
        end
        else if tipo_documento = 'nota credito' then
        begin
          tipo_documento_rma := 'n.credito fornitore';
        end
        else if tipo_documento = 'ddt clienti' then
        begin
          tipo_documento_rma := 'ddt da cliente';
          cli_for := 'cliente';
        end;

        rma.progressivo := progressivo_rma;
        rma.intestatario := cli_for;
        rma.tipo_documento := tipo_documento_rma;
        rma.cfg_codice := tabella.fieldbyname('frn_codice').asstring;
        rma.documento_origine := tipo_documento_rma;
        rma.data_documento := tabella.fieldbyname('data_documento').asdatetime;
        rma.numero_documento := tabella.fieldbyname('numero_documento').asfloat;
        rma.serie_documento := tabella.fieldbyname('serie_documento').asstring;
        rma.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
        rma.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
        rma.quantita_entrate := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
        rma.quantita_uscite := 0;

        if ltm.isempty then
        begin
          rma.lot_codice := '';
        end
        else
        begin
          rma.lot_codice := ltm.fieldbyname('lotto').asstring;
        end;
        rma.crea_rmr;
      end;
    end;
  end;
end;

procedure TGESACQ.aggiorna_magazzino(tmo_codice: string; collegato: boolean);
begin
  mmt.sql.clear;
  mmt.sql.add('select *');
  mmt.sql.add('from mmt');
  mmt.sql.add('where documento_origine = :documento_origine');
  mmt.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');
  mmt.sql.add('and tmo_codice = :tmo_codice');
  mmt.params[0].asstring := tabella.fieldbyname('tipo_documento').asstring + ' acq';
  mmt.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  mmt.params[2].asstring := tmo_codice;
  mmt.close;
  mmt.open;
  if not mmt.eof then
  begin
    mmr.close;
    mmr.sql.clear;
    mmr.sql.add('select *');
    mmr.sql.add('from mmr');
    mmr.sql.add('where progressivo = :progressivo');
    mmr.sql.add('and doc_riga_origine = :doc_riga_origine');
    mmr.params[0].asinteger := mmt.fieldbyname('progressivo').asinteger;
    mmr.params[1].asinteger := tabella_righe.fieldbyname('riga').asinteger;
    mmr.open;
    if mmr.isempty then
    begin
      mmr.sql.clear;
      mmr.sql.add('select *');
      mmr.sql.add('from mmr');
      mmr.sql.add('where progressivo = :progressivo');
      mmr.sql.add('and art_codice = :art_codice');
      mmr.sql.add('and quantita = :quantita');
      mmr.sql.add('and tipo_movimento = :tipo_movimento');

      mmr.params[0].asfloat := mmt.fieldbyname('progressivo').asfloat;
      mmr.params[1].asstring := vecchio_art_codice;
      mmr.params[2].asfloat := vecchio_tum_quantita_base;
      mmr.params[3].asstring := vecchio_tipo_movimento;

      mmr.close;
      mmr.open;
    end;
    aggiorna_magazzino_dettaglio(collegato);
    aggiorna_spese_movmag;
  end;
end;

procedure TGESACQ.aggiorna_magazzino_dettaglio(collegato: boolean);
begin
  if not mmr.eof then
  begin
    mmr.edit;
    // aggiorna valori riga magazzino
    if not collegato then
    begin
      mmr.fieldbyname('tma_codice').asstring := tabella_righe.fieldbyname('tma_codice').asstring;
      mmr.fieldbyname('cms_codice').asstring := tabella_righe.fieldbyname('cms_codice').asstring;
      mmr.fieldbyname('tipologia').asstring := tabella_righe.fieldbyname('tipologia').asstring;
    end
    else
    begin
      if tabella_righe.fieldbyname('tma_codice_collegato').asstring <> '' then
      begin
        mmr.fieldbyname('tma_codice').asstring := tabella_righe.fieldbyname('tma_codice_collegato').asstring;
      end
      else
      begin
        mmr.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice_collegato').asstring;
      end;
    end;
    mmr.fieldbyname('quantita').asfloat := arrotonda(tabella_righe.fieldbyname('tum_quantita_base').asfloat, 4);
    mmr.fieldbyname('quantita_entrate').asfloat := 0;
    mmr.fieldbyname('quantita_uscite').asfloat := 0;
    read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring, 'esistenza');
    if archivio.fieldbyname('esistenza').asstring = 'incrementa' then
    begin
      mmr.fieldbyname('quantita_entrate').asfloat := mmr.fieldbyname('quantita').asfloat;
    end;
    if archivio.fieldbyname('esistenza').asstring = 'decrementa' then
    begin
      mmr.fieldbyname('quantita_uscite').asfloat := mmr.fieldbyname('quantita').asfloat;
    end;

    if tabella.fieldbyname('listino_con_iva').asstring = 'no' then
    begin
      mmr.fieldbyname('prezzo').asfloat := tabella_righe.fieldbyname('prezzo').asfloat;
      mmr.fieldbyname('importo').asfloat := tabella_righe.fieldbyname('importo').asfloat;
      mmr.fieldbyname('importo_euro').asfloat := tabella_righe.fieldbyname('importo_euro').asfloat;
    end
    else
    begin
      read_tabella(arc.arcdit, 'tiv', 'codice', tabella_righe.fieldbyname('tiv_codice').asstring, 'percentuale');
      mmr.fieldbyname('prezzo').asfloat := arc.scorporo(tabella_righe.fieldbyname('prezzo').asfloat, archivio.fieldbyname('percentuale').asfloat, decimali_max_prezzo_acq);
      mmr.fieldbyname('importo').asfloat := arrotonda(tabella_righe.fieldbyname('importo').asfloat - tabella_righe.fieldbyname('importo_iva').asfloat);
      mmr.fieldbyname('importo_euro').asfloat := arrotonda(tabella_righe.fieldbyname('importo_euro').asfloat - tabella_righe.fieldbyname('importo_iva_euro').asfloat);
    end;

    mmr.fieldbyname('tsm_codice').asstring := tabella_righe.fieldbyname('tsm_codice').asstring;
    mmr.fieldbyname('tsm_codice_art').asstring := tabella_righe.fieldbyname('tsm_codice_art').asstring;
    mmr.fieldbyname('importo_sconto').asfloat := tabella_righe.fieldbyname('importo_sconto').asfloat;
    mmr.fieldbyname('tipo_movimento').asstring := tabella_righe.fieldbyname('tipo_movimento').asstring;

    if art.fieldbyname('tum_codice').asstring <> tabella_righe.fieldbyname('tum_codice').asstring then
    begin
      cifre_decimali_prezzo_acq := decimali_prezzo_acq(tabella.fieldbyname('tva_codice').asstring);
      try
        mmr.fieldbyname('prezzo').asfloat := arrotonda
          (tabella_righe.fieldbyname('importo_euro').asfloat / tabella_righe.fieldbyname('tum_quantita_base').asfloat, cifre_decimali_prezzo_acq);
        mmr.fieldbyname('tsm_codice').asstring := '';
        mmr.fieldbyname('tsm_codice_art').asstring := '';
        mmr.fieldbyname('importo_sconto').asfloat := 0;
      except
      end;
    end;

    mmr.post;

    esegui_ubicazioni_magazzino(mmt.fieldbyname('tmo_codice').asstring, mmr.fieldbyname('tma_codice').asstring);
  end;
end;

procedure TGESACQ.cancella_magazzino(tmo_codice: string);
begin
  mmt.sql.clear;
  mmt.sql.add('select *');
  mmt.sql.add('from mmt');
  mmt.sql.add('where documento_origine = :documento_origine');
  mmt.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');
  mmt.sql.add('and tmo_codice = :tmo_codice');
  mmt.params[0].asstring := tabella.fieldbyname('tipo_documento').asstring + ' acq';
  mmt.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  mmt.params[2].asstring := tmo_codice;
  mmt.close;
  mmt.open;
  if not mmt.eof then
  begin
    mmr.close;
    mmr.sql.clear;
    mmr.sql.add('select *');
    mmr.sql.add('from mmr');
    mmr.sql.add('where progressivo = :progressivo');
    mmr.sql.add('and doc_riga_origine = :doc_riga_origine');
    mmr.params[0].asinteger := mmt.fieldbyname('progressivo').asinteger;
    mmr.params[1].asinteger := tabella_righe.fieldbyname('riga').asinteger;
    mmr.open;
    if mmr.isempty then
    begin
      mmr.sql.clear;
      mmr.sql.add('select *');
      mmr.sql.add('from mmr');
      mmr.sql.add('where progressivo = :progressivo');
      mmr.sql.add('and art_codice = :art_codice');
      mmr.sql.add('and quantita = :quantita');
      mmr.sql.add('and tipo_movimento = :tipo_movimento');

      mmr.params[0].asfloat := mmt.fieldbyname('progressivo').asfloat;
      mmr.params[1].asstring := tabella_righe.fieldbyname('art_codice').asstring;
      mmr.params[2].asfloat := tabella_righe.fieldbyname('quantita').asfloat;
      mmr.params[3].asstring := tabella_righe.fieldbyname('tipo_movimento').asstring;

      mmr.close;
      mmr.open;
    end;

    cancella_magazzino_dettaglio;
  end;
end;

procedure TGESACQ.cancella_magazzino_dettaglio;
begin
  if not mmr.eof then
  begin
    if arc.dit.fieldbyname('gestione_taglie').asstring = 'si' then
    begin
      qtatgl.close;
      qtatgl.parambyname('modulo').asstring := 'magazzino';
      qtatgl.parambyname('tipo_documento').asstring := '';
      qtatgl.parambyname('progressivo').asinteger := mmr.fieldbyname('progressivo').asinteger;
      qtatgl.parambyname('riga').asinteger := mmr.fieldbyname('riga').asinteger;
      qtatgl.open;
      if not qtatgl.isempty then
      begin
        qtatgl.delete;
      end;
    end;

    mmr.delete;

    mmr.sql.clear;
    mmr.sql.add('select *');
    mmr.sql.add('from mmr');
    mmr.sql.add('where progressivo = :progressivo');
    mmr.params[0].asfloat := mmt.fieldbyname('progressivo').asfloat;
    mmr.close;
    mmr.open;
    if mmr.eof then
    begin
      mmt.delete;
    end;
  end;
end;

procedure TGESACQ.aggiorna_spese_movmag(tutto: boolean = false);
begin
  if (tabella.fieldbyname('tmo_codice').asstring <> '') and
    ((tabella_righe.fieldbyname('situazione').asstring = 'evaso') or tutto) then
  begin
    spese_acq.leggo_spese(tabella.fieldbyname('progressivo').asinteger);

    spese_acq.aggiorna_mmr(mmt.fieldbyname('progressivo').asinteger);
    spese_acq.residuo;
  end;
end;

procedure TGESACQ.aggiorna_spese_movmag_differita;
var
  dar: tmyquery_go;
begin
  dar := tmyquery_go.create(nil);
  dar.connection := arc.arcdit;
  dar.sql.text := 'select distinct dar.progressivo from far ' +
    'inner join dar on dar.progressivo = far.doc_progressivo_origine and dar.riga = far.doc_riga_origine ' +
    'where far.documento_origine = ''ddt acq'' and far.progressivo = ' + tabella.fieldbyname('progressivo').asstring;
  dar.open;

  spese_acq.leggo_spese(tabella.fieldbyname('progressivo').asinteger);

  while not dar.eof do
  begin
    mmt.close;
    mmt.sql.clear;
    mmt.sql.add('select *');
    mmt.sql.add('from mmt');
    mmt.sql.add('where documento_origine = :documento_origine');
    mmt.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');
    mmt.params[0].asstring := 'ddt acq';
    mmt.params[1].asinteger := dar.fieldbyname('progressivo').asinteger;
    mmt.open;

    spese_acq.aggiorna_mmr(mmt.fieldbyname('progressivo').asinteger);

    dar.next;
  end;

  spese_acq.residuo;

  dar.free;
end;

procedure TGESACQ.before_delete_righe;
var
  progressivo: integer;
  prosegui, visualizzato_messaggio: boolean;
  i: word;
  iat, opr_app, ovr, opc: tmyquery_go;
begin
  prosegui := true;

  if not prosegui then
  begin
    tabella.cancel;
    tabella.refresh;
    tabella_righe.refresh;
    fuoco(v_griglia_righe);
    abort;
  end
  else
  begin
    inherited;

    //  aggiorna taglie documento origine
    if (arc.dit.fieldbyname('gestione_taglie').asstring = 'si') and v_quantita.readonly then
    begin
      // se ho un documento origine ripristino le righe
      if (tabella_righe.fieldbyname('documento_origine').asstring <> '') then
      begin
        duplica_righe_tgl.close;
        duplica_righe_tgl.parambyname('modulo').asstring := 'acquisti';
        duplica_righe_tgl.parambyname('tipo_documento').asstring := tipo_documento;
        duplica_righe_tgl.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
        duplica_righe_tgl.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
        duplica_righe_tgl.open;
        if not duplica_righe_tgl.isempty then
        begin
          qtatgl.close;
          qtatgl.parambyname('modulo').asstring := 'acquisti';
          qtatgl.parambyname('tipo_documento').asstring :=
            copy(tabella_righe.fieldbyname('documento_origine').asstring, 1,
            pos(' acq', tabella_righe.fieldbyname('documento_origine').asstring) - 1);
          qtatgl.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
          qtatgl.parambyname('riga').asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
          qtatgl.open;
          if not qtatgl.isempty and tabella_edit(qtatgl) then
          begin
            for i := 1 to 20 do
            begin
              qtatgl.fieldbyname('qta_' + setta_lunghezza(i, 2, 0, '0') + '_evasa').asinteger :=
                qtatgl.fieldbyname('qta_' + setta_lunghezza(i, 2, 0, '0') + '_evasa').asinteger -
                duplica_righe_tgl.fieldbyname('qta_' + setta_lunghezza(i, 2, 0, '0')).asinteger;
            end;
            qtatgl.post;
          end;
        end;
      end
      // se non ho un documento origine cancello
      else
      begin
        cancella_qtatgl;
      end;
    end;

    if tabella_righe.fieldbyname('documento_origine').asstring = 'riparazione occasionale' then
    begin
      iat := tmyquery_go.create(nil);
      try
        iat.connection := arc.arcdit;
        iat.sql.add('update iat');
        iat.sql.add('set progressivo_ddtc = 0');
        iat.sql.add('where progressivo = :progressivo');
        iat.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
        iat.execsql;
      finally
        iat.free;
      end;
    end;

    prosegui := true;
    if tabella_righe.fieldbyname('documento_origine').asstring <> '' then
    begin
      if tabella_righe.fieldbyname('saldo_acconto').asstring = 'acconto' then
      begin
        saldo_acconto.close;
        saldo_acconto.sql.clear;
        saldo_acconto.sql.add('select situazione');
        if tabella_righe.fieldbyname('documento_origine').asstring = 'preventivo acq' then
        begin
          saldo_acconto.sql.add('from rar');
        end
        else if tabella_righe.fieldbyname('documento_origine').asstring = 'ordine acq' then
        begin
          saldo_acconto.sql.add('from oar');
        end
        else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt acq' then
        begin
          saldo_acconto.sql.add('from dar');
        end
        else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt cos acq' then
        begin
          saldo_acconto.sql.add('from dar');
        end
        else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt ven' then
        begin
          saldo_acconto.sql.add('from dvr');
        end;
        saldo_acconto.sql.add('where progressivo = :progressivo and riga = :riga');
        saldo_acconto.params[0].asfloat := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
        saldo_acconto.params[1].asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
        saldo_acconto.open;

        if ((saldo_acconto.fieldbyname('situazione').asstring = 'consolidato') and
          ((tabella_righe.fieldbyname('documento_origine').asstring = 'ddt acq') or
          (tabella_righe.fieldbyname('documento_origine').asstring = 'ddt cos acq'))) or
          (saldo_acconto.fieldbyname('situazione').asstring = 'evaso') then
        begin
          prosegui := false;
          messaggio(000, 'la riga di origine del documento è evasa a saldo' + #13 +
            'prima va gestita la riga che ha eseguito l''evasione a saldo del documento');
        end;
      end;
    end;

    if prosegui then
    begin
      if tabella_righe.fieldbyname('situazione').asstring <> 'annullato' then
      begin
        read_tabella(arc.arcdit, 'tmo', 'codice', tabella.fieldbyname('tmo_codice').asstring, 'tmo_codice_dsb');
        if (tabella_righe.fieldbyname('situazione').asstring = 'evaso') and
          (archivio.fieldbyname('tmo_codice_dsb').asstring <> '') and (tabella.fieldbyname('tmo_codice').asstring <> '') then
        begin
          messaggio(000, 'poichè il documento prevede lo scarico automatico della distinta base' + #13 +
            'non è possibile eseguire la cancellazione in situazione di [evaso]' + #13 +
            'eseguire lo storno per riportare la situazione a [inserito]');
          abort;
        end
        else
        begin
          aggiorna_totali_testata := true;

          if (tabella.fieldbyname('accettato').asstring = 'si') and
            (tabella.fieldbyname('situazione').asstring <> 'evaso') then
          begin
            if tabella_edit(tabella) then
            begin
              assegna_utn_codice_accettazione;
              tabella.post;
            end;
          end;

          if tabella_righe.fieldbyname('art_codice').asstring <> '' then
          begin
            cmm.close;
            cmm.sql.clear;
            cmm.sql.add('select * from cmm');
            cmm.sql.add('where documento_origine = :codice0 ');
            cmm.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
            cmm.params[0].AsString := tipo_documento + ' acq';
            cmm.params[1].Asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
            cmm.params[2].AsInteger := tabella_righe.fieldbyname('riga').asinteger;
            cmm.open;
            cmm.first;
            if not cmm.eof then
            begin
              visualizzato_messaggio := true;
              if ripeti_messaggio <> 'no' then
              begin
                messaggio(100, 'i movimenti delle commesse collegati verranno cancellati');
              end;
            end;
            while not cmm.eof do
            begin
              cmm.delete;
            end;

            cem.close;
            cem.sql.clear;
            cem.sql.add('select * from cem');
            cem.sql.add('where documento_origine = :codice0');
            cem.sql.add('and doc_progressivo_origine = :codice2 and doc_riga_origine = :codice3');
            cem.params[0].AsString := tipo_documento + ' acq';
            cem.params[1].Asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
            cem.params[2].AsInteger := tabella_righe.fieldbyname('riga').asinteger;
            cem.open;
            cem.first;
            if not cem.eof then
            begin
              visualizzato_messaggio := true;
              if ripeti_messaggio <> 'no' then
              begin
                messaggio(100, 'i movimenti della contabilità analitica collegati verranno cancellati');
              end;
            end;
            while not cem.eof do
            begin
              cem.delete;
            end;

            ltm.close;
            ltm.sql.text := 'select * from ltm where documento_origine = :documento_origine ' +
              'and doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
            ltm.params[0].asstring := tipo_documento + ' acq';
            ltm.params[1].asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
            ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
            ltm.open;
            ltm.first;
            if not ltm.eof then
            begin
              visualizzato_messaggio := true;
              if ripeti_messaggio <> 'no' then
              begin
                messaggio(100, 'i movimenti dei lotti collegati verranno cancellati');
              end;
            end;
            while not ltm.eof do
            begin
              ltm.delete;
            end;

            //  ubicazioni
            ubm.close;
            ubm.sql.text := 'delete from ubm where documento_origine = :documento_origine and ' +
              'doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
            ubm.parambyname('documento_origine').asstring := tipo_documento + ' acq';
            ubm.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
            ubm.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
            ubm.execsql;

            // rma
            if tipo_documento = 'ddt clienti' then
            begin
              rma.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
              rma.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
              rma.cancella_rmt;
            end
            else if (tipo_documento = 'ddt') or (tipo_documento = 'fattura') or (tipo_documento = 'nota credito') then
            begin
              rma.modulo := 'acquisti';
              rma.tipo_documento := tipo_documento;
              rma.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
              rma.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
              rma.cancella_rmr;
            end;

            // non conformità
            // cancella righe (serve se il movimento è un'azione di aggiornamento)
            nca.modulo_origine := 'acq';
            nca.documento_origine := tipo_documento;
            nca.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
            nca.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
            nca.cancella_ncr;

            // cancella righe (serve se il movimento è un'azione di creazione nca)
            nca.modulo_origine := 'acq';
            nca.documento_origine := tabella.fieldbyname('tipo_documento').asstring;
            nca.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
            nca.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
            nca.cancella_nct;

            lct.sql.clear;
            lct.sql.add('select * from lct');
            lct.sql.add('where documento_origine = :codice0 ');
            lct.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
            lct.params[0].AsString := tipo_documento + ' acq';
            lct.params[1].Asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
            lct.params[2].AsInteger := tabella_righe.fieldbyname('riga').asinteger;
            lct.close;
            lct.open;
            lct.first;
            if not lct.eof then
            begin
              lcr.params[0].asfloat := lct.fieldbyname('progressivo').asfloat;
              lcr.close;
              lcr.open;
              if lcr.eof then
              begin
                visualizzato_messaggio := true;
                if ripeti_messaggio <> 'no' then
                begin
                  messaggio(100, 'i movimenti delle lavorazioni conto terzi collegati verranno cancellati');
                end;

                while not lct.eof do
                begin
                  lct.delete;
                end;
              end
              else
              begin
                messaggio(000, 'sono presenti movimenti di lavorazioni conto terzi con il progressivo ' +
                  floattostr(lct.fieldbyname('progressivo').asfloat) + #13 +
                  'che non possono essere cancellati perchè sono stati movimentati');
              end;
            end;

            // aggiorna movimento di magazzino
            if (tabella_righe.fieldbyname('situazione').asstring = 'evaso') and
              (tabella.fieldbyname('tmo_codice').asstring <> '') then
            begin
              cancella_magazzino(tabella.fieldbyname('tmo_codice').asstring);

              if tabella.fieldbyname('tmo_codice_collegato').asstring <> '' then
              begin
                cancella_magazzino(tabella.fieldbyname('tmo_codice_collegato').asstring);
              end;
            end;

            // tabella.refresh;
          end;
        end;

        aggiorna_rda;

        //  aggiorna fase
        if (tabella_righe.fieldbyname('documento_origine').asstring = 'produzione') and
          (tabella_righe.fieldbyname('doc_progressivo_origine').asinteger <> 0) and
          (tabella_righe.fieldbyname('doc_riga_origine').asinteger <> 0) then
        begin
          opc := tmyquery_go.create(nil);
          opc.connection := arc.arcdit;

          try
            opc.sql.add('update opc set situazione = ''inserita'' where id = :id');
            opc.parambyname('id').asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
            opc.execsql;
          finally
            opc.free;
          end;
        end;
      end;

      if (tabella_righe.fieldbyname('art_codice').asstring <> '') and
        (tda.fieldbyname('acquisto_call_off_stock').asstring = 'si') then
      begin
        cos.aggiorna(tabella_righe.fieldbyname('progressivo').asinteger, tabella_righe.fieldbyname('riga').asinteger,
          tabella_righe.fieldbyname('numero_colli').asinteger, tabella_righe.fieldbyname('numero_confezioni').asinteger,
          tabella_righe.fieldbyname('tum_quantita_base').asfloat, tabella_righe.fieldbyname('quantita').asfloat,
          tabella_righe.fieldbyname('importo_sconto').asfloat, tabella_righe.fieldbyname('importo').asfloat,
          tabella_righe.fieldbyname('id').asinteger);
      end;

      if tabella_righe.fieldbyname('situazione').asstring = 'evaso' then
      begin
        //  approntato ordini clienti
        ovr := tmyquery_go.create(nil);
        ovr.connection := arc.arcdit;
        ovr.sql.add('select ovr.*');
        ovr.sql.add('from ovr');
        ovr.sql.add('inner join oar on oar.ovr_tipo = ''cliente'' and oar.progressivo = :progressivo and oar.riga = :riga');
        ovr.sql.add('where ovr.progressivo = oar.ovr_progressivo');
        ovr.sql.add('and ovr.riga = oar.ovr_riga');

        try
          if read_tabella(ovr, vararrayof([tabella_righe.fieldbyname('doc_progressivo_origine').asinteger,
            tabella_righe.fieldbyname('doc_riga_origine').asinteger])) then
          begin
            if tabella_edit(ovr) then
            begin
              ovr.fieldbyname('quantita_approntata').asfloat := ovr.fieldbyname('quantita_approntata').asfloat -
                tabella_righe.fieldbyname('quantita').asfloat;
              ovr.fieldbyname('tum_quantita_approntata_base').asfloat := ovr.fieldbyname('tum_quantita_approntata_base').asfloat -
                tabella_righe.fieldbyname('tum_quantita_base').asfloat;

              if ovr.fieldbyname('quantita_approntata').asfloat = 0 then
              begin
                ovr.fieldbyname('saldo_acconto_approntato').asstring := '';
                ovr.fieldbyname('evadere_approntato').asstring := '';
              end
              else if ovr.fieldbyname('quantita_approntata').asfloat >=
                ovr.fieldbyname('quantita').asfloat - ovr.fieldbyname('quantita_evasa').asfloat then
              begin
                ovr.fieldbyname('saldo_acconto_approntato').asstring := 'saldo';
                ovr.fieldbyname('evadere_approntato').asstring := 'si';
              end
              else
              begin
                ovr.fieldbyname('saldo_acconto_approntato').asstring := 'acconto';
                ovr.fieldbyname('evadere_approntato').asstring := 'no';
              end;

              ovr.post;
            end;
          end;
        finally
          ovr.free;
        end;

        //  approntato produzione
        opr_app := tmyquery_go.create(nil);
        opr_app.connection := arc.arcdit;
        opr_app.sql.add('update opr');
        opr_app.sql.add('set quantita_approntata = quantita_approntata - :quantita');
        opr_app.sql.add('where documento_origine_app = :documento');
        opr_app.sql.add('and doc_progressivo_origine_app = :progressivo');
        opr_app.sql.add('and doc_riga_origine_app = :riga');

        try
          opr_app.parambyname('documento').asstring := tipo_documento + ' acq';
          opr_app.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
          opr_app.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
          opr_app.parambyname('quantita').asfloat := tabella_righe.fieldbyname('quantita').asfloat;
          opr_app.execsql;
        finally
          opr_app.free;
        end;
      end;

      if visualizzato_messaggio and (ripeti_messaggio = 'testata') then
      begin
        if messaggio(304, 'ripetere i messaggi di avviso per le altre righe') <> 1 then
        begin
          ripeti_messaggio := 'no';
        end
        else
        begin
          ripeti_messaggio := 'si';
        end;
      end;
    end
    else
    begin
      abort;
    end;
  end;
end;

procedure TGESACQ.aggiorna_rda;
var
  aggiorna_rdo: tmyquery_go;
begin
  if (tabella_righe.fieldbyname('documento_origine').asstring = 'rda') then
  begin
    aggiorna_rdo := tmyquery_go.create(nil);
    aggiorna_rdo.connection := arc.arcdit;

    try
      if tipo_documento = 'preventivo' then
      begin
        aggiorna_rdo.close;
        aggiorna_rdo.sql.text := 'delete from rdo where progressivo = :progressivo and frn_codice = :frn_codice';
        aggiorna_rdo.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
        aggiorna_rdo.parambyname('frn_codice').asstring := tabella.fieldbyname('frn_codice').asstring;
        aggiorna_rdo.execsql;

        aggiorna_rdo.close;
        aggiorna_rdo.sql.text := 'update rda set situazione = '''' where progressivo = :progressivo ' +
          'and not exists(select id from rar where documento_origine = ''rda'' ' +
          'and doc_progressivo_origine = rda.progressivo and rar.id <> :id)';
        aggiorna_rdo.parambyname('id').asinteger := tabella_righe.fieldbyname('id').asinteger;
        aggiorna_rdo.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
        aggiorna_rdo.execsql;
      end;

      if tipo_documento = 'ordine' then
      begin
        aggiorna_rdo.close;
        aggiorna_rdo.sql.text := 'update rda set situazione = '''' where progressivo = :progressivo';
        aggiorna_rdo.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
        aggiorna_rdo.execsql;
      end;
    finally
      aggiorna_rdo.free;
    end;
  end;
end;

procedure TGESACQ.after_delete_righe;
begin
  inherited;
  aggiorna_spese_movmag;
end;

procedure TGESACQ.pannello_campiEnter(Sender: TObject);
begin
  if esiste then
  begin
    tool_assegna_immagine.enabled := true;
    tool_visualizza_immagine.enabled := true;
    if (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
    begin
      tool_documenti_allegati.enabled := true;
    end
    else
    begin
      tool_documenti_allegati.enabled := false;
    end;
    if tipo_documento = 'preventivo' then
    begin
      tool_invia_excel.enabled := true;
      tool_ricevi_excel.enabled := true;
    end
    else
    begin
      tool_invia_excel.enabled := true;
      tool_ricevi_excel.enabled := false;
    end;
  end
  else
  begin
    tool_assegna_immagine.enabled := false;
    tool_visualizza_immagine.enabled := false;
    tool_documenti_allegati.enabled := false;
    tool_invia_excel.enabled := false;
    tool_ricevi_excel.enabled := false;
  end;

  if not esiste and (tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine') and
    ((esercizio_chiuso = 'si') or (esercizio_chiuso_magazzino = 'si')) then
  begin
    messaggio(000, 'l''esercizio è stato dichiarato chiuso');
    fuoco(v_progressivo);
    abort;
  end
  else
  begin
    inherited;

    if modula and esiste and (v_tma_codice.text <> '') and
      ((tipo_documento = 'ddt') or (tipo_documento = 'fattura') or (tipo_documento = 'ordine')) then
    begin
      abilita_campo(v_modula);
    end
    else
    begin
      disabilita_campo(v_modula);
    end;

    if esiste then
    begin
      v_tda_codice.enabled := false;
      v_tda_codice.color := clbtnface;
    end
    else
    begin
      v_tda_codice.enabled := true;
      v_tda_codice.color := clwindow;
    end;

    eseguito_gesdocgri := false;

    variato_stringa := v_numero_documento_alfa.text;

    abilita_campo(tool_assegna_immagine);
    if read_tabella(arc.arcdit, 'ard', 'tipo_archivio_go;progressivo_archivio_go',
      vararrayof([tabella_tablename, v_progressivo.value])) then
    begin
      abilita_campo(tool_visualizza_immagine);
    end
    else
    begin
      disabilita_campo(tool_visualizza_immagine);
    end;

    abilita_bottoni_analitica(true);
    ultimo_cms_codice := '';
    ultimo_tipologia := '';

    progressivo_prodter := 0;
    riga_prodter := 0;

    if esiste then
    begin
      abilita_campo(v_totalizza);
    end
    else
    begin
      disabilita_campo(v_totalizza);
    end;

    if esiste and (tipo_documento = 'ordine') then
    begin
      abilita_campo(v_situazione_acconto);
    end
    else
    begin
      disabilita_campo(v_situazione_acconto);
    end;

    abilita_bottone_dati_extra_testata;

    if esiste and supervisore_utente then
    begin
      v_bloccato.enabled := true;
    end
    else
    begin
      v_bloccato.enabled := false;
    end;

    if esiste and (tipo_documento <> 'ddt clienti') then
    begin
      if (((tipo_documento = 'preventivo') or (tipo_documento = 'ordine')) and (tabella.fieldbyname('situazione').asstring <> 'evaso')) or
        ((tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine') and (tabella.fieldbyname('situazione').asstring <> 'consolidato')) then
      begin
        v_pagper.enabled := true;
      end
      else
      begin
        v_pagper.enabled := false;
      end;
    end
    else
    begin
      v_pagper.enabled := false;
    end;

    if esiste and (tipo_documento = 'preventivo') then
    begin
      v_log_revisione.enabled := true;
      if tabella.fieldbyname('situazione').asstring = 'inserito' then
      begin
        v_revisione_documento.enabled := true;
      end
      else
      begin
        v_revisione_documento.enabled := false;
      end;
    end;

    if esiste and (tabella.fieldbyname('tipo_documento').asstring <> tipo_documento) then
    begin
      messaggio(000, 'il tipo documento selezionato non è gestibile con il programma utilizzato');
      abilita_codice;
    end
    else
    begin
      if (tabella.fieldbyname('situazione').asstring <> 'evaso') and
        ((tipo_documento = 'ordine') or (tipo_documento = 'preventivo')) then
      begin
        v_annulla_documento.enabled := true;
      end
      else
      begin
        v_annulla_documento.enabled := false;
      end;

      abilita_storni(true);
      attiva_esiste(false);
      abilita_tipo_documento;
      v_esistenza.enabled := false;

      if v_percipienti.checked then
      begin
        v_bottone_percipienti.enabled := true;
      end
      else
      begin
        v_bottone_percipienti.enabled := false;
      end;

      if not esiste then
      begin
        tda_codice_controllo(true);
      end;

      numero_documento := 0;
      numero_documento_precedente := 0;
      data_precedente := 0;

      if esiste then
      begin
        if (tipo_documento <> 'fattura differita') and
          (arc_prg.fieldbyname('abr_id').asinteger = 0) then
        begin
          tool_f7.enabled := true;
        end;

        tda_codice_controllo(true);
      end;
    end;
  end;
end;

procedure TGESACQ.abilita_storni(flag: boolean);
begin
  if parte_attiva = 'pannello_campi' then
  begin
    tab_pannello_bottoni_nuovi_storni.color := clbtnface;

    if flag then
    begin
      if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti') or (tipo_documento = 'fattura') or
        (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito')) and
        (v_situazione.text = 'evaso') then
      begin
        tab_pannello_bottoni_nuovi_storni.color := claqua;

        v_storno_evasione.enabled := true;
      end
      else
      begin
        v_storno_evasione.enabled := false;
      end;

      if ((tipo_documento = 'fattura') or
        (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito')) and
        (v_situazione.text = 'consolidato') then
      begin
        tab_pannello_bottoni_nuovi_storni.color := clfuchsia;

        v_storno_evasione.enabled := false;
        v_storno_consolidamento.enabled := true;
      end
      else
      begin
        v_storno_consolidamento.enabled := false;
      end;

      if ((tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito')) and
        (v_situazione.text = 'inserito') then
      begin
        tab_pannello_bottoni_nuovi_storni.color := cllime;

        v_storno_differite.enabled := true;
      end
      else
      begin
        v_storno_differite.enabled := false;
      end;

      if ((tipo_documento = 'fattura') or
        (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito')) and
        (v_situazione.text = 'evaso') then
      begin
        v_consolida.enabled := true;
      end
      else
      begin
        v_consolida.enabled := false;
      end;
    end
    else
    begin
      tab_pannello_bottoni_nuovi_storni.color := clbtnface;

      v_storno_evasione.enabled := false;
      v_storno_consolidamento.enabled := false;
      v_storno_differite.enabled := false;
      v_consolida.enabled := false;
    end
  end
  else
  begin
    tab_pannello_bottoni_nuovi_storni.color := clbtnface;

    v_storno_evasione.enabled := false;
    v_storno_consolidamento.enabled := false;
    v_storno_differite.enabled := false;
    v_consolida.enabled := false;
  end;
end;

procedure TGESACQ.assegna_decimali;
begin
  cifre_decimali_prezzo_acq := decimali_prezzo_acq(v_tva_codice.text);
  cifre_decimali_importo := decimali_importo(v_tva_codice.text);
end;

procedure TGESACQ.v_tda_codiceEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_tda_codice.text;
  visarc_filtro_01 := tipo_documento;

  if utntda.isempty then
  begin
    v_tda_codice.lookcollvisname := 'TDZ';
  end
  else
  begin
    v_tda_codice.lookcollvisname := 'TDAUTN';
    visarc_filtro_02 := utente;
  end;
end;

procedure TGESACQ.v_non_conformitaClick(Sender: TObject);
begin
  inherited;
  nca.data_registrazione := tabella.fieldbyname('data_registrazione').asdatetime;
  nca.art_codice := tabella_righe.fieldbyname('art_codice').asstring;
  if tipo_documento <> 'ddt clienti' then
  begin
    nca.frn_codice := tabella.fieldbyname('frn_codice').asstring;
  end
  else
  begin
    nca.frn_codice := '';
  end;
  nca.quantita_lotto := tabella_righe.fieldbyname('quantita').asfloat;
  nca.modulo_origine := 'acq';
  nca.documento_origine := tabella.fieldbyname('tipo_documento').asstring;
  nca.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
  nca.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
  nca.crea_nct;
  if v_tbp_codice.enabled and (tabella.fieldbyname('tbp_codice').asstring = '') then
  begin
    messaggio(100, 'ricordiamo che è possibile inidcare un codice blocco per il documento' + #13#10 +
      'nella cartella "pagamento" dei dati di testata');
  end;
end;

procedure TGESACQ.v_numero_colli_rigaEnter(Sender: TObject);
begin
  inherited;
  variato_importo := trunc(v_numero_colli_riga.value);
end;

procedure TGESACQ.v_numero_colli_rigaExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    if trunc(variato_importo) <> trunc(v_numero_colli_riga.value) then
    begin
      controllo_numero_colli_evasi;

      calcola_quantita_colli;

      if tabella_righe.fieldbyname('artp_codice').asstring = '' then
      begin
        cerca_prezzo;
      end;
      assegna_valore_prezzo;
      calcola_importo;
      attiva_importo;
    end;
  end;
end;

procedure TGESACQ.v_numero_confezioniEnter(Sender: TObject);
begin
  inherited;
  variato_importo := trunc(v_numero_confezioni.value);
end;

procedure TGESACQ.v_numero_confezioniExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    if trunc(variato_importo) <> trunc(v_numero_confezioni.value) then
    begin
      controllo_numero_confezioni_evase;
      calcola_quantita_confezioni;

      if tabella_righe.fieldbyname('artp_codice').asstring = '' then
      begin
        cerca_prezzo;
      end;
      assegna_valore_prezzo;
      calcola_importo;
      attiva_importo;
    end;
  end;
end;

procedure TGESACQ.calcola_quantita_colli;
var
  decimali: word;
begin
  if not art.eof then
  begin
    assegna_quantita_colli(tabella_righe, art, tda, decimali_quantita_art(v_art_codice.text),
      'numero_colli', 'numero_confezioni', 'quantita');

    assegna_tum_quantita_base;

    controllo_quantita_evasa;
    assegna_valore_prezzo;
    calcola_importo;
  end;
end;

procedure TGESACQ.v_numero_documentoEnter(Sender: TObject);
var
  anno, mese, giorno: word;
  tipo_numerazione: string;
  numero_documento: double;
  progressivo: integer;
  numerazione_automatica: tmyquery_go;
begin
  inherited;

  variato_importo := v_numero_documento.value;

  if tda.fieldbyname('numerazione_automatica').asstring = 'si' then
  begin

    numerazione_automatica := tmyquery_go.create(nil);
    numerazione_automatica.connection := arc.arcdit;
    numerazione_automatica.sql.add('select max(numero_documento) numero_documento');
    numerazione_automatica.sql.add('from fat');
    numerazione_automatica.sql.add('where tda_codice = :tda_codice and year(data_documento) = :anno');

    try
      numerazione_automatica.parambyname('tda_codice').asstring := tabella.fieldbyname('tda_codice').asstring;
      decodedate(tabella.fieldbyname('data_documento').asdatetime, anno, mese, giorno);
      numerazione_automatica.parambyname('anno').asinteger := anno;
      numerazione_automatica.open;
      if numerazione_automatica.isempty then
      begin
        numero_documento := 1;
      end
      else
      begin
        numero_documento := numerazione_automatica.fieldbyname('numero_documento').asfloat + 1;
      end;
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('numero_documento').asfloat := numero_documento;
      end;
    finally
      numerazione_automatica.free;
    end;
  end;

  if (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
  begin
    if tipo_documento = 'ordine' then
    begin
      tipo_numerazione := 'ORDINI FORNITORI';
    end
    else if tipo_documento = 'preventivo' then
    begin
      tipo_numerazione := 'PREVENTIVI FORNITORI';
    end;

    assegna_numerazione_enter(arc.arcdit, tabella, v_data_documento.date, tipo_numerazione, v_serie_documento.text, v_numero_documento, 'numero_documento');
  end;
end;

procedure TGESACQ.v_data_competenza_plafondExit(Sender: TObject);
begin
  inherited;

  date_competenza_controllo;
end;

procedure TGESACQ.v_data_consegnaExit(Sender: TObject);
begin
  inherited;
  if (v_data_consegna.date <> 0) and (v_data_consegna.date < v_data_documento.date) then
  begin
    messaggio(200, 'data consegna inferiore alla data documento');
  end;
end;

procedure TGESACQ.v_data_consegna_righeExit(Sender: TObject);
begin
  inherited;
  if (v_data_consegna_righe.date <> 0) and (v_data_consegna_righe.date < v_data_documento.date) then
  begin
    messaggio(200, 'data consegna inferiore alla data documento');
  end;
end;

procedure TGESACQ.v_data_documentoEnter(Sender: TObject);
begin
  inherited;
  variato_data := v_data_documento.date;
  if v_data_documento.date = 0 then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('data_documento').asstring := tabella.fieldbyname('data_registrazione').asstring;
    end;
  end;
end;

procedure TGESACQ.v_frn_codiceEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_frn_codice.text;
  if (not((tipo_documento = 'preventivo') or
    (((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '')))) and
    (not esiste) then
  begin
    v_frn_codice.hint := 'codice fornitore [F4 F5 F6] [F9 = elenco documenti da evadere]';
  end
  else
  begin
    v_frn_codice.hint := 'codice fornitore [F4 F5 F6]';
  end;
end;

procedure TGESACQ.pannello_codiceEnter(Sender: TObject);
var
  fido_frn: tfido_frn;
begin
  if storno_differite then
  begin
    tabella.refresh;
  end;
  storno_differite := false;

  progressivo_documento_evadere := 0;

  avviso_differite := false;

  if (aggiorna_totali_testata) and (v_progressivo.value <> 0) then
  begin
    no_scroll := true;

    if (tabella.fieldbyname('stampato').asstring <> '') and tabella_edit(tabella) then
    begin
      if tda.fieldbyname('avvisi_documento_stampato_fornitore').asstring = 'si' then
      begin
        messaggio(100, 'poichè il documento è stato modificato viene resettata la situazione di "stampato" per il fornitore');
      end;
      tabella.fieldbyname('utn_codice_inviato').asstring := '';
      tabella.fieldbyname('stampato').asstring := '';
      tabella.post;
    end;

    totacq.movacq_testata(tmyconnection_go(tabella.connection), tipo_documento, tabella.fieldbyname('progressivo').asinteger);
    tabella.refresh;

    no_scroll := false;
    if (tabella.fieldbyname('importo_totale_digitato').asfloat <> 0) then
    begin
      if nom.fieldbyname('intra').asstring = 'no' then
      begin
        if (tabella.fieldbyname('importo_totale').asfloat <> tabella.fieldbyname('importo_totale_digitato').asfloat) then
        begin
          messaggio(100, 'il totale documento digitato [' + tabella.fieldbyname('importo_totale_digitato').asstring + ']' + #13 +
            'è diverso dal totale della sommatoria delle righe [' + tabella.fieldbyname('importo_totale').asstring + ']');
        end;
      end
      else
      begin
        if (tabella.fieldbyname('importo_totale_imponibile').asfloat <> tabella.fieldbyname('importo_totale_digitato').asfloat) then
        begin
          messaggio(100, 'il totale documento digitato [' + tabella.fieldbyname('importo_totale_digitato').asstring + ']' + #13 +
            'è diverso dal totale della sommatoria delle righe [' + tabella.fieldbyname('importo_totale_imponibile').asstring + ']');
        end;
      end;
    end;

    if (tipo_documento = 'ordine') and (frn.fieldbyname('fido').asfloat <> 0) then
    begin
      fido_frn := tfido_frn.create(arc.arcdit, v_frn_codice.text);
      fido_frn.fuori_fido;
      freeandnil(fido_frn);
    end;
  end;

  if (not esiste_documento) and (stampa_immediata = 'si') and (esiste) then
  begin
    if not tabella_righe.isempty then
    begin
      tool_ctrl_f1.enabled := true;
      stampa;
    end;
  end
  else if (not esiste_documento) and (stampa_immediata_etichette = 'si') and (esiste) then
  begin
    stampa_etichette;
  end;

  inherited;

  stampa_immediata := 'no';

  tab_control.ActivePage := tab_pagina1;
  v_tda_codice.enabled := false;
  v_tda_codice.color := clbtnface;

  if v_progressivo.value <> 0 then
  begin
    attiva_esiste(true);
  end;

  aggiorna_totali_testata := false;
  v_esistenza.enabled := false;
end;

procedure TGESACQ.stampa_etichette;
var
  pr: tetiart;
begin
  genera_tabella_etichette;
  pr := tetiart.create(nil);
  if pr.esegui_form then
  begin
    pr.tabella_ordinamento_gestioni := nome_tabella;
    pr.stampa_lotto_etichette := tda.fieldbyname('stampa_lotto_etichette').asstring;
    pr.origine := 'acquisti';
    pr.showmodal;
  end;
  pr.free;
  sor.close;
end;

procedure TGESACQ.FormCreate(Sender: TObject);
var
  query_righe_sql: string;
  q_utn: tmyquery_go;
begin
  dicint := tdicint.create('F');

  iban := tiban.create;
  movmag := tmovmag.create(arc.arcdit);
  cerca_prezzi := tcerca_prezzo.create(arc.arc, arc.arcdit);
  rma := trma.create;
  nca := tnca.create;
  calsca := tcalsca.create;
  totacq := ttotacq.create;
  qtamin := tqtamin.create;
  spese_acq := tspese_acq.create(tipo_documento);
  cos := tcall_off_stock.create;

  if not supervisore_utente then
  begin
    v_bloccato.enabled := false;
  end;

  read_tabella(utntda, utente);

  cpa.sql.text := 'select gen_codice from cpa where tcf_codice = :tcf_codice and taq_codice = :taq_codice';

  tabella_controllo_art := tmyquery_go.create(self);
  tabella_controllo_art_ds := tmydatasource.create(self);
  tabella_controllo_art_ds.dataset := tabella_controllo_art;
  tabella_controllo_art.connection := arc.arcdit;
  tabella_controllo_art.sql.text := 'select art.codice, art.descrizione1, art.descrizione2, art.obsoleto, art.tum_codice, ' +
    'art.tub_codice, art.var_codice, var.descrizione var_descrizione ' +
    'from art ' +
    'left join var on var.codice = art.var_codice ' +
    'where art.codice = :codice';

  v_var_codice.datasource := tabella_controllo_art_ds;
  v_var_codice.datafield := 'var_codice';
  v_var_descrizione.datasource := tabella_controllo_art_ds;
  v_var_descrizione.datafield := 'var_descrizione';
  v_art_tum_codice.datasource := tabella_controllo_art_ds;
  v_art_tum_codice.datafield := 'tum_codice';
  v_art_tub_codice.datasource := tabella_controllo_art_ds;
  v_art_tub_codice.datafield := 'tub_codice';

  campi_navigatore := 'data_registrazione,registrazione;data_documento,data;numero_documento,numero;tda_codice,documento;frn_codice,intestatario';

  sce_lista_multiselezione := TStringList.Create;
  sce_lista_multiselezione_quantita := TStringList.Create;

  evasione_preventivo_ordine := false;
  art_codice_evasione_preventivo_ordine := '';

  // abilita importi
  if tipo_documento = 'ddt clienti' then
  begin
    if importi_vendite = 'nascondi' then
    begin
      v_l_prezzo.visible := false;
      v_prezzo.visible := false;

      v_l_tsm_codice_righe.visible := false;
      v_tsm_codice_righe.visible := false;
      v_tsm_codice_art.visible := false;

      label17.visible := false;
      v_importo_sconto_righe.visible := false;

      v_l_tipo_movimento.visible := false;
      v_tipo_movimento.visible := false;

      v_l_importo.visible := false;
      v_importo.visible := false;

      v_analitica.enabled := false;
      v_commesse.enabled := false;
      v_conto_terzi.enabled := false;
      v_bottone_dati_extra_testata.enabled := false;
      v_totalizza.enabled := false;
      v_bottone_percipienti.enabled := false;
      v_consolida.enabled := false;
      v_senza_prezzo.enabled := false;
      v_pagper.enabled := false;

      label85.visible := false;
      label86.visible := false;
      v_importo_totale_imponibile.visible := false;
      v_importo_totale.visible := false;

      RzDBEditDescrizione_go19.visible := false;
      RzDBEditDescrizione_go20.visible := false;

      v_griglia_righe.columns[4].visible := false;
      v_griglia_righe.columns[5].visible := false;
      v_griglia_righe.columns[6].visible := false;
      v_griglia_righe.columns[7].visible := false;
      v_griglia_righe.columns[8].visible := false;
    end
    else if importi_vendite = 'visualizza' then
    begin
      v_pagper.enabled := false;

      v_l_prezzo.enabled := false;
      v_prezzo.enabled := false;

      v_l_tsm_codice_righe.enabled := false;
      v_tsm_codice_righe.enabled := false;
      v_tsm_codice_art.enabled := false;
      v_importo_sconto_righe.enabled := false;

      v_l_tipo_movimento.enabled := false;
      v_tipo_movimento.enabled := false;

      v_l_importo.enabled := false;
      v_importo.enabled := false;
    end;
  end
  else
  begin
    if importi_acquisti = 'nascondi' then
    begin
      v_l_prezzo.visible := false;
      v_prezzo.visible := false;

      v_l_tsm_codice_righe.visible := false;
      v_tsm_codice_righe.visible := false;
      v_tsm_codice_art.visible := false;

      label17.visible := false;
      v_importo_sconto_righe.visible := false;

      v_l_tipo_movimento.visible := false;
      v_tipo_movimento.visible := false;

      v_l_importo.visible := false;
      v_importo.visible := false;

      v_analitica.enabled := false;
      v_commesse.enabled := false;
      v_conto_terzi.enabled := false;
      v_bottone_dati_extra_testata.enabled := false;
      v_totalizza.enabled := false;
      v_bottone_percipienti.enabled := false;
      v_consolida.enabled := false;
      v_senza_prezzo.enabled := false;
      v_pagper.enabled := false;

      label85.visible := false;
      label86.visible := false;
      v_importo_totale_imponibile.visible := false;
      v_importo_totale.visible := false;

      RzDBEditDescrizione_go19.visible := false;
      RzDBEditDescrizione_go20.visible := false;

      v_griglia_righe.columns[4].visible := false;
      v_griglia_righe.columns[5].visible := false;
      v_griglia_righe.columns[6].visible := false;
      v_griglia_righe.columns[7].visible := false;
      v_griglia_righe.columns[8].visible := false;
    end
    else if importi_acquisti = 'visualizza' then
    begin
      v_pagper.enabled := false;

      v_l_prezzo.enabled := false;
      v_prezzo.enabled := false;

      v_l_tsm_codice_righe.enabled := false;
      v_tsm_codice_righe.enabled := false;
      v_tsm_codice_art.enabled := false;
      v_importo_sconto_righe.enabled := false;

      v_l_tipo_movimento.enabled := false;
      v_tipo_movimento.enabled := false;

      v_l_importo.enabled := false;
      v_importo.enabled := false;
    end;
  end;

  tipo_prezzo := 'listino acquisto';

  data_registrazione := now;

  art_codice_sconto_cassa_acq := '';
  art_codice_sconti_fattura_acq := '';

  tda_codice := '';
  gestione_lotto_singolo := arc.dit.fieldbyname('gestione_lotto_singolo').asstring;
  art_codice_sconti_fattura_acq := arc.dit.fieldbyname('art_codice_sconti_fattura_acq').asstring;
  art_codice_sconto_cassa_acq := arc.dit.fieldbyname('art_codice_sconto_cassa_acq').asstring;
  art_codice_spese_acq := arc.dit.fieldbyname('art_codice_spese_acq').asstring;
  tiv_codice_omaggi := arc.dit.fieldbyname('tiv_codice_omaggi_acquisto').asstring;
  cancella_documenti_acquisto_evasi := arc.dit.fieldbyname('cancella_documenti_acquisto_eva').asstring;
  if arc.dit.fieldbyname('gestione_valuta').asstring = 'no' then
  begin
    v_tva_codice.tabstop := false;
    v_cambio.tabstop := false;
  end;

  filtro_base := '';
  if arc.dit.fieldbyname('filtro_fatture_acquisto').asstring = 'si' then
  begin
    filtro_base := 'tipo_documento = ' + quotedstr(tipo_documento);
    tabella.filter := filtro_base;
    tabella.filtered := true;
  end;

  query_righe_sql := 'select xxx.*, concat(trim(xxx.descrizione1), '' '', xxx.descrizione2) art_descrizione, ' +
    'case when xxx.situazione = ''evaso'' or xxx.situazione = ''annullato'' or xxx.situazione = ''revisionato'' or xxx.situazione = ''consolidato'' then 0.0 ' +
    'else xxx.quantita - xxx.quantita_evasa end quantita_residua, art.codice_alternativo, art.var_codice, ' +
    'artna.id id_artna, artna.ddt ddt_artna, artna.fatture fatture_artna, ' +
    'artna.ordini ordini_artna, artna.preventivi preventivi_artna ' +
    'from xxx left join art on art.codice = xxx.art_codice ' +
    'left join artna on artna.codice = xxx.art_codice ' +
    'where xxx.progressivo = :progressivo';

  if tipo_documento = 'ordine' then
  begin
    generatore := 'oat';
    tda_codice := arc.dit.fieldbyname('tda_codice_ordini').asstring;

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select oat.* from oat');
    if not utntda.isempty then
    begin
      tabella.sql.add('left join utntda on utntda.utn_codice = ' + quotedstr(utente) + ' and utntda.tda_codice = oat.tda_codice');
    end;

    tabella.sql.add('where oat.progressivo = :progressivo');
    if not utntda.isempty then
    begin
      tabella.sql.add('and utntda.tda_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'oar', [rfreplaceall]);
    cancella_iva.sql.text := 'delete from oai where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from oar where progressivo = :progressivo ' +
      'and documento_origine <> '''' and documento_origine <> ''rda''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'oar', [rfreplaceall]);

    frn_ds.dataset := frn;
    v_progressivo.lookuptable := 'OAT';
    v_progressivo.lookupvisname := 'OAT';

    v_art_codice.hint := v_art_codice.hint + ' [Ctrl+F11=analisi prezzo]';
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti') then
  begin
    generatore := 'dat';

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select dat.* from dat');
    if not utntda.isempty then
    begin
      tabella.sql.add('left join utntda on utntda.utn_codice = ' + quotedstr(utente) + ' and utntda.tda_codice = dat.tda_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntda.isempty then
    begin
      tabella.sql.add('and utntda.tda_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'dar', [rfreplaceall]);
    cancella_iva.sql.text := 'delete from dai where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from dar where progressivo = :progressivo ' +
      'and documento_origine <> '''' and documento_origine <> ''rda''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'dar', [rfreplaceall]);

    v_progressivo.lookuptable := 'DAT';
    v_progressivo.lookupvisname := 'DAT';
    if tipo_documento = 'ddt' then
    begin
      v_l_frn_codice.caption := 'codice fornitore';
      frn_ds.dataset := frn;
      tda_codice := arc.dit.fieldbyname('tda_codice_ddt').asstring;
    end
    else
    begin
      frn_ds.dataset := cli;
      v_l_frn_codice.caption := 'codice cliente';
      v_frn_codice.lookcollpopupmenu := arc.pop_arc_cli;
      v_frn_codice.lookcolltable := 'CLI';
      v_frn_codice.lookcollvisname := 'CLI';
      v_frn_codice.hint := 'codice cliente [F4 F5 F6]';
    end;
  end
  else if tipo_documento = 'fattura' then
  begin
    generatore := 'fat';
    tda_codice := arc.dit.fieldbyname('tda_codice_fatture').asstring;

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select fat.* from fat');
    if not utntda.isempty then
    begin
      tabella.sql.add('left join utntda on utntda.utn_codice = ' + quotedstr(utente) + ' and utntda.tda_codice = fat.tda_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntda.isempty then
    begin
      tabella.sql.add('and utntda.tda_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'far', [rfreplaceall]);
    cancella_iva.sql.text := 'delete from fai where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from far where progressivo = :progressivo ' +
      'and documento_origine <> '''' and documento_origine <> ''rda''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'far', [rfreplaceall]);

    frn_ds.dataset := frn;
    v_progressivo.lookuptable := 'FAT';
    v_progressivo.lookupvisname := 'FAT';
  end
  else if tipo_documento = 'fattura differita' then
  begin
    generatore := 'fat';
    tda_codice := arc.dit.fieldbyname('tda_codice_fatture_differite').asstring;

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select fat.* from fat');
    if not utntda.isempty then
    begin
      tabella.sql.add('left join utntda on utntda.utn_codice = ' + quotedstr(utente) + ' and utntda.tda_codice = fat.tda_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntda.isempty then
    begin
      tabella.sql.add('and utntda.tda_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'far', [rfreplaceall]);
    cancella_iva.sql.text := 'delete from fai where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from far where progressivo = :progressivo ' +
      'and documento_origine <> '''' and documento_origine <> ''rda''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'far', [rfreplaceall]);

    frn_ds.dataset := frn;
    v_progressivo.lookuptable := 'FAT';
    v_progressivo.lookupvisname := 'FAT';
  end
  else if tipo_documento = 'nota credito' then
  begin
    generatore := 'fat';
    tda_codice := arc.dit.fieldbyname('tda_codice_note_credito').asstring;

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select fat.* from fat');
    if not utntda.isempty then
    begin
      tabella.sql.add('left join utntda on utntda.utn_codice = ' + quotedstr(utente) + ' and utntda.tda_codice = fat.tda_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntda.isempty then
    begin
      tabella.sql.add('and utntda.tda_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'far', [rfreplaceall]);
    cancella_iva.sql.text := 'delete from fai where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from far where progressivo = :progressivo ' +
      'and documento_origine <> '''' and documento_origine <> ''rda''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'far', [rfreplaceall]);

    frn_ds.dataset := frn;
    v_progressivo.lookuptable := 'FAT';
    v_progressivo.lookupvisname := 'FAT';
  end
  else if tipo_documento = 'preventivo' then
  begin
    generatore := 'rat';
    tda_codice := arc.dit.fieldbyname('tda_codice_preventivi').asstring;

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select rat.* from rat');
    if not utntda.isempty then
    begin
      tabella.sql.add('left join utntda on utntda.utn_codice = ' + quotedstr(utente) + ' and utntda.tda_codice = rat.tda_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntda.isempty then
    begin
      tabella.sql.add('and utntda.tda_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'rar', [rfreplaceall]);
    cancella_iva.sql.text := 'delete from rai where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from rar where progressivo = :progressivo ' +
      'and documento_origine <> '''' and documento_origine <> ''rda''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'rar', [rfreplaceall]);

    frn_ds.dataset := frn;
    v_progressivo.lookuptable := 'RAT';
    v_progressivo.lookupvisname := 'RAT';
  end;

  if not utntda.isempty then
  begin
    if not utntda.locate('tda_codice', tda_codice, []) then
    begin
      tda_codice := '';
    end;
  end;

  // codici documento utente
  q_utn := tmyquery_go.create(nil);
  q_utn.connection := arc.arc;
  q_utn.sql.add('select tda_codice_ordini, tda_codice_ddt, tda_codice_fatture, tda_codice_fatture_differite,');
  q_utn.sql.add('tda_codice_note_credito, tda_codice_preventivi');
  q_utn.sql.add('from utn');
  q_utn.sql.add('where codice = :codice');

  try
    read_tabella(q_utn, utente);
    if tipo_documento = 'ordine' then
    begin
      if q_utn.fieldbyname('tda_codice_ordini').asstring <> '' then
      begin
        tda_codice := q_utn.fieldbyname('tda_codice_ordini').asstring;
      end;
    end
    else if tipo_documento = 'fattura' then
    begin
      if q_utn.fieldbyname('tda_codice_fatture').asstring <> '' then
      begin
        tda_codice := q_utn.fieldbyname('tda_codice_fatture').asstring;
      end;
    end
    else if tipo_documento = 'ddt' then
    begin
      if q_utn.fieldbyname('tda_codice_ddt').asstring <> '' then
      begin
        tda_codice := q_utn.fieldbyname('tda_codice_ddt').asstring;
      end;
    end
    else if tipo_documento = 'fattura differita' then
    begin
      if q_utn.fieldbyname('tda_codice_fatture_differite').asstring <> '' then
      begin
        tda_codice := q_utn.fieldbyname('tda_codice_fatture_differite').asstring;
      end;
    end
    else if tipo_documento = 'nota credito' then
    begin
      if q_utn.fieldbyname('tda_codice_note_credito').asstring <> '' then
      begin
        tda_codice := q_utn.fieldbyname('tda_codice_note_credito').asstring;
      end;
    end
    else if tipo_documento = 'preventivo' then
    begin
      if q_utn.fieldbyname('tda_codice_preventivi').asstring <> '' then
      begin
        tda_codice := q_utn.fieldbyname('tda_codice_preventivi').asstring;
      end;
    end;
  finally
    q_utn.free;
  end;

  inherited;

  if tipo_documento = 'preventivo' then
  begin
    riga_barcode.sql.text := stringreplace(riga_barcode.sql.text, 'x2x2', 'rar', []);
  end
  else if tipo_documento = 'ordine' then
  begin
    riga_barcode.sql.text := stringreplace(riga_barcode.sql.text, 'x2x2', 'oar', []);
  end
  else if copy(tipo_documento, 1, 3) = 'ddt' then
  begin
    riga_barcode.sql.text := stringreplace(riga_barcode.sql.text, 'x2x2', 'dar', []);
  end
  else if (copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito') then
  begin
    riga_barcode.sql.text := stringreplace(riga_barcode.sql.text, 'x2x2', 'far', []);
  end;

  // colonne griglia
  if (tipo_documento <> 'ordine') and (tipo_documento <> 'preventivo') then
  begin
    label37.visible := false;
    v_data_consegna_righe.visible := false;
  end;

  v_annulla_riga_documento.enabled := false;
  v_evadi_riga_documento.enabled := false;

  incremento_righe := 10;

  tum_codice := tstringlist.Create;

  v_prezzo.decimalplaces := decimali_max_prezzo_acq;
  v_prezzo.displayformat := formato_display_prezzo_acq_zero;

  v_quantita.decimalplaces := decimali_max_quantita;
  v_quantita.displayformat := formato_display_quantita_zero;
  v_esistenza_deposito.displayformat := formato_display_quantita_zero;
  v_esistenza_totale.displayformat := formato_display_quantita_zero;
  v_esistenza_principale.displayformat := formato_display_quantita_zero;

  if (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
  begin
    v_evadere.enabled := true;
    v_tutte.enabled := true;
  end;

  tab_control.ActivePage := tab_pagina1;
end;

procedure TGESACQ.assegna_tda_codice;
begin
  if not tda.isempty then
  begin
    controllo_documenti_livello_superiore := tda.fieldbyname('controllo_documenti_livello_sup').asstring;
    if (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
    begin
      tabella.fieldbyname('serie_documento').asstring := tda.FieldByName('numerazione').asstring;
    end;
    if tabella.fieldbyname('tipo_documento').asstring <> tda.fieldbyname('tipo_documento').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tipo_documento').asstring := tda.fieldbyname('tipo_documento').asstring;
      end;
    end;

    if tabella.fieldbyname('tda_codice_differite').asstring <> tda.fieldbyname('tda_codice_differite').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tda_codice_differite').asstring := tda.fieldbyname('tda_codice_differite').asstring;
      end;
    end;

    if tabella.fieldbyname('tda_codice_differite').asstring <> '' then
    begin
      read_tabella(arc.arcdit, 'tda', 'codice', tabella.fieldbyname('tda_codice_differite').asstring, 'tco_codice');
      if tabella.fieldbyname('tco_codice').asstring <> archivio.fieldbyname('tco_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tco_codice').asstring := archivio.fieldbyname('tco_codice').asstring;
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('tco_codice').asstring <> tda.fieldbyname('tco_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tco_codice').asstring := tda.fieldbyname('tco_codice').asstring;
        end;
      end;
    end;

    if tabella.fieldbyname('tmo_codice').asstring <> tda.fieldbyname('tmo_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tmo_codice').asstring := tda.fieldbyname('tmo_codice').asstring;
        tmo_codice_controllo(false);
      end;
    end;

    if tabella.fieldbyname('tma_codice').asstring <> tda.fieldbyname('tma_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := tda.fieldbyname('tma_codice').asstring;
        tma_codice_controllo(false);
      end;
    end;
    if (tabella.fieldbyname('tma_codice').asstring = '') and (arc.utn.fieldbyname('tma_codice').asstring <> '') then
    begin
      tabella.fieldbyname('tma_codice').asstring := arc.utn.fieldbyname('tma_codice').asstring;
      tma_codice_controllo(false);
    end;

    if tabella.fieldbyname('scadenziario_manuale').asstring <> tda.fieldbyname('scadenziario_manuale').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('scadenziario_manuale').asstring := tda.fieldbyname('scadenziario_manuale').asstring;
      end;
    end;

    if tabella.fieldbyname('cen_codice').asstring <> tda.fieldbyname('cen_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cen_codice').asstring := tda.fieldbyname('cen_codice').asstring;
      end;
    end;

    if tabella.fieldbyname('tvc_codice').asstring <> tda.fieldbyname('tvc_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tvc_codice').asstring := tda.fieldbyname('tvc_codice').asstring;
      end;
    end;

    if tipo_documento = 'ordine' then
    begin
      if tabella.fieldbyname('no_ordinato').asstring <> tda.fieldbyname('no_ordinato').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('no_ordinato').asstring := tda.fieldbyname('no_ordinato').asstring;
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('no_ordinato').asstring <> 'no' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('no_ordinato').asstring := 'no';
        end;
      end;
    end;

    assegna_tmo_codice;
    assegna_tcd_codice;

    salta_cartelle_tab_control := true;

    if tda.fieldbyname('pagina_riferimento').asstring = 'si' then
    begin
      pagina_riferimento := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_riferimento := false;
    end;
    if tda.fieldbyname('pagina_pagamento').asstring = 'si' then
    begin
      pagina_pagamento := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_pagamento := false;
    end;
    if tda.fieldbyname('pagina_magazzino').asstring = 'si' then
    begin
      pagina_magazzino := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_magazzino := false;
    end;
    if tda.fieldbyname('pagina_destinazione').asstring = 'si' then
    begin
      pagina_destinazione := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_destinazione := false;
    end;
    if tda.fieldbyname('pagina_spedizione').asstring = 'si' then
    begin
      pagina_spedizione := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_spedizione := false;
    end;
    if tda.fieldbyname('pagina_spese').asstring = 'si' then
    begin
      pagina_spese := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_spese := false;
    end;
    if tda.fieldbyname('pagina_note').asstring = 'si' then
    begin
      pagina_note := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_note := false;
    end;
    if tda.fieldbyname('pagina_analitica').asstring = 'si' then
    begin
      pagina_analitica := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_analitica := false;
    end;
  end;
end;

procedure TGESACQ.assegna_tmo_codice;
begin
  if read_tabella(tmo, tabella.fieldbyname('tmo_codice').asstring) then
  begin
    if (tabella.fieldbyname('tma_codice').asstring <> tmo.fieldbyname('tma_codice').asstring) and
      (tmo.fieldbyname('tma_codice').asstring <> '') then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := tmo.fieldbyname('tma_codice').asstring;
        assegna_valore_tma_codice_ordine;
        tma_codice_controllo(false);
      end;
    end;

    if tabella.fieldbyname('tmo_codice_collegato').asstring <> tmo.fieldbyname('tmo_codice_collegato').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tmo_codice_collegato').asstring := tmo.fieldbyname('tmo_codice_collegato').asstring;
        assegna_valore_tmo_codice_collegato;
        tmo_codice_collegato_controllo(false);
      end;
    end;

    if tabella.fieldbyname('tma_codice_collegato').asstring <> tmo.fieldbyname('tma_codice_collegato').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice_collegato').asstring := tmo.fieldbyname('tma_codice_collegato').asstring;
        assegna_valore_tma_codice_collegato;
        tma_codice_collegato_controllo(false);
      end;
    end;

    if (tabella.fieldbyname('tmo_codice_collegato').asstring <> '') and (tabella.fieldbyname('tma_codice_collegato').asstring = '') then
    begin
      read_tabella(arc.arcdit, 'tmo', 'codice', tabella.fieldbyname('tmo_codice_collegato').asstring, 'tma_codice');
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice_collegato').asstring := archivio.fieldbyname('tma_codice').asstring;
        assegna_valore_tma_codice_collegato;
        tma_codice_collegato_controllo(false);
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_tcd_codice;
begin
  if not tda.eof then
  begin
    if tabella.fieldbyname('tcd_codice_apertura').asstring <> tda.fieldbyname('tcd_codice_inizio').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_apertura').asstring := tda.fieldbyname('tcd_codice_inizio').asstring;
        tcd_codice_apertura_controllo(false);
      end;
    end;

    if tabella.fieldbyname('tcd_codice_chiusura').asstring <> tda.fieldbyname('tcd_codice_fine').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_chiusura').asstring := tda.fieldbyname('tcd_codice_fine').asstring;
        tcd_codice_chiusura_controllo(false);
      end;
    end;
  end;
end;

procedure TGESACQ.v_tda_codiceExit(Sender: TObject);
begin
  inherited;
  tda_codice_controllo(true);
  if controllo then
  begin
    if v_tda_codice.text <> variato_stringa then
    begin
      assegna_tda_codice;
      abilita_tipo_documento;

      //  controlli flag collegati
      if (tda.fieldbyname('commesse').asstring = 'si') and (tda.fieldbyname('tco_commesse').asstring = 'si') then
      begin
        messaggio(000, 'la gestione commesse è presente anche nella causale contabile');
        fuoco(v_tda_codice);
        abort;
      end;

      if (tda.fieldbyname('analitica').asstring = 'si') and (tda.fieldbyname('tco_analitica').asstring = 'si') then
      begin
        messaggio(000, 'la gestione della contabilità analitica è presente anche nella causale contabile');
        fuoco(v_tda_codice);
        abort;
      end;

      if (tda.fieldbyname('commesse').asstring = 'si') and (tda.fieldbyname('d_commesse').asstring = 'si') then
      begin
        messaggio(000, 'la gestione commesse è presente anche nella causale della fattura differita');
        fuoco(v_tda_codice);
        abort;
      end;

      if (tda.fieldbyname('analitica').asstring = 'si') and (tda.fieldbyname('d_analitica').asstring = 'si') then
      begin
        messaggio(000, 'la gestione della contabilità analitica è presente anche nella causale della fattura differita');
        fuoco(v_tda_codice);
        abort;
      end;

      if (tda.fieldbyname('commesse').asstring = 'si') and (tda.fieldbyname('c_commesse').asstring = 'si') then
      begin
        messaggio(000, 'la gestione commesse è presente anche nella causale contabile della fattura differita');
        fuoco(v_tda_codice);
        abort;
      end;

      if (tda.fieldbyname('analitica').asstring = 'si') and (tda.fieldbyname('c_analitica').asstring = 'si') then
      begin
        messaggio(000, 'la gestione della contabilità analitica è presente anche nella causale contabile della fattura differita');
        fuoco(v_tda_codice);
        abort;
      end;

      if (tda.fieldbyname('commesse').asstring = 'si') and (tda.fieldbyname('tmo_commesse').asstring = 'si') then
      begin
        messaggio(000, 'la gestione commesse è presente anche nella causale dei movimenti di magazzino');
        fuoco(v_tda_codice);
        abort;
      end;

      if (tda.fieldbyname('lotti').asstring = 'si') and (tda.fieldbyname('tmo_lotti').asstring = 'si') then
      begin
        messaggio(000, 'la gestione dei lottti/matricole è presente anche nella causale dei movimenti di magazzino');
        fuoco(v_tda_codice);
        abort;
      end;
    end;
  end;
end;

procedure TGESACQ.tda_codice_controllo(blocco: boolean);
begin
  if controllo and blocco and not utntda.isempty and (v_tda_codice.text <> '') and
    not utntda.locate('tda_codice', v_tda_codice.text, []) then
  begin
    messaggio(000, 'codice documento non utilizzabile dall''utente');
    if v_tda_codice.canfocus then
    begin
      if v_tda_codice.canfocus then
      begin
        v_tda_codice.setfocus;
      end;
    end
    else
    begin
      abilita_codice;
    end;
    abort;
  end
  else
  begin
    tabella_controllo(false, tda, v_tda_codice, blocco, tab_control, tab_pagina1, tabella);

    if tda.fieldbyname('imputazione_quantita_base').asstring = 'no' then
    begin
      disabilita_campo(box_quantita_base);
    end
    else
    begin
      abilita_campo(box_quantita_base);
    end;

    if tda.fieldbyname('visualizza_disponibilita').asstring = 'si' then
    begin
      box_esistenza_disponibilita.caption := 'disponibilità deposito totale e principale';
      v_esistenza_deposito.datafield := 'disponibilita';
      v_esistenza_principale.datafield := 'disponibilita';
      v_esistenza_totale.datafield := 'disponibilita';
    end
    else
    begin
      box_esistenza_disponibilita.caption := 'esistenza deposito totale e principale';
      v_esistenza_deposito.datafield := 'esistenza';
      v_esistenza_principale.datafield := 'esistenza';
      v_esistenza_totale.datafield := 'esistenza';
    end;

    if (controllo) and (not tda.isempty) then
    begin
      esegui_dati_riga := tda.fieldbyname('esegui_dati_riga').asstring;
      controllo_esistenza := tda.fieldbyname('controllo_esistenza').asstring;
      stampa_immediata := tda.fieldbyname('stampa_immediata').asstring;
      analitica := tda.fieldbyname('analitica').asstring;
      commesse := tda.fieldbyname('commesse').asstring;
      conto_terzi := tda.fieldbyname('conto_terzi').asstring;
      lotti := tda.fieldbyname('lotti').asstring;
      ultimo_prezzo := tda.fieldbyname('ultimo_prezzo').asstring;
      stampa_immediata_etichette := tda.fieldbyname('stampa_immediata_etichette').asstring;

      if tda.fieldbyname('note_visibili').asstring = 'no' then
      begin
        v_note_righe.visible := false;
      end
      else
      begin
        v_note_righe.visible := true;
      end;

      if blocco then
      begin
        if tda.fieldbyname('tipo_documento').asstring <> tipo_documento then
        begin
          messaggio(000, 'il tipo documento selezionato ' + '"' + tda.fieldbyname('tipo_documento').asstring + '""' + #13 +
            'non è utilizzabile per gestire il documento: ' + tipo_documento);
          tab_control.activepage := tab_pagina1;
          if (esiste) or (screen.activecontrol = v_progressivo) then
          begin
            abilita_codice;
            abort;
          end
          else
          begin
            if v_tda_codice.canfocus then
            begin
              v_tda_codice.setfocus;
            end;
            abort;
          end;
        end;
      end;

      gestione_descrizione1 := tda.fieldbyname('gestione_descrizione1').asstring;
      gestione_descrizione2 := tda.fieldbyname('gestione_descrizione2').asstring;
      gestione_numero_colli := tda.fieldbyname('gestione_numero_colli').asstring;
      gestione_numero_confezioni := tda.fieldbyname('gestione_numero_confezioni').asstring;
      gestione_tum_codice := tda.fieldbyname('gestione_tum_codice').asstring;
      gestione_quantita := tda.fieldbyname('gestione_quantita').asstring;
      gestione_prezzo := tda.fieldbyname('gestione_prezzo').asstring;
      gestione_sconto_fornitore := tda.fieldbyname('gestione_sconto_cliente').asstring;
      gestione_tipo_movimento := tda.fieldbyname('gestione_tipo_movimento').asstring;
      gestione_importo := tda.fieldbyname('gestione_importo').asstring;
      gestione_data_consegna := tda.fieldbyname('gestione_data_consegna').asstring;

      controllo_quantita := tda.fieldbyname('controllo_quantita').asstring;
      aggiorna_listini_acquisti := tda.fieldbyname('aggiorna_listini').asstring;
      aggiorna_listini_vendita := tda.fieldbyname('aggiorna_listini_vendita').asstring;
      controllo_articolo_livello_superiore := tda.fieldbyname('controllo_articolo_livello_sup').asstring;
      consolidamento := tda.fieldbyname('consolidamento').asstring;
    end;
  end;
  assegna_tutti_prodter := tda.fieldbyname('assegnazione_clav').asstring = 'si';
end;

procedure TGESACQ.v_tmo_codiceExit(Sender: TObject);
var
  prosegui: boolean;
  ltm: tmyquery_go;
begin
  inherited;

  if controllo then
  begin
    tmo_codice_controllo(true);
    if (tda.fieldbyname('commesse').asstring = 'si') and (tmo.fieldbyname('commesse').asstring = 'si') then
    begin
      messaggio(000, 'la gestione commesse è presente anche nella causale del documento');
      fuoco(v_tmo_codice);
      abort;
    end;

    if (tda.fieldbyname('lotti').asstring = 'si') and (tmo.fieldbyname('lotti').asstring = 'si') then
    begin
      messaggio(000, 'la gestione dei lottti/matricole è presente anche nella causale del documento');
      fuoco(v_tmo_codice);
      abort;
    end;

    prosegui := true;
    if (v_tmo_codice.text <> variato_stringa) and (variato_stringa <> '') then
    begin
      ltm := tmyquery_go.create(nil);
      ltm.connection := arc.arcdit;
      ltm.sql.add('select id from ltm where documento_origine = ' + quotedstr(tipo_documento + ' acq'));
      ltm.sql.add('and doc_progressivo_origine = ' + v_progressivo.text);
      ltm.open;
      if not ltm.isempty then
      begin
        tabella.cancel;
        messaggio(000, 'non è possibile modificare la causale perché sono stati movimenti i lotti');
        prosegui := false;
        ltm.free;
      end;
    end;

    if prosegui then
    begin
      if controllo then
      begin
        if v_tmo_codice.text <> variato_stringa then
        begin
          assegna_tmo_codice;
        end;
        assegna_valore_tma_codice;
      end;
    end;
  end;
end;

procedure TGESACQ.tmo_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo, v_tmo_codice, blocco, tab_control, tab_testata_magazzino, tabella);
end;

procedure TGESACQ.azzera_vecchio_testata;
begin
  vecchio_data_registrazione := 0;
  vecchio_numero_documento := 0;
  vecchio_serie_documento := '';
  vecchio_data_documento := 0;
  vecchio_tsm_codice := '';
  vecchio_cambio := 0;
  vecchio_tiv_codice := '';
  vecchio_tsm_codice_sconto := '';
  vecchio_importo_sconto_cassa := 0;
  vecchio_importo_sconto := 0;
  vecchio_importo_sconto_finale := 0;
  vecchio_tla_codice := '';
  vecchio_tma_codice := '';
  vecchio_tmo_codice := '';
  vecchio_tmo_codice_collegato := '';
  vecchio_tma_codice_collegato := '';
  vecchio_tpa_codice := '';
  vecchio_tpo_codice := '';
  vecchio_listino_con_iva := '';
  vecchio_frn_codice := '';
  vecchio_accettato := '';
  vecchio_data_inizio_competenza := 0;
  vecchio_data_fine_competenza := 0;
  vecchio_importo_spese_01 := 0;
  vecchio_importo_spese_02 := 0;
  vecchio_importo_spese_03 := 0;
  vecchio_importo_spese_04 := 0;
  vecchio_importo_spese_extra := 0;
  vecchio_gen_codice_spese_01 := '';
  vecchio_gen_codice_spese_02 := '';
  vecchio_gen_codice_spese_03 := '';
  vecchio_gen_codice_spese_04 := '';
  vecchio_gen_codice_sconto_cassa := '';
  vecchio_gen_codice_sconti_fattura := '';
  vecchio_data_consegna := 0;
  vecchio_data_consegna_confermata := 0;
  vecchio_cms_codice_testata := '';
  vecchio_tipologia_testata := '';
  vecchio_modalita_ripartizione := '';
  vecchio_no_ordinato := 'no';
end;

procedure TGESACQ.assegna_vecchio_testata;
begin
  vecchio_data_registrazione := tabella.fieldbyname('data_registrazione').asdatetime;
  vecchio_numero_documento := tabella.fieldbyname('numero_documento').asfloat;
  vecchio_serie_documento := tabella.fieldbyname('serie_documento').asstring;
  vecchio_data_documento := tabella.fieldbyname('data_documento').asdatetime;
  vecchio_tsm_codice := tabella.fieldbyname('tsm_codice').asstring;
  vecchio_cambio := tabella.fieldbyname('cambio').asfloat;
  vecchio_tiv_codice := tabella.fieldbyname('tiv_codice').asstring;
  vecchio_tsm_codice_sconto := tabella.fieldbyname('tsm_codice_sconto').asstring;
  vecchio_importo_sconto_cassa := tabella.fieldbyname('importo_sconto_cassa').asfloat;
  vecchio_importo_sconto := tabella.fieldbyname('importo_sconto').asfloat;
  vecchio_importo_sconto_finale := tabella.fieldbyname('importo_sconto_finale').asfloat;
  vecchio_tla_codice := tabella.fieldbyname('tla_codice').asstring;
  vecchio_tma_codice := tabella.fieldbyname('tma_codice').asstring;
  vecchio_tmo_codice := tabella.fieldbyname('tmo_codice').asstring;
  vecchio_tmo_codice_collegato := tabella.fieldbyname('tmo_codice_collegato').asstring;
  vecchio_tma_codice_collegato := tabella.fieldbyname('tma_codice_collegato').asstring;
  vecchio_tpa_codice := tabella.fieldbyname('tpa_codice').asstring;
  vecchio_tpo_codice := tabella.fieldbyname('tpo_codice').asstring;
  vecchio_listino_con_iva := tabella.fieldbyname('listino_con_iva').asstring;
  vecchio_frn_codice := tabella.fieldbyname('frn_codice').asstring;
  vecchio_accettato := tabella.fieldbyname('accettato').asstring;
  vecchio_data_inizio_competenza := tabella.fieldbyname('data_inizio_competenza').asdatetime;
  vecchio_data_fine_competenza := tabella.fieldbyname('data_fine_competenza').asdatetime;
  vecchio_importo_spese_01 := tabella.fieldbyname('importo_spese_01').asfloat;
  vecchio_importo_spese_02 := tabella.fieldbyname('importo_spese_02').asfloat;
  vecchio_importo_spese_03 := tabella.fieldbyname('importo_spese_03').asfloat;
  vecchio_importo_spese_04 := tabella.fieldbyname('importo_spese_04').asfloat;
  vecchio_importo_spese_extra := tabella.fieldbyname('importo_spese_extra').asfloat;
  vecchio_gen_codice_spese_01 := tabella.fieldbyname('gen_codice_spese_01').asstring;
  vecchio_gen_codice_spese_02 := tabella.fieldbyname('gen_codice_spese_02').asstring;
  vecchio_gen_codice_spese_03 := tabella.fieldbyname('gen_codice_spese_03').asstring;
  vecchio_gen_codice_spese_04 := tabella.fieldbyname('gen_codice_spese_04').asstring;
  vecchio_gen_codice_sconto_cassa := tabella.fieldbyname('gen_codice_sconto_cassa').asstring;
  vecchio_gen_codice_sconti_fattura := tabella.fieldbyname('gen_codice_sconti_fattura').asstring;
  vecchio_data_consegna := tabella.fieldbyname('data_consegna').asdatetime;
  vecchio_data_consegna_confermata := tabella.fieldbyname('data_consegna_confermata').asdatetime;
  vecchio_cms_codice_testata := tabella.fieldbyname('cms_codice').asstring;
  vecchio_tipologia_testata := tabella.fieldbyname('tipologia').asstring;
  vecchio_modalita_ripartizione := tabella.fieldbyname('modalita_ripartizione').asstring;
  vecchio_no_ordinato := tabella.fieldbyname('no_ordinato').asstring;
end;

procedure TGESACQ.attiva_esiste(flag: boolean);
begin
  if flag then
  begin
    v_tva_codice.Enabled := false;
    v_cambio.Enabled := false;

    v_tva_codice.color := clbtnface;
    v_cambio.color := clbtnface;
  end
  else
  begin
    if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '') then
    begin
      v_tva_codice.Enabled := false;
      v_cambio.Enabled := false;
      v_tla_codice.Enabled := false;

      v_tva_codice.color := clbtnface;
      v_cambio.color := clbtnface;
      v_tla_codice.color := clbtnface;
    end
    else
    begin
      v_tla_codice.Enabled := true;
      v_tla_codice.color := clwindow;

      if (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') or
        (tabella.fieldbyname('situazione').asstring = 'inserito') then
      begin
        v_tva_codice.Enabled := true;
        v_cambio.Enabled := true;

        v_tva_codice.color := clwindow;
        v_cambio.color := clwindow;
      end
      else
      begin
        v_tva_codice.Enabled := false;
        v_cambio.Enabled := false;

        v_tva_codice.color := clbtnface;
        v_cambio.color := clbtnface;
      end;
    end;
  end;
end;

procedure TGESACQ.abilitazioni;
begin
  abilita_tipo_documento_bolle_ddt;
  abilita_intra;
  abilita_spese_01;
  abilita_spese_02;
  abilita_spese_03;
  abilita_spese_04;
  abilita_iva_spese_01;
  abilita_iva_spese_02;
  abilita_iva_spese_03;
  abilita_iva_spese_04;
  abilita_costo_spese_01;
  abilita_costo_spese_02;
  abilita_costo_spese_03;
  abilita_costo_spese_04;
  abilita_bloccato;
  abilita_bottone_dati_extra_testata;
  abilita_modalita_ripartizione;
end;

procedure TGESACQ.abilita_bottone_dati_extra_testata;
begin
  if tipo_documento = 'ddt clienti' then
  begin
    v_bottone_dati_extra_testata.enabled := false;
  end
  else
  begin
    v_bottone_dati_extra_testata.enabled := true;
  end;
end;

procedure TGESACQ.assegna_valore_tma_codice;
begin
  if tabella.fieldbyname('tmo_codice').asstring = '' then
  begin
    if tipo_documento <> 'ordine' then
    begin
      if tabella.fieldbyname('tma_codice').asstring <> '' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tma_codice').asstring := '';
          tma_codice_controllo(false);
        end;
      end;
    end;

    if tabella.fieldbyname('tmo_codice_collegato').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tmo_codice_collegato').asstring := '';
        tmo_codice_collegato_controllo(false);
      end;
    end;

    if tabella.fieldbyname('tma_codice_collegato').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice_collegato').asstring := '';
        tma_codice_collegato_controllo(false);
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_valore_tma_codice_collegato;
begin
end;

procedure TGESACQ.v_tma_codiceExit(Sender: TObject);
begin
  inherited;
  tma_codice_controllo(true);
  if controllo then
  begin
    assegna_valore_tma_codice;
  end;
end;

procedure TGESACQ.tma_codice_controllo(blocco: boolean);
begin
  if (trim(v_tma_codice.text) = '') and (trim(v_tmo_codice.text) = '') then
  begin
    tma.close;
    tma.params[0].value := null;
    tma.open;
  end
  else
  begin
    tabella_controllo(false, tma, v_tma_codice, blocco, tab_control, tab_testata_magazzino, tabella);
  end;
end;

procedure TGESACQ.v_tma_codice_collegatoExit(Sender: TObject);
begin
  inherited;
  tma_codice_collegato_controllo(true);
end;

procedure TGESACQ.tma_codice_collegato_controllo(blocco: boolean);
begin
  if (trim(v_tma_codice_collegato.text) = '') and (trim(v_tmo_codice_collegato.text) = '') then
  begin
    tma_collegato.close;
    tma_collegato.params[0].value := null;
    tma_collegato.open;
  end
  else
  begin
    tabella_controllo(false, tma_collegato, v_tma_codice_collegato, blocco, tab_control, tab_testata_magazzino, tabella);
  end;
end;

procedure TGESACQ.v_numero_documentoExit(Sender: TObject);
var
  documento, tipo_numerazione: string;
begin
  inherited;
  numero_documento_controllo;

  if controllo then
  begin
    if tipo_documento = 'preventivo' then
    begin
      documento := 'rat';
    end
    else if tipo_documento = 'ordine' then
    begin
      documento := 'oat';
    end
    else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti') then
    begin
      documento := 'dat';
    end
    else
    begin
      documento := 'fat';
    end;

    if arc.esistenza_documento(documento, v_serie_documento.text, v_frn_codice.text, v_data_documento.date,
      v_numero_documento.value, v_progressivo.intvalue, v_revisione.intvalue) then
    begin
      fuoco(v_numero_documento);
      abort;
    end
    else
    begin
      if (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
      begin
        if tipo_documento = 'ordine' then
        begin
          tipo_numerazione := 'ORDINI FORNITORI';
        end
        else if tipo_documento = 'preventivo' then
        begin
          tipo_numerazione := 'PREVENTIVI FORNITORI';
        end;

        assegna_numerazione_exit(arc.arcdit, tabella, v_data_documento.date, tipo_numerazione, v_serie_documento.text,
          v_numero_documento, 'numero_documento');
      end;
    end;
  end;
end;

procedure TGESACQ.v_numero_documento_alfaEnter(Sender: TObject);
var
  anno, mese, giorno: word;
  tipo_numerazione: string;
  numero_documento: double;
  progressivo: integer;
  numerazione_automatica_ddt: tmyquery_go;
begin
  inherited;

  variato_stringa := v_numero_documento_alfa.text;

  if tda.fieldbyname('numerazione_automatica_ddt').asstring = 'si' then
  begin
    numerazione_automatica_ddt := tmyquery_go.create(nil);
    numerazione_automatica_ddt.connection := arc.arcdit;
    try
      numerazione_automatica_ddt.sql.add('select max(numero_documento) numero_documento');
      numerazione_automatica_ddt.sql.add('from dat');
      numerazione_automatica_ddt.sql.add('where tda_codice = :tda_codice and year(data_documento) = :anno');

      numerazione_automatica_ddt.parambyname('tda_codice').asstring := tabella.fieldbyname('tda_codice').asstring;
      decodedate(tabella.fieldbyname('data_documento').asdatetime, anno, mese, giorno);
      numerazione_automatica_ddt.parambyname('anno').asinteger := anno;
      numerazione_automatica_ddt.open;
      if numerazione_automatica_ddt.isempty then
      begin
        numero_documento := 1;
      end
      else
      begin
        numero_documento := numerazione_automatica_ddt.fieldbyname('numero_documento').asfloat + 1;
      end;
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('numero_documento_alfa').asstring := setta_lunghezza(numero_documento, 8, 0, '0');
      end;
    finally
      numerazione_automatica_ddt.free;
    end;
  end;
end;

procedure TGESACQ.v_numero_documento_alfaExit(Sender: TObject);
begin
  inherited;

  numero_documento_alfa_controllo;
  if variato_stringa <> v_numero_documento_alfa.text then
  begin
    arc.numero_documento_alfa(tabella, 'numero_documento', v_numero_documento_alfa.text);
    arc.serie_documento_alfa(tabella, 'serie_documento', v_numero_documento_alfa.text);
  end;
end;

procedure TGESACQ.numero_documento_alfa_controllo;
begin
  if controllo and (tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine') then
  begin
    if v_numero_documento_alfa.text = '' then
    begin
      messaggio(002, l_numero_documento_alfa.caption);
      tab_control.ActivePage := tab_pagina1;
      fuoco(v_numero_documento_alfa);
      abort;
    end;
  end;
end;

procedure TGESACQ.numero_documento_controllo;
begin
  if controllo then
  begin
    if v_numero_documento.value = 0 then
    begin
      messaggio(002, l_numero_documento.caption);
      tab_control.ActivePage := tab_pagina1;
      fuoco(v_numero_documento);
      abort;
    end;
  end;
end;

procedure TGESACQ.v_data_documentoExit(Sender: TObject);
var
  anno_data_registrazione, anno_data_documento, mese, giorno: word;
begin
  inherited;
  data_documento_controllo;
  date_competenza_controllo;
  if controllo then
  begin
    if tabella_ds.state <> dsbrowse then
    begin
      if (tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine') then
      begin
        if (v_data_documento.date < data_inizio) or (v_data_documento.date > data_bilancio) then
        begin
          messaggio(000, 'data fuori dai limiti dell''esercizio fiscale');
        end;
      end;
      if (esiste) and (variato_data <> v_data_documento.date) then
      begin
        assegna_cambio;
      end;

      decodedate(v_data_registrazione.date, anno_data_registrazione, mese, giorno);
      decodedate(v_data_documento.date, anno_data_documento, mese, giorno);
      if anno_data_registrazione <> anno_data_documento then
      begin
        messaggio(100, 'l''anno della data documento è diverso da quello della data di registrazione');
      end;
    end;

    if (variato_data <> v_data_documento.date) or (v_data_competenza_bilancio.date = 0) then
    begin
      assegna_data_competenza_bilancio;
    end;
  end;
end;

procedure TGESACQ.v_data_inizio_conteggioExit(Sender: TObject);
begin
  inherited;
  v_data_inizio_conteggio_controllo;
end;

procedure TGESACQ.v_data_inizio_conteggio_controllo;
begin
  if controllo then
  begin
    if (v_data_inizio_conteggio.date <> 0) and (v_data_inizio_conteggio.date < v_data_documento.date) then
    begin
      messaggio(200, 'la data di inizio conteggio è inferiore alla data documento');
    end;
  end;
end;

procedure TGESACQ.data_documento_controllo;
begin
  if controllo then
  begin
    if v_data_documento.date = 0 then
    begin
      messaggio(002, label13.caption);
      tab_control.ActivePage := tab_pagina1;
      if v_data_documento.canfocus then
      begin
        v_data_documento.setfocus;
      end;
      abort;
    end
    else if v_data_documento.date > v_data_registrazione.date then
    begin
      messaggio(000, 'la data del documento non può essere' + #13 +
        'superiore della data di registrazione');
      if v_data_documento.canfocus then
      begin
        v_data_documento.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESACQ.assegna_cambio;
var
  valore_cambio: double;
begin
  if not esiste_documento then
  begin
    if read_tabella(arc.arcdit, 'tva', 'codice', v_tva_codice.text) then
    begin
      valore_cambio := cambio(v_tva_codice.text, v_data_documento.date);
      if arrotonda(tabella.fieldbyname('cambio').asfloat, 6) <> arrotonda(valore_cambio, 6) then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('cambio').asfloat := valore_cambio;
          assegna_valore_cambio;
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('cambio').asfloat <> 1 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('cambio').asfloat := 1;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.v_frn_codiceExit(Sender: TObject);
var
  stringa, documento: string;
  documenti_aperti, tdafrn, controllo_documenti_evasi: tmyquery_go;
begin
  inherited;
  frn_codice_controllo(true);
  if controllo then
  begin
    if ((tipo_documento <> 'ddt clienti') and (frn.fieldbyname('informativa_privacy').asstring = 'assente con avviso')) or
      ((tipo_documento = 'ddt clienti') and (cli.fieldbyname('informativa_privacy').asstring = 'assente con avviso')) then
    begin
      messaggio(100, 'nominativo con informativa per la privacy assente');
    end;

    if tipo_documento = 'ddt clienti' then
    begin
      if variato_stringa <> v_frn_codice.text then
      begin
        if esiste_documento then
        begin
          eseguita_evasione.close;
          eseguita_evasione.parambyname('progressivo').asinteger := trunc(v_progressivo.value);
          eseguita_evasione.open;
          if not eseguita_evasione.isempty then
          begin
            messaggio(200, 'il documento ha evaso documenti di livello superiore' + #13 +
              'la variazione dell''intestatario non è possibile');
            tabella.cancel;
            abort;
          end;
        end;
        if not cli.eof then
        begin
          assegna_frn_codice;
        end;
      end;
    end
    else
    begin
      if variato_stringa <> v_frn_codice.text then
      begin
        if esiste_documento then
        begin
          eseguita_evasione.close;
          eseguita_evasione.parambyname('progressivo').asinteger := trunc(v_progressivo.value);
          eseguita_evasione.open;
          if not eseguita_evasione.isempty then
          begin
            messaggio(200, 'il documento ha evaso documenti di livello superiore' + #13 +
              'la variazione dell''intestatario non è possibile');
            tabella.cancel;
            abort;
          end
          else
          begin
            messaggio(200, 'la variazione del fornitore potrebbe comportare la modifica dei prezzi di acquisto' + #13 +
              'il controllo va eseguito manualmente dall''operatore');
          end;
        end;
        if not frn.eof then
        begin
          assegna_frn_codice;
        end;
      end;

      //  visualizzazione note
      stringa := '';
      if (frn.fieldbyname('visualizza_note').asstring = 'si') or (frn.fieldbyname('note_acq').asstring = 'si') then
      begin
        if frn.fieldbyname('note').asstring <> '' then
        begin
          stringa := stringa + '----NOTE GENERALI----' + slinebreak + frn.fieldbyname('note').asstring + slinebreak + slinebreak;
        end;
      end;

      if (frn.fieldbyname('visualizza_note').asstring = 'si') or (frn.fieldbyname('note_amministrazione_acq').asstring = 'si') then
      begin
        if frn.fieldbyname('note_amministrazione').asstring <> '' then
        begin
          stringa := stringa + '----NOTE AMMINISTRAZIONE----' + slinebreak + frn.fieldbyname('note_amministrazione').asstring + slinebreak + slinebreak;
        end;
      end;

      if (frn.fieldbyname('visualizza_note').asstring = 'si') or (frn.fieldbyname('note_commerciale_acq').asstring = 'si') then
      begin
        if frn.fieldbyname('note_commerciale').asstring <> '' then
        begin
          stringa := stringa + '----NOTE COMMERCIALI----' + slinebreak + frn.fieldbyname('note_commerciale').asstring;
        end;
      end;

      if stringa <> '' then
      begin
        messaggio(100, stringa);
      end;
    end;

    if tipo_documento = 'preventivo' then
    begin
      documento := 'rat';
    end
    else if tipo_documento = 'ordine' then
    begin
      documento := 'oat';
    end
    else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti') then
    begin
      documento := 'dat';
    end
    else
    begin
      documento := 'fat';
    end;
    if arc.esistenza_documento(documento, v_serie_documento.text, v_frn_codice.text, v_data_documento.date,
      v_numero_documento.value, v_progressivo.intvalue, v_revisione.intvalue, v_numero_documento_alfa.text) then
    begin
      if (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
      begin
        fuoco(v_numero_documento);
      end
      else
      begin
        fuoco(v_numero_documento_alfa);
      end;
      abort;
    end;

    if (controllo_documenti_livello_superiore = 'si') and (not esiste) and (variato_stringa <> v_frn_codice.text) then
    begin
      if not(tipo_documento = 'preventivo') or (tipo_documento = 'ddt clienti') then
      begin
        controllo_documenti_evasi := tmyquery_go.create(nil);
        controllo_documenti_evasi.connection := arc.arcdit;
        try
          if tipo_documento = 'ordine' then
          begin
            controllo_documenti_evasi.sql.add('select * from rat where frn_codice = :frn_codice');
            controllo_documenti_evasi.sql.add('and (situazione = ''inserito'' or situazione = ''evaso parziale'')');
          end
          else if (tipo_documento = 'fattura') and (tda.fieldbyname('tda_codice_conto_acquisto').asstring <> '') then
          begin
            controllo_documenti_evasi.sql.add('select * from dat where frn_codice = :frn_codice');
            controllo_documenti_evasi.sql.add('and (situazione = ''evaso'' or situazione = ''consolidato parziale'')');
            controllo_documenti_evasi.sql.add('and tda_codice = ' + quotedstr(tda.fieldbyname('tda_codice_conto_acquisto').asstring));
            controllo_documenti_evasi.sql.add('and data_documento > :data_documento');
            controllo_documenti_evasi.parambyname('data_documento').asdate := v_data_documento.date - 400;
          end
          else if tipo_documento = 'fattura differita' then
          begin
            controllo_documenti_evasi.sql.add('select * from dat where frn_codice = :frn_codice');
            controllo_documenti_evasi.sql.add('and situazione = ''evaso''');
          end
          else
          begin
            controllo_documenti_evasi.sql.add('select * from oat where frn_codice = :frn_codice');
            controllo_documenti_evasi.sql.add('and (situazione = ''inserito'' or situazione = ''evaso parziale'')');
          end;
          controllo_documenti_evasi.params[0].asstring := trim(v_frn_codice.text);
          controllo_documenti_evasi.close;
          controllo_documenti_evasi.open;
          if not controllo_documenti_evasi.isempty then
          begin
            controllare_documenti_livello_superiore;
          end;
        finally
          controllo_documenti_evasi.free;
        end;
      end;
    end;

    if not esiste and (tda.fieldbyname('avviso_documenti_aperti').asstring = 'si') then
    begin
      documenti_aperti := tmyquery_go.create(nil);
      documenti_aperti.connection := arc.arcdit;
      if tipo_documento = 'ordine' then
      begin
        documenti_aperti.sql.text := 'select count(*) numero_documenti from oat ' +
          'where situazione <> ''evaso'' and situazione <> ''annullato'' and stampato <> ''stampato'' ' +
          'and frn_codice = ' + quotedstr(v_frn_codice.text);
      end
      else if tipo_documento = 'preventivo' then
      begin
        documenti_aperti.sql.text := 'select count(*) numero_documenti from rat ' +
          'where situazione <> ''evaso'' and situazione <> ''annullato'' and stampato <> ''stampato'' ' +
          'and frn_codice = ' + quotedstr(v_frn_codice.text);
      end
      else if copy(tipo_documento, 1, 3) = 'ddt' then
      begin
        documenti_aperti.sql.text := 'select count(*) numero_documenti from dat ' +
          'where situazione = ''inserito'' and frn_codice = ' + quotedstr(v_frn_codice.text);
      end
      else if copy(tipo_documento, 1, 7) = 'fattura' then
      begin
        documenti_aperti.sql.text := 'select count(*) numero_documenti from fat ' +
          'where tipo_documento <> ''nota credito'' and situazione = ''inserito'' and frn_codice = ' + quotedstr(v_frn_codice.text);
      end
      else if tipo_documento = 'nota credito' then
      begin
        documenti_aperti.sql.text := 'select count(*) numero_documenti from fat ' +
          'where tipo_documento = ''nota credito'' and situazione = ''inserito'' and frn_codice = ' + quotedstr(v_frn_codice.text);
      end;
      documenti_aperti.open;
      if documenti_aperti.fieldbyname('numero_documenti').asinteger <> 0 then
      begin
        messaggio(200, 'sono presenti, per il fornitore, ' + documenti_aperti.fieldbyname('numero_documenti').asstring + ' documenti dello stesso tipo non evasi');
      end;
      documenti_aperti.free;
    end;

    if not esiste then
    begin
      tdafrn := tmyquery_go.create(nil);
      tdafrn.connection := arc.arcdit;
      tdafrn.sql.add('select tda_codice');
      tdafrn.sql.add('from tdafrn');
      tdafrn.sql.add('where frn_codice = :frn_codice and tipo_documento = :tipo_documento');

      try
        if read_tabella(tdafrn, vararrayof([tabella.fieldbyname('frn_codice').asstring, tabella.fieldbyname('tipo_documento').asstring])) then
        begin
          if tdafrn.fieldbyname('tda_codice').asstring <> v_tda_codice.text then
          begin
            messaggio(100, 'per il fornitore si dovrebbe utilizzare il codice documento [' +
              tdafrn.fieldbyname('tda_codice').asstring + ']');
          end;
        end;
      finally
        tdafrn.free;
      end;
    end;
  end;

  if tipo_documento = 'ddt clienti' then
  begin
    tab_controlExit(tab_control);
  end;
end;

procedure TGESACQ.frn_codice_controllo(blocco: boolean);
begin
  if tabella.fieldbyname('tipo_documento').asstring = 'ddt clienti' then
  begin
    frn_ds.dataset := cli;
    tabella_controllo(false, cli, v_frn_codice, blocco, tab_control, tab_pagina1, tabella);
    sconto_imponibile_lordo := 'no';
  end
  else
  begin
    frn_ds.dataset := frn;
    tabella_controllo(false, frn, v_frn_codice, blocco, tab_control, tab_pagina1, tabella);
    if controllo and not frn.isempty then
    begin
      sconto_imponibile_lordo := frn.fieldbyname('sconto_imponibile_lordo').asstring;
    end;
  end;

  nom.params[0].asstring := v_frn_codice.text;
  nom.close;
  nom.open;
end;

procedure TGESACQ.assegna_tla_codice;
begin
  if tabella.fieldbyname('tla_codice').asstring <> frn.fieldbyname('tla_codice').asstring then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('tla_codice').asstring := frn.fieldbyname('tla_codice').asstring;
      assegna_valore_tla_codice;
      tla_codice_controllo(false);
    end;
  end;
  assegna_listino_con_iva;
end;

procedure TGESACQ.assegna_tpa_codice;
begin
  if tabella.fieldbyname('tpa_codice').asstring <> frn.fieldbyname('tpa_codice').asstring then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('tpa_codice').asstring := frn.fieldbyname('tpa_codice').asstring;
      assegna_valore_tpa_codice;
      tpa_codice_controllo(false);
    end;
  end;
  assegna_tsm_codice;
end;

procedure TGESACQ.assegna_tva_codice;
begin
  if tabella.fieldbyname('tva_codice').asstring <> nom.fieldbyname('tva_codice').asstring then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('tva_codice').asstring := nom.fieldbyname('tva_codice').asstring;
      tva_codice_controllo(false);
      assegna_valore_tva_codice;
    end;
  end;
  assegna_decimali;
  assegna_cambio;
  assegna_valore_cambio;
end;

procedure TGESACQ.assegna_tiv_codice;
var
  lti_progressivo: variant;
begin
  dicint.assegna_tiv_codice(0, tabella);
  assegna_valore_tiv_codice;
  tiv_codice_controllo(false);
end;

procedure TGESACQ.assegna_intra;
begin
  if tipo_documento = 'ddt clienti' then
  begin
    if tabella.fieldbyname('intra').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('intra').asstring := 'no';
      end;
    end;
  end
  else
  begin
    if read_tabella(arc.arcdit, 'tna', 'codice', nom.fieldbyname('tna_codice').asstring) then
    begin
      if tabella.fieldbyname('intra').asstring <> archivio.fieldbyname('intra').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('intra').asstring := archivio.fieldbyname('intra').asstring;
        end;
      end;
    end;
  end;
  abilita_intra;

  // reverse
  if tabella.fieldbyname('intra').asstring = 'no' then
  begin
    if tipo_documento <> 'ddt clienti' then
    begin
      v_reverse_change.enabled := true;
    end;
    if tabella.fieldbyname('reverse_change').asstring <> frn.fieldbyname('reverse_change').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('reverse_change').asstring := frn.fieldbyname('reverse_change').asstring;
      end;
    end;
  end
  else
  begin
    v_reverse_change.enabled := false;
    if tabella.fieldbyname('reverse_change').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('reverse_change').asstring := 'no';
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_iva_sospensione;
var
  iva_sospensione: string;
begin
  if arc.dit.fieldbyname('iva_sospensione').asstring = 'si' then
  begin
    iva_sospensione := 'si';
  end
  else
  begin
    iva_sospensione := frn.fieldbyname('iva_sospensione').asstring;
  end;

  if tabella.fieldbyname('iva_sospensione').asstring <> iva_sospensione then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('iva_sospensione').asstring := iva_sospensione;
      if arc.dit.fieldbyname('iva_sospensione').asstring = 'si' then
      begin
        arc.escludi_tco_tna_iva_sospensione(tabella, tabella.fieldbyname('frn_codice').asstring);
      end;
    end;
  end;

  if tabella.fieldbyname('iva_sospensione').asstring = 'si' then
  begin
    if read_tabella(arc.arcdit, 'tco', 'codice', tabella.fieldbyname('tco_codice').asstring) then
    begin
      if archivio.fieldbyname('gestione_partite').asstring = 'no' then
      begin
        messaggio(000, 'il documento prevede la gestione dell''iva con esigibilità differita (iva di cassa)' + #13 + #13 +
          'va utilizzata una causale contabile per il documento che preveda la gestione partite' + #13 +
          'per effettuare in automatico il conteggio della liquidazione iva');
        tab_control.ActivePage := tab_pagina1;
        if v_tda_codice.canfocus then
        begin
          v_tda_codice.setfocus;
        end;
        abort;
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_tsp_codice;
begin
  if tipo_documento = 'ddt clienti' then
  begin
    if tabella.fieldbyname('tsp_codice').asstring <> cli.fieldbyname('tsp_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tsp_codice').asstring := cli.fieldbyname('tsp_codice').asstring;
        assegna_valore_tsp_codice;
        tsp_codice_controllo(false);
      end;
    end;
  end
  else
  begin
    if tabella.fieldbyname('tsp_codice').asstring <> frn.fieldbyname('tsp_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tsp_codice').asstring := frn.fieldbyname('tsp_codice').asstring;
        assegna_valore_tsp_codice;
        tsp_codice_controllo(false);
      end;
    end;
    if not inf.eof then
    begin
      if tabella.fieldbyname('tsp_codice').asstring <> inf.fieldbyname('tsp_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tsp_codice').asstring := inf.fieldbyname('tsp_codice').asstring;
          assegna_valore_tsp_codice;
          tsp_codice_controllo(false);
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_tpo_codice;
begin
  if tipo_documento = 'ddt clienti' then
  begin
    if tabella.fieldbyname('tpo_codice').asstring <> cli.fieldbyname('tpo_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tpo_codice').asstring := cli.fieldbyname('tpo_codice').asstring;
        assegna_valore_tpo_codice;
        tpo_codice_controllo(false);
      end;
    end;
  end
  else
  begin
    if tabella.fieldbyname('tpo_codice').asstring <> frn.fieldbyname('tpo_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tpo_codice').asstring := frn.fieldbyname('tpo_codice').asstring;
        assegna_valore_tpo_codice;
        tpo_codice_controllo(false);
      end;
    end;
    if not inf.eof then
    begin
      if tabella.fieldbyname('tpo_codice').asstring <> inf.fieldbyname('tpo_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tpo_codice').asstring := inf.fieldbyname('tpo_codice').asstring;
          assegna_valore_tpo_codice;
          tpo_codice_controllo(false);
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_tna_codice_intra;
begin
  if tabella.fieldbyname('intra').asstring = 'si' then
  begin
    if tabella.fieldbyname('tna_codice_intra').asstring <> nom.fieldbyname('tna_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tna_codice_intra').asstring := nom.fieldbyname('tna_codice').asstring;
      end;
    end;
  end
  else
  begin
    if tabella.fieldbyname('tna_codice_intra').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tna_codice_intra').asstring := '';
      end;
    end;
  end;
  tna_codice_intra_controllo(false);
end;

procedure TGESACQ.assegna_giorni_consegna;
begin
  if tipo_documento = 'ordine' then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('giorni_consegna').asinteger := frn.fieldbyname('giorni_consegna').asinteger;
    end;
    assegna_data_consegna;
  end;
end;

procedure TGESACQ.assegna_listino_con_iva;
begin
  if not tla.isempty then
  begin
    if esiste then
    begin
      if tabella.fieldbyname('listino_con_iva').asstring <> tla.fieldbyname('iva_inclusa').asstring then
      begin
        if tabella.fieldbyname('listino_con_iva').asstring = 'no' then
        begin
          messaggio(000, 'il listino precedente prevedeva la gestione al netto dell''I.V.A. mentre l''attuale no' + #13 + #13 +
            'è possibile modificarlo prima di memorizzare la testata del documento');
        end
        else
        begin
          messaggio(000, 'il listino precedente prevedeva la gestione al lordo dell''I.V.A. mentre l''attuale no' + #13 + #13 +
            'è possibile modificarlo prima di memorizzare la testata del documento');
        end;
      end;
    end;

    if tabella.fieldbyname('listino_con_iva').asstring <> tla.fieldbyname('iva_inclusa').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('listino_con_iva').asstring := tla.fieldbyname('iva_inclusa').asstring;
      end;
    end;
  end
  else
  begin
    if tabella.fieldbyname('listino_con_iva').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('listino_con_iva').asstring := 'no';
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_tsm_codice;
begin
  if not tpa.isempty then
  begin
    if tabella.fieldbyname('tsm_codice').asstring <> tpa.fieldbyname('tsm_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tsm_codice').asstring := tpa.fieldbyname('tsm_codice').asstring;
        assegna_valore_tsm_codice;
        tsm_codice_controllo(false);
      end;
    end;
  end
  else
  begin
    if tabella.fieldbyname('tsm_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tsm_codice').asstring := '';
        tsm_codice_controllo(false);
      end;
    end;
  end;
end;

procedure TGESACQ.v_tla_codiceExit(Sender: TObject);
begin
  inherited;
  tla_codice_controllo(true);
  if controllo then
  begin
    assegna_listino_con_iva;
  end;
end;

procedure TGESACQ.tla_codice_controllo(blocco: boolean);
begin
  if v_tla_codice.enabled then
  begin
    tabella_controllo(false, tla, v_tla_codice, blocco, tab_control, tab_pagina1, tabella);
  end
  else
  begin
    if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '') then
    begin
      tla.close;
      tla.params[0].value := null;
      tla.open;
    end
    else
    begin
      tabella_controllo(true, tla, v_tla_codice, blocco, tab_control, tab_pagina1, tabella);
    end;
  end;
end;

procedure TGESACQ.v_tpa_codiceExit(Sender: TObject);
begin
  inherited;
  tpa_codice_controllo(true);
  if controllo then
  begin
    if v_tpa_codice.text <> variato_stringa then
    begin
      assegna_tsm_codice;
    end;
  end;
end;

procedure TGESACQ.tpa_codice_controllo(blocco: boolean);
begin
  if v_tpa_codice.enabled then
  begin
    tabella_controllo(false, tpa, v_tpa_codice, blocco, tab_control, tab_pagina1, tabella);
  end
  else
  begin
    tpa.close;
    tpa.params[0].value := null;
    tpa.open;
  end;
end;

procedure TGESACQ.tum_codice_controllo(blocco: boolean);
begin
  if v_tum_codice.enabled then
  begin
    tabella_controllo(false, tum, v_tum_codice, blocco, nil, nil, tabella_righe);
  end
  else
  begin
    tum.close;
    tum.params[0].value := null;
    tum.open;
  end;
end;

procedure TGESACQ.v_tsm_codiceExit(Sender: TObject);
begin
  inherited;
  tsm_codice_controllo(true);
end;

procedure TGESACQ.v_tsm_codiceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_f5) and (shift = [ssctrl]) then
  begin
    arc.sconti_percentuale(screen.activecontrol);
    selectnext(screen.activecontrol, true, true);
  end;
end;

procedure TGESACQ.tsm_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tsm, v_tsm_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESACQ.v_tva_codiceExit(Sender: TObject);
begin
  inherited;
  tva_codice_controllo(true);

  if controllo then
  begin
    if v_tva_codice.text <> variato_stringa then
    begin
      assegna_decimali;
      assegna_cambio;
      assegna_valore_cambio;
    end;
  end;
end;

procedure TGESACQ.v_tvc_codiceExit(Sender: TObject);
begin
  inherited;
  tvc_codice_controllo(true);
end;

procedure TGESACQ.v_ubicazioniClick(Sender: TObject);
begin
  inherited;

  esegui_ubicazioni;
end;

procedure TGESACQ.tva_codice_controllo(blocco: boolean);
begin
  if v_tva_codice.enabled then
  begin
    tabella_controllo(false, tva, v_tva_codice, blocco, tab_control, tab_pagina1, tabella);
  end
  else
  begin
    if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '') then
    begin
      tva.close;
      tva.params[0].value := null;
      tva.open;
    end
    else
    begin
      tabella_controllo(true, tva, v_tva_codice, blocco, tab_control, tab_pagina1, tabella);
    end;
  end;
end;

procedure TGESACQ.v_codice_cabEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_codice_abi.text;
end;

procedure TGESACQ.v_tba_codiceExit(Sender: TObject);
begin
  inherited;
  tba_codice_controllo(true);
end;

procedure TGESACQ.tba_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tba, v_tba_codice, blocco, tab_control, tab_testata_finanziario, tabella);
end;

procedure TGESACQ.v_codice_abiExit(Sender: TObject);
begin
  inherited;
  codice_abi_controllo(true);
end;

procedure TGESACQ.v_codice_cabExit(Sender: TObject);
begin
  inherited;
  codice_cab_controllo(true);
end;

procedure TGESACQ.codice_abi_controllo(blocco: boolean);
begin
  tabella_controllo(true, abi, v_codice_abi, blocco, tab_control, tab_testata_finanziario, tabella);
end;

procedure TGESACQ.codice_cab_controllo(blocco: boolean);
begin
  if v_codice_abi.text = '' then
  begin
    tabella_controllo(true, cab, v_codice_abi, v_codice_cab, blocco, tab_control, tab_testata_finanziario, tabella);
  end
  else
  begin
    tabella_controllo(false, cab, v_codice_abi, v_codice_cab, blocco, tab_control, tab_testata_finanziario, tabella);
  end;
end;

procedure TGESACQ.set_codice_archivio;
begin
  inherited;
  if screen.ActiveControl = v_codice_abi then
  begin
    codice_archivio := vararrayof([v_codice_abi.text, v_codice_cab.text]);
  end;
  if screen.ActiveControl = v_codice_cab then
  begin
    codice_archivio := vararrayof([v_codice_abi.text, v_codice_cab.text]);
  end;

  if screen.ActiveControl = v_tipologia then
  begin
    codice_archivio := vararrayof([v_cms_codice.text, v_tipologia.text]);
  end;

  if screen.ActiveControl = v_indirizzo then
  begin
    codice_archivio := vararrayof([v_frn_codice.text, v_indirizzo.text]);
  end;
end;

procedure TGESACQ.get_codice_archivio;
begin
  if screen.activecontrol = v_codice_abi then
  begin
    if (tabella.fieldbyname('codice_abi').asstring <> codice_archivio[0]) or
      (tabella.fieldbyname('codice_cab').asstring <> codice_archivio[1]) then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('codice_abi').asstring := codice_archivio[0];
        tabella.fieldbyname('codice_cab').asstring := codice_archivio[1];
      end;
    end;
  end;

  if screen.activecontrol = v_indirizzo then
  begin
    if tabella.fieldbyname('indirizzo').asstring <> codice_archivio[1] then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('indirizzo').asstring := codice_archivio[1];
      end;
    end;
  end;

  inherited;
end;

procedure TGESACQ.v_tmo_codice_collegatoExit(Sender: TObject);
begin
  inherited;
  tmo_codice_collegato_controllo(true);
  if controllo then
  begin
    assegna_valore_tma_codice_collegato;
  end;
end;

procedure TGESACQ.tmo_codice_collegato_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_collegato, v_tmo_codice_collegato, blocco, tab_control, tab_testata_magazzino, tabella);
end;

procedure TGESACQ.v_tiv_codiceExit(Sender: TObject);
begin
  inherited;
  tiv_codice_controllo(true);
end;

procedure TGESACQ.tiv_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tiv, v_tiv_codice, blocco, tab_control, tab_testata_riferimento, tabella);
end;

procedure TGESACQ.v_tcd_codice_aperturaExit(Sender: TObject);
begin
  inherited;
  tcd_codice_apertura_controllo(true);
end;

procedure TGESACQ.tcd_codice_apertura_controllo(blocco: boolean);
begin
  tabella_controllo(true, tcd_apertura, v_tcd_codice_apertura, blocco, tab_control, tab_testata_riferimento, tabella);
end;

procedure TGESACQ.v_tcd_codice_chiusuraExit(Sender: TObject);
begin
  inherited;
  tcd_codice_chiusura_controllo(true);
end;

procedure TGESACQ.tcd_codice_chiusura_controllo(blocco: boolean);
begin
  tabella_controllo(true, tcd_chiusura, v_tcd_codice_chiusura, blocco, tab_control, tab_testata_riferimento, tabella);
end;

procedure TGESACQ.v_tsp_codiceExit(Sender: TObject);
begin
  inherited;
  tsp_codice_controllo(true);
end;

procedure TGESACQ.tsp_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tsp, v_tsp_codice, blocco, tab_control, tab_testata_spedizione, tabella);
end;

procedure TGESACQ.v_tpo_codiceExit(Sender: TObject);
begin
  inherited;
  tpo_codice_controllo(true);
end;

procedure TGESACQ.tpo_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tpo, v_tpo_codice, blocco, tab_control, tab_testata_spedizione, tabella);
end;

procedure TGESACQ.v_griglia_righeExit(Sender: TObject);
begin
  inherited;

  v_dettaglio_taglie.enabled := false;
  tool_sequenza.down := false;
  tool_sequenza.enabled := false;

  disabilita_campo(v_totalizza);

  disabilita_campo(v_manutezione_macchinari);
  disabilita_campo(v_manutezione_interventi);

  v_non_conformita.enabled := false;

  v_rdo.enabled := false;
  v_senza_prezzo.enabled := false;
  v_gestione_collegato.enabled := false;
  v_crea_listino_vendita.enabled := false;
  v_crea_listino_fornitore.enabled := false;
  v_codice_articolo_fornitore.enabled := false;
  v_lettore.enabled := false;
  v_produzione_conto_terzi.enabled := false;

  abilita_bottoni(false);
  tool_evasione.enabled := false;
  tool_evasione.hint := '';
  tool_etiart.enabled := false;

  disabilita_campo(v_ubicazioni);
end;

procedure TGESACQ.v_griglia_righeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (lowercase(column.fieldname) = 'art_descrizione') then
  begin
    if
      (((tipo_documento = 'ddt') and (tabella_righe.fieldbyname('ddt_artna').asstring = 'si')) or
      (((tipo_documento = 'fattura') or (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito')) and
      (tabella_righe.fieldbyname('fatture_artna').asstring = 'si')) or
      ((tipo_documento = 'ordine') and (tabella_righe.fieldbyname('ordini_artna').asstring = 'si')) or
      ((tipo_documento = 'preventivo') and (tabella_righe.fieldbyname('preventivi_artna').asstring = 'si'))) then
    begin
      v_griglia_righe.canvas.brush.color := $00ccff99;
      v_griglia_righe.canvas.font.color := clblack;
    end;
  end;

  if (lowercase(column.fieldname) = 'situazione') and
    ((tipo_documento = 'ordine') or (copy(tipo_documento, 1, 10) = 'preventivo')) then
  begin
    if tabella_righe.fieldbyname('situazione').value = 'evaso' then
    begin
      v_griglia_righe.canvas.brush.color := cllime;
      v_griglia_righe.canvas.font.color := clblack;
    end
    else if tabella_righe.fieldbyname('situazione').value = 'evaso parziale' then
    begin
      v_griglia_righe.canvas.brush.color := claqua;
      v_griglia_righe.canvas.font.color := clblack;
    end
    else if tabella_righe.fieldbyname('situazione').value = 'annullato' then
    begin
      v_griglia_righe.canvas.brush.color := clred;
      v_griglia_righe.canvas.font.color := clblack;
    end;
  end;

  inherited;
end;

procedure TGESACQ.v_griglia_righeEnter(Sender: TObject);
begin
  inherited;

  tabella_righeAfterScroll(nil);
  tub_codice_globale := '';

  tool_sequenza.enabled := true;

  if esiste then
  begin
    abilita_campo(v_totalizza);
  end
  else
  begin
    disabilita_campo(v_totalizza);
  end;

  if (copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito') then
  begin
    abilita_campo(v_manutezione_macchinari);
    abilita_campo(v_manutezione_interventi);
  end
  else
  begin
    disabilita_campo(v_manutezione_macchinari);
    disabilita_campo(v_manutezione_interventi);
  end;

  if (tipo_documento = 'ddt') or (tipo_documento = 'fattura') or
    (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
  begin
    v_non_conformita.enabled := true;
  end
  else
  begin
    v_non_conformita.enabled := false;
  end;

  if tabella_righe.fieldbyname('documento_origine').asstring = 'rda' then
  begin
    v_rdo.enabled := true;
  end
  else
  begin
    v_rdo.enabled := false;
  end;

  if arc.dit.fieldbyname('ubicazione_multipla').asstring = 'si' then
  begin
    abilita_campo(v_ubicazioni);
  end;

  v_esistenza.enabled := true;

  if tabella.fieldbyname('situazione').asstring = 'inserito' then
  begin
    v_lettore.enabled := true;
  end
  else
  begin
    v_lettore.enabled := false;
  end;

  if trim(v_art_codice.text) <> '' then
  begin
    v_crea_listino_vendita.enabled := true;
    v_crea_listino_fornitore.enabled := true;
    v_codice_articolo_fornitore.enabled := true;
  end
  else
  begin
    v_crea_listino_vendita.enabled := false;
    v_crea_listino_fornitore.enabled := false;
    v_codice_articolo_fornitore.enabled := false;
  end;

  if (tipo_documento = 'ddt') or (tipo_documento = 'fattura') then
  begin
    v_senza_prezzo.enabled := true;
  end;

  if tabella_righe.fieldbyname('documento_origine').asstring = '' then
  begin
    v_gestione_collegato.enabled := false;
  end
  else
  begin
    v_gestione_collegato.enabled := true;
  end;

  abilita_art_codice;
  abilita_bottoni(true);

  attiva_esiste(false);
  attiva_importo;
  tool_evasione.enabled := false;

  if (tipo_documento = 'ddt') and (tda.fieldbyname('acquisto_call_off_stock').asstring = 'si') then
  begin
    tool_evasione.enabled := true;
    tool_evasione.hint := 'evasione call-off-stock [F9] ' + hint_evadi_documento;
  end
  else if tipo_documento = 'ordine' then
  begin
    tool_evasione.enabled := true;
    tool_evasione.hint := 'evasione preventivo ' + hint_evadi_documento;
  end
  else if (tipo_documento = 'fattura') and (tda.fieldbyname('tda_codice_conto_acquisto').asstring <> '') then
  begin
    tool_evasione.enabled := true;
    tool_evasione.hint := 'evasione ddt conto acquisto [F9] ' + hint_evadi_documento;
  end
  else if tipo_documento = 'fattura differita' then
  begin
    if tabella.fieldbyname('situazione').asstring = 'inserito' then
    begin
      tool_evasione.enabled := true;
      tool_evasione.hint := 'evasione bolle e d.d.t. ' + hint_evadi_documento;
    end;
  end
  else if ((tipo_documento = 'ddt') or (tipo_documento = 'fattura')) and
    (v_situazione.text = 'inserito') then
  begin
    if tabella.fieldbyname('situazione').asstring = 'inserito' then
    begin
      tool_evasione.enabled := true;
      tool_evasione.hint := 'evasione ordine ' + hint_evadi_documento;
    end;
  end
  else if (tipo_documento = 'ddt clienti') and (tabella.fieldbyname('tda_codice_differite').asstring = '') and
    (v_situazione.text = 'inserito') then
  begin
    if tabella.fieldbyname('situazione').asstring = 'inserito' then
    begin
      tool_evasione.enabled := true;
      tool_evasione.hint := 'rientro da conto vendita / visione ' + hint_evadi_documento;
    end;
  end
  else if tipo_documento = 'nota credito' then
  begin
    if tabella.fieldbyname('situazione').asstring = 'inserito' then
    begin
      tool_evasione.enabled := true;
      tool_evasione.hint := 'evasione d.d.t. reso a fornitori' + hint_evadi_documento;
    end;
  end;

  esistenza_deposito.close;
  esistenza_totale.close;
  esistenza_principale.close;

  if evasione_preventivo_ordine then
  begin
    tabella_righe.cancel;
    evasione_documento('articolo');
    evasione_preventivo_ordine := false;
    art_codice_evasione_preventivo_ordine := '';
  end;

  if tabella_righe.fieldbyname('art_codice').asstring <> '' then
  begin
    tool_etiart.enabled := true;
  end
  else
  begin
    tool_etiart.enabled := false;
  end;

  if not esiste_documento and not eseguito_gesdocgri and (tda.fieldbyname('usa_griglia_input').asstring = 'si') then
  begin
    eseguito_gesdocgri := true;
    esegui_gesdocgri;
  end;
end;

procedure TGESACQ.v_tsm_codice_scontoExit(Sender: TObject);
begin
  tsm_codice_sconto_controllo(true);
end;

procedure TGESACQ.v_tsm_codice_scontoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_f5) and (shift = [ssctrl]) then
  begin
    arc.sconti_percentuale(screen.activecontrol);
    selectnext(screen.activecontrol, true, true);
  end;
end;

procedure TGESACQ.tsm_codice_sconto_controllo(blocco: boolean);
begin
  if v_tsm_codice_sconto.enabled then
  begin
    tabella_controllo(true, tsm_sconto, v_tsm_codice_sconto, blocco, tab_control, tab_testata_spedizione, tabella);
  end
  else
  begin
    tsm_sconto.close;
    tsm_sconto.params[0].value := null;
    tsm_sconto.open;
  end;
end;

procedure TGESACQ.abilita_bottoni(flag: boolean);
begin
  if (flag) and (parte_attiva = 'griglia_righe') then
  begin
    // lotti
    if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti') or (tipo_documento = 'nota credito') or
      (tipo_documento = 'fattura')) and (trim(v_tmo_codice.text) <> '') then
    begin
      if not art.eof then
      begin
        if (art.fieldbyname('lotti').asstring = 'si') and (lotti = 'si') then
        begin
          v_lotti.enabled := true;
        end
        else
        begin
          v_lotti.enabled := false;
        end;
      end;
    end
    else
    begin
      v_lotti.enabled := false;
    end;

    // analitica
    if (analitica = 'si') and (tabella_righe.fieldbyname('art_codice').asstring <> '') then
    begin
      v_analitica.enabled := true;
    end
    else
    begin
      v_analitica.enabled := false;
    end;

    // commesse
    if (commesse = 'si') and (tipo_documento <> 'ordine') and (tipo_documento <> 'preventivo')
      and (tabella_righe.fieldbyname('art_codice').asstring <> '') then
    begin
      v_commesse.enabled := true;
    end
    else
    begin
      v_commesse.enabled := false;
    end;

    // conto terzi
    if conto_terzi = 'si' then
    begin
      v_conto_terzi.enabled := true;
    end
    else
    begin
      v_conto_terzi.enabled := false;
    end;

    // accessori - eccetera
    if (((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and
      (tabella.fieldbyname('tda_codice_differite').asstring = '')) or (v_art_codice.text = '') then
    begin
      v_accessori.enabled := false;
      v_crea_listino_fornitore.enabled := false;
      v_crea_listino_vendita.enabled := false;
    end
    else
    begin
      v_accessori.enabled := tipo_documento <> 'fattura differita';
      v_crea_listino_fornitore.enabled := true;
      v_crea_listino_vendita.enabled := true;
    end;

    // distinta base
    if tabella_righe.fieldbyname('situazione').asstring = 'inserito' then
    begin
      v_distinta_base.enabled := true;
    end
    else
    begin
      v_distinta_base.enabled := false;
    end;

    if (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
    begin
      if (esiste_righe) and (tabella_righe.fieldbyname('situazione').asstring = 'inserito') and
        (tabella_righe.fieldbyname('art_codice').asstring <> '') then
      begin
        v_evadi_riga_documento.enabled := false;
        v_annulla_riga_documento.enabled := true;
      end
      else if (esiste_righe) and (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') and
        (tabella_righe.fieldbyname('art_codice').asstring <> '') then
      begin
        v_annulla_riga_documento.enabled := false;
        v_evadi_riga_documento.enabled := true;
      end
      else
      begin
        v_annulla_riga_documento.enabled := false;
        v_evadi_riga_documento.enabled := false;
      end;
    end;

    //  produzione conto terzi
    if (tabella_righe.fieldbyname('ovr_tipo').asstring = '') and (tda.fieldbyname('produzione_conto_terzi').asstring = 'si') then
    begin
      v_produzione_conto_terzi.enabled := true;
    end;
  end
  else
  begin
    v_commesse.enabled := false;
    v_conto_terzi.enabled := false;
    v_analitica.enabled := false;
    v_lotti.enabled := false;
    v_accessori.enabled := false;
    v_distinta_base.enabled := false;
    v_annulla_riga_documento.enabled := false;
    v_evadi_riga_documento.enabled := false;

    v_annulla_riga_documento.enabled := false;
    v_evadi_riga_documento.enabled := false;
    v_produzione_conto_terzi.enabled := false;
  end;
end;

procedure TGESACQ.pannello_righeEnter(Sender: TObject);
begin
  inherited;

  scorporo_eseguito := false;
  progressivo_rma := 0;
  progressivo_nca := 0;
  tac_codice_nca := '';

  if esiste_righe then
  begin
    if arc_prg.fieldbyname('abr_id').asinteger = 0 then
    begin
      tool_f7.enabled := true;
    end;
    if (tda.fieldbyname('note_visibili').asstring = 'no') then
    begin
      if tabella_righe.fieldbyname('note').asstring <> '' then
      begin
        v_note_righe.visible := true;
      end
      else
      begin
        v_note_righe.visible := false;
      end;
    end
    else
    begin
      v_note_righe.visible := true;
    end;
  end
  else
  begin
    tool_f7.enabled := false;
    if (tda.fieldbyname('note_visibili').asstring = 'no') then
    begin
      v_note_righe.visible := false;
    end
    else
    begin
      v_note_righe.visible := true;
    end;
  end;
  codice_lotto_matricola_singolo := '';

  assegna_gestioni;

  if tabella_righe.fieldbyname('documento_origine').asstring = '' then
  begin
    v_gestione_collegato.enabled := false;
  end
  else
  begin
    v_gestione_collegato.enabled := true;
  end;

  assegna_decimali_quantita;
  attiva_importo;
end;

procedure TGESACQ.azzera_vecchio_righe;
begin
  vecchio_art_codice := '';
  vecchio_tma_codice_righe := '';
  vecchio_numero_colli := 0;
  vecchio_numero_confezioni := 0;
  vecchio_quantita := 0;
  vecchio_ovr_tipo := '';
  vecchio_tum_quantita_base := 0;
  vecchio_prezzo := 0;
  vecchio_tsm_codice_righe := '';
  vecchio_tsm_codice_art := '';
  vecchio_tipo_movimento := '';
  vecchio_importo := 0;
  vecchio_importo_euro := 0;
  vecchio_importo_iva := 0;
  vecchio_importo_iva_euro := 0;
  vecchio_gen_codice_righe := '';
  vecchio_tiv_codice_righe := '';
  vecchio_saldo_acconto := '';
  vecchio_situazione_righe := '';
  vecchio_cms_codice := '';
  vecchio_tipologia := '';
end;

procedure TGESACQ.assegna_vecchio_righe;
begin
  vecchio_art_codice := tabella_righe.fieldbyname('art_codice').asstring;
  vecchio_tma_codice_righe := tabella_righe.fieldbyname('tma_codice').asstring;
  vecchio_numero_colli := tabella_righe.fieldbyname('numero_colli').asinteger;
  vecchio_numero_confezioni := tabella_righe.fieldbyname('numero_confezioni').asinteger;
  vecchio_quantita := tabella_righe.fieldbyname('quantita').asfloat;
  vecchio_ovr_tipo := tabella_righe.fieldbyname('ovr_tipo').asstring;
  vecchio_tum_quantita_base := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
  vecchio_prezzo := tabella_righe.fieldbyname('prezzo').asfloat;
  vecchio_tsm_codice_righe := tabella_righe.fieldbyname('tsm_codice').asstring;
  vecchio_tsm_codice_art := tabella_righe.fieldbyname('tsm_codice_art').asstring;
  vecchio_tipo_movimento := tabella_righe.fieldbyname('tipo_movimento').asstring;
  vecchio_importo := tabella_righe.fieldbyname('importo').asfloat;
  vecchio_importo_euro := tabella_righe.fieldbyname('importo_euro').asfloat;
  vecchio_importo_iva := tabella_righe.fieldbyname('importo_iva').asfloat;
  vecchio_importo_iva_euro := tabella_righe.fieldbyname('importo_iva_euro').asfloat;
  vecchio_gen_codice_righe := tabella_righe.fieldbyname('gen_codice').asstring;
  vecchio_tiv_codice_righe := tabella_righe.fieldbyname('tiv_codice').asstring;
  vecchio_saldo_acconto := tabella_righe.fieldbyname('saldo_acconto').asstring;
  vecchio_situazione_righe := tabella_righe.fieldbyname('situazione').asstring;
  vecchio_cms_codice := tabella_righe.fieldbyname('cms_codice').asstring;
  vecchio_tipologia := tabella_righe.fieldbyname('tipologia').asstring;
end;

procedure TGESACQ.abilitazioni_righe;
begin
  esistenza_deposito.close;
  esistenza_totale.close;
  esistenza_principale.close;

  abilita_art_codice;
  attiva_importo;
  abilita_bottoni(true);

  if tabella_righe.fieldbyname('documento_origine').asstring = '' then
  begin
    v_gestione_collegato.enabled := false;
  end
  else
  begin
    v_gestione_collegato.enabled := true;
  end;
end;

procedure TGESACQ.v_art_codiceEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_art_codice.text;
  abilita_art_codice;
  disabilita_campo(v_dettaglio);
end;

procedure TGESACQ.v_pagperClick(Sender: TObject);
var
  pr: tpagper;
begin
  pr := tpagper.create(nil);

  pr.codice := vararrayof([v_progressivo.text, '']);
  pr.modulo := 'acquisti';
  pr.tipo_documento := tipo_documento;
  pr.totale_documento := tabella.fieldbyname('importo_totale').asfloat;
  pr.totale_documento_euro := tabella.fieldbyname('importo_totale_euro').asfloat;
  if (((tipo_documento = 'preventivo') or (tipo_documento = 'ordine')) and (tabella.fieldbyname('situazione').asstring <> 'evaso')) or
    (((tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine')) and (tabella.fieldbyname('situazione').asstring <> 'consolidato')) then
  begin
    pr.modificabile := true;
  end
  else
  begin
    pr.modificabile := false;
  end;
  pr.showmodal;

  pr.free;
end;

procedure TGESACQ.v_prezzoChange(Sender: TObject);
begin
  inherited;
  controllo_blocco_modifica_prezzi_vendita(sender);
end;

procedure TGESACQ.v_prezzoEnter(Sender: TObject);
begin
  inherited;
  variato_importo := arrotonda(v_prezzo.value, decimali_max_prezzo_acq);
  if (v_quantita.value <> 0) and (v_prezzo.value = 0) then
  begin
    cerca_prezzo;
    calcola_importo;
  end;
end;

procedure TGESACQ.v_art_codiceExit(Sender: TObject);
var
  tipo_evasione: string;
  evasione, evasione_ordine: boolean;
  art_clienti, art_preventivi_ordini: tmyquery_go;
  stringa: string;
  pr: tvisorda;
begin
  inherited;

  if controllo then
  begin
    if esiste_righe and (v_art_codice.text <> variato_stringa) and
      (tabella_righe.fieldbyname('documento_origine').asstring <> '') then
    begin
      messaggio(000, 'non è possibile variare il codice articolo' + slinebreak +
        'di un documento derivato');
      tabella_righe.cancel;
      fuoco(v_art_codice);
      abort;
    end
    else
    begin
      evasione_ordine := false;

      if not esiste_righe and (v_art_codice.text <> '') then
      begin
        if tda.fieldbyname('controllo_articolo_ordini').asstring = 'si' then
        begin
          if read_tabella(art_oar, vararrayof([tabella.fieldbyname('frn_codice').asstring, v_art_codice.text])) then
          begin
            pr := tvisorda.create(nil);
            pr.form_chiamante := self;
            pr.showmodal;

            if pr.progressivo <> 0 then
            begin
              if tabella_edit(tabella_righe) then
              begin
                art_codice_controllo(false);

                tabella_righe.fieldbyname('descrizione1').asstring := art_oar.fieldbyname('descrizione1').asstring;
                tabella_righe.fieldbyname('descrizione2').asstring := art_oar.fieldbyname('descrizione2').asstring;
                tabella_righe.fieldbyname('numero_colli').asinteger := art_oar.fieldbyname('numero_colli_residui').asinteger;
                tabella_righe.fieldbyname('numero_confezioni').asinteger := art_oar.fieldbyname('numero_confezioni_residue').asinteger;
                tabella_righe.fieldbyname('tum_codice').asstring := art_oar.fieldbyname('tum_codice').asstring;
                tabella_righe.fieldbyname('quantita').asfloat := art_oar.fieldbyname('quantita_residua').asfloat;
                tabella_righe.fieldbyname('tum_quantita_base').asfloat := art_oar.fieldbyname('tum_quantita_base_residua').asfloat;
                tabella_righe.fieldbyname('prezzo').asfloat := art_oar.fieldbyname('prezzo').asfloat;
                tabella_righe.fieldbyname('tsm_codice').asstring := art_oar.fieldbyname('tsm_codice').asstring;
                tabella_righe.fieldbyname('tsm_codice_art').asstring := art_oar.fieldbyname('tsm_codice_art').asstring;
                tabella_righe.fieldbyname('importo_sconto').asfloat := art_oar.fieldbyname('importo_sconto_residuo').asfloat;
                tabella_righe.fieldbyname('tipo_movimento').asstring := art_oar.fieldbyname('tipo_movimento').asstring;
                tabella_righe.fieldbyname('saldo_acconto').asstring := 'saldo';
                tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice').asstring;
                tabella_righe.fieldbyname('tma_codice_collegato').asstring := tabella.fieldbyname('tma_codice_collegato').asstring;
                if tabella_righe.fieldbyname('peso_netto_riga').asfloat = 0 then
                begin
                  tabella_righe.fieldbyname('peso_netto_riga').asfloat := arrotonda
                    (art.fieldbyname('peso_netto').asfloat * tabella_righe.fieldbyname('tum_quantita_base').asfloat, 4);
                end;
                tabella_righe.fieldbyname('dimensione1').asfloat := art_oar.fieldbyname('dimensione1').asfloat;
                tabella_righe.fieldbyname('dimensione2').asfloat := art_oar.fieldbyname('dimensione2').asfloat;
                tabella_righe.fieldbyname('dimensione3').asfloat := art_oar.fieldbyname('dimensione3').asfloat;
                tabella_righe.fieldbyname('importo_statistico_intra').asfloat := art_oar.fieldbyname('importo_statistico_intra').asfloat;
                tabella_righe.fieldbyname('evadere_note').asstring := tda.fieldbyname('evadere_note').asstring;
                tabella_righe.fieldbyname('note_art').asstring := tda.fieldbyname('note_come_descrizioni').asstring;
                tabella_righe.fieldbyname('ignora_note_art').asstring := art_oar.fieldbyname('ignora_note_art').asstring;
                tabella_righe.fieldbyname('cen_codice').asstring := art_oar.fieldbyname('cen_codice').asstring;
                tabella_righe.fieldbyname('tvc_codice').asstring := art_oar.fieldbyname('tvc_codice').asstring;

                if art_oar.fieldbyname('evadere_note').asstring = 'si' then
                begin
                  tabella_righe.fieldbyname('note').asstring := art_oar.fieldbyname('note').asstring;
                end;
                tabella_righe.fieldbyname('note_interne').asstring := art_oar.fieldbyname('note_interne').asstring;

                if (tabella.fieldbyname('tiv_codice').asstring <> '') then
                begin
                  tabella_righe.fieldbyname('tiv_codice').asstring := tabella.fieldbyname('tiv_codice').asstring;
                end
                else
                begin
                  tabella_righe.fieldbyname('tiv_codice').asstring := art.fieldbyname('tiv_codice_acquisti').asstring;
                end;

                cpa.close;
                cpa.parambyname('tcf_codice').asstring := frn.fieldbyname('tcf_codice').asstring;
                cpa.parambyname('taq_codice').asstring := art.fieldbyname('taq_codice').asstring;
                cpa.open;
                tabella_righe.fieldbyname('gen_codice').asstring := cpa.fieldbyname('gen_codice').asstring;
                if copy(tabella_righe.fieldbyname('tipo_movimento').asstring, 1, 7) = 'omaggio' then
                begin
                  tabella_righe.fieldbyname('gen_codice_storno').asstring := archivio.fieldbyname('gen_codice_omaggi').asstring;
                end
                else if tabella_righe.fieldbyname('tipo_movimento').asstring = 'sconto merce' then
                begin
                  tabella_righe.fieldbyname('gen_codice_storno').asstring := archivio.fieldbyname('gen_codice_sconti').asstring;
                end;

                calcola_importo;

                tabella_righe.fieldbyname('documento_origine').asstring := 'ordine acq';
                tabella_righe.fieldbyname('doc_progressivo_origine').asinteger := art_oar.fieldbyname('progressivo').asinteger;
                tabella_righe.fieldbyname('doc_riga_origine').asinteger := art_oar.fieldbyname('riga').asinteger;

                evasione_ordine := true;

                fuoco(v_griglia_righe);
              end;
            end;

            freeandnil(pr);
          end
          else
          begin
            messaggio(200, 'non sono presenti ordini fornitori con l''articolo selezionato');
          end;
        end;
      end;

      if not evasione_ordine then
      begin
        if (tabella_righe.fieldbyname('situazione').asstring <> 'inserito') and
          (v_art_codice.text <> vecchio_art_codice) then
        begin
          messaggio(000, 'non è consentito variare il codice articolo per un documento già evaso');
          if v_art_codice.canfocus then
          begin
            v_art_codice.setfocus;
          end;
          abort;
        end
        else
        begin
          esegui_esistenza;

          if trim(v_art_codice.text) = '' then
          begin
            if not esiste_righe then
            begin
              if tabella_edit(tabella_righe) then
              begin
                tabella_righe.fieldbyname('art_codice').asstring := '';
              end;
            end;

            esistenza_deposito.close;
            esistenza_totale.close;
            esistenza_principale.close;

            abilita_art_codice;
            assegna_valore_art_codice;
          end
          else
          begin
            if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '') then
            begin
              // non calcolare importi per bolle e DDT non di acquisto
              art_codice_controllo(true);

              if (tabella_righe.state = dsinsert) or (variato_stringa <> v_art_codice.text) then
              begin
                esegui_controllo_esistenza;
                abilita_art_codice;
                assegna_art_codice;

                assegna_tiv_codice_righe;
              end;
            end
            else
            begin
              art_codice_controllo(true);

              if (v_art_codice.text <> '') and (tipo_documento = 'ordine') and (art.fieldbyname('escludi_notifica_in_ordine').asstring = 'no') and
                (variato_stringa <> v_art_codice.text) and (tda.fieldbyname('notifica_articolo_in_ordine').asstring = 'si') then
              begin
                if not notifica_in_ordine(v_art_codice.text) then
                begin
                  fuoco(v_art_codice);
                  abort;
                end;
              end;

              if (tabella_righe.state = dsinsert) or (variato_stringa <> v_art_codice.text) then
              begin
                if tabella_righe.fieldbyname('documento_origine').asstring <> '' then
                begin
                  messaggio(000, 'prestare attenzione alla variazione del codice articolo' + #13 +
                    'la riga fa riferimento ad un ' + tabella_righe.fieldbyname('documento_origine').asstring);
                end;

                esegui_controllo_esistenza;
                abilita_art_codice;
                assegna_art_codice;

                assegna_tiv_codice_righe;
                assegna_gen_codice;

                cerca_prezzo;

                if (art.fieldbyname('tipo_articolo').asstring = 'fuori listino') and (tabella_righe.fieldbyname('artp_codice').asstring <> '') then
                begin
                  artp.close;
                  artp.parambyname('codice').asstring := tabella_righe.fieldbyname('artp_codice').asstring;
                  artp.open;
                  tabella_righe.fieldbyname('descrizione1').asstring := artp.fieldbyname('descrizione1').asstring;
                  tabella_righe.fieldbyname('descrizione2').asstring := artp.fieldbyname('descrizione2').asstring;
                  tabella_righe.fieldbyname('tum_codice').asstring := artp.fieldbyname('tum_codice').asstring;
                  tabella_righe.fieldbyname('tum_codice').asstring := artp.fieldbyname('tum_codice').asstring;
                  tabella_righe.fieldbyname('tiv_codice').asstring := artp.fieldbyname('tiv_codice_vendite').asstring;
                  tabella_righe.fieldbyname('prezzo').asfloat := artp.fieldbyname('prezzo_acquisto').asfloat;
                  tabella_righe.fieldbyname('tsm_codice').asstring := artp.fieldbyname('tsm_codice').asstring;
                end;

                calcola_importo;
                attiva_importo;
              end;
            end;
          end;
        end;

        if (not esiste_righe) and (v_art_codice.text <> '') and (art.fieldbyname('visualizza_note_acquisti').asstring = 'si') and
          (art.fieldbyname('note').asstring <> '') then
        begin
          messaggio(100, art.fieldbyname('note').asstring);
        end;

        if (v_art_codice.text <> '') and (art.fieldbyname('input_descrizione').asstring = 'si') then
        begin
          if v_descrizione1_riga.canfocus then
          begin
            v_descrizione1_riga.setfocus;
          end;
        end;

        if tda.fieldbyname('tlv_codice').asstring = '' then
        begin
          lsv.close;
        end
        else
        begin
          lsv.close;
          lsv.parambyname('art_codice').asstring := v_art_codice.text;
          lsv.parambyname('tlv_codice').asstring := tda.fieldbyname('tlv_codice').asstring;
          lsv.parambyname('data').asdate := now;
          lsv.open;
        end;

        if not esiste_righe and (v_art_codice.text <> '') then
        begin
          if tda.fieldbyname('controllo_articoli_doppi').asstring = 'si' then
          begin
            art_doppi.close;
            art_doppi.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
            art_doppi.parambyname('art_codice').asstring := v_art_codice.text;
            art_doppi.open;
            if not art_doppi.isempty then
            begin
              messaggio(200, 'l''articolo è già stato inserito alla riga ' + art_doppi.fieldbyname('riga').asstring);
            end;
          end;

          if (tipo_documento = 'ddt clienti') and (tda.fieldbyname('controllo_articolo_consegnato').asstring = 'si') then
          begin
            art_clienti := tmyquery_go.create(nil);
            art_clienti.connection := arc.arcdit;
            art_clienti.sql.add('select fvt.data_documento, fvt.numero_documento, fvr.quantita');
            art_clienti.sql.add('from fvr');
            art_clienti.sql.add('inner join fvt on fvt.progressivo = fvr.progressivo');
            art_clienti.sql.add('where fvr.art_codice = ' + quotedstr(v_art_codice.text));
            art_clienti.sql.add('and fvt.cli_codice = ' + quotedstr(v_frn_codice.text));
            art_clienti.sql.add('order by 1 desc, 2 desc');
            art_clienti.sql.add('limit 15');
            art_clienti.open;
            if art_clienti.isempty then
            begin
              messaggio(200, 'l''articolo non è mai stato venduto al cliente');
            end
            else
            begin
              stringa := '';
              while not art_clienti.eof do
              begin
                stringa := stringa + #13 + formatdatetime('dd/mm/yyyy', art_clienti.fieldbyname('data_documento').asdatetime) + '  ' +
                  art_clienti.fieldbyname('numero_documento').asstring + '  ' +
                  formatfloat(formato_display_quantita, art_clienti.fieldbyname('quantita').asfloat);

                art_clienti.next;
              end;

              messaggio(100, 'l''articolo è stato venduto al cliente con le seguenti fatture (ultime 15)' + #13 + stringa);
            end;
            art_clienti.free;
          end;
        end;

        if (controllo_articolo_livello_superiore = 'si') and (not esiste_righe) and (trim(v_art_codice.text) <> '') then
        begin
          art_preventivi_ordini := tmyquery_go.create(nil);
          art_preventivi_ordini.connection := arc.arcdit;
          try
            if (tipo_documento = 'ordine') then
            begin
              art_preventivi_ordini.sql.add('select art_codice from rar');
              art_preventivi_ordini.sql.add('inner join rat on rat.progressivo = rar.progressivo');
              art_preventivi_ordini.sql.add('where rar.art_codice = :art_codice');
              art_preventivi_ordini.sql.add('and (rar.situazione = ''inserito'' or rar.situazione = ''evaso parziale'')');
              art_preventivi_ordini.sql.add('and rat.frn_codice = :frn_codice');
              art_preventivi_ordini.sql.add('and (rat.data_validita >= :data_documento or rat.data_validita is null)');

              art_preventivi_ordini.params[2].asdate := v_data_documento.date;
              tipo_evasione := 'preventivo';
            end
            else
            begin
              art_preventivi_ordini.sql.add('select art_codice from oar');
              art_preventivi_ordini.sql.add('inner join oat on oat.progressivo = oar.progressivo');
              art_preventivi_ordini.sql.add('where oar.art_codice = :art_codice');
              art_preventivi_ordini.sql.add('and (oar.situazione = ''inserito'' or oar.situazione = ''evaso parziale'')');
              art_preventivi_ordini.sql.add('and oat.frn_codice = :frn_codice');

              tipo_evasione := 'ordine';
            end;

            art_preventivi_ordini.params[0].asstring := v_art_codice.text;
            art_preventivi_ordini.params[1].asstring := v_frn_codice.text;
            art_preventivi_ordini.close;
            art_preventivi_ordini.open;
            if not art_preventivi_ordini.eof then
            begin
              evasione := false;
              if art_preventivi_ordini.recordcount = 1 then
              begin
                if messaggio(300, 'è presente un ' + tipo_evasione + ' non ancora evaso per l''articolo ' +
                  v_art_codice.text + #13 + 'lo si vuole evadere?') = 1 then
                begin
                  evasione := true;
                end;
              end
              else
              begin
                if messaggio(300, 'sono presenti ' + inttostr(art_preventivi_ordini.recordcount) +
                  ' ' + tipo_evasione + ' non ancora evasi per l''articolo ' + v_art_codice.text + #13 +
                  'li si vuole evadere?') = 1 then
                begin
                  evasione := true;
                end;
              end;

              if evasione then
              begin
                variato_stringa := v_art_codice.text;

                evasione_preventivo_ordine := true;
                art_codice_evasione_preventivo_ordine := v_art_codice.text;
                tabella_righe.cancel;
                tasto_esc := true;
                esci;
              end;
            end;
          finally
            art_preventivi_ordini.free;
          end;
        end;

        //  tenere questo pezzo per ultimo (per lettura barcode keypress in griglia)
        if not esiste_righe then
        begin
          if letto_barcode_articolo then
          begin
            if tabella_edit(tabella_righe) then
            begin
              if arc.dit.fieldbyname('barcode_quantita_unitaria').asstring = 'si' then
              begin
                if quantita_barcode_articolo <> 0 then
                begin
                  tabella_righe.fieldbyname('quantita').asfloat := quantita_barcode_articolo;
                  cerca_prezzo;
                  calcola_importo;
                  pannello_righeexit(pannello_righe);
                  v_griglia_righe.setfocus;
                end;
              end;
            end;
          end
          else if codice_barre_quantita <> 0 then
          begin
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('quantita').asfloat := codice_barre_quantita;
              cerca_prezzo;
              calcola_importo;
              pannello_righeexit(pannello_righe);
              v_griglia_righe.setfocus;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.cerca_prezzo;
begin
  if tipo_documento <> 'ddt clienti' then
  begin
    if ultimo_prezzo = 'si' then
    begin
      cerca_prezzo('ultimo prezzo acquisto');
    end
    else
    begin
      cerca_prezzo(tipo_prezzo);
    end;

    if tabella_edit(tabella_righe) then
    begin
      tabella_righe.fieldbyname('prezzo').asfloat := prezzo;
      tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;
      tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
    end;

    tsm_codice_righe_controllo(false);
    tsm_codice_art_controllo(false);
  end;
end;

procedure TGESACQ.assegna_decimali_quantita;
begin
  cifre_decimali_quantita_acquisti := decimali_quantita(tabella_righe.fieldbyname('tum_codice').asstring);
  cifre_decimali_quantita := decimali_quantita_art(tabella_righe.fieldbyname('art_codice').asstring);
end;

procedure TGESACQ.art_codice_controllo(blocco: boolean);
begin
  if blocco and esiste_righe and (vecchio_art_codice <> v_art_codice.text) and (tda.fieldbyname('rma').asstring = 'si') then
  begin
    messaggio(000, 'nei documenti che gestiscono le RMA non è consentito variare il codice articolo' + #13 +
      'cancellare la riga e ricaricarla');
    if v_art_codice.canfocus then
    begin
      v_art_codice.setfocus;
    end;
    abort;
  end
  else
  begin
    if trim(v_art_codice.text) = '' then
    begin
      art.params[0].asstring := v_art_codice.text;
      art.close;
      art.open;

      if art.fieldbyname('var_codice').asstring <> '' then
      begin
        abilita_campo(v_dettaglio);
      end
      else
      begin
        disabilita_campo(v_dettaglio);
      end;

      if controllo then
      begin
        tabella_controllo_art.close;

        esistenza_deposito.Close;
        esistenza_totale.Close;
        esistenza_principale.close;
      end;
    end
    else
    begin
      tabella_controllo(false, tabella_controllo_art, v_art_codice, blocco, nil, nil, tabella_righe, v_frn_codice.text);

      art.close;
      art.params[0].asstring := v_art_codice.text;
      art.open;

      if art.fieldbyname('var_codice').asstring <> '' then
      begin
        abilita_campo(v_dettaglio);
      end
      else
      begin
        disabilita_campo(v_dettaglio);
      end;

      if art.fieldbyname('tgl_codice').asstring <> '' then
      begin
        v_quantita.readonly := true;
      end
      else
      begin
        v_quantita.readonly := false;
      end;

      if controllo then
      begin
        if blocco then
        begin
          if tipo_documento <> 'preventivo' then
          begin
            if art.fieldbyname('tipo_articolo').asstring = 'fuori listino' then
            begin
              messaggio(000, 'gli articoli fuori listino sono consentiti solo nelle richieste preventivi');
              if v_art_codice.canfocus then
              begin
                v_art_codice.setfocus;
              end;
              abort;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.esegui_esistenza;
begin
  esistenza_deposito.close;
  esistenza_deposito.parambyname('art_codice').asstring := v_art_codice.text;
  esistenza_deposito.parambyname('tma_codice').asstring := tabella_righe.fieldbyname('tma_codice').asstring;
  esistenza_deposito.parambyname('tda_codice').asstring := tabella.fieldbyname('tda_codice').asstring;
  esistenza_deposito.open;

  esistenza_totale.close;
  esistenza_totale.parambyname('art_codice').asstring := v_art_codice.text;
  esistenza_totale.parambyname('tda_codice').asstring := tabella.fieldbyname('tda_codice').asstring;
  esistenza_totale.open;

  esistenza_principale.close;
  esistenza_principale.parambyname('art_codice').asstring := v_art_codice.text;
  esistenza_principale.parambyname('tma_codice').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
  esistenza_principale.parambyname('tda_codice').asstring := tabella.fieldbyname('tda_codice').asstring;
  esistenza_principale.open;
end;

procedure TGESACQ.calcola_importo;
var
  importo, importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato: double;
begin
  importo := tabella_righe.fieldbyname('importo').asfloat;
  importo_euro := tabella_righe.fieldbyname('importo_euro').asfloat;
  importo_iva := tabella_righe.fieldbyname('importo_iva').asfloat;
  importo_iva_euro := tabella_righe.fieldbyname('importo_iva_euro').asfloat;

  calcola_importo_documento(tabella_righe.fieldbyname('quantita').asfloat, tabella_righe.fieldbyname('prezzo').asfloat,
    tabella.fieldbyname('cambio').asfloat, tabella_righe.fieldbyname('importo_sconto').asfloat,
    sconto_imponibile_lordo, tabella.fieldbyname('listino_con_iva').asstring, tabella_righe.fieldbyname('tum_codice').asstring,
    tabella_righe.fieldbyname('tiv_codice').asstring, tabella_righe.fieldbyname('tsm_codice').asstring,
    tabella_righe.fieldbyname('tsm_codice_art').asstring, importo, importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato);

  if tabella_edit(tabella_righe) and
    (tabella_righe.fieldbyname('situazione').asstring <> 'annullato') then
  begin
    tabella_righe.fieldbyname('importo').asfloat := importo;
    tabella_righe.fieldbyname('importo_euro').asfloat := importo_euro;
    tabella_righe.fieldbyname('importo_iva').asfloat := importo_iva;
    tabella_righe.fieldbyname('importo_iva_euro').asfloat := importo_iva_euro;
    tabella_righe.fieldbyname('importo_non_arrotondato').asfloat := importo_non_arrotondato;
  end;
end;

procedure TGESACQ.v_quantitaExit(Sender: TObject);
var
  pr: tsceltm;

  decimali: word;
  lotto_riordino: double;
  numero1, numero2, riga_qta_avanzata: double;
  risultato: integer;
  lotto_riordino_multiplo: string;
  nota_maggiorazione: string;
  quantita_minima: double;
begin
  inherited;

  quantita_controllo;

  if controllo then
  begin
    if not((tipo_documento = 'ddt clienti') or (tipo_documento = 'nota credito') or (tabella_righe.fieldbyname('quantita').asfloat = 0)) then
    begin
      //  controllo lotto riordino
      lotto_riordino_multiplo := 'no';
      if read_tabella(arc.arcdit, 'mag', 'art_codice;tma_codice', vararrayof([v_art_codice.text, tabella_righe.fieldbyname('tma_codice').asstring])) then
      begin
        if archivio.fieldbyname('lotto_riordino').asfloat = 0 then
        begin
          lotto_riordino := art.fieldbyname('lotto_riordino').asfloat;
          lotto_riordino_multiplo := archivio.fieldbyname('lotto_riordino_multiplo').asstring;
        end
        else
        begin
          lotto_riordino := archivio.fieldbyname('lotto_riordino').asfloat;
          lotto_riordino_multiplo := 'si';
        end;
      end
      else
      begin
        lotto_riordino := art.fieldbyname('lotto_riordino').asfloat;
        lotto_riordino_multiplo := 'si';
      end;

      if lotto_riordino <> 0 then
      begin
        if arrotonda(v_quantita.value, 4) < arrotonda(lotto_riordino, 4) then
        begin
          messaggio(200, 'la quantità è inferiore al lotto di riordino: ' + formatfloat(formato_display_quantita, lotto_riordino));
        end
        else
        begin
          if lotto_riordino_multiplo = 'si' then
          begin
            risultato := trunc(v_quantita.value / lotto_riordino);
            if risultato * lotto_riordino <> v_quantita.value then
            begin
              messaggio(200, 'la quantità non è un multiplo del lotto di riordino');
            end;
          end;
        end;
      end;

      //  controllo quantità minima
      quantita_minima := qtamin.controllo_quantita_minima('F', tabella.fieldbyname('frn_codice').asstring,
        tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('quantita').asfloat);

      if quantita_minima <> 0 then
      begin
        if messaggio(300, 'la quantità è inferiore alla quantità minima prevista per il fornitore [' + floattostr(quantita_minima) + ']' + #13 +
          'modificare la quantità inserita?') = 1 then
        begin
          read_tabella(arc.arcdit, 'arf', 'frn_codice;art_codice',
            vararrayof([tabella.fieldbyname('frn_codice').asstring, tabella_righe.fieldbyname('art_codice').asstring]), 'quantita_minima');
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('quantita').asfloat := archivio.fieldbyname('quantita_minima').asfloat;
            variato_importo := 0;
            v_quantitaExit(v_quantita);
          end;
          fuoco(v_quantita);
        end;
      end;
    end;

    // controllo che la quantità ordinata sia multiplo della quantità minima prevista dal fornitore.
    // in caso negativo per l'avanzo calcolo la maggiorazione prevista dal fornitore da applicare
    if pos('applicata una maggiorazione', tabella_righe.fieldbyname('note').asstring) > 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('note').asstring := stringreplace(tabella_righe.fieldbyname('note').asstring,
          copy(tabella_righe.fieldbyname('note').asstring, pos('applicata una maggiorazione', tabella_righe.fieldbyname('note').asstring),
          pos('articoli come previsto dal fornitore', tabella_righe.fieldbyname('note').asstring) + 37 - pos('applicata una maggiorazione', tabella_righe.fieldbyname('note').asstring)), '', []);
        tabella_righe.fieldbyname('importo_sconto').asfloat := 0;
      end;
    end;

    riga_qta_avanzata := qtamin.controllo_avanzo_quantita_minima('F', tabella.fieldbyname('frn_codice').asstring, tabella_righe.fieldbyname('art_codice').asstring,
      tabella_righe.fieldbyname('quantita').asfloat);
    if not((tipo_documento = 'ddt clienti') or (tipo_documento = 'nota credito') or (tabella_righe.fieldbyname('quantita').asfloat = 0)) and
      (riga_qta_avanzata > 0) then
    begin
      read_tabella(arc.arcdit, 'arf', 'frn_codice;art_codice',
        vararrayof([tabella.fieldbyname('frn_codice').asstring, tabella_righe.fieldbyname('art_codice').asstring]));
      if archivio.fieldbyname('tsm_codice').asstring <> '' then
      begin
        if messaggio(300, 'la quantità inserita non è multiplo della quantità minima prevista per il fornitore.' + #13 +
          'applicare la maggiorazione prevista dal fornitore per ' + floattostr(riga_qta_avanzata) + ' articoli?') = 1 then
        begin
          if tabella_edit(tabella_righe) then
          begin
            read_tabella(arc.arcdit, 'tsm', 'codice', archivio.fieldbyname('tsm_codice').asstring);

            tabella_righe.fieldbyname('importo_sconto').asfloat := -(riga_qta_avanzata * tabella_righe.fieldbyname('prezzo').asfloat
              * (archivio.fieldbyname('percentuale_totale').asfloat - 100) / 100);

            nota_maggiorazione := 'applicata una maggiorazione del ' + floattostr(archivio.fieldbyname('percentuale_totale').asfloat - 100)
              + '% sul prezzo di listino di ' + floattostr(riga_qta_avanzata) + ' articoli come previsto dal fornitore';

            if tabella_righe.fieldbyname('note').asstring = '' then
            begin
              tabella_righe.fieldbyname('note').asstring := nota_maggiorazione;
            end
            else
            begin
              tabella_righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring + #13 + nota_maggiorazione;
            end;
          end;
        end;
      end;
    end;

    if arrotonda(v_quantita.value, 4) <> arrotonda(v_quantita.value, cifre_decimali_quantita_acquisti) then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('quantita').asfloat := arrotonda
          (tabella_righe.fieldbyname('quantita').asfloat, cifre_decimali_quantita_acquisti);
      end;
    end;

    if arrotonda(variato_importo, 4) <> arrotonda(v_quantita.value, 4) then
    begin

      if tabella_righe.fieldbyname('documento_origine').asstring.endswith(' acq') then
      begin
        if messaggio(M_CONFERMA_DEFAULT_NO,
          'la quantità delle righe derivate dall''evasione di altri documenti non dovrebbe essere modificata.' + slinebreak +
          'potrebbero verificarsi disallineamenti di dati collegati come colli, confezioni, quantità u.m. base, ecc..' + slinebreak +
          'la procedura corretta consiste nel cancellare la riga ed effettuare una nuova evasione.' + slinebreak +
          'procedere comunque alla modifica?') <> 1 then
        begin
          v_quantita.value := variato_importo;
          exit;
        end;
      end;

      if tabella_righe.fieldbyname('artp_codice').asstring = '' then
      begin
        cerca_prezzo;
      end;

      controllo_quantita_evasa;
      assegna_valore_prezzo;
      calcola_importo;
      attiva_importo;

      assegna_tum_quantita_base;
      if not art.eof then
      begin
        assegna_colli_confezioni(tabella_righe, art, 'quantita', 'numero_colli', 'numero_confezioni');

        if (tabella_righe.fieldbyname('numero_colli').asinteger <> 0) then
        begin
          controllo_numero_colli_evasi;
        end;

        if (tabella_righe.fieldbyname('numero_confezioni').asinteger <> 0) then
        begin
          controllo_numero_confezioni_evase;
        end;
      end;

      // ordine di produzione
      if tabella_righe.fieldbyname('documento_origine').asstring = 'produzione' then
      begin
        riga_documento_evaso.sql.clear;
        riga_documento_evaso.sql.add('select quantita from opt where progressivo = :progressivo');
        riga_documento_evaso.params[0].asfloat := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
        riga_documento_evaso.close;
        riga_documento_evaso.open;
        if not riga_documento_evaso.eof then
        begin
          if tabella_righe.fieldbyname('quantita').asfloat <> riga_documento_evaso.fieldbyname('quantita').asfloat then
          begin
            messaggio(100, 'la quantità dell''ordine di produzione di origine è diversa da quella digitata');
          end;
        end;
      end;

      saldo_acconto_controllo;
    end;

    if (trim(v_tmo_codice.text) <> '') and (trim(v_art_codice.text) <> '') and (not esiste_righe) then
    begin
      if (art.fieldbyname('lotti').asstring = 'si') and (lotti = 'si') and (gestione_lotto_singolo = 'si') then
      begin
        pr := tsceltm.create(nil);
        if pr.esegui_form then
        begin
          pr.art_codice := trim(v_art_codice.text);
          pr.quantita := v_quantita.value;
          pr.lotto := codice_lotto_matricola_singolo;
          pr.tma_codice := trim(v_tma_codice.text);
          pr.tmo_codice := trim(v_tmo_codice.text);
          pr.cifre_decimali_quantita := cifre_decimali_quantita;
          pr.esiste_righe := esiste_righe;
          pr.showmodal;

          if pr.lotto <> codice_lotto_matricola_singolo then
          begin
            codice_lotto_matricola_singolo := pr.lotto;
          end;
          if pr.quantita <> v_quantita.value then
          begin
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('quantita').asfloat := pr.quantita;
            end;
            controllo_quantita_evasa;
            assegna_valore_prezzo;
            calcola_importo;
            saldo_acconto_controllo;
          end;
        end;
        pr.free;
      end;
    end;
  end;
end;

procedure TGESACQ.quantita_controllo;
begin
  if controllo and (v_art_codice.text <> '') then
  begin
    if (tda.fieldbyname('rma').asstring = 'si') and (v_quantita.value <> 1) and
      (arc.dit.fieldbyname('controllo_quantita_rma').asstring = 'si') then
    begin
      messaggio(200, 'la quantità RMA non è unitaria');
      begin
        fuoco(v_quantita);
        abort;
      end;
    end
    else
    begin
      if (v_quantita.value > 0) and (v_quantita.value < tabella_righe.fieldbyname('quantita_evasa').asfloat) then
      begin
        messaggio(000, 'quantità inferiore alla quantità evasa');
        if v_quantita.canfocus then
        begin
          v_quantita.setfocus;
        end;
        abort;
      end
      else if (v_quantita.value = 0) and (controllo_quantita = 'si') then
      begin
        if messaggio(304, 'la quantità del documento è zero' + #13 +
          'si vuole proseguire ugualmente?') <> 1 then
        begin
          fuoco(v_quantita);
          abort;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.controllo_quantita_evasa;
begin
end;

procedure TGESACQ.assegna_valore_prezzo;
begin
end;

procedure TGESACQ.assegna_valore_tsm_codice_righe;
begin
  if controllo then
  begin
    if v_prezzo.value = 0 then
    begin
      if trim(v_tsm_codice_righe.text) <> '' then
      begin
        tabella_righe.fieldbyname('tsm_codice').asstring := '';
        calcola_importo;
      end;
      if trim(v_tsm_codice_art.text) <> '' then
      begin
        tabella_righe.fieldbyname('tsm_codice_art').asstring := '';
        calcola_importo;
      end;
      if tabella_righe.fieldbyname('importo_sconto').asfloat <> 0 then
      begin
        tabella_righe.fieldbyname('importo_sconto').asfloat := 0;
        calcola_importo;
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_valore_tma_codice_righe;
begin
  if controllo then
  begin
    if trim(v_art_codice.text) = '' then
    begin
      tabella_righe.fieldbyname('tma_codice').asstring := '';
    end;
  end;
end;

procedure TGESACQ.v_prezzoExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    if arrotonda(v_prezzo.value, decimali_max_prezzo_acq) <> arrotonda(v_prezzo.value, cifre_decimali_prezzo_acq) then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('prezzo').asfloat := arrotonda
          (tabella_righe.fieldbyname('prezzo').asfloat, cifre_decimali_prezzo_acq);
      end;
    end;

    assegna_valore_prezzo;
    assegna_valore_tsm_codice_righe;

    if (variato_importo <> 0) and (v_prezzo.value = 0) then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo').asfloat := 0;
      end;
    end;

    if arrotonda(variato_importo, decimali_max_prezzo_acq) <> arrotonda(v_prezzo.value, decimali_max_prezzo_acq) then
    begin
      calcola_importo;
    end;

    attiva_importo;
  end;
end;

procedure TGESACQ.attiva_importo;
begin
  if (v_prezzo.value <> 0) or (v_art_codice.text = '') then
  begin
    v_importo.enabled := false;
    v_importo.Color := clbtnface;
  end
  else
  begin
    if parte_attiva = 'pannello_righe' then
    begin
      if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and
        (trim(tabella.fieldbyname('tda_codice_differite').asstring) = '') then
      begin
        v_importo.enabled := false;
        v_importo.Color := clbtnface;
      end
      else
      begin
        if importi_acquisti = 'visualizza' then
        begin
          v_importo.enabled := false;
          v_importo.Color := clbtnface;
        end
        else
        begin
          v_importo.enabled := true;
          v_importo.Color := clwindow;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.v_tsm_codice_righeExit(Sender: TObject);
begin
  inherited;
  if v_tsm_codice_righe.enabled then
  begin
    if controllo then
    begin
      assegna_valore_tsm_codice_righe;
      tsm_codice_righe_controllo(true);
      if variato_stringa <> v_tsm_codice_righe.text then
      begin
        calcola_importo;
      end;
    end;
  end;
end;

procedure TGESACQ.v_tsm_codice_righeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_f5) and (shift = [ssctrl]) then
  begin
    arc.sconti_percentuale(screen.activecontrol);
    selectnext(screen.activecontrol, true, true);
  end;

end;

procedure TGESACQ.tsm_codice_righe_controllo(blocco: boolean);
begin
  tabella_controllo(true, tsm_righe, v_tsm_codice_righe, blocco, nil, nil, tabella_righe);
end;

procedure TGESACQ.v_importoExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    if arrotonda(v_importo.value, 2) <> arrotonda(v_importo.value, cifre_decimali_importo) then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo').asfloat := arrotonda
          (tabella_righe.fieldbyname('importo').asfloat, cifre_decimali_importo);
      end;
    end;

    if arrotonda(variato_importo, 2) <> arrotonda(v_importo.value, 2) then
    begin
      calcola_importo;
      saldo_acconto_controllo;
    end;
  end;
end;

procedure TGESACQ.assegna_gen_codice;
var
  taq_codice, tcf_codice: string;
begin
  if tipo_documento <> 'ddt clienti' then
  begin
    if (tabella.fieldbyname('tco_codice').asstring <> '') or (tda.fieldbyname('proporre_contropartita').asstring = 'si') then
    begin
      taq_codice := '';
      tcf_codice := '';
      tcf_codice := frn.fieldbyname('tcf_codice').asstring;

      taq_codice := art.fieldbyname('taq_codice').asstring;
      if read_tabella(arc.arcdit, 'cpa', 'taq_codice;tcf_codice', vararrayof([taq_codice, tcf_codice]), 'gen_codice, gen_codice_omaggi, gen_codice_sconti') then
      begin
        if tabella_righe.fieldbyname('gen_codice').asstring <> archivio.fieldbyname('gen_codice').asstring then
        begin
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('gen_codice').asstring := archivio.fieldbyname('gen_codice').asstring;
          end;
        end;
        if copy(v_tipo_movimento.text, 1, 7) = 'omaggio' then
        begin
          if tabella_righe.fieldbyname('gen_codice_storno').asstring <> archivio.fieldbyname('gen_codice_omaggi').asstring then
          begin
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('gen_codice_storno').asstring := archivio.fieldbyname('gen_codice_omaggi').asstring;
            end;
          end;
        end
        else if v_tipo_movimento.text = 'sconto merce' then
        begin
          if tabella_righe.fieldbyname('gen_codice_storno').asstring <> archivio.fieldbyname('gen_codice_sconti').asstring then
          begin
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('gen_codice_storno').asstring := archivio.fieldbyname('gen_codice_sconti').asstring;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_tiv_codice_righe;
begin
  if tipo_documento = 'ddt clienti' then
  begin
    if tabella_righe.fieldbyname('tiv_codice').asstring <> art.fieldbyname('tiv_codice_vendite').asstring then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tiv_codice').asstring := art.fieldbyname('tiv_codice_vendite').asstring;
      end;
    end;
  end
  else
  begin
    if tabella_righe.fieldbyname('tiv_codice').asstring <> art.fieldbyname('tiv_codice_acquisti').asstring then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tiv_codice').asstring := art.fieldbyname('tiv_codice_acquisti').asstring;
      end;
    end;
  end;

  if trim(v_tiv_codice.text) <> '' then
  begin
    if tabella_righe.fieldbyname('tiv_codice').asstring <> v_tiv_codice.text then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tiv_codice').asstring := v_tiv_codice.text;
      end;
    end;
  end;
end;

procedure TGESACQ.tiv_codice_righe_controllo;
begin
  if (controllo) and (trim(v_art_codice.text) <> '') then
  begin
    if tabella_righe.fieldbyname('tiv_codice').asstring = '' then
    begin
      messaggio(000, 'non è stato assegnato il codice iva dell''articolo' + #13 + #13 +
        'inserirlo nei dati aggiuntivi della riga');
      esegui_gesacq02;
      if v_descrizione1_riga.canfocus then
      begin
        v_descrizione1_riga.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESACQ.gen_codice_righe_controllo;
begin
  if controllo then
  begin
    if ((((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '')) or
      (tabella.fieldbyname('tco_codice').asstring = '')) and (tda.fieldbyname('proporre_contropartita').asstring = 'no') then
    begin
      //
    end
    else
    begin
      if tabella_righe.fieldbyname('art_codice').asstring <> '' then
      begin
        if tabella_righe.fieldbyname('gen_codice').asstring = '' then
        begin
          messaggio(000, 'non è stato assegnato il codice contropartita dell''articolo' + #13 + #13 +
            'inserirlo nei dati aggiuntivi della riga');
          esegui_gesacq02;
          if v_descrizione1_riga.canfocus then
          begin
            v_descrizione1_riga.setfocus;
          end;
          abort;
        end;
        if (copy(tabella_righe.fieldbyname('tipo_movimento').asstring, 1, 7) = 'omaggio') or
          (tabella_righe.fieldbyname('tipo_movimento').asstring = 'sconto merce') then
        begin
          if tabella_righe.fieldbyname('gen_codice_storno').asstring = '' then
          begin
            messaggio(000, 'non è stato assegnato il codice contropartita di storno' + #13 +
              'dell''omaggio o dello sconto merce' + #13 + #13 +
              'inserirlo nei dati aggiuntivi della riga');
            esegui_gesacq02;
            if v_descrizione1_riga.canfocus then
            begin
              v_descrizione1_riga.setfocus;
            end;
            abort;
          end;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_valore_cambio;
begin
  if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '') then
  begin
    if tabella.fieldbyname('cambio').asfloat <> 1 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cambio').asfloat := 1;
      end;
    end;
  end
  else if v_tva_codice.text = divisa_di_conto then
  begin
    if v_cambio.value <> 1 then
    begin
      if tabella.fieldbyname('cambio').asfloat <> 1 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('cambio').asfloat := 1;
        end;
      end;
    end;
  end
  else
  begin
    if v_cambio.value = 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cambio').asfloat := 1;
      end;
    end;
  end;
end;

procedure TGESACQ.v_cambioEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_tva_codice.text;
end;

procedure TGESACQ.v_cambioExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    assegna_valore_cambio;
  end;
end;

procedure TGESACQ.v_cen_codiceExit(Sender: TObject);
begin
  inherited;
  cen_codice_controllo(true);
end;

procedure TGESACQ.abilita_pannello_campi(attivo: boolean);
begin
  inherited;
end;

procedure TGESACQ.cen_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, cen, v_cen_codice, blocco, tab_control, tab_testata_analitica, tabella);
end;

procedure TGESACQ.tvc_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tvc, v_tvc_codice, blocco, tab_control, tab_testata_analitica, tabella);
end;

procedure TGESACQ.abilita_tipo_documento;
begin
  v_data_inizio_competenza.enabled := false;
  v_data_fine_competenza.enabled := false;
  v_tbp_codice.enabled := false;

  v_data_fine_competenza.color := clbtnface;
  v_data_inizio_competenza.color := clbtnface;
  v_tbp_codice.color := clbtnface;

  if (copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito') then
  begin
    abilita_campo(v_data_competenza_plafond);
    abilita_campo(v_data_competenza_iva);
  end
  else
  begin
    disabilita_campo(v_data_competenza_plafond);
    disabilita_campo(v_data_competenza_iva);
  end;

  if (copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'ordine') then
  begin
    v_importo_pagato.enabled := true;
    v_importo_pagato.color := clwindow;
  end
  else
  begin
    v_importo_pagato.enabled := false;
    v_importo_pagato.color := clbtnface;
  end;

  if tipo_documento = 'ddt clienti' then
  begin
    v_descrizione_spese_01.enabled := false;
    v_importo_spese_01.enabled := false;
    v_iva_ripartita_spese_01.enabled := false;
    v_tiv_codice_spese_01.enabled := false;
    v_costo_ripartito_spese_01.enabled := false;
    v_gen_codice_spese_01.enabled := false;

    v_descrizione_spese_02.enabled := false;
    v_importo_spese_02.enabled := false;
    v_iva_ripartita_spese_02.enabled := false;
    v_tiv_codice_spese_02.enabled := false;
    v_costo_ripartito_spese_02.enabled := false;
    v_gen_codice_spese_02.enabled := false;

    v_descrizione_spese_03.enabled := false;
    v_importo_spese_03.enabled := false;
    v_iva_ripartita_spese_03.enabled := false;
    v_tiv_codice_spese_03.enabled := false;
    v_costo_ripartito_spese_03.enabled := false;
    v_gen_codice_spese_03.enabled := false;

    v_descrizione_spese_04.enabled := false;
    v_importo_spese_04.enabled := false;
    v_iva_ripartita_spese_04.enabled := false;
    v_tiv_codice_spese_04.enabled := false;
    v_costo_ripartito_spese_04.enabled := false;
    v_gen_codice_spese_04.enabled := false;
    v_data_consegna_confermata.enabled := false;

    v_data_consegna_confermata.color := clbtnface;
    v_descrizione_spese_01.color := clbtnface;
    v_importo_spese_01.color := clbtnface;
    v_tiv_codice_spese_01.color := clbtnface;
    v_gen_codice_spese_01.color := clbtnface;

    v_descrizione_spese_02.color := clbtnface;
    v_importo_spese_02.color := clbtnface;
    v_tiv_codice_spese_02.color := clbtnface;
    v_gen_codice_spese_02.color := clbtnface;

    v_descrizione_spese_03.color := clbtnface;
    v_importo_spese_03.color := clbtnface;
    v_tiv_codice_spese_03.color := clbtnface;
    v_gen_codice_spese_03.color := clbtnface;

    v_descrizione_spese_04.color := clbtnface;
    v_importo_spese_04.color := clbtnface;
    v_tiv_codice_spese_04.color := clbtnface;
    v_gen_codice_spese_04.color := clbtnface;
  end;

  if (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') or (tipo_documento = 'ddt clienti') then
  begin
    v_importo_spese_extra.enabled := false;
    v_importo_spese_extra.color := clbtnface;
  end;

  if (tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti') then
  begin
    abilita_tipo_documento_bolle_ddt;
    v_importo_totale_digitato.enabled := false;
    v_importo_totale_digitato.color := clbtnface;
  end
  else if tipo_documento = 'ordine' then
  begin
    v_serie_documento.enabled := false;
    v_data_validita.enabled := false;
    v_importo_totale_digitato.enabled := false;
    v_tmo_codice.enabled := false;
    v_tmo_codice_collegato.enabled := false;
    v_tma_codice_collegato.enabled := false;
    v_data_consegna_confermata.enabled := true;

    v_serie_documento.color := clbtnface;
    v_data_validita.color := clbtnface;
    v_importo_totale_digitato.color := clbtnface;
    v_tmo_codice.color := clbtnface;
    v_tmo_codice_collegato.color := clbtnface;
    v_tma_codice_collegato.color := clbtnface;
    v_data_consegna_confermata.color := clwindow;
  end
  else if tipo_documento = 'preventivo' then
  begin
    v_serie_documento.enabled := false;
    v_importo_totale_digitato.enabled := false;
    v_tmo_codice.enabled := false;
    v_tma_codice.enabled := false;
    v_tmo_codice_collegato.enabled := false;
    v_tma_codice_collegato.enabled := false;
    v_data_consegna_confermata.enabled := false;

    v_data_consegna_confermata.color := clbtnface;
    v_serie_documento.color := clbtnface;
    v_importo_totale_digitato.color := clbtnface;
    v_tmo_codice.color := clbtnface;
    v_tma_codice.color := clbtnface;
    v_tmo_codice_collegato.color := clbtnface;
    v_tma_codice_collegato.color := clbtnface;
  end
  else if tipo_documento = 'fattura differita' then
  begin
    v_giorni_consegna.enabled := false;
    v_data_consegna.enabled := false;
    v_data_validita.enabled := false;
    v_importo_totale_digitato.enabled := true;
    v_tmo_codice.enabled := false;
    v_tma_codice.enabled := false;
    v_tmo_codice_collegato.enabled := false;
    v_tma_codice_collegato.enabled := false;
    v_data_consegna_confermata.enabled := false;
    v_data_consegna_confermata.color := clbtnface;
    v_giorni_consegna.color := clbtnface;
    v_data_consegna.color := clbtnface;
    v_data_validita.color := clbtnface;
    v_importo_totale_digitato.color := clwindow;
    v_tmo_codice.color := clbtnface;
    v_tma_codice.color := clbtnface;
    v_tmo_codice_collegato.color := clbtnface;
    v_tma_codice_collegato.color := clbtnface;
  end
  else if (tipo_documento = 'fattura') or (tipo_documento = 'nota credito') then
  begin
    v_data_inizio_competenza.enabled := true;
    v_importo_totale_digitato.enabled := true;
    v_data_fine_competenza.enabled := true;
    v_data_consegna_confermata.enabled := false;
    v_giorni_consegna.enabled := false;
    v_data_consegna.enabled := false;
    v_data_validita.enabled := false;
    v_tmo_codice_collegato.enabled := false;
    v_tma_codice_collegato.enabled := false;
    v_data_inizio_competenza.color := clwindow;
    v_importo_totale_digitato.color := clwindow;
    v_data_fine_competenza.color := clwindow;
    v_data_consegna_confermata.color := clbtnface;
    v_giorni_consegna.color := clbtnface;
    v_data_consegna.color := clbtnface;
    v_data_validita.color := clbtnface;
    v_tmo_codice_collegato.color := clbtnface;
    v_tma_codice_collegato.color := clbtnface;
  end;

  if tipo_documento = 'ddt clienti' then
  begin
    v_indirizzo.enabled := true;
    v_descrizione1.enabled := true;
    v_descrizione2.enabled := true;
    v_via.enabled := true;
    v_cap.enabled := true;
    v_citta.enabled := true;
    v_provincia.enabled := true;
    v_tna_codice.enabled := true;

    v_indirizzo.color := clwindow;
    v_descrizione1.color := clwindow;
    v_descrizione2.color := clwindow;
    v_via.color := clwindow;
    v_cap.color := clwindow;
    v_citta.color := clwindow;
    v_provincia.color := clwindow;
    v_tna_codice.color := clwindow;

    v_indirizzo.lookcollprogram := 'GESINDINH';
    v_indirizzo.lookcolltable := 'IND';
    v_indirizzo.lookcollvisname := 'INDCLI';
  end;
  if (tipo_documento <> 'ordine') and (tipo_documento <> 'preventivo') and
    (tipo_documento <> 'ddt clienti') then
  begin
    v_indirizzo.enabled := false;
    v_descrizione1.enabled := false;
    v_descrizione2.enabled := false;
    v_via.enabled := false;
    v_cap.enabled := false;
    v_citta.enabled := false;
    v_provincia.enabled := false;
    v_tna_codice.enabled := false;
    if tipo_documento <> 'fattura differita' then
    begin
      v_cli_codice.enabled := true;
      v_cli_codice.color := clwindow;
    end
    else
    begin
      v_cli_codice.enabled := false;
      v_cli_codice.color := clbtnface;
    end;

    v_indirizzo.color := clbtnface;
    v_descrizione1.color := clbtnface;
    v_descrizione2.color := clbtnface;
    v_via.color := clbtnface;
    v_cap.color := clbtnface;
    v_citta.color := clbtnface;
    v_provincia.color := clbtnface;
    v_tna_codice.color := clbtnface;

    if tabella.fieldbyname('situazione').asstring <> 'inserito' then
    begin
      v_tmo_codice.enabled := false;
      v_tmo_codice_collegato.enabled := false;
      v_tma_codice.enabled := false;
      v_tma_codice_collegato.enabled := false;

      v_tmo_codice.color := clbtnface;
      v_tmo_codice_collegato.color := clbtnface;
      v_tma_codice.color := clbtnface;
      v_tma_codice_collegato.color := clbtnface;
    end
    else if (tipo_documento <> 'preventivo') and (tipo_documento <> 'fattura differita') then
    begin
      v_tmo_codice.enabled := true;
      v_tmo_codice_collegato.enabled := true;
      v_tma_codice.enabled := true;
      v_tma_codice_collegato.enabled := true;

      v_tmo_codice.color := clwindow;
      v_tmo_codice_collegato.color := clwindow;
      v_tma_codice.color := clwindow;
      v_tma_codice_collegato.color := clwindow;
    end;
  end;

  if (tipo_documento <> 'ordine') and (tipo_documento <> 'preventivo') and (tipo_documento <> 'ddt clienti') then
  begin
    v_tbp_codice.enabled := true;
    v_tbp_codice.color := clwindow;
  end;
end;

procedure TGESACQ.abilita_tipo_documento_bolle_ddt;
begin
  if (tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti') then
  begin
    v_giorni_consegna.enabled := false;
    v_data_consegna.enabled := false;
    v_data_validita.enabled := false;
    v_data_consegna_confermata.enabled := false;
    v_giorni_consegna.color := clbtnface;
    v_data_consegna.color := clbtnface;
    v_data_validita.color := clbtnface;
    v_data_consegna_confermata.color := clbtnface;

    if tabella.fieldbyname('tda_codice_differite').asstring = '' then
    begin
      v_tla_codice.enabled := false;
      v_tpa_codice.enabled := false;
      v_tsm_codice.enabled := false;
      v_tva_codice.enabled := false;
      v_cambio.enabled := false;
      v_tiv_codice.enabled := false;
      v_data_inizio_conteggio.enabled := false;
      v_scadenziario_manuale.enabled := false;
      v_codice_abi.enabled := false;
      v_codice_cab.enabled := false;
      v_tba_codice.enabled := false;
      v_conto_corrente.enabled := false;
      v_cin.enabled := false;
      v_iban.enabled := false;
      v_bic.enabled := false;
      v_tsm_codice_sconto.enabled := false;
      v_importo_sconto.enabled := false;

      v_tla_codice.color := clbtnface;
      v_tpa_codice.color := clbtnface;
      v_tsm_codice.color := clbtnface;
      v_tva_codice.color := clbtnface;
      v_cambio.color := clbtnface;
      v_tiv_codice.color := clbtnface;
      v_data_inizio_conteggio.color := clbtnface;
      v_codice_abi.color := clbtnface;
      v_codice_cab.color := clbtnface;
      v_tba_codice.color := clbtnface;
      v_conto_corrente.color := clbtnface;
      v_cin.color := clbtnface;
      v_iban.color := clbtnface;
      v_bic.color := clbtnface;
      v_tsm_codice_sconto.color := clbtnface;
      v_importo_sconto.color := clbtnface;
    end
    else
    begin
      if tabella.fieldbyname('situazione').asstring <> 'consolidato' then
      begin
        if arc.utn.fieldbyname('consenti_no_fattura').asstring = 'si' then
        begin
          v_non_fatturare.enabled := true;
        end
        else
        begin
          v_non_fatturare.enabled := false;
        end;
      end
      else
      begin
        v_non_fatturare.enabled := false;
      end;

      v_tla_codice.enabled := true;
      v_tpa_codice.enabled := true;
      v_tsm_codice.enabled := true;
      if not esiste then
      begin
        v_tva_codice.enabled := true;
        v_cambio.enabled := true;
      end;
      v_tiv_codice.enabled := true;
      v_data_inizio_conteggio.enabled := true;
      v_scadenziario_manuale.enabled := true;
      v_codice_abi.enabled := true;
      v_codice_cab.enabled := true;
      v_tba_codice.enabled := true;
      v_conto_corrente.enabled := true;
      v_cin.enabled := true;
      v_iban.enabled := true;
      v_bic.enabled := true;
      v_tsm_codice_sconto.enabled := true;
      v_importo_sconto.enabled := true;

      v_tla_codice.color := clwindow;
      v_tpa_codice.color := clwindow;
      v_tsm_codice.color := clwindow;
      if not esiste then
      begin
        v_tva_codice.color := clwindow;
        v_cambio.color := clwindow;
      end;
      v_tiv_codice.color := clwindow;
      v_data_inizio_conteggio.color := clwindow;
      v_codice_abi.color := clwindow;
      v_codice_cab.color := clwindow;
      v_tba_codice.color := clwindow;
      v_conto_corrente.color := clwindow;
      v_cin.color := clwindow;
      v_iban.color := clwindow;
      v_bic.color := clwindow;
      v_tsm_codice_sconto.color := clwindow;
      v_importo_sconto.color := clwindow;
    end;
  end;

  if (tabella.fieldbyname('tipo_documento').asstring = 'ddt') then
  begin
    v_l_frn_codice.caption := 'codice fornitore';
  end
  else if tabella.fieldbyname('tipo_documento').asstring = 'ddt clienti' then
  begin
    v_l_frn_codice.caption := 'codice cliente';
  end;
end;

procedure TGESACQ.pannello_codiceExit(Sender: TObject);
var
  prosegui: boolean;
begin
  inherited;

  prosegui := true;
  if esiste then
  begin
    if not utntda.isempty and (v_tda_codice.text <> '') and
      not utntda.locate('tda_codice', v_tda_codice.text, []) then
    begin
      messaggio(000, 'codice documento non utilizzabile dall''utente');
      abilita_codice;
      prosegui := false;
      abort;
    end;
  end;
  if prosegui then
  begin
    if torna_progressivo then
    begin
      abilita_codice;
    end
    else
    begin
      if not esiste then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('modificato').asstring := 'si';
          tabella.fieldbyname('tda_codice').asstring := tda_codice;
          tabella.fieldbyname('data_registrazione').asdatetime := data_registrazione;
          if tda_codice <> '' then
          begin
            if not utntda.isempty and (v_tda_codice.text <> '') and
              not utntda.locate('tda_codice', v_tda_codice.text, []) then
            begin
              messaggio(000, 'codice documento non utilizzabile dall''utente');
              abilita_codice;
              prosegui := false;
              abort;
            end
            else
            begin
              v_tda_codice.enabled := true;
              v_tda_codice.color := clwindow;

              tda_codice_controllo(true);
              assegna_tda_codice;
              abilita_tipo_documento;
              selectnext(v_tda_codice, true, true);
            end;
          end
          else
          begin
            v_tda_codice.enabled := true;
            v_tda_codice.color := clwindow;
            if v_tda_codice.canfocus then
            begin
              v_tda_codice.setfocus;
            end;
          end;

          tabella.fieldbyname('ese_codice').asstring := esercizio;
        end;
      end
      else
      begin
        assegna_decimali;
      end;
    end;
  end;
end;

procedure TGESACQ.FormShow(Sender: TObject);
var
  errore: boolean;
begin
  inherited;

  if tipo_documento = 'ddt clienti' then
  begin
    tab_testata_destinazione.caption := 'consegna da';
    disabilita_campo(v_reverse_change);
  end
  else
  begin
    tab_testata_destinazione.caption := 'consegna';
  end;

  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    tool_evasione.enabled := false;
  end;

  if tipo_documento <> 'ordine' then
  begin
    disabilita_campo(v_no_ordinato);
  end;

  if (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
  begin
    abilita_campo(v_numero_documento);
    disabilita_campo(v_numero_documento_alfa);

    l_numero_documento_alfa.caption := 'riferimento documento';
  end
  else
  begin
    disabilita_campo(v_numero_documento);
    disabilita_campo(v_serie_documento);
    abilita_campo(v_numero_documento_alfa);

    l_numero_documento.caption := 'riferimento documento';
  end;

  errore := false;
  if (importi_archivi <> 'modifica') or (tipo_documento = 'preventivo') or (tipo_documento = 'ddt clienti') then
  begin
    v_crea_listino_vendita.enabled := false;
    v_crea_listino_fornitore.enabled := false;
  end;

  if not((tipo_documento = 'preventivo') or (tipo_documento = 'ordine') or (tipo_documento = 'ddt')) then
  begin
    v_l_quantita_residua.visible := false;
    v_quantita_residua.visible := false;
  end;

  if not((tipo_documento = 'fattura') or (tipo_documento = 'fattura differita') or
    (tipo_documento = 'nota credito')) then
  begin
    v_descrizione_primanota.enabled := false;
    v_data_competenza_plafond.enabled := false;

    v_descrizione_primanota.color := clbtnface;
    v_data_competenza_plafond.color := clbtnface;
  end;

  abilita_tipo_documento;

  inf.sql.clear;
  inf.sql.add('select * from inf');
  inf.sql.add('where frn_codice = :frn_codice and indirizzo = :indirizzo');

  if art_codice_sconti_fattura_acq = '' then
  begin
    messaggio(000, 'manca in anagrafica ditta il codice articolo degli sconti fattura' + #13 + #13 +
      'eseguire il programma di gestione anagrafica ditta [GESDIT] per inserire' + #13 +
      'nella sezione degli acquisti, prima cartella, il valore mancante');
    errore := true;
  end;
  if art_codice_sconto_cassa_acq = '' then
  begin
    messaggio(000, 'manca in anagrafica ditta il codice articolo dello sconto cassa' + #13 + #13 +
      'eseguire il programma di gestione anagrafica ditta [GESDIT] per inserire' + #13 +
      'nella sezione degli acquisti, prima cartella, il valore mancante');
    errore := true;
  end;
  if art_codice_spese_acq = '' then
  begin
    messaggio(000, 'manca in anagrafica ditta il codice articolo delle spese' + #13 + #13 +
      'eseguire il programma di gestione anagrafica ditta [GESDIT] per inserire' + #13 +
      'nella sezione degli acquisti, prima cartella, il valore mancante');
    errore := true;
  end;

  if errore then
  begin
    close;
  end
  else
  begin
    if read_tabella(arc.arcdit, 'art', 'codice',art_codice_sconto_cassa_acq, 'taq_codice') then
    begin
      taq_codice_sconto_cassa := archivio.fieldbyname('taq_codice').asstring;
    end;
    if read_tabella(arc.arcdit, 'art', 'codice',art_codice_sconti_fattura_acq, 'taq_codice') then
    begin
      taq_codice_sconti_fattura := archivio.fieldbyname('taq_codice').asstring;
    end;
  end;
end;

procedure TGESACQ.abilita_art_codice;
begin
  if (parte_attiva = 'griglia_righe') or (parte_attiva = 'pannello_righe') then
  begin
    v_tum_codice.enabled := true;
    if trim(v_art_codice.text) = '' then
    begin
      v_numero_colli_riga.enabled := false;
      v_numero_confezioni.enabled := false;
      v_tum_codice.enabled := false;
      v_quantita.enabled := false;
      v_saldo_acconto.enabled := false;
      v_prezzo.enabled := false;
      v_tsm_codice_righe.enabled := false;
      v_tsm_codice_art.enabled := false;
      v_importo_sconto_righe.enabled := false;
      v_tipo_movimento.enabled := false;
      v_importo.enabled := false;
      v_data_consegna_righe.enabled := false;

      v_numero_colli_riga.color := clbtnface;
      v_numero_confezioni.color := clbtnface;
      v_tum_codice.color := clbtnface;
      v_quantita.color := clbtnface;
      v_saldo_acconto.color := clbtnface;
      v_prezzo.color := clbtnface;
      v_tsm_codice_righe.color := clbtnface;
      v_tsm_codice_art.color := clbtnface;
      v_importo_sconto_righe.color := clbtnface;
      v_tipo_movimento.color := clbtnface;
      v_importo.color := clbtnface;
      v_data_consegna_righe.color := clbtnface;
    end
    else
    begin
      v_numero_colli_riga.enabled := true;
      v_numero_confezioni.enabled := true;
      if tabella_righe.fieldbyname('documento_origine').asstring <> '' then
      begin
        v_tum_codice.enabled := false;
      end;
      v_quantita.enabled := true;
      v_data_consegna_righe.enabled := true;

      if importi_acquisti = 'visualizza' then
      begin
        v_prezzo.enabled := false;
        v_tsm_codice_righe.enabled := false;
        v_tsm_codice_art.enabled := false;
        v_importo_sconto_righe.enabled := false;
        v_tipo_movimento.enabled := false;
        v_importo.enabled := false;

        v_prezzo.color := clbtnface;
        v_tsm_codice_righe.color := clbtnface;
        v_tsm_codice_art.color := clbtnface;
        v_importo_sconto_righe.color := clbtnface;
        v_tipo_movimento.color := clbtnface;
        v_importo.color := clbtnface;
      end
      else
      begin
        v_prezzo.enabled := true;
        v_tsm_codice_righe.enabled := true;
        v_tsm_codice_art.enabled := true;
        v_importo_sconto_righe.enabled := true;
        v_tipo_movimento.enabled := true;
        v_importo.enabled := true;

        v_prezzo.color := clwindow;
        v_tsm_codice_righe.color := clwindow;
        v_tsm_codice_art.color := clwindow;
        v_importo_sconto_righe.color := clwindow;
        v_tipo_movimento.color := clwindow;
        v_importo.color := clwindow;
      end;

      v_numero_colli_riga.color := clwindow;
      v_numero_confezioni.color := clwindow;
      v_tum_codice.color := clwindow;
      if tabella_righe.fieldbyname('documento_origine').asstring <> '' then
      begin
        v_tum_codice.color := clbtnface;
      end;
      v_quantita.color := clwindow;
      v_data_consegna_righe.color := clwindow;

      if (tabella_righe.fieldbyname('documento_origine').asstring <> '') and (tabella_righe.fieldbyname('documento_origine').asstring <> 'produzione') and
        (tipo_documento <> 'fattura differita') then
      begin
        v_saldo_acconto.enabled := true;
        v_saldo_acconto.color := clwindow;
      end
      else
      begin
        v_saldo_acconto.enabled := false;
        v_saldo_acconto.color := clbtnface;
      end;
    end;

    // abilita_campi_opzionali;
  end;
end;

procedure TGESACQ.assegna_valore_art_codice;
begin
  if tabella_righe.fieldbyname('art_codice').asstring = '' then
  begin
    if v_numero_colli_riga.value <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('numero_colli').asinteger := 0;
      end;
    end;
    if v_numero_confezioni.value <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('numero_confezioni').asinteger := 0;
      end;
    end;
    if v_tum_codice.text <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tum_codice').asstring := '';
      end;
    end;
    if v_quantita.value <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('quantita').asfloat := 0;
      end;
    end;
    if trim(v_tum_codice.text) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tum_codice').asstring := '';
      end;
    end;
    if tabella_righe.fieldbyname('tum_quantita_base').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tum_quantita_base').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('tum_quantita_evasa_base').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tum_quantita_evasa_base').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('cms_codice').asstring <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('cms_codice').asstring := '';
      end;
    end;
    if tabella_righe.fieldbyname('tipologia').asstring <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tipologia').asstring := '';
      end;
    end;
    if v_prezzo.value <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('prezzo').asfloat := 0;
      end;
    end;
    if v_importo.value <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo').asfloat := 0;
        tabella_righe.fieldbyname('importo_non_arrotondato').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_euro').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_euro').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_iva').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_iva').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_iva_euro').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_iva_euro').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_statistico_intra').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_statistico_intra').asfloat := 0;
      end;
    end;
    if trim(tabella_righe.fieldbyname('gen_codice').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('gen_codice').asstring := '';
      end;
    end;
    if trim(tabella_righe.fieldbyname('gen_codice_storno').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('gen_codice_storno').asstring := '';
      end;
    end;
    if trim(tabella_righe.fieldbyname('tiv_codice').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tiv_codice').asstring := '';
      end;
    end;
    if trim(tabella_righe.fieldbyname('tsm_codice').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tsm_codice').asstring := '';
      end;
    end;
    if trim(tabella_righe.fieldbyname('tsm_codice_art').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tsm_codice_art').asstring := '';
      end;
    end;
    if trim(tabella_righe.fieldbyname('cms_codice').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('cms_codice').asstring := '';
      end;
    end;
    if trim(tabella_righe.fieldbyname('tipologia').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tipologia').asstring := '';
      end;
    end;
    if tipo_documento <> 'ddt clienti' then
    begin
      if trim(tabella_righe.fieldbyname('saldo_acconto').asstring) <> '' then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('saldo_acconto').asstring := '';
        end;
      end;
    end;
    if trim(tabella_righe.fieldbyname('tipo_movimento').asstring) <> 'normale' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tipo_movimento').asstring := 'normale';
      end;
    end;
    if trim(tabella_righe.fieldbyname('data_consegna').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('data_consegna').asstring := '';
      end;
    end;
    if trim(tabella_righe.fieldbyname('data_consegna_confermata').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('data_consegna_confermata').value := null;
      end;
    end;
    if tabella_righe.fieldbyname('numero_colli_evasi').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('numero_colli_evasi').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('numero_confezioni_evase').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('numero_confezioni_evase').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('quantita_evasa').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('quantita_evasa').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_evaso').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_evaso').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_sconto_evaso').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_sconto_evaso').asfloat := 0;
      end;
    end;
  end;
end;

procedure TGESACQ.esegui_lotti;
var
  cfg_tipo: string;
begin
  if not lettore and (v_quantita.value <> 0) then
  begin
    if (trim(v_tmo_codice.text) <> '') and (trim(v_art_codice.text) <> '') then
    begin
      if not art.eof then
      begin
        if (art.fieldbyname('lotti').asstring = 'si') and (lotti = 'si') then
        begin
          if (not esiste_righe) and (gestione_lotto_singolo = 'si') then
          begin
            // già eseguita dopo input quantita
          end
          else
          begin
            codice_passato := vararrayof([tipo_documento + ' acq', tabella_righe.fieldbyname('progressivo').asfloat,
              tabella_righe.fieldbyname('riga').asinteger, 0]);

            if tipo_documento = 'ddt clienti' then
            begin
              cfg_tipo := 'C';
            end
            else
            begin
              cfg_tipo := 'F';
            end;

            esegui_carltm(codice_passato, trunc(v_numero_documento.value),
              cfg_tipo, v_frn_codice.text, v_art_codice.text, tabella_righe.fieldbyname('tma_codice').asstring, v_tmo_codice.text,
              tmo.fieldbyname('esistenza').asstring, v_serie_documento.text,
              v_data_registrazione.date, v_data_documento.date, tmo.fieldbyname('descrizione').asstring,
              arrotonda(tabella_righe.fieldbyname('tum_quantita_base').asfloat, 4), 0, 0, '', false, esiste_righe);
          end;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.esegui_analitica(tipo: string);
begin
  if tipo = 'righe' then
  begin
    esiste_documento_analitica := esiste_righe;
    esegui_analitica(tabella_righe.fieldbyname('gen_codice').asstring, tabella_righe.fieldbyname('documento_origine').asstring,
      tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('descrizione1').asstring,
      tabella_righe.fieldbyname('tipo_movimento').asstring, tabella_righe.fieldbyname('doc_progressivo_origine').asinteger,
      tabella_righe.fieldbyname('progressivo').asinteger, tabella_righe.fieldbyname('riga').asinteger,
      tabella_righe.fieldbyname('importo_euro').asfloat, tabella_righe.fieldbyname('importo_iva_euro').asfloat,
      tabella_righe.fieldbyname('importo').asfloat, tabella_righe.fieldbyname('importo_iva').asfloat,
      tabella_righe.fieldbyname('cen_codice').asstring, tabella_righe.fieldbyname('tvc_codice').asstring,
      tabella_righe.fieldbyname('tiv_codice').asstring);
  end
  else if tipo = 'spese_01' then
  begin
    if tabella.fieldbyname('gen_codice_spese_01').asstring <> '' then
    begin
      esiste_documento_analitica := esiste;
      esegui_analitica(tabella.fieldbyname('gen_codice_spese_01').asstring, '', '', tabella.fieldbyname('descrizione_spese_01').asstring, 'normale', 0,
        tabella.fieldbyname('progressivo').asinteger, 900001,
        arrotonda(tabella.fieldbyname('importo_spese_01').asfloat / tabella.fieldbyname('cambio').asfloat), 0,
        tabella.fieldbyname('importo_spese_01').asfloat, 0,
        tabella.fieldbyname('cen_codice').asstring, tabella.fieldbyname('tvc_codice').asstring);
    end;
  end
  else if tipo = 'spese_02' then
  begin
    if tabella.fieldbyname('gen_codice_spese_02').asstring <> '' then
    begin
      esiste_documento_analitica := esiste;
      esegui_analitica(tabella.fieldbyname('gen_codice_spese_02').asstring, '', '', tabella.fieldbyname('descrizione_spese_02').asstring, 'normale', 0,
        tabella.fieldbyname('progressivo').asinteger, 900002,
        arrotonda(tabella.fieldbyname('importo_spese_02').asfloat / tabella.fieldbyname('cambio').asfloat), 0,
        tabella.fieldbyname('importo_spese_02').asfloat, 0,
        tabella.fieldbyname('cen_codice').asstring, tabella.fieldbyname('tvc_codice').asstring);
    end;
  end
  else if tipo = 'spese_03' then
  begin
    if tabella.fieldbyname('gen_codice_spese_03').asstring <> '' then
    begin
      esiste_documento_analitica := esiste;
      esegui_analitica(tabella.fieldbyname('gen_codice_spese_03').asstring, '', '', tabella.fieldbyname('descrizione_spese_03').asstring, 'normale', 0,
        tabella.fieldbyname('progressivo').asinteger, 900003,
        arrotonda(tabella.fieldbyname('importo_spese_03').asfloat / tabella.fieldbyname('cambio').asfloat), 0,
        tabella.fieldbyname('importo_spese_03').asfloat, 0,
        tabella.fieldbyname('cen_codice').asstring, tabella.fieldbyname('tvc_codice').asstring);
    end;
  end
  else if tipo = 'spese_04' then
  begin
    if tabella.fieldbyname('gen_codice_spese_04').asstring <> '' then
    begin
      esiste_documento_analitica := esiste;
      esegui_analitica(tabella.fieldbyname('gen_codice_spese_04').asstring, '', '', tabella.fieldbyname('descrizione_spese_04').asstring, 'normale', 0,
        tabella.fieldbyname('progressivo').asinteger, 900004,
        arrotonda(tabella.fieldbyname('importo_spese_04').asfloat / tabella.fieldbyname('cambio').asfloat), 0,
        tabella.fieldbyname('importo_spese_04').asfloat, 0,
        tabella.fieldbyname('cen_codice').asstring, tabella.fieldbyname('tvc_codice').asstring);
    end;
  end
  else if tipo = 'cassa' then
  begin
    esiste_documento_analitica := esiste;
    esegui_analitica(tabella.fieldbyname('gen_codice_sconto_cassa').asstring, '', '', 'Sconto cassa', 'normale', 0,
      tabella.fieldbyname('progressivo').asinteger, 900005,
      arrotonda(tabella.fieldbyname('importo_sconto_cassa').asfloat / tabella.fieldbyname('cambio').asfloat), 0,
      tabella.fieldbyname('importo_sconto_cassa').asfloat, 0,
      tabella.fieldbyname('cen_codice').asstring, tabella.fieldbyname('tvc_codice').asstring);
  end
  else if tipo = 'sconti' then
  begin
    esiste_documento_analitica := esiste;
    esegui_analitica(tabella.fieldbyname('gen_codice_sconti_fattura').asstring, '', '', 'Sconti finali', 'normale', 0,
      tabella.fieldbyname('progressivo').asinteger, 900006,
      arrotonda((tabella.fieldbyname('importo_sconto').asfloat + tabella.fieldbyname('importo_sconto_finale').asfloat) /
      tabella.fieldbyname('cambio').asfloat), 0,
      (tabella.fieldbyname('importo_sconto').asfloat + tabella.fieldbyname('importo_sconto_finale').asfloat), 0,
      tabella.fieldbyname('cen_codice').asstring, tabella.fieldbyname('tvc_codice').asstring);
  end;
end;

procedure TGESACQ.esegui_analitica(analitica_gen_codice, analitica_documento_origine, analitica_art_codice,
  analitica_descrizione, analitica_tipo_movimento: string;
  analitica_doc_progressivo_origine, analitica_progressivo, analitica_riga: integer;
  analitica_importo_euro, analitica_importo_iva_euro, analitica_importo_valuta, analitica_importo_iva_valuta: double;
  cen_codice, tvc_codice: string;
  tiv_codice:
  string = '');
var
  descrizione, gen_codice, cfg_tipo, cfg_codice, serie_documento: string;
  importo, importo_dare, importo_avere, importo_valuta, importo_dare_valuta, importo_avere_valuta: double;
  numero_documento: double;
  data_registrazione, data_documento, data_competenza_bilancio: tdatetime;
  query_cem: tmyquery_go;
  esiste_cem: boolean;
begin
  if analitica = 'si' then
  begin
    gen.close;
    gen.parambyname('gen_codice').asstring := analitica_gen_codice;
    gen.open;
    if gen.fieldbyname('tipo').asstring = 'patrimoniale' then
    begin
      messaggio(200, 'aggiornamento analitica non eseguibile perché' + #13 +
        'il sottoconto contabile è patrimoniale');
    end
    else
    begin
      esiste_cem := false;
      if analitica_documento_origine <> '' then
      begin
        if analitica_documento_origine = 'ddt acq' then
        begin
          query_cem := tmyquery_go.create(nil);
          query_cem.connection := arc.arcdit;
          query_cem.sql.add('select tda.analitica');
          query_cem.sql.add('from dat');
          query_cem.sql.add('inner join tda on tda.codice = dat.tda_codice');
          query_cem.sql.add('where dat.progressivo = :progressivo');
          try
            query_cem.parambyname('progressivo').asinteger := analitica_doc_progressivo_origine;
            query_cem.open;
            if query_cem.fieldbyname('analitica').asstring = 'si' then
            begin
              messaggio(100, 'il ddt di origine della fattura' + #13 +
                'prevede già la gestione della contabilibità analitica' + #13 +
                'i collegamenti vanno gestiti nel documento di orgine');
              esiste_cem := true;
            end;
          finally
            query_cem.free;
          end;
        end;
      end;

      if not esiste_cem then
      begin
        codice_passato := vararrayof([tipo_documento + ' acq', analitica_progressivo, analitica_riga, 0]);

        data_registrazione := v_data_registrazione.date;
        gen_codice := analitica_gen_codice;
        cfg_tipo := 'F';
        cfg_codice := v_frn_codice.text;
        descrizione := analitica_descrizione;
        numero_documento := v_numero_documento.value;
        serie_documento := v_serie_documento.text;
        data_documento := v_data_documento.date;
        importo_dare := 0;
        importo_avere := 0;
        importo_dare_valuta := 0;
        importo_avere_valuta := 0;
        data_competenza_bilancio := v_data_competenza_bilancio.date;

        if analitica_tipo_movimento = 'normale' then
        begin
          if tabella.fieldbyname('listino_con_iva').asstring = 'no' then
          begin
            importo := analitica_importo_euro;
            importo_valuta := analitica_importo_valuta;
          end
          else
          begin
            importo := analitica_importo_euro - analitica_importo_iva_euro;
            importo_valuta := analitica_importo_valuta - analitica_importo_iva_valuta;
          end;
        end
        else
        begin
          importo := 0;
          importo_valuta := 0;
        end;

        if tiv_codice <> '' then
        begin
          read_tabella(arc.arcdit, 'tiv', 'codice', tiv_codice, 'indetraibile');
          importo := importo + arrotonda(analitica_importo_iva_euro * archivio.fieldbyname('indetraibile').asfloat / 100);
          importo_valuta := importo_valuta + arrotonda(analitica_importo_iva_valuta * archivio.fieldbyname('indetraibile').asfloat / 100);
        end;

        importo_dare := importo;
        importo_dare_valuta := importo_valuta;
        if read_tabella(arc.arcdit, 'tco', 'codice', tabella.fieldbyname('tco_codice').asstring, 'segno_registro_iva') then
        begin
          if archivio.fieldbyname('segno_registro_iva').asstring = 'decrementa' then
          begin
            importo_dare := importo_dare * -1;
            importo_dare_valuta := importo_dare_valuta * -1;
          end;
        end;
        if (analitica_riga = 900005) or (analitica_riga = 900006) then
        begin
          importo_dare := importo_dare * -1;
          importo_avere := importo_avere * -1;
          importo_dare_valuta := importo_dare_valuta * -1;
          importo_avere_valuta := importo_avere_valuta * -1;
        end;

        esegui_carcem(codice_passato, data_registrazione, gen_codice, analitica_art_codice, cfg_tipo, cfg_codice,
          descrizione, esercizio, cen_codice, tvc_codice, numero_documento, serie_documento, data_documento,
          importo_dare, importo_avere, esiste_documento_analitica, false,
          importo_dare_valuta, importo_avere_valuta, tabella.fieldbyname('cambio').asfloat,
          '', false, data_competenza_bilancio);
      end;
    end;
  end;
end;

procedure TGESACQ.crea_conto_terzi;
begin
  if not art.eof then
  begin
    if tda.fieldbyname('conto_terzi').asstring = 'si' then
    begin
      apertura_conto_terzi(true, 0, tabella.fieldbyname('data_registrazione').asdatetime,
        tabella.fieldbyname('data_documento').asdatetime, tabella.fieldbyname('frn_codice').asstring,
        tabella.fieldbyname('serie_documento').asstring, tabella_righe.fieldbyname('art_codice').asstring,
        tabella.fieldbyname('numero_documento').asfloat, tabella_righe.fieldbyname('tum_quantita_base').asfloat,
        tipo_documento + ' acq', tabella_righe.fieldbyname('progressivo').asfloat,
        tabella_righe.fieldbyname('riga').asinteger, 0);
    end;
  end;
end;

procedure TGESACQ.varia_conto_terzi;
begin
  if (v_quantita.value <> 0) then
  begin
    if not art.eof then
    begin
      if tda.fieldbyname('conto_terzi').asstring = 'si' then
      begin
        apertura_conto_terzi(false, lct.fieldbyname('progressivo').asfloat, tabella.fieldbyname('data_registrazione').asdatetime,
          tabella.fieldbyname('data_documento').asdatetime, tabella.fieldbyname('frn_codice').asstring,
          tabella.fieldbyname('serie_documento').asstring, tabella_righe.fieldbyname('art_codice').asstring,
          tabella.fieldbyname('numero_documento').asfloat, tabella_righe.fieldbyname('tum_quantita_base').asfloat,
          tipo_documento + ' acq', tabella_righe.fieldbyname('progressivo').asfloat,
          tabella_righe.fieldbyname('riga').asinteger, 0);
      end;
    end;
  end;
end;

procedure TGESACQ.aggiorna_archivi_collegati;
begin
  apri_transazione;
  try
    try
      tabella_righe.disablecontrols;

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        aggiorna_archivi_collegati_righe;

        tabella_righe.next;
      end;

      commit_transazione;
    except
      on e: exception do
      begin
        if rollback_transazione(e.message) then
        begin
          raise;
        end;
      end;
    end;
  finally
    tabella_righe.enablecontrols;

    chiudi_transazione;
  end;
end;

procedure TGESACQ.aggiorna_archivi_collegati_righe;
begin
  cem.close;
  cem.sql.clear;
  cem.sql.add('select * from cem');
  cem.sql.add('where documento_origine = :tipo_documento');
  cem.sql.add('and doc_progressivo_origine = :progressivo and doc_riga_origine = :doc_riga');
  cem.params[0].AsString := tipo_documento + ' acq';
  cem.params[1].Asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  cem.params[2].Asinteger := tabella_righe.fieldbyname('riga').asinteger;
  cem.open;
  cem.first;
  while not cem.eof do
  begin
    cem.edit;
    cem.fieldbyname('data_documento').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
    cem.fieldbyname('serie_documento').asstring := tabella.fieldbyname('serie_documento').asstring;
    cem.fieldbyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;
    cem.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_registrazione').asdatetime;
    cem.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('frn_codice').asstring;

    cem.post;

    cem.next;
  end;

  cmm.close;
  cmm.sql.clear;
  cmm.sql.add('select * from cmm');
  cmm.sql.add('where documento_origine = :tipo_documento');
  cmm.sql.add('and doc_progressivo_origine = :progressivo and doc_riga_origine = :doc_riga');
  cmm.params[0].AsString := tipo_documento + ' acq';
  cmm.params[1].Asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  cmm.params[2].Asinteger := tabella_righe.fieldbyname('riga').asinteger;
  cmm.open;
  cmm.first;
  while not cmm.eof do
  begin
    cmm.edit;
    cmm.fieldbyname('data_documento').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
    cmm.fieldbyname('serie_documento').asstring := tabella.fieldbyname('serie_documento').asstring;
    cmm.fieldbyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;
    cmm.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_registrazione').asdatetime;
    cmm.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('frn_codice').asstring;

    cmm.post;

    cmm.next;
  end;

  ltm.close;
  ltm.sql.text := 'select * from ltm where documento_origine = :documento_origine ' +
    'and doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
  ltm.params[0].asstring := tipo_documento + ' acq';
  ltm.params[1].asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
  ltm.open;
  ltm.first;
  while not ltm.eof do
  begin
    ltm.edit;
    ltm.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_registrazione').asdatetime;
    ltm.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('frn_codice').asstring;

    ltm.post;

    ltm.next;
  end;

  //  ubicazioni
  ubm.close;
  ubm.sql.text := 'update ubm set data_registrazione = :data_registrazione where documento_origine = :documento_origine and ' +
    'doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
  ubm.parambyname('data_registrazione').asdatetime := tabella.fieldbyname('data_registrazione').asdatetime;
  ubm.parambyname('documento_origine').asstring := tipo_documento + ' acq';
  ubm.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  ubm.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  ubm.execsql;

  lct.close;
  lct.sql.clear;
  lct.sql.add('select * from lct');
  lct.sql.add('where documento_origine = :tipo_documento');
  lct.sql.add('and doc_progressivo_origine = :progressivo and doc_riga_origine = :doc_riga');
  lct.params[0].AsString := tipo_documento + ' acq';
  lct.params[1].Asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  lct.params[2].Asinteger := tabella_righe.fieldbyname('riga').asinteger;
  lct.open;
  lct.first;
  while not lct.eof do
  begin
    lct.edit;
    lct.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_registrazione').asdatetime;
    lct.fieldbyname('data_documento').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
    lct.fieldbyname('serie_documento').asstring := tabella.fieldbyname('serie_documento').asstring;
    lct.fieldbyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;
    lct.fieldbyname('cli_codice').asstring := tabella.fieldbyname('frn_codice').asstring;

    lct.post;

    lct.next;
  end;

  if (tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine') then
  begin
    if (tabella.fieldbyname('situazione').asstring = 'evaso') and (tabella.fieldbyname('tmo_codice').asstring <> '') then
    begin
      mmt.sql.clear;
      mmt.sql.add('select *');
      mmt.sql.add('from mmt');
      mmt.sql.add('where documento_origine = :documento_origine');
      mmt.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');
      mmt.params[0].asstring := tabella.fieldbyname('tipo_documento').asstring + ' acq';
      mmt.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
      mmt.close;
      mmt.open;
      while not mmt.eof do
      begin
        mmt.edit;

        mmt.fieldbyname('data_documento').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
        mmt.fieldbyname('serie_documento').asstring := tabella.fieldbyname('serie_documento').asstring;
        mmt.fieldbyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;
        mmt.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_registrazione').asdatetime;
        mmt.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('frn_codice').asstring;

        mmt.post;

        mmt.next;
      end;
    end;
  end;
end;

procedure TGESACQ.esegui_gesacq02;
var
  pr: tgesacq02;
begin
  pr := tgesacq02.create(nil);
  if pr.esegui_form then
  begin
    pr.programma_chiamante := 'gesacq';
    pr.tipo_documento := tipo_documento;
    pr.tipo_movimento := tabella_righe.fieldbyname('tipo_movimento').asstring;
    pr.tco_codice := tabella.fieldbyname('tco_codice').asstring;
    pr.tda_codice_differite := tabella.fieldbyname('tda_codice_differite').asstring;
    pr.art_codice := v_art_codice.text;
    pr.form_chiamante := self;
    pr.showmodal;
  end;
  pr.free;

  if vecchio_tiv_codice_righe <> tabella_righe.fieldbyname('tiv_codice').asstring then
  begin
    calcola_importo;
  end;
end;

procedure TGESACQ.controllo_cancella;
begin
  inherited;

  begin
    if (tabella.fieldbyname('bloccato').asstring = 'si') and not bloccato_click then
    begin
      messaggio(000, 'il documento è bloccato');
      controllo_cancella_edit := false;
      exit;
    end
    else
    begin
      if esiste and (tipo_documento <> tabella.fieldbyname('tipo_documento').asstring) then
      begin
        messaggio(000, 'il tipo documento selezionato non è gestibile con il programma utilizzato');
        controllo_cancella_edit := false;
        exit;
      end
      else
      begin
        if (tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine') then
        begin
          if tipo_documento = 'fattura differita' then
          begin
            tabella_righe.close;
            tabella_righe.open;
            if not tabella_righe.eof then
            begin
              messaggio(000, 'per cancellare la fattura differita eseguire l''operazione di storno');
              controllo_cancella_edit := false;
              exit;
            end;
          end
          else if (tabella.fieldbyname('situazione').asstring = 'evaso') and (cancella_documenti_acquisto_evasi = 'no') then
          begin
            messaggio(000, 'non è consentita la cancellazione dei documenti evasi' + #13 +
              'eseguire la procedura di storno');
            controllo_cancella_edit := false;
            exit;
          end
          else if controllo_esercizio_situazione then
          begin
            controllo_cancella_edit := false;
            exit;
          end;
        end
        else
        begin
          if controllo_ordini_preventivi then
          begin
            controllo_cancella_edit := false;
            exit;
          end
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.controllo_edit;
begin
  inherited;

  if (tabella.fieldbyname('bloccato').asstring = 'si') and not bloccato_click then
  begin
    messaggio(000, 'il documento è bloccato');
    controllo_cancella_edit := false;
    exit;
  end
  else
  begin
    if esiste and (tipo_documento <> tabella.fieldbyname('tipo_documento').asstring) then
    begin
      messaggio(000, 'il tipo documento selezionato non è gestibile con il programma utilizzato');
      controllo_cancella_edit := false;
      exit;
    end
    else
    begin
      begin
        if (tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine') then
        begin
          if (tabella.fieldbyname('situazione').asstring = 'evaso') and (cancella_documenti_acquisto_evasi = 'no') then
          begin
            messaggio(000, 'non è consentita la modifica dei documenti evasi' + #13 +
              'eseguire la procedura di storno');
            controllo_cancella_edit := false;
            exit;
          end
          else if controllo_esercizio_situazione then
          begin
            controllo_cancella_edit := false;
            exit;
          end
          else if (tipo_documento = 'fattura differita') and (parte_attiva <> 'pannello_campi') then
          begin
            if not inserimento_fattura_differita then
            begin
              messaggio(000, 'non è consentito inserire righe nelle fatture differite' + #13 +
                'utilizzare la funzione di evasione delle bolle o dei D.D.T. [tasto F9]');
              controllo_cancella_edit := false;
              exit;
            end;
          end;
        end
        else
        begin
          if controllo_ordini_preventivi then
          begin
            controllo_cancella_edit := false;
            exit;
          end
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.controllo_cancella_righe;
begin
  inherited;

  if (tabella.fieldbyname('bloccato').asstring = 'si') and not bloccato_click then
  begin
    messaggio(000, 'il documento è bloccato');
    controllo_cancella_edit := false;
    exit;
  end
  else
  begin
    if esiste and (tipo_documento <> tabella.fieldbyname('tipo_documento').asstring) then
    begin
      messaggio(000, 'il tipo documento selezionato non è gestibile con il programma utilizzato');
      controllo_cancella_edit := false;
      exit;
    end
    else
    begin
      if (tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine') then
      begin
        if controllo_ordine_produzione then
        begin
          controllo_cancella_edit := false;
          exit;
        end
        else
        begin
          if (tipo_documento = 'fattura differita') and ((tabella_righe.fieldbyname('documento_origine').asstring <> '') or
            (tabella_righe.fieldbyname('riga_ddt').asstring = 'si')) then
          begin
            messaggio(000, 'per variare i dati delle fatture differite' + #13 +
              'eseguire l''operazione di storno e variare il documento di origine');
            controllo_cancella_edit := false;
            exit;
          end
          else if (tabella.fieldbyname('situazione').asstring = 'evaso') and (cancella_documenti_acquisto_evasi = 'no') then
          begin
            messaggio(000, 'non è consentita la cancellazione dei documenti evasi' + #13 +
              'eseguire la procedura di storno');
            controllo_cancella_edit := false;
            exit;
          end
          else if controllo_esercizio_situazione then
          begin
            controllo_cancella_edit := false;
            exit;
          end
          else if (tipo_documento = 'nota credito') and (tabella_righe.fieldbyname('documento_origine').asstring <> '') then
          begin
            messaggio(000, 'per variare i dati delle note credito emesse a fronte di ddt a fornitori' + #13 +
              'è necessario eseguire l''operazione di storno e variare il documento di origine');
            controllo_cancella_edit := false;
            exit;
          end;
        end;
      end
      else
      begin
        if controllo_ordini_preventivi then
        begin
          controllo_cancella_edit := false;
          exit;
        end;

        if controllo_cancella_situazione_righe then
        begin
          controllo_cancella_edit := false;
          exit;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.controllo_edit_righe;
begin
  inherited;

  if (tabella.fieldbyname('bloccato').asstring = 'si') and not bloccato_click then
  begin
    messaggio(000, 'il documento è bloccato');
    controllo_cancella_edit := false;
    exit;
  end
  else
  begin
    if esiste and (tipo_documento <> tabella.fieldbyname('tipo_documento').asstring) then
    begin
      messaggio(000, 'il tipo documento selezionato non è gestibile con il programma utilizzato');
      controllo_cancella_edit := false;
      exit;
    end
    else
    begin
      if (tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine') then
      begin
        if controllo_ordine_produzione then
        begin
          controllo_cancella_edit := false;
          exit;
        end
        else
        begin
          if (tabella.fieldbyname('situazione').asstring = 'evaso') and (cancella_documenti_acquisto_evasi = 'no') then
          begin
            messaggio(000, 'non è consentita la modifica dei documenti evasi' + #13 +
              'eseguire la procedura di storno');
            controllo_cancella_edit := false;
            exit;
          end
          else if controllo_esercizio_situazione then
          begin
            controllo_cancella_edit := false;
            exit;
          end
          else if (tipo_documento = 'fattura differita') and (tabella_righe.fieldbyname('documento_origine').asstring <> '') and
            (not avviso_differite) then
          begin
            messaggio(200, 'per variare i dati delle fatture differite' + #13 +
              'eseguire l''operazione di storno e variare il documento di origine');
            controllo_cancella_edit := false;
            exit;
          end
          else if (tipo_documento = 'nota credito') and (tabella_righe.fieldbyname('documento_origine').asstring <> '') then
          begin
            messaggio(200, 'per variare i dati delle note credito emesse a fronte di ddt a fornitori' + #13 +
              'è consigliabile eseguire l''operazione di storno e variare il documento di origine');
            exit;
          end;
        end;
      end
      else
      begin
        if controllo_ordini_preventivi then
        begin
          controllo_cancella_edit := false;
          exit;
        end;

        if controllo_situazione_righe then
        begin
          controllo_cancella_edit := false;
          exit;
        end;
      end;
    end;
  end;
end;

function TGESACQ.controllo_ordini_preventivi: boolean;
begin
  result := false;

  if esiste_documento then
  begin
    if (tabella.fieldbyname('accettato').asstring = 'si') and
      ((tabella.fieldbyname('utn_codice_accettazione').asstring <> utente) or
      (arc.utn.fieldbyname('accettazione_acquisti').asstring <> 'si')) then
    begin
      messaggio(000, 'il documento è accettato dall''utente ' + tabella.fieldbyname('utn_codice_accettazione').asstring + slinebreak +
        'e quindi non è modificabile');
      result := true;
    end
    else
    begin
      if (tabella.fieldbyname('situazione').asstring = 'evaso') then
      begin
        messaggio(000, 'il documento è evaso e quindi non è modificabile');
        begin
          result := true;
        end;
      end
      else if (tabella.fieldbyname('situazione').asstring = 'evaso parziale') then
      begin
        if messaggio(304, 'il documento è già stato parzialmente evaso, si conferma l''operazione') <> 1 then
        begin
          result := true;
        end;
      end
      else if (tabella.fieldbyname('situazione').asstring = 'annullato') then
      begin
        messaggio(200, 'il documento è stato annullato e quindi non è modificabile');
        result := true;
      end
      else if (tabella.fieldbyname('situazione').asstring = 'revisionato') then
      begin
        messaggio(200, 'il documento è stato revisionato e quindi non è modificabile');
        result := true;
      end
      else if (tabella.fieldbyname('stampato').asstring <> '') then
      begin
        if tda.fieldbyname('avvisi_documento_stampato_fornitore').asstring = 'si' then
        begin
          if messaggio(300, 'il documento è già stato stampato per il fornitore' + #13 +
            'confermare per proseguire con la modifica') <> 1 then
          begin
            result := true;
          end;
        end;
      end;

      if not result then
      begin
        if tda.fieldbyname('controllo_revisione').asstring = 'si' then
        begin
          if (screen.activecontrol.name <> 'v_trv_codice') and (screen.activecontrol.name <> 'v_note_revisione') then
          begin
            if messaggio(300, 'la modifica del documento richiede la creazione di una revisione' + #13 +
              'si conferma la modifica') = 1 then
            begin
              result := false;
            end
            else
            begin
              result := true;
            end;
          end;
        end;
      end;
    end;
  end;
end;

function TGESACQ.controllo_esercizio_situazione: boolean;
begin
  result := false;

  if esiste then
  begin
    if tabella.fieldbyname('ese_codice').asstring <> esercizio then
    begin
      messaggio(000, 'documento non modificabile perché' + #13 +
        'l''esercizio è diverso da quello attivo');
      result := true;
      exit;
    end
    else if (esercizio_chiuso = 'si') or (esercizio_chiuso_magazzino = 'si') then
    begin
      messaggio(000, 'documento non modificabile perché' + #13 +
        'l''esercizio contabile o quello di magazzino sono stati dichiarati chiusi');
      result := true;
      exit;
    end;

    if (tabella.fieldbyname('situazione').asstring = 'consolidato') or (tabella.fieldbyname('situazione').asstring = 'consolidato parziale') then
    begin
      messaggio(000, 'documento non modificabile perché è già stato consolidato' + #13 +
        'per poterlo modificare va eseguita la opportuna procedura di storno');
      result := true;
      exit;
    end;

    if (tabella_righe.state <> dsbrowse) and
      ((tabella_righe.fieldbyname('situazione').asstring = 'consolidato') or
      (tabella_righe.fieldbyname('situazione').asstring = 'consolidato parziale')) then
    begin
      messaggio(000, 'riga documento non modificabile perché è già stata consolidata' + #13 +
        'per poterla modificare va eseguita la procedura di storno' + #13 +
        'o la cancellazione della riga del documento derivato');
      result := true;
      exit;
    end;
  end;
end;

function TGESACQ.controllo_situazione_righe: boolean;
begin
  result := false;

  if esiste then
  begin
    if (tabella_righe.fieldbyname('situazione').asstring <> 'inserito') then
    begin
      if (tabella_righe.fieldbyname('situazione').asstring = 'evaso') then
      begin
        messaggio(000, 'riga non modificabile perché è già stata evasa' + #13 +
          'per poterla modificare va eseguita la opportuna procedura di storno' + #13 +
          'del documento utilizzato per l''evasione');
        result := true;
      end
      else if (tabella_righe.fieldbyname('situazione').asstring = 'annullato') then
      begin
        messaggio(000, 'riga non modificabile perché annullata');
        result := true;
      end;
    end
    else if tabella_righe.fieldbyname('documento_origine').asstring <> '' then
    begin
      if not((tipo_documento = 'preventivo') and (tabella_righe.fieldbyname('documento_origine').asstring = 'rda')) then
      begin
        messaggio(000, 'il documento deriva da: ' +
          tabella_righe.fieldbyname('documento_origine').asstring + slinebreak +
            'la variazione non aggiorna il documento di origine');
      end;
    end;
  end;
end;

function TGESACQ.controllo_cancella_situazione_righe: boolean;
begin
  result := false;

  if esiste then
  begin
    if (tabella_righe.fieldbyname('situazione').asstring = 'evaso') or
      (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') then
    begin
      messaggio(000, 'riga non cancellabile perché è già stata evasa' + #13 +
        'per poterla cancellare va eseguita la opportuna procedura di storno' + #13 +
        'del documento utilizzato per l''evasione');
      result := true;
    end
    else if (tipo_documento = 'ordine') and (tabella_righe.fieldbyname('ovr_tipo').asstring = 'cliente') and
      (tabella_righe.fieldbyname('ovr_progressivo').asfloat <> 0) then
    begin
      if messaggio(300, 'la riga deriva da un ordine cliente' + #13 +
        'la si vuole effettivamente cancellare?') <> 1 then
      begin
        result := true;
      end;
    end
    else if (tipo_documento = 'ordine') and (tabella_righe.fieldbyname('ovr_tipo').asstring = 'produzione') and
      (tabella_righe.fieldbyname('ovr_progressivo').asfloat <> 0) then
    begin
      if messaggio(300, 'la riga deriva da un ordine di produzione' + #13 +
        'la si vuole effettivamente cancellare?') <> 1 then
      begin
        result := true;
      end;
    end
    else if tabella_righe.fieldbyname('documento_origine').asstring <> '' then
    begin
      messaggio(000, 'il documento deriva da: ' +
          tabella_righe.fieldbyname('documento_origine').asstring + slinebreak +
            'la variazione non aggiorna il documento di origine');
    end;
  end;
end;

procedure TGESACQ.abilita_pannello_righe(attivo: boolean);
begin
  inherited;
  if parte_attiva = 'griglia_righe' then
  begin
    if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (trim(tabella.fieldbyname('tda_codice_differite').asstring) = '') then
    begin
      v_prezzo.enabled := false;
      v_tsm_codice_righe.enabled := false;
      v_tsm_codice_art.enabled := false;
      v_importo_sconto_righe.enabled := false;
      v_tipo_movimento.enabled := false;
      v_importo.enabled := false;

      v_prezzo.color := clbtnface;
      v_tsm_codice_righe.color := clbtnface;
      v_tsm_codice_art.color := clbtnface;
      v_importo_sconto_righe.color := clbtnface;
      v_tipo_movimento.color := clbtnface;
      v_importo.color := clbtnface;
    end;
  end;
  abilita_campi_opzionali(attivo);
end;

procedure TGESACQ.gestisci_collegato;
begin
  parametri_extra_programma_chiamato[29] := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
  codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
  if tabella_righe.fieldbyname('documento_origine').asstring = 'preventivo acq' then
  begin
    esegui_programma('GESPREA', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'ordine acq' then
  begin
    esegui_programma('GESORDA', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt acq' then
  begin
    esegui_programma('GESDDTA', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt cos acq' then
  begin
    esegui_programma('GESDDTA', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'produzione' then
  begin
    esegui_programma('GESORDP', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt fornitori ven' then
  begin
    esegui_programma('GESDDTF', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'rda' then
  begin
    esegui_programma('GESRDA', codice_passato, true);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt ven' then
  begin
    esegui_programma('GESDDTV', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'spedizioni' then
  begin
    esegui_programma('GESSPD', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'riparazione occasionale' then
  begin
    esegui_programma('GESIAST', codice_passato, true);
  end;
end;

procedure TGESACQ.v_gestione_collegatoClick(Sender: TObject);
begin
  inherited;
  gestisci_collegato;
end;

procedure TGESACQ.v_giorni_consegnaEnter(Sender: TObject);
begin
  inherited;
  variato_importo := v_giorni_consegna.intvalue;
end;

procedure TGESACQ.v_giorni_consegnaExit(Sender: TObject);
begin
  inherited;
  if variato_importo <> v_giorni_consegna.intvalue then
  begin
    assegna_data_consegna;
  end;
end;

procedure TGESACQ.assegna_data_consegna;
begin
  inherited;
  if tabella_edit(tabella) then
  begin
    if tabella.fieldbyname('giorni_consegna').asinteger <> 0 then
    begin
      tabella.fieldbyname('data_consegna').asdatetime := tabella.fieldbyname('data_documento').asdatetime +
        tabella.fieldbyname('giorni_consegna').asinteger;
    end;
  end;
end;

procedure TGESACQ.assegna_valore_tla_codice;
begin
  if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '') then
  begin
    if tabella.fieldbyname('tla_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tla_codice').asstring := '';
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_valore_tpa_codice;
begin
  if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '') then
  begin
    if tabella.fieldbyname('tpa_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tpa_codice').asstring := '';
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_valore_tsm_codice;
begin
  if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '') then
  begin
    if tabella.fieldbyname('tsm_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tsm_codice').asstring := '';
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_valore_tva_codice;
begin
end;

procedure TGESACQ.assegna_valore_tiv_codice;
begin
  if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '') then
  begin
    if tabella.fieldbyname('tiv_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tiv_codice').asstring := '';
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_valore_codice_abi;
begin
  if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '') then
  begin
    if tabella.fieldbyname('codice_abi').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('codice_abi').asstring := '';
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_valore_codice_cab;
begin
  if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '') then
  begin
    if tabella.fieldbyname('codice_cab').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('codice_cab').asstring := '';
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_valore_tba_codice;
begin
  if ((tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti')) and (tabella.fieldbyname('tda_codice_differite').asstring = '') then
  begin
    if tabella.fieldbyname('tba_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tba_codice').asstring := '';
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_valore_tmo_codice;
begin
  if (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
  begin
    if tabella.fieldbyname('tmo_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tmo_codice').asstring := '';
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_valore_tma_codice_ordine;
begin
  if (tipo_documento = 'preventivo') then
  begin
    if tabella.fieldbyname('tma_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := '';
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_valore_tmo_codice_collegato;
begin
end;

procedure TGESACQ.assegna_valore_tma_codice_collegato_ordine;
begin
end;

procedure TGESACQ.assegna_valore_tsp_codice;
begin
end;

procedure TGESACQ.assegna_valore_tpo_codice;
begin
end;

procedure TGESACQ.assegna_valore_intra;
begin
  if controllo then
  begin
    if v_intra.checked then
    begin
      if not((tipo_documento = 'fattura') or (tipo_documento = 'nota credito')) then
      begin
        if tabella.fieldbyname('rettifica_intra').asstring <> 'no' then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('rettifica_intra').asstring := 'no';
          end;
        end;
      end;
      if tabella.fieldbyname('rettifica_intra').asstring = 'no' then
      begin
        if tabella.fieldbyname('mese_rettifica_intra').asinteger <> 0 then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('mese_rettifica_intra').asinteger := 0;
          end;
        end;
        if tabella.fieldbyname('trimestre_rettifica_intra').asinteger <> 0 then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('trimestre_rettifica_intra').asinteger := 0;
          end;
        end;
        if tabella.fieldbyname('anno_rettifica_intra').asinteger <> 0 then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('anno_rettifica_intra').asinteger := 0;
          end;
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('rettifica_intra').asstring <> 'no' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('rettifica_intra').asstring := 'no';
        end;
      end;
      if tabella.fieldbyname('mese_rettifica_intra').asinteger <> 0 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('mese_rettifica_intra').asinteger := 0;
        end;
      end;
      if tabella.fieldbyname('trimestre_rettifica_intra').asinteger <> 0 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('trimestre_rettifica_intra').asinteger := 0;
        end;
      end;
      if tabella.fieldbyname('anno_rettifica_intra').asinteger <> 0 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('anno_rettifica_intra').asinteger := 0;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.abilita_intra;
begin
  if v_intra.checked then
  begin
    v_tna_codice_intra.enabled := true;
    v_tna_codice_intra.color := clwindow;
    if (tipo_documento = 'fattura') or (tipo_documento = 'nota credito') then
    begin
      v_rettifica_intra.enabled := true;
    end;

  end
  else
  begin
    v_tna_codice_intra.enabled := false;
    v_rettifica_intra.enabled := false;
    v_tna_codice_intra.color := clbtnface;
  end;
end;

procedure TGESACQ.v_commesseClick(Sender: TObject);
begin
  inherited;
  esegui_commesse;
end;

procedure TGESACQ.v_conto_terziClick(Sender: TObject);
begin
  inherited;
  lct.SQL.clear;
  lct.SQL.add('select * from lct');
  lct.SQL.add('where documento_origine = :codice0');
  lct.SQL.add('and doc_progressivo_origine = :codice2');
  lct.SQL.add('and doc_riga_origine = :codice3 limit 1');
  lct.params[0].AsString := tipo_documento + ' acq';
  lct.params[1].Asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  lct.params[2].AsInteger := tabella_righe.fieldbyname('riga').asinteger;
  lct.close;
  lct.open;
  if not lct.eof then
  begin
    varia_conto_terzi;
  end
  else
  begin
    crea_conto_terzi;
  end;
end;

procedure TGESACQ.esegui_commesse;
var
  cfg_tipo, tipo_movimento: string;
  quantita, importo: double;
begin
  if commesse = 'si' then
  begin
    gen.close;
    gen.parambyname('gen_codice').asstring := tabella_righe.fieldbyname('gen_codice').asstring;
    gen.open;
    if (gen.fieldbyname('tipo').asstring = 'patrimoniale') and (arc.dit.fieldbyname('commesse_patrimoniali').asstring <> 'si') then
    begin
      messaggio(200, 'aggiornamento commesse non eseguibile perché' + #13 +
        'il sottoconto contabile è patrimoniale');
    end
    else
    begin
      codice_passato := vararrayof([tipo_documento + ' acq', tabella_righe.fieldbyname('progressivo').asfloat,
        tabella_righe.fieldbyname('riga').asinteger, 0]);

      quantita := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
      if v_tipo_movimento.text = 'normale' then
      begin
        if tabella.fieldbyname('listino_con_iva').asstring = 'no' then
        begin
          importo := arrotonda(tabella_righe.fieldbyname('importo_euro').asfloat);
        end
        else
        begin
          importo := arrotonda(tabella_righe.fieldbyname('importo_euro').asfloat -
            tabella_righe.fieldbyname('importo_iva_euro').asfloat);
        end;
      end
      else
      begin
        importo := 0;
      end;

      if read_tabella(arc.arcdit, 'tco', 'codice', tabella.fieldbyname('tco_codice').asstring, 'segno_registro_iva') then
      begin
        tipo_movimento := 'costo';
        if archivio.fieldbyname('segno_registro_iva').asstring = 'decrementa' then
        begin
          quantita := quantita * -1;
          importo := importo * -1;
        end;
      end
      else
      begin
        if read_tabella(arc.arcdit, 'tmo', 'codice', tabella.fieldbyname('tmo_codice').asstring, 'esistenza') then
        begin
          if archivio.fieldbyname('esistenza').asstring = 'incrementa' then
          begin
            tipo_movimento := 'ricavo';
            quantita := quantita * -1;
            importo := importo * -1;
          end
          else
          begin
            tipo_movimento := 'ricavo';
          end;
        end
        else
        begin
          tipo_movimento := 'ricavo';
        end;
      end;

      if tipo_documento = 'ddt clienti' then
      begin
        cfg_tipo := 'C';
      end
      else
      begin
        cfg_tipo := 'F';
      end;

      esegui_carcmm(codice_passato, cfg_tipo, v_frn_codice.text,
        v_art_codice.text, v_serie_documento.text, v_descrizione1_riga.text, v_descrizione1_riga.text,
        tipo_movimento, v_data_registrazione.date, v_data_documento.date, importo, v_numero_documento.value,
        tabella_righe.fieldbyname('cms_codice').asstring, tabella_righe.fieldbyname('tipologia').asstring,
        quantita, esiste_righe);
    end;
  end;
end;

procedure TGESACQ.v_log_revisioneClick(Sender: TObject);
var
  pr: tanarev;
begin
  inherited;
  pr := tanarev.create(nil);
  pr.modulo := 'acquisti';
  pr.tipo_documento := tabella.fieldbyname('tipo_documento').asstring;
  pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
  if tabella.fieldbyname('progressivo_origine_revisione').asinteger <> 0 then
  begin
    pr.progressivo_origine_revisione := tabella.fieldbyname('progressivo_origine_revisione').asinteger;
  end
  else
  begin
    pr.progressivo_origine_revisione := tabella.fieldbyname('progressivo').asinteger;
  end;
  pr.showmodal;
  pr.free;
end;

procedure TGESACQ.v_lottiClick(Sender: TObject);
begin
  inherited;
  esegui_lotti;
end;

function TGESACQ.esercizio_diverso: boolean;
begin
  if (tabella.fieldbyname('ese_codice').asstring <> esercizio) and
    (tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine') then
  begin
    messaggio(000, 'esercizio del documento diverso da quello attivo');
    result := true;
  end
  else
  begin
    result := false;
  end;
end;

procedure TGESACQ.stampa;
var
  prosegui: boolean;
begin
  if v_progressivo.value <> 0 then
  begin
    prosegui := true;

    if esercizio_diverso then
    begin
      if ((copy(tipo_documento, 1, 3) = 'ddt') or
        (copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito')) and
        (tabella.fieldbyname('situazione').asstring = 'inserito') then
      begin
        prosegui := false;
      end;
    end;

    if prosegui then
    begin
      if not tabella_righe.isempty then
      begin
        aggiorna_dcm('azzera', progressivo_confermato);

        tda_codice_controllo(true);

        codice_archivio := v_progressivo.value;

        if stampa_immediata_etichette = 'si' then
        begin
          if messaggio(300, 'stampa etichette?') = 1 then
          begin
            stampa_etichette;
          end;
        end;

        inherited;

        tabella.refresh;
        tabella_righe.refresh;

        if (consolidamento = 'si') and (tabella.fieldbyname('situazione').asstring = 'evaso') then
        begin
          codice_passato := v_progressivo.value;
          parametri_extra_programma_chiamato[0] := true;
          esegui_programma('CONDOCA', codice_passato, true);
        end;

        tabella.refresh;
        tabella_righe.refresh;
      end;
    end;
  end;
end;

procedure TGESACQ.v_tna_codice_intraExit(Sender: TObject);
begin
  inherited;
  tna_codice_intra_controllo(true);
end;

procedure TGESACQ.tna_codice_intra_controllo(blocco: boolean);
begin
  if v_tna_codice_intra.enabled then
  begin
    tabella_controllo(true, tna_intra, v_tna_codice_intra, blocco, tab_control, tab_testata_riferimento, tabella);
  end;
end;

procedure TGESACQ.v_griglia_righeKeyDown(Sender: TObject;
  var
  Key: Word;
  Shift:
  TShiftState);
var
  query_rma: tmyquery_go;
begin
  if (key = vk_f10) and (shift = []) then
  begin
    if ((tipo_documento = 'ddt') and (tabella_righe.fieldbyname('ddt_artna').asstring = 'si')) then
    begin
      read_tabella(arc.arcdit, 'artna', 'codice', tabella_righe.fieldbyname('art_codice').asstring, 'note');
      messaggio(100, archivio.fieldbyname('note').asstring);
    end;
  end
  else
  begin
    if ((key = vk_f8) and (shift = [ssctrl])) then
    begin
      esegui_gesdocgri;
    end
    else
    begin
      if ((key = vk_insert) and (shift = [ssctrl])) or
        ((key = vk_insert) and (shift = [])) or
        ((key = vk_insert) and (shift = [ssalt])) or
        ((key = vk_return) and (shift = [])) then
      begin
        if not((tipo_documento = 'preventivo') or (tipo_documento = 'ordine')) then
        begin
          if tabella.fieldbyname('situazione').asstring = 'evaso' then
          begin
            if tabella.fieldbyname('tmo_codice_collegato').asstring <> '' then
            begin
              messaggio(000, 'non è possibile inserire righe in un documento con movimenti collegati');
              if v_griglia_righe.canfocus then
              begin
                v_griglia_righe.setfocus;
              end;
              abort;
            end
            else
            begin
              if tabella.fieldbyname('tmo_codice').asstring <> '' then
              begin
                mmt.sql.clear;
                mmt.sql.add('select *');
                mmt.sql.add('from mmt');
                mmt.sql.add('where documento_origine = :documento_origine');
                mmt.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');
                mmt.params[0].asstring := tabella.fieldbyname('tipo_documento').asstring + ' acq';
                mmt.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
                mmt.close;
                mmt.open;
                if mmt.eof then
                begin
                  mmt_progressivo_evaso := 0;
                  messaggio(000, 'non è possibile inserire righe in un documento già evaso senza righe');
                  if v_griglia_righe.canfocus then
                  begin
                    v_griglia_righe.setfocus;
                  end;
                  abort;
                end
                else
                begin
                  mmt_progressivo_evaso := mmt.fieldbyname('progressivo').asinteger;
                end;
              end;
            end;
          end;
        end;
      end;

      inherited;

      if (key = vk_f9) and (shift = []) then
      begin
        if (tipo_documento = 'ordine') or not controllo_esercizio_situazione then
        begin
          if tda.fieldbyname('tda_codice_conto_acquisto').asstring <> '' then
          begin
            evasione_documento('ddt');
          end
          else
          begin
            if tda.fieldbyname('acquisto_call_off_stock').asstring = 'si' then
            begin
              evasione_documento('ddt cos', true);
            end
            else if tipo_documento = 'ordine' then
            begin
              evasione_documento('preventivo');
            end
            else if ((tipo_documento = 'ddt') or (tipo_documento = 'fattura')) and
              (v_situazione.text = 'inserito') then
            begin
              evasione_documento('ordine');
            end
            else if tipo_documento = 'fattura differita' then
            begin
              evasione_documento('ddt');
            end
            else if tipo_documento = 'nota credito' then
            begin
              evasione_documento('ddt fornitori');
            end
            else if tipo_documento = 'ddt clienti' then
            begin
              evasione_documento('ddt clienti');
            end;
          end;
        end;
      end;

      if (key = vk_f7) and (shift = [ssctrl]) then
      begin
        query_rma := tmyquery_go.create(nil);
        query_rma.connection := arc.arcdit;
        query_rma.sql.text := 'select progressivo, riga from rmr where documento_origine = :documento_origine ' +
          'and doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';

        if tipo_documento = 'ddt clienti' then
        begin
          query_rma.parambyname('documento_origine').asstring := 'ddt da cliente';
        end
        else if tipo_documento = 'ddt' then
        begin
          query_rma.parambyname('documento_origine').asstring := 'ddt da fornitore';
        end
        else if tipo_documento = 'nota credito' then
        begin
          query_rma.parambyname('documento_origine').asstring := 'n.credito fornitore';
        end
        else if tipo_documento = 'fattura' then
        begin
          query_rma.parambyname('documento_origine').asstring := 'fattura da fornitore';
        end;
        query_rma.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
        query_rma.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
        query_rma.open;
        if query_rma.isempty then
        begin
          messaggio(100, 'non esiste una RMA collegata');
        end
        else
        begin
          parametri_extra_programma_chiamato[29] := query_rma.fieldbyname('riga').asinteger;
          esegui_programma('GESRMA', query_rma.fieldbyname('progressivo').asinteger, true);
        end;

        query_rma.free;
      end;

      if (key = vk_f2) and (shift = [ssctrl]) then
      begin
        codice_archivio := vararrayof(['', '']);
        if tipo_documento = 'ddt clienti' then
        begin
          esegui_visarc(arc.arcdit, 'ARC', 'ARCLCLI', codice_archivio, tabella.fieldbyname('frn_codice').asstring, '', '', '', '', '');
        end
        else
        begin
          esegui_visarc(arc.arcdit, 'ARF', 'ARFFRN', codice_archivio, tabella.fieldbyname('frn_codice').asstring, '', '', '', '', '');
        end;
        if codice_archivio[1] <> '' then
        begin
          assegna_righe(1);
          v_art_codice.text := codice_archivio[1];
          variato_stringa := '';
          v_art_codiceexit(v_art_codice);
          abilita_pannello_righe(true);
        end;
      end;

      if (key = vk_f9) and (shift = [ssctrl]) then
      begin
        if
          (((tipo_documento = 'ddt') and (tabella_righe.fieldbyname('ddt_artna').asstring = 'si')) or
          (((tipo_documento = 'fattura') or (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito')) and
          (tabella_righe.fieldbyname('fatture_artna').asstring = 'si')) or
          ((tipo_documento = 'ordine') and (tabella_righe.fieldbyname('ordini_artna').asstring = 'si')) or
          ((tipo_documento = 'preventivo') and (tabella_righe.fieldbyname('preventivi_artna').asstring = 'si'))) then
        begin
          if read_tabella(arc.arcdit, 'artna', 'codice', tabella_righe.fieldbyname('art_codice').asstring, 'note') then
          begin
            messaggio(100, archivio.fieldbyname('note').asstring);
          end;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.esegui_gesdocgri;
var
  pr: tgesdocgri;
  decimali, ultima_riga: integer;
begin
  if tipo_documento = 'ddt clienti' then
  begin
    messaggio(200, 'funzione non prevista per i ddt clienti');
  end
  else if (tabella.fieldbyname('situazione').asstring <> 'inserito') and
    (tabella.fieldbyname('situazione').asstring <> 'stampato') then
  begin
    messaggio(200, 'la situazione del documento [' + tabella.fieldbyname('situazione').asstring +
      '] non consente la gestione');
  end
  else
  begin
    pr := tgesdocgri.create(nil);
    pr.prg_codice := programma;
    pr.nome_tabella := tabella_righe_tablename;
    pr.cfg_codice := tabella.fieldbyname('frn_codice').asstring;
    pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
    pr.tipo_prezzo := tipo_prezzo;
    pr.modulo := 'acquisti';
    pr.testata := tabella;
    pr.solo_righe_documento := tda.fieldbyname('solo_righe_documento').asstring;

    pr.showmodal;

    if not pr.premuto_escape and not pr.docgri.isempty then
    begin
      tabella_righe.disablecontrols;
      tabella_righe.last;
      ultima_riga := tabella_righe.fieldbyname('riga').asinteger;

      apri_transazione;
      try
        try
          pr.docgri.first;
          while not pr.docgri.eof do
          begin
            if pr.docgri.fieldbyname('riga').asinteger <> 0 then
            begin
              tabella_righe.locate('riga', pr.docgri.fieldbyname('riga').asinteger, []);

              assegna_vecchio_righe;

              if (pr.docgri.fieldbyname('quantita').asfloat = 0) or
                (pr.docgri.fieldbyname('cancellata').asstring = 'si') then
              begin
                cancella_righe;
              end
              else if (tabella_righe.fieldbyname('descrizione1').asstring <> pr.docgri.fieldbyname('descrizione1').asstring) or
                (tabella_righe.fieldbyname('descrizione2').asstring <> pr.docgri.fieldbyname('descrizione2').asstring) or
                (tabella_righe.fieldbyname('numero_colli').asinteger <> pr.docgri.fieldbyname('numero_colli').asinteger) or
                (tabella_righe.fieldbyname('numero_confezioni').asinteger <> pr.docgri.fieldbyname('numero_confezioni').asinteger) or
                (tabella_righe.fieldbyname('tum_codice').asstring <> pr.docgri.fieldbyname('tum_codice').asstring) or
                (tabella_righe.fieldbyname('quantita').asfloat <> pr.docgri.fieldbyname('quantita').asfloat) or
                (tabella_righe.fieldbyname('prezzo').asfloat <> pr.docgri.fieldbyname('prezzo').asfloat) or
                (tabella_righe.fieldbyname('tsm_codice').asstring <> pr.docgri.fieldbyname('tsm_codice').asstring) or
                (tabella_righe.fieldbyname('tsm_codice_art').asstring <> pr.docgri.fieldbyname('tsm_codice_art').asstring) or
                (tabella_righe.fieldbyname('importo_sconto').asfloat <> pr.docgri.fieldbyname('importo_sconto').asfloat) or
                (tabella_righe.fieldbyname('tipo_movimento').asstring <> pr.docgri.fieldbyname('tipo_movimento').asstring) or
                (tabella_righe.fieldbyname('importo').asfloat <> pr.docgri.fieldbyname('importo').asfloat) or
                (tabella_righe.fieldbyname('tiv_codice').asstring <> pr.docgri.fieldbyname('tiv_codice').asstring) or
                (tabella_righe.fieldbyname('data_consegna').asdatetime <> pr.docgri.fieldbyname('data_consegna').asdatetime) then
              begin
                if tabella_edit(tabella_righe) then
                begin
                  tabella_righe.fieldbyname('descrizione1').asstring := pr.docgri.fieldbyname('descrizione1').asstring;
                  tabella_righe.fieldbyname('descrizione2').asstring := pr.docgri.fieldbyname('descrizione2').asstring;
                  tabella_righe.fieldbyname('numero_colli').asinteger := pr.docgri.fieldbyname('numero_colli').asinteger;
                  tabella_righe.fieldbyname('numero_confezioni').asinteger := pr.docgri.fieldbyname('numero_confezioni').asinteger;
                  tabella_righe.fieldbyname('tum_codice').asstring := pr.docgri.fieldbyname('tum_codice').asstring;

                  tabella_righe.fieldbyname('tum_quantita_base').asfloat := tabella_righe.fieldbyname('tum_quantita_base').asfloat *
                    pr.docgri.fieldbyname('quantita').asfloat / tabella_righe.fieldbyname('quantita').asfloat;

                  tabella_righe.fieldbyname('quantita').asfloat := pr.docgri.fieldbyname('quantita').asfloat;
                  tabella_righe.fieldbyname('prezzo').asfloat := pr.docgri.fieldbyname('prezzo').asfloat;
                  tabella_righe.fieldbyname('tsm_codice').asstring := pr.docgri.fieldbyname('tsm_codice').asstring;
                  tabella_righe.fieldbyname('tsm_codice_art').asstring := pr.docgri.fieldbyname('tsm_codice_art').asstring;
                  tabella_righe.fieldbyname('importo_sconto').asfloat := pr.docgri.fieldbyname('importo_sconto').asfloat;
                  tabella_righe.fieldbyname('tipo_movimento').asstring := pr.docgri.fieldbyname('tipo_movimento').asstring;
                  tabella_righe.fieldbyname('importo').asfloat := pr.docgri.fieldbyname('importo').asfloat;
                  tabella_righe.fieldbyname('importo_euro').asfloat := pr.docgri.fieldbyname('importo_euro').asfloat;
                  tabella_righe.fieldbyname('importo_iva').asfloat := pr.docgri.fieldbyname('importo_iva').asfloat;
                  tabella_righe.fieldbyname('importo_iva_euro').asfloat := pr.docgri.fieldbyname('importo_iva_euro').asfloat;
                  tabella_righe.fieldbyname('tiv_codice').asstring := pr.docgri.fieldbyname('tiv_codice').asstring;
                  tabella_righe.fieldbyname('data_consegna').asdatetime := pr.docgri.fieldbyname('data_consegna').asdatetime;
                  if tabella_righe.fieldbyname('data_consegna').asdatetime = 0 then
                  begin
                    tabella_righe.fieldbyname('data_consegna').value := null;
                  end;

                  scrivi_record_righe;
                end;
              end;
            end
            else
            begin
              if pr.docgri.fieldbyname('cancellata').asstring = 'no' then
              begin
                azzera_vecchio_righe;

                ultima_riga := ultima_riga + incremento_righe;

                tabella_righe.append;

                tabella_righe.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
                tabella_righe.fieldbyname('riga').asinteger := ultima_riga;

                tabella_righe.fieldbyname('art_codice').asstring := pr.docgri.fieldbyname('art_codice').asstring;
                tabella_righe.fieldbyname('descrizione1').asstring := pr.docgri.fieldbyname('descrizione1').asstring;
                tabella_righe.fieldbyname('descrizione2').asstring := pr.docgri.fieldbyname('descrizione2').asstring;
                tabella_righe.fieldbyname('numero_colli').asinteger := pr.docgri.fieldbyname('numero_colli').asinteger;
                tabella_righe.fieldbyname('numero_confezioni').asinteger := pr.docgri.fieldbyname('numero_confezioni').asinteger;
                tabella_righe.fieldbyname('tum_codice').asstring := pr.docgri.fieldbyname('tum_codice').asstring;
                tabella_righe.fieldbyname('quantita').asfloat := pr.docgri.fieldbyname('quantita').asfloat;

                read_tabella(art, pr.docgri.fieldbyname('art_codice').asstring);

                //  quantita base
                assegna_tum_quantita_base;

                tabella_righe.fieldbyname('prezzo').asfloat := pr.docgri.fieldbyname('prezzo').asfloat;
                tabella_righe.fieldbyname('tsm_codice').asstring := pr.docgri.fieldbyname('tsm_codice').asstring;
                tabella_righe.fieldbyname('tsm_codice_art').asstring := pr.docgri.fieldbyname('tsm_codice_art').asstring;
                tabella_righe.fieldbyname('importo_sconto').asfloat := pr.docgri.fieldbyname('importo_sconto').asfloat;
                tabella_righe.fieldbyname('tipo_movimento').asstring := pr.docgri.fieldbyname('tipo_movimento').asstring;
                tabella_righe.fieldbyname('importo').asfloat := pr.docgri.fieldbyname('importo').asfloat;
                tabella_righe.fieldbyname('importo_euro').asfloat := pr.docgri.fieldbyname('importo_euro').asfloat;
                tabella_righe.fieldbyname('importo_iva').asfloat := pr.docgri.fieldbyname('importo_iva').asfloat;
                tabella_righe.fieldbyname('importo_iva_euro').asfloat := pr.docgri.fieldbyname('importo_iva_euro').asfloat;
                tabella_righe.fieldbyname('tiv_codice').asstring := pr.docgri.fieldbyname('tiv_codice').asstring;
                if (tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine') then
                begin
                  assegna_gen_codice;
                end;
                tabella_righe.fieldbyname('data_consegna').asdatetime := pr.docgri.fieldbyname('data_consegna').asdatetime;
                if tabella_righe.fieldbyname('data_consegna').asdatetime = 0 then
                begin
                  tabella_righe.fieldbyname('data_consegna').value := null;
                end;

                scrivi_record_righe;
              end;
            end;

            pr.docgri.delete;
          end;

          commit_transazione;
        except
          on e: exception do
          begin
            if rollback_transazione(e.message) then
            begin
              raise;
            end;
          end;
        end;
      finally
        tabella_righe.enablecontrols;
        chiudi_transazione;

        abilita_pannello_righe(true);
      end;
      tabella_righe.refresh;
    end;

    freeandnil(pr);
  end;
end;

procedure TGESACQ.v_griglia_righeKeyPress(Sender: TObject; var Key: Char);
var
  pr: timpalf;
  codice_barre: string;
  assegnato: boolean;

  fg_progressivo: integer;
  quantita_codice_barre: double;
begin
  codice_barre := '';
  if (key >= ' ') and (key <= 'z') then
  begin
    pr := timpalf.create(nil);
    try
      pr.v_form_caption := 'Lettura codice a barre';
      pr.v_descrizione_caption := 'barcode';
      pr.input_visarc := true;
      pr.help := '';
      pr.valore_passato := char(key);
      pr.tipo_campo := 'alfa';
      pr.v_width_campo := 30;
      pr.decimali := 0;
      pr.showmodal;

      if not pr.premuto_escape then
      begin
        codice_barre := pr.valore_passato;
      end;
    finally
      freeandnil(pr);
    end;

    if codice_barre <> '' then
    begin
      assegnato := false;
      v_art_codice_barcode.text := codice_barre;
      tabella_controllo(false, art, v_art_codice_barcode, true, nil, nil, nil,
        tabella.fieldbyname('frn_codice').asstring);
      if art.isempty then
      begin
        codice_archivio := '';
        esegui_visarc(arc.arcdit, 'ART', 'ART', codice_archivio, '', '', '', '', '', '');
        codice_barre := codice_archivio;
        v_art_codice_barcode.text := codice_barre;
        tabella_controllo(false, art, v_art_codice_barcode, true, nil, nil, nil);
        if not art.isempty then
        begin
          assegnato := true;
        end;
      end
      else
      begin
        assegnato := true;
      end;

      if assegnato then
      begin
        riga_barcode.close;
        read_tabella(riga_barcode, vararrayof([tabella.fieldbyname('progressivo').asinteger, v_art_codice_barcode.text]));
        if somma_quantita_barcode_articolo and not riga_barcode.isempty then
        begin
          tabella_righe.locate('progressivo;riga',
            vararrayof([tabella.fieldbyname('progressivo').asinteger, riga_barcode.fieldbyname('riga').asinteger]), []);
          tabella_righe.edit;

          tabella_righe.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('quantita').asfloat + quantita_barcode_articolo;
          calcola_importo;
          tabella_righe.post;
        end
        else
        begin
          assegna_righe(1);
          v_art_codice.text := codice_barre;
          variato_stringa := '';
          v_art_codiceexit(v_art_codice);
          abilita_pannello_righe(true);
        end;
      end
      else
      begin
        messaggio(200, 'codice articolo non trovato');
        codice_barre := '';
      end;
    end;
  end;
  if codice_barre = '' then
  begin
    inherited;
  end;
end;

procedure TGESACQ.tool_etiartClick(Sender: TObject);
var
  pr: tetiart;

  singola_riga: boolean;
begin
  if messaggio(304, 'conferma per generare etichette solo per la singola riga') = 1 then
  begin
    parametri_extra_programma_chiamato[0] := tabella_righe.fieldbyname('art_codice').asstring;
    parametri_extra_programma_chiamato[1] := tabella_righe.fieldbyname('quantita').asfloat;
    try
      parametri_extra_programma_chiamato[2] := arrotonda(tabella_righe.fieldbyname('importo').asfloat /
        tabella_righe.fieldbyname('quantita').asfloat, decimali_prezzo_acq_euro);
    except
      parametri_extra_programma_chiamato[2] := 0;
    end;
    esegui_programma('ETIART', '', true);
  end
  else
  begin
    genera_tabella_etichette;
    pr := tetiart.create(nil);
    if pr.esegui_form then
    begin
      pr.tabella_ordinamento_gestioni := nome_tabella;
      pr.stampa_lotto_etichette := tda.fieldbyname('stampa_lotto_etichette').asstring;
      pr.origine := 'acquisti';
      pr.showmodal;
    end;
    pr.free;
    sor.close;
  end;
end;

procedure TGESACQ.tool_evasioneClick(Sender: TObject);
begin
  inherited;
  if tda.fieldbyname('tda_codice_conto_acquisto').asstring <> '' then
  begin
    evasione_documento('ddt');
  end
  else
  begin
    if tda.fieldbyname('acquisto_call_off_stock').asstring = 'si' then
    begin
      evasione_documento('ddt cos', true);
    end
    else if tipo_documento = 'ordine' then
    begin
      evasione_documento('preventivo');
    end
    else if (((tipo_documento = 'ddt') and (tabella.fieldbyname('tda_codice_differite').asstring <> '')) or
      (tipo_documento = 'fattura')) and (v_situazione.text = 'inserito') then
    begin
      evasione_documento('ordine');
    end
    else if tipo_documento = 'fattura differita' then
    begin
      evasione_documento('ddt');
    end
    else if tipo_documento = 'nota credito' then
    begin
      evasione_documento('ddt fornitori');
    end
    else if tipo_documento = 'ddt clienti' then
    begin
      evasione_documento('ddt clienti');
    end;
  end;
end;

procedure TGESACQ.evasione_documento(tipo_documento_evasione: string; call_off_stock: boolean = false);
var
  pr: tgenfada;
  pr1: tevadoca;
begin
  if tool_evasione.enabled then
  begin
    if (tipo_documento <> 'ordine') and (tabella.fieldbyname('situazione').asstring <> 'inserito') then
    begin
      messaggio(300, 'il documento è già evaso e non è possibile effettuare aggiunte');
    end
    else
    begin
      if (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito') then
      begin
        pr := tgenfada.create(nil);
        if pr.esegui_form then
        begin
          pr.progressivo := trunc(v_progressivo.value);
          if tabella_righe.fieldbyname('riga').asinteger = 0 then
          begin
            pr.vuoto := true;
          end
          else
          begin
            pr.vuoto := false;
          end;
          pr.tipo_documento := tipo_documento;
          pr.showmodal;
        end;
        pr.free;
      end
      else
      begin
        codice_passato := vararrayof([tabella_righe.fieldbyname('progressivo').asfloat, 0]);

        pr1 := tevadoca.create(nil);
        if pr1.esegui_form then
        begin
          pr1.codice := codice_passato;
          pr1.tipo_documento := tipo_documento;
          pr1.progressivo := trunc(v_progressivo.value);
          if tipo_documento_evasione = 'articolo' then
          begin
            tipo_documento_evasione := 'ordine';
            pr1.art_codice_evasione := art_codice_evasione_preventivo_ordine;
          end;
          pr1.tipo_documento_evasione := tipo_documento_evasione;
          pr1.gestione_descrizione1 := gestione_descrizione1;
          pr1.gestione_descrizione2 := gestione_descrizione2;
          pr1.gestione_numero_colli := gestione_numero_colli;
          pr1.gestione_numero_confezioni := gestione_numero_confezioni;
          pr1.gestione_quantita := gestione_quantita;
          pr1.gestione_prezzo := gestione_prezzo;
          pr1.gestione_sconto_fornitore := gestione_sconto_fornitore;
          pr1.gestione_tipo_movimento := gestione_tipo_movimento;
          pr1.gestione_importo := gestione_importo;
          pr1.gestione_data_consegna := gestione_data_consegna;
          pr1.controllo_quantita := controllo_quantita;
          tabella_righe.first;
          if tabella_righe.fieldbyname('riga').asinteger = 0 then
          begin
            pr1.vuoto := true;
          end
          else
          begin
            pr1.vuoto := false;
          end;
          pr1.progressivo_documento_evadere := progressivo_documento_evadere;
          pr1.tda_codice_conto_acquisto := tda.fieldbyname('tda_codice_conto_acquisto').asstring;
          pr1.call_off_stock := call_off_stock;
          pr1.showmodal;
        end;
        pr1.free;
      end;

      tabella_righe.refresh;
      if tabella_righe.isempty then
      begin
        v_griglia_righe.selectedindex := 0;
      end
      else
      begin
        v_griglia_righe.selectedindex := 1;
      end;
      v_griglia_righe.selectedindex := 0;

      tabella.refresh;

      aggiorna_totali_testata := true;

      if tabella_righe.fieldbyname('riga').asinteger = 0 then
      begin
        abilita_pannello_righe(false);
      end
      else
      begin
        abilita_pannello_righe(true);
      end;

      abilita_bottoni(true);
      visualizza_descrizioni;
    end;
  end
  else
  begin
    messaggio(100, 'il documento in gestione non prevede l''evasione' + #13 +
      'di un documento di livello superiore');
  end;
end;

procedure TGESACQ.pannello_campiExit(Sender: TObject);
begin
  tool_assegna_immagine.enabled := false;
  tool_visualizza_immagine.enabled := false;
  tool_documenti_allegati.enabled := false;
  tool_invia_excel.enabled := false;
  tool_ricevi_excel.enabled := false;

  if not esiste and v_percipienti.checked then
  begin
    esegui_percipienti;
  end;

  inherited;

  disabilita_campo(v_modula);
  disabilita_campo(v_totalizza);
  tool_assegna_immagine.enabled := false;
  tool_visualizza_immagine.enabled := false;
  disabilita_campo(v_situazione_acconto);
  abilita_bottoni_analitica(false);
  v_annulla_documento.enabled := false;
  v_log_revisione.enabled := false;
  v_revisione_documento.enabled := false;
  tool_f7.enabled := false;
  abilita_storni(false);
  v_bottone_percipienti.enabled := false;
  v_bloccato.enabled := false;
  v_pagper.enabled := false;
end;

procedure TGESACQ.v_storno_consolidamentoClick(Sender: TObject);
var
  pr: timpalf;
  esegui: boolean;
begin
  if not esercizio_diverso then
  begin
    inherited;
    esegui := true;
    if password_storno_consolidamento_acquisti <> '' then
    begin
      pr := Timpalf.Create(nil);
      try
        pr.v_form_caption := 'Password per storno consolidamento';
        pr.v_descrizione_caption := 'password';
        pr.v_width_campo := 10;
        pr.valore_passato := '';
        pr.tipo_campo := 'alfa';
        pr.campo_password := true;
        pr.ShowModal;

        if pr.premuto_escape then
        begin
          esegui := false;
        end
        else if pr.valore_passato <> password_storno_consolidamento_acquisti then
        begin
          messaggio(000, 'password errata');
          esegui := false;
        end;
      finally
        freeandnil(pr);
      end;
    end;
    if esegui then
    begin
      codice_passato := vararrayof([v_progressivo.value, tipo_documento]);
      esegui_programma('STOCONA', codice_passato, true);
      tabella.refresh;
      tabella_righe.refresh;
    end;
    abilita_codice;
  end;
end;

procedure TGESACQ.v_totalizzaClick(Sender: TObject);
var
  pr: tvistotdoc;
  stringa: string;
  fido_frn: tfido_frn;
  totalizza_quantita: tmyquery_go;
begin
  inherited;

  if tabella.state <> dsbrowse then
  begin
    messaggio(000, 'il documento non è stato memorizzato');
  end
  else
  begin
    totalizza_quantita := tmyquery_go.create(nil);
    totalizza_quantita.connection := arc.arcdit;

    try
      if tipo_documento = 'preventivo' then
      begin
        totalizza_quantita.sql.add('select sum(quantita) quantita from rar where progressivo = :progressivo and situazione <> ''annullato''');
      end
      else if tipo_documento = 'ordine' then
      begin
        totalizza_quantita.sql.add('select sum(quantita) quantita from oar where progressivo = :progressivo and situazione <> ''annullato''');
      end
      else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti') then
      begin
        totalizza_quantita.sql.add('select sum(quantita) quantita from dar where progressivo = :progressivo and situazione <> ''annullato''');
      end
      else
      begin
        totalizza_quantita.sql.add('select sum(quantita) quantita from far where progressivo = :progressivo and situazione <> ''annullato''');
      end;
      totalizza_quantita.params[0].asfloat := v_progressivo.value;
      totalizza_quantita.close;
      totalizza_quantita.open;

      totacq.movacq_testata(TMyConnection_go(tabella.connection), tipo_documento, tabella.fieldbyname('progressivo').asinteger);
      tabella.refresh;

      stringa := 'totale imponibile documento: ' +
        formatfloat(',#0.00', tabella.fieldbyname('importo_totale_imponibile').asfloat) + #13 +
        'totale documento con iva: ' + formatfloat(',#0.00', tabella.fieldbyname('importo_totale').asfloat) + #13 + #13 + #13;

      if v_tva_codice.text <> divisa_di_conto then
      begin
        stringa := stringa + 'totale imponibile documento in euro: ' +
          formatfloat(',#0.00', tabella.fieldbyname('importo_totale_imponibile_euro').asfloat) + #13 + #13 + #13;
      end;

      stringa := stringa + 'totale quantità: ' +
        formatfloat(formato_display_quantita, totalizza_quantita.fieldbyname('quantita').asfloat);

      messaggio(100, stringa);
    finally
      totalizza_quantita.free;
    end;
  end;

  if arc.utn.fieldbyname('importi_acquisti').asstring <> 'nascondi' then
  begin
    pr := tvistotdoc.create(nil);
    if pr.esegui_form then
    begin
      pr.nome_tabella := tabella_righe_tablename;
      pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
      pr.showmodal;
    end;
    pr.free;

    if frn.fieldbyname('fido').asfloat <> 0 then
    begin
      fido_frn := tfido_frn.create(arc.arcdit, v_frn_codice.text, false);
      fido_frn.fuori_fido;
      freeandnil(fido_frn);
    end;
  end;
end;

procedure TGESACQ.v_produzione_conto_terziClick(Sender: TObject);
begin
  inherited;
  produzione_conto_terzi;
end;

procedure TGESACQ.v_progressivoEnter(Sender: TObject);
begin
  inherited;
  if tipo_documento = 'preventivo' then
  begin
    v_progressivo.LookupTable := 'RAT';
    v_progressivo.LookupVisName := 'RAT';
  end
  else if tipo_documento = 'ordine' then
  begin
    v_progressivo.LookupTable := 'OAT';
    v_progressivo.LookupVisName := 'OAT';
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti') then
  begin
    visarc_filtro_01 := tipo_documento;
    v_progressivo.LookupTable := 'DAT';
    v_progressivo.LookupVisName := 'DAT';
  end
  else
  begin
    v_progressivo.LookupTable := 'FAT';
    if filtro_base <> '' then
    begin
      visarc_filtro_01 := tipo_documento;
      v_progressivo.LookupVisName := 'FAT';
    end
    else
    begin
      v_progressivo.LookupVisName := 'FAT000';
    end;
  end;
end;

procedure TGESACQ.saldo_acconto_controllo;
begin
  if (tabella_righe.fieldbyname('documento_origine').asstring <> '') and
    (tabella_righe.fieldbyname('documento_origine').asstring <> 'ddt cos acq') then
  begin
    if controllo then
    begin
      saldo_acconto.close;
      saldo_acconto.sql.clear;
      if tabella_righe.fieldbyname('documento_origine').asstring = 'preventivo acq' then
      begin
        saldo_acconto.sql.add('select quantita, importo, quantita_evasa, importo_evaso');
        saldo_acconto.sql.add('from rar');
        saldo_acconto.sql.add('where progressivo = :progressivo and riga = :riga');
        saldo_acconto.params[0].asfloat := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
        saldo_acconto.params[1].asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
      end
      else if tabella_righe.fieldbyname('documento_origine').asstring = 'ordine acq' then
      begin
        saldo_acconto.sql.add('select quantita, importo, quantita_evasa, importo_evaso');
        saldo_acconto.sql.add('from oar');
        saldo_acconto.sql.add('where progressivo = :progressivo and riga = :riga');
        saldo_acconto.params[0].asfloat := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
        saldo_acconto.params[1].asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
      end
      else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt ven' then
      begin
        saldo_acconto.sql.add('select quantita, importo, quantita_evasa, importo_evaso');
        saldo_acconto.sql.add('from dvr');
        saldo_acconto.sql.add('where progressivo = :progressivo and riga = :riga');
        saldo_acconto.params[0].asfloat := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
        saldo_acconto.params[1].asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
      end
      else if tabella_righe.fieldbyname('documento_origine').asstring = 'produzione' then
      begin
        saldo_acconto.sql.add('select quantita, quantita_evasa');
        saldo_acconto.sql.add('from opt');
        saldo_acconto.sql.add('where progressivo = :progressivo');
        saldo_acconto.params[0].asfloat := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
      end
      else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt acq' then
      begin
        saldo_acconto.sql.add('select quantita, quantita_evasa');
        saldo_acconto.sql.add('from dar');
        saldo_acconto.sql.add('where progressivo = :progressivo and riga = :riga');
        saldo_acconto.params[0].asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
        saldo_acconto.params[1].asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
      end
      else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt cos acq' then
      begin
        saldo_acconto.sql.add('select quantita, quantita_evasa');
        saldo_acconto.sql.add('from dar');
        saldo_acconto.sql.add('where progressivo = :progressivo and riga = :riga');
        saldo_acconto.params[0].asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
        saldo_acconto.params[1].asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
      end;

      if tabella_righe.fieldbyname('saldo_acconto').asstring = 'acconto' then
      begin
        saldo_acconto.open;

        if (saldo_acconto.fieldbyname('quantita').asfloat <> 0) and
          ((saldo_acconto.fieldbyname('quantita_evasa').asfloat - vecchio_quantita +
          tabella_righe.fieldbyname('quantita').asfloat) >= saldo_acconto.fieldbyname('quantita').asfloat) then
        begin
          messaggio(000, 'la quantità residua del documento che si sta evadendo è zero' + #13 +
            'l''evasione deve essere a saldo');
          if tabella_righe.fieldbyname('situazione').asstring = 'inserito' then
          begin
            if v_saldo_acconto.canfocus then
            begin
              v_saldo_acconto.setfocus;
            end;
            abort;
          end;
        end;

        if (tabella_righe.fieldbyname('documento_origine').asstring <> 'produzione') then
        begin
          if saldo_acconto.fieldbyname('quantita').asfloat = 0 then
          begin
            if (saldo_acconto.fieldbyname('importo_evaso').asfloat - vecchio_importo +
              tabella_righe.fieldbyname('importo').asfloat) >=
              saldo_acconto.fieldbyname('importo').asfloat then
            begin
              messaggio(000, 'l''importo residuo del documento che si sta evadendo è zero' + #13 +
                'l''evasione deve essere a saldo');
              if tabella_righe.fieldbyname('situazione').asstring = 'inserito' then
              begin
                if v_saldo_acconto.canfocus then
                begin
                  v_saldo_acconto.setfocus;
                end;
                abort;
              end;
            end;
          end;
        end;
      end
      else if tabella_righe.fieldbyname('saldo_acconto').asstring = 'saldo' then
      begin
        saldo_acconto.open;

        if (saldo_acconto.fieldbyname('quantita').asfloat <> 0) and
          (tabella_righe.fieldbyname('documento_origine').asstring = 'ddt ven') and
          ((saldo_acconto.fieldbyname('quantita_evasa').asfloat - vecchio_quantita +
          tabella_righe.fieldbyname('quantita').asfloat) < saldo_acconto.fieldbyname('quantita').asfloat) then
        begin
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('saldo_acconto').asstring := 'acconto';
          end;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.v_tipo_movimentoExit(Sender: TObject);
begin
  inherited;
  tipo_movimento_controllo;
  if controllo then
  begin
    if variato_stringa <> v_tipo_movimento.text then
    begin
      assegna_gen_codice;
    end;

    if ((copy(v_tipo_movimento.text, 1, 7) = 'omaggio') or (v_tipo_movimento.text = 'sconto merce')) and
      (tabella_righe.fieldbyname('importo').asfloat = 0) then
    begin
      messaggio(200, 'per le righe omaggio e sconto merce va indicato il prezzo normale di acquisto');
    end;
  end;
end;

procedure TGESACQ.tipo_movimento_controllo;
begin
  if controllo then
  begin
    if (copy(v_tipo_movimento.text, 1, 7) = 'omaggio') and (tabella.fieldbyname('tco_codice').asstring <> '') and
      (tabella.fieldbyname('tiv_codice_omaggi').asstring = '') then
    begin
      messaggio(000, 'non è possibile gestire gli omaggi se non si carica in anagrafica ditta' + #13 +
        'il codice iva omaggi per effettuare il giroconto contabile');
      if v_tipo_movimento.canfocus then
      begin
        v_tipo_movimento.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESACQ.v_storno_differiteClick(Sender: TObject);
var
  pr: timpalf;
  esegui: boolean;
  controllo_nota_credito: tmyquery_go;
begin
  if not esercizio_diverso then
  begin
    inherited;

    controllo := false;

    esegui := true;

    // controllo nota credito
    if tipo_documento = 'nota credito' then
    begin
      controllo_nota_credito := tmyquery_go.create(nil);
      controllo_nota_credito.connection := arc.arcdit;
      controllo_nota_credito.sql.add('select progressivo');
      controllo_nota_credito.sql.add('from far');
      controllo_nota_credito.sql.add('where progressivo = :progressivo');
      controllo_nota_credito.sql.add('and documento_origine = ''ddt fornitori ven''');

      try
        controllo_nota_credito.parambyname('progressivo').asinteger := trunc(v_progressivo.value);
        controllo_nota_credito.open;
        if controllo_nota_credito.isempty then
        begin
          messaggio(100, 'la nota credito non è stata emessa a fronte di ddt a fornitori' + #13 +
            'è quindi la funzione di storno non è attivabile');
          esegui := false;
        end;
      finally
        controllo_nota_credito.free;
      end;
    end;

    if esegui then
    begin
      if password_storno_differita_acquisti <> '' then
      begin
        pr := Timpalf.Create(nil);
        try
          pr.v_form_caption := 'Password per storno fattura differita';
          pr.v_descrizione_caption := 'password';
          pr.v_width_campo := 10;
          pr.valore_passato := '';
          pr.tipo_campo := 'alfa';
          pr.campo_password := true;
          pr.ShowModal;

          if pr.premuto_escape then
          begin
            esegui := false;
          end
          else if pr.valore_passato <> password_storno_differita_acquisti then
          begin
            messaggio(000, 'password errata');
            esegui := false;
          end;
        finally
          freeandnil(pr);
        end;
      end;
      if esegui then
      begin
        codice_passato := vararrayof([v_progressivo.value, '']);
        esegui_programma('STOFADA', codice_passato, true);
        tabella.refresh;
        tabella_righe.refresh;
      end;
    end;
    storno_differite := true;
    abilita_codice;
  end;
end;

procedure TGESACQ.assegna_frn_codice;
begin
  if tipo_documento = 'ddt clienti' then
  begin
    assegna_tva_codice;
    assegna_indirizzo;

    if (tda.fieldbyname('conto_terzi').asstring = 'si') and (cli.fieldbyname('tma_codice_conto_terzi').asstring <> '') then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := cli.fieldbyname('tma_codice_conto_terzi').asstring;
      end;
    end
    else if (tda.fieldbyname('produzione_conto_terzi').asstring = 'si') and (cli.fieldbyname('tma_codice_conto_terzi').asstring <> '') then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := cli.fieldbyname('tma_codice_conto_terzi').asstring;
      end;
    end
    else if (tda.fieldbyname('conto_terzi').asstring = 'no') and (cli.fieldbyname('tma_codice_consegna').asstring <> '') then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := cli.fieldbyname('tma_codice_consegna').asstring;
      end;
    end;
  end
  else
  begin
    assegna_tla_codice;
    assegna_tpa_codice;
    assegna_tva_codice;
    assegna_indirizzo;
    assegna_tiv_codice;
    assegna_intra;
    assegna_iva_sospensione;
    assegna_tsp_codice;
    assegna_tpo_codice;
    assegna_ritenuta;
    assegna_tna_codice_intra;
    assegna_giorni_consegna;

    if (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('contatto_commerciale').asstring := frn.fieldbyname('contatto_commerciale').asstring;
      end;
    end;

    if (tipo_documento <> 'preventivo') then
    begin
      if (tda.fieldbyname('conto_terzi').asstring = 'si') and (frn.fieldbyname('tma_codice_conto_terzi').asstring <> '') then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tma_codice').asstring := frn.fieldbyname('tma_codice_conto_terzi').asstring;
        end;
      end
      else if (tda.fieldbyname('conto_terzi').asstring = 'no') and (frn.fieldbyname('tma_codice_consegna').asstring <> '') then
      begin
        if (arc.utn.fieldbyname('tma_codice').asstring = '') or (tipo_documento = 'ordine') then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('tma_codice').asstring := frn.fieldbyname('tma_codice_consegna').asstring;
          end;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_art_codice;
var
  giorni_consegna: integer;
begin
  if tabella_edit(tabella_righe) then
  begin
    tabella_righe.fieldbyname('descrizione1').asstring := art.fieldbyname('descrizione1').asstring;
    tabella_righe.fieldbyname('descrizione2').asstring := art.fieldbyname('descrizione2').asstring;
    tabella_righe.fieldbyname('tipo_movimento').asstring := art.fieldbyname('tipo_acquisto').asstring;
    if tda.fieldbyname('note_art').asstring = 'si' then
    begin
      tabella_righe.fieldbyname('note').asstring := art.fieldbyname('note').asstring;
      if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_01').asstring then
      begin
        tabella_righe.fieldbyname('note').asstring := art.fieldbyname('note_lingua_01').asstring;
      end
      else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_02').asstring then
      begin
        tabella_righe.fieldbyname('note').asstring := art.fieldbyname('note_lingua_02').asstring;
      end
      else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_03').asstring then
      begin
        tabella_righe.fieldbyname('note').asstring := art.fieldbyname('note_lingua_03').asstring;
      end
      else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_04').asstring then
      begin
        tabella_righe.fieldbyname('note').asstring := art.fieldbyname('note_lingua_04').asstring;
      end
      else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_05').asstring then
      begin
        tabella_righe.fieldbyname('note').asstring := art.fieldbyname('note_lingua_05').asstring;
      end;
    end;

    if tipo_documento = 'ddt clienti' then
    begin
      tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice').asstring;
    end
    else
    begin
      if art.fieldbyname('tum_codice_acquisti').asstring <> '' then
      begin
        tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice_acquisti').asstring;
      end
      else
      begin
        tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice').asstring;
      end;
    end;

    if (tipo_documento = 'ordine') and (tabella.fieldbyname('data_consegna').asstring = '') and (art.fieldbyname('giorni_consegna').asinteger <> 0) then
    begin
      read_tabella(arc.arcdit, 'arf', 'frn_codice;art_codice', vararrayof([v_frn_codice.text, v_art_codice.text]), 'giorni_consegna');
      giorni_consegna := archivio.fieldbyname('giorni_consegna').asinteger;
      if giorni_consegna = 0 then
      begin
        giorni_consegna := art.fieldbyname('giorni_consegna').asinteger;
      end;
      tabella_righe.fieldbyname('data_consegna').asdatetime := tabella.fieldbyname('data_documento').asdatetime + giorni_consegna;
    end;

    if not esiste_righe and (art.fieldbyname('gestione_dimensioni').asstring = 'si') then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('dimensione1').asfloat := art.fieldbyname('valore_dimensione1').asfloat;
        tabella_righe.fieldbyname('dimensione2').asfloat := art.fieldbyname('valore_dimensione2').asfloat;
        tabella_righe.fieldbyname('dimensione3').asfloat := art.fieldbyname('valore_dimensione3').asfloat;
      end;
    end;
  end;

  assegna_decimali_quantita;
end;

procedure TGESACQ.v_art_codiceChange(Sender: TObject);
begin
  inherited;
  if screen.activecontrol = v_art_codice then
  begin
    abilita_art_codice;
    assegna_gestioni;
  end;
end;

procedure TGESACQ.duplica;
var
  i: word;
  nuovo_progressivo: integer;
  riga: integer;
  tda_codice_duplica: variant;
  tma_codice_origine, tipo_numerazione, documento: string;

  pr: timpalf;
  ind, j: word;
begin
  if (date < data_inizio) or (date > data_fine) then
  begin
    messaggio(200, 'data odierna non compresa nell''esercizio attivo [' + esercizio + ']');
  end
  else
  begin
    if (esercizio_chiuso = 'no') and (esercizio_chiuso_magazzino = 'no') then
    begin
      if (parte_attiva = 'pannello_righe') and (tabella_righe.fieldbyname('riga').asinteger <> 0) and
        (tabella.fieldbyname('situazione').asstring <> 'consolidato') then
      begin
        if (tabella.fieldbyname('situazione').asstring = 'consolidato') or (tabella.fieldbyname('situazione').asstring = 'annullato') then
        begin
          messaggio(200, 'il documento è consolidato o annullato e non si possono aggiungere righe');
        end
        else if (tabella.fieldbyname('situazione').asstring <> 'inserito') and (tipo_documento <> 'ordine') and (tipo_documento <> 'preventivo') then
        begin
          messaggio(200, 'il documento deve essere in situazione di inserito per poter aggiungere righe');
        end
        else
        begin
          if tabella_righe.state <> dsbrowse then
          begin
            messaggio(200, 'riga non duplicabile perché in modifica');
          end
          else
          begin
            pr := timpalf.create(nil);
            try
              pr.v_form_caption := 'duplicazione righe';
              pr.v_descrizione_caption := 'numero righe (0=nessuna)';
              pr.v_width_campo := 10;
              pr.valore_passato := 1;
              pr.tipo_campo := 'numero';
              pr.decimali := 0;
              pr.showmodal;

              try
                if pr.valore_passato > 0 then
                begin
                  ind := pr.valore_passato;
                end
                else
                begin
                  ind := 0;
                end;
              except
                ind := 0;
              end;
            finally
              freeandnil(pr);
            end;
            if ind > 0 then
            begin
              duplica_righe.close;
              duplica_righe.sql.clear;
              duplica_righe.sql.add('select * from ' + tabella_righe_tablename + ' where progressivo = :progressivo and riga = :riga');
              duplica_righe.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
              duplica_righe.params[1].asinteger := tabella_righe.fieldbyname('riga').asinteger;
              duplica_righe.open;

              //  taglie - misure
              if arc.dit.fieldbyname('gestione_taglie').asstring = 'si' then
              begin
                duplica_righe_tgl.close;
                duplica_righe_tgl.parambyname('modulo').asstring := 'acquisti';
                duplica_righe_tgl.parambyname('tipo_documento').asstring := tipo_documento;
                duplica_righe_tgl.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
                duplica_righe_tgl.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
                duplica_righe_tgl.open;
              end;

              for j := 1 to ind do
              begin
                query_presenti_righe.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
                query_presenti_righe.close;
                query_presenti_righe.open;
                riga := query_presenti_righe.fieldbyname('ultima_riga').asinteger;
                riga := riga + incremento_righe;

                esiste_righe := false;
                tabella_righe.append;
                for i := 0 to duplica_righe.fields.count - 1 do
                begin
                  if lowercase(duplica_righe.fields[i].fieldname) <> 'id' then
                  begin
                    try
                      tabella_righe.fieldbyname(duplica_righe.fields[i].fieldname).value :=
                        duplica_righe.fieldbyname(duplica_righe.fields[i].fieldname).value;
                    except
                    end;
                  end;
                end;

                tabella_righe.fieldbyname('art_codice').asstring :=
                  assegna_art_obsoleto(tabella_righe.fieldbyname('art_codice').asstring);

                tabella_righe.fieldbyname('riga').asinteger := riga;
                tabella_righe.fieldbyname('situazione').asstring := 'inserito';
                tabella_righe.fieldbyname('documento_origine').asstring := '';
                tabella_righe.fieldbyname('doc_progressivo_origine').asfloat := 0;
                tabella_righe.fieldbyname('doc_riga_origine').asinteger := 0;
                tabella_righe.fieldbyname('numero_colli_evasi').asinteger := 0;
                tabella_righe.fieldbyname('numero_confezioni_evase').asinteger := 0;
                tabella_righe.fieldbyname('quantita_evasa').asfloat := 0;
                tabella_righe.fieldbyname('tum_quantita_evasa_base').asfloat := 0;
                tabella_righe.fieldbyname('importo_evaso').asfloat := 0;
                tabella_righe.fieldbyname('importo_sconto_evaso').asfloat := 0;
                tabella_righe.fieldbyname('saldo_acconto').asstring := '';
                tabella_righe.fieldbyname('ovr_progressivo').asinteger := 0;
                tabella_righe.fieldbyname('ovr_riga').asinteger := 0;
                tabella_righe.fieldbyname('ovr_tipo').asstring := '';

                tabella_righe.fieldbyname('quantita_modula').asfloat := 0;
                tabella_righe.fieldbyname('quantita_modula_input').asfloat := 0;

                tabella_righe.fieldbyname('id_origine').asinteger := 0;

                tabella_righe.post;

                //  taglie - misure
                if (arc.dit.fieldbyname('gestione_taglie').asstring = 'si') and not duplica_righe_tgl.isempty then
                begin
                  qtatgl.close;
                  qtatgl.open;
                  qtatgl.append;
                  for i := 0 to duplica_righe_tgl.fields.count - 1 do
                  begin
                    if (lowercase(duplica_righe_tgl.fields[i].fieldname) <> 'id') then
                    begin
                      try
                        qtatgl.fieldbyname(duplica_righe_tgl.fields[i].fieldname).value :=
                          duplica_righe_tgl.fieldbyname(duplica_righe_tgl.fields[i].fieldname).value;
                      except
                      end;
                    end;
                  end;
                  qtatgl.fieldbyname('riga').asinteger := riga;
                  qtatgl.post;
                end;
              end;

              if v_griglia_righe.canfocus then
              begin
                v_griglia_righe.setfocus;
              end;
            end;
          end;
        end;
      end
      else
      begin
        inherited;

        if duplicazione_documento then
        begin
          aggiorna_dcm('azzera', progressivo_confermato);

          tda_codice_duplica := tabella.fieldbyname('tda_codice').asstring;
          if utntda.isempty then
          begin
            esegui_visarc(arc.arcdit, 'TDA', 'TDZ', tda_codice_duplica, tabella.fieldbyname('tipo_documento').asstring, '', '', '', '', '');
          end
          else
          begin
            esegui_visarc(arc.arcdit, 'TDA', 'TDAUTN', tda_codice_duplica, tabella.fieldbyname('tipo_documento').asstring, utente, '', '', '', '');
          end;

          duplica_righe.close;
          duplica_righe.sql.clear;
          duplica_righe.sql.add('select * from ' + tabella_righe_tablename + ' where progressivo = :progressivo');
          duplica_righe.params[0].asfloat := tabella.fieldbyname('progressivo').asfloat;
          duplica_righe.open;

          setlength(tabella_copia, tabella.Fields.count);
          for i := 0 to tabella.Fields.count - 1 do
          begin
            tabella_copia[i] := tabella.fields[i].value;
          end;

          esiste := false;
          esiste_documento := false;

          apri_transazione;
          try
            try
              tabella.append;
              for i := 0 to tabella.Fields.count - 1 do
              begin
                if lowercase(tabella.fields[i].fieldname) <> 'id' then
                begin
                  tabella.fields[i].value := tabella_copia[i];
                end;
              end;

              frn_codice_controllo(false);
              if tabella.fieldbyname('ese_codice').asstring <> '' then
              begin
                tabella.fieldbyname('ese_codice').asstring := esercizio;
              end;
              tma_codice_origine := tabella.fieldbyname('tma_codice').asstring;
              tabella.fieldbyname('tda_codice').asstring := tda_codice_duplica;
              read_tabella(tda, tabella.fieldbyname('tda_codice').asstring);
              assegna_tda_codice;

              if tda.fieldbyname('commesse').asstring = 'no' then
              begin
                tabella.fieldbyname('cms_codice').asstring := '';
                tabella.fieldbyname('tipologia').asstring := '';
              end;

              tabella.fieldbyname('tma_codice').asstring := tma_codice_origine;
              tabella.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(TMyConnection_go(tabella.connection), generatore + '_progressivo');
              tabella.fieldbyname('data_registrazione').asdatetime := now;
              tabella.fieldbyname('data_documento').asdatetime := now;
              if (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
              begin
                tabella.fieldbyname('numero_documento').asfloat := 0;
              end
              else
              begin
                tabella.fieldbyname('serie_documento').asstring := 'DUPL';
              end;
              tabella.fieldbyname('situazione').asstring := 'inserito';
              tabella.fieldbyname('utn_codice_inviato').asstring := '';
              tabella.fieldbyname('stampato').asstring := '';
              tabella.fieldbyname('righe').asinteger := 0;
              tabella.fieldbyname('righe_evase').asinteger := 0;
              tabella.fieldbyname('righe_annullate').asinteger := 0;
              tabella.fieldbyname('importo_evaso').asfloat := 0;
              tabella.fieldbyname('revisione').asinteger := 0;

              tabella.fieldbyname('id_vtiger').asinteger := 0;

              // assegnazione di comodo per fare assegnare numero documento
              variato_importo := 99999999;

              if (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
              begin
                if tipo_documento = 'ordine' then
                begin
                  tipo_numerazione := 'ORDINI FORNITORI';
                  documento := 'oat';
                end
                else if tipo_documento = 'preventivo' then
                begin
                  tipo_numerazione := 'PREVENTIVI FORNITORI';
                  documento := 'rat';
                end;
                progressivo_cnt := 0;
                esiste_numerazione_cnt := true;
                while esiste_numerazione_cnt do
                begin
                  arc.assegna_numerazione(arc.arcdit, tipo_numerazione, tabella.fieldbyname('serie_documento').asstring,
                    tabella.fieldbyname('data_documento').asdatetime, progressivo_cnt);
                  tabella.fieldbyname('numero_documento').asfloat := progressivo_cnt;

                  if arc.esistenza_documento(documento, tabella.fieldbyname('serie_documento').asstring, '',
                    tabella.fieldbyname('data_documento').asdatetime, tabella.fieldbyname('numero_documento').asfloat,
                    tabella.fieldbyname('progressivo').asinteger, tabella.fieldbyname('revisione').asinteger) then
                  begin
                    progressivo_cnt := 0;
                  end
                  else
                  begin
                    esiste_numerazione_cnt := false;
                  end;
                end;
              end;

              tabella.post;

              nuovo_progressivo := tabella.fieldbyname('progressivo').asinteger;
              progressivo_confermato := nuovo_progressivo;
              aggiorna_dcm('edit', progressivo_confermato);

              while not duplica_righe.eof do
              begin
                //  taglie - misure
                if arc.dit.fieldbyname('gestione_taglie').asstring = 'si' then
                begin
                  duplica_righe_tgl.close;
                  duplica_righe_tgl.parambyname('modulo').asstring := 'acquisti';
                  duplica_righe_tgl.parambyname('tipo_documento').asstring := tipo_documento;
                  duplica_righe_tgl.parambyname('progressivo').asinteger := duplica_righe.fieldbyname('progressivo').asinteger;
                  duplica_righe_tgl.parambyname('riga').asinteger := duplica_righe.fieldbyname('riga').asinteger;
                  duplica_righe_tgl.open;
                end;

                esiste_righe := false;
                tabella_righe.append;
                for i := 0 to duplica_righe.fields.count - 1 do
                begin
                  if lowercase(duplica_righe.fields[i].fieldname) <> 'id' then
                  begin
                    try
                      tabella_righe.fieldbyname(duplica_righe.fields[i].fieldname).value :=
                        duplica_righe.fieldbyname(duplica_righe.fields[i].fieldname).value;
                    except
                    end;
                  end;
                end;

                tabella_righe.fieldbyname('art_codice').asstring :=
                  assegna_art_obsoleto(tabella_righe.fieldbyname('art_codice').asstring);

                if tda.fieldbyname('commesse').asstring = 'no' then
                begin
                  tabella_righe.fieldbyname('cms_codice').asstring := '';
                  tabella_righe.fieldbyname('tipologia').asstring := '';
                end;

                tabella_righe.fieldbyname('progressivo').asinteger := nuovo_progressivo;
                tabella_righe.fieldbyname('situazione').asstring := 'inserito';
                tabella_righe.fieldbyname('documento_origine').asstring := '';
                tabella_righe.fieldbyname('doc_progressivo_origine').asfloat := 0;
                tabella_righe.fieldbyname('doc_riga_origine').asinteger := 0;
                tabella_righe.fieldbyname('numero_colli_evasi').asinteger := 0;
                tabella_righe.fieldbyname('numero_confezioni_evase').asinteger := 0;
                tabella_righe.fieldbyname('quantita_evasa').asfloat := 0;
                tabella_righe.fieldbyname('tum_quantita_evasa_base').asfloat := 0;
                tabella_righe.fieldbyname('importo_evaso').asfloat := 0;
                tabella_righe.fieldbyname('importo_sconto_evaso').asfloat := 0;
                tabella_righe.fieldbyname('note_interne').asstring := '';
                tabella_righe.fieldbyname('ovr_tipo').asstring := '';
                tabella_righe.fieldbyname('ovr_progressivo').asinteger := 0;
                tabella_righe.fieldbyname('ovr_riga').asinteger := 0;

                tabella_righe.fieldbyname('quantita_modula').asfloat := 0;
                tabella_righe.fieldbyname('quantita_modula_input').asfloat := 0;

                tabella_righe.post;

                //  taglie - misure
                if (arc.dit.fieldbyname('gestione_taglie').asstring = 'si') and not duplica_righe_tgl.isempty then
                begin
                  qtatgl.close;
                  qtatgl.open;
                  qtatgl.append;
                  for i := 0 to duplica_righe_tgl.fields.count - 1 do
                  begin
                    if (lowercase(duplica_righe_tgl.fields[i].fieldname) <> 'id') then
                    begin
                      try
                        qtatgl.fieldbyname(duplica_righe_tgl.fields[i].fieldname).value :=
                          duplica_righe_tgl.fieldbyname(duplica_righe_tgl.fields[i].fieldname).value;
                      except
                      end;
                    end;
                  end;
                  qtatgl.fieldbyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
                  qtatgl.fieldbyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
                  qtatgl.post;
                end;

                duplica_righe.next;
              end;

              totacq.movacq_testata(TMyConnection_go(tabella.connection), tipo_documento, nuovo_progressivo);

              messaggio(100, 'il documento è stato duplicato con il progressivo. ' + inttostr(nuovo_progressivo));

              tabella.close;
              tabella.parambyname('progressivo').asinteger := nuovo_progressivo;
              tabella.open;

              esiste := true;
              esiste_documento := true;

              commit_transazione;
            except
              on e: exception do
              begin
                if rollback_transazione(e.message) then
                begin
                  raise;
                end;
              end;
            end;
          finally
            chiudi_transazione;
          end;

          abilita_codice;
        end;
      end;
    end
    else
    begin
      messaggio(200, 'operazione non consentita per un esercizio chiuso');
    end;
  end;
end;

function TGESACQ.assegna_art_obsoleto(art_codice: string): string;
begin
  result := art_codice;
  if result <> '' then
  begin
    read_tabella(art, result);
    if art.fieldbyname('obsoleto').asstring = 'si' then
    begin
      codice_archivio := '';
      if messaggio(300, 'l''articolo ' + tabella_righe.fieldbyname('art_codice').asstring + ' ' +
        tabella_righe.fieldbyname('descrizione1').asstring + ' ' + tabella_righe.fieldbyname('descrizione2').asstring + slinebreak +
        'è stato dichiarato obsoleto' + slinebreak + slinebreak +
        'conferma per cambiare articolo') = 1 then
      begin
        while codice_archivio = '' do
        begin
          esegui_visarc(arc.arcdit, 'ART', 'ART', codice_archivio, '', '', '', '', '', '');
        end;

        result := codice_archivio;
      end;
    end;
  end;
end;

procedure TGESACQ.v_rettifica_intraExit(Sender: TObject);
begin
  inherited;
  assegna_valore_intra;
end;

procedure TGESACQ.v_reverse_changeClick(Sender: TObject);
begin
  inherited;
  if v_reverse_change.focused and v_reverse_change.checked then
  begin
    disabilita_campo(v_intra_testata);
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('intra').asstring := 'no';
    end;
  end
  else
  begin
    abilita_campo(v_intra_testata);
  end;
end;

procedure TGESACQ.v_revisione_documentoClick(Sender: TObject);
var
  i: word;
  vecchio_progressivo, nuovo_progressivo: integer;
  aggiorna_revisione_testata, aggiorna_revisione: tmyquery_go;
begin
  if tabella.state <> dsbrowse then
  begin
    messaggio(200, 'documento non revisionabile perché in modifica');
  end
  else
  begin
    if messaggio(300, 'la revisione è un''operazione non ripristinabile' + #13 +
      'conferma per eseguire la revisione') = 1 then
    begin
      aggiorna_revisione_testata := tmyquery_go.create(nil);
      aggiorna_revisione_testata.connection := arc.arcdit;

      aggiorna_revisione := tmyquery_go.create(nil);
      aggiorna_revisione.connection := arc.arcdit;
      vecchio_progressivo := tabella.fieldbyname('progressivo').asinteger;

      apri_transazione;
      try
        try
          duplica_righe.sql.clear;
          duplica_righe.sql.add('select * from ' + tabella_righe_tablename + ' where progressivo = :progressivo');
          duplica_righe.params[0].asfloat := tabella.fieldbyname('progressivo').asfloat;
          duplica_righe.close;
          duplica_righe.open;

          setlength(tabella_copia, tabella.fields.count);
          for i := 0 to tabella.Fields.count - 1 do
          begin
            tabella_copia[i] := tabella.fields[i].value;
          end;

          esiste := false;
          esiste_documento := false;
          tabella.append;
          for i := 0 to tabella.fields.count - 1 do
          begin
            if lowercase(tabella.fields[i].fieldname) <> 'id' then
            begin
              try
                tabella.fields[i].value := tabella_copia[i];
              except
              end;
            end;
          end;

          tabella.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(TMyConnection_go(tabella.connection), generatore + '_progressivo');
          tabella.fieldbyname('data_registrazione').asdatetime := now;
          tabella.fieldbyname('data_documento').asdatetime := now;
          if tabella.fieldbyname('progressivo_origine_revisione').asinteger = 0 then
          begin
            tabella.fieldbyname('progressivo_origine_revisione').asinteger := vecchio_progressivo;
          end;
          tabella.fieldbyname('revisione').asinteger := tabella.fieldbyname('revisione').asinteger + 1;

          tabella.fieldbyname('utn_codice_inviato').asstring := '';
          tabella.fieldbyname('stampato').asstring := '';

          tabella.post;

          nuovo_progressivo := tabella.fieldbyname('progressivo').asinteger;

          while not duplica_righe.eof do
          begin
            esiste_righe := false;
            tabella_righe.append;
            for i := 0 to duplica_righe.fields.count - 1 do
            begin
              if (lowercase(tabella_righe.fields[i].fieldname) <> 'id') then
              begin
                try
                  tabella_righe.fields[i].value := duplica_righe.fieldbyname(duplica_righe.fields[i].fieldname).value;
                except
                end;
              end;
            end;
            tabella_righe.fieldbyname('progressivo').asinteger := nuovo_progressivo;
            tabella_righe.post;

            duplica_righe.next;
          end;

          totacq.movacq_testata(TMyConnection_go(tabella.connection), tipo_documento, nuovo_progressivo);

          aggiorna_revisione.sql.text := 'update ' + tabella_righe_tablename + ' set situazione = ''revisionato'' ' +
            'where progressivo = :progressivo';
          aggiorna_revisione.parambyname('progressivo').asinteger := vecchio_progressivo;
          aggiorna_revisione.execsql;

          aggiorna_revisione_testata.sql.text := 'update ' + tabella_tablename + ' set data_revisione = current_date ' +
            'where progressivo = :progressivo';
          aggiorna_revisione_testata.parambyname('progressivo').asinteger := vecchio_progressivo;
          aggiorna_revisione_testata.execsql;

          commit_transazione('transazione non eseguita');
        except
          on e: exception do
          begin
            if rollback_transazione(e.message) then
            begin
              raise;
            end;
          end;
        end;
      finally
        chiudi_transazione;
        aggiorna_revisione_testata.free;
        aggiorna_revisione.free;
      end;

      tabella.close;
      tabella.parambyname('progressivo').asinteger := nuovo_progressivo;
      tabella.open;

      esiste := true;
      esiste_documento := true;

      abilita_codice;
    end;
  end;
end;

procedure TGESACQ.v_rdoClick(Sender: TObject);
begin
  inherited;
  gestisci_collegato;
end;

procedure TGESACQ.v_rettifica_intraClick(Sender: TObject);
begin
  inherited;
  abilita_intra;
end;

procedure TGESACQ.v_manutezione_interventiClick(Sender: TObject);
begin
  inherited;

  if not tabella_righe.isempty then
  begin
    esegui_programma('GESMACCOSFRN',
      vararrayof(['', tabella_righe.fieldbyname('progressivo').asinteger, tabella_righe.fieldbyname('riga').asinteger]), true);
  end;
end;

procedure TGESACQ.v_manutezione_macchinariClick(Sender: TObject);
begin
  inherited;

  if not tabella_righe.isempty then
  begin
    esegui_programma('GESMACCHFRN',
      vararrayof(['', tabella_righe.fieldbyname('progressivo').asinteger, tabella_righe.fieldbyname('riga').asinteger]), true);
  end;
end;

procedure TGESACQ.v_mese_rettifica_intraExit(Sender: TObject);
begin
  inherited;
  mese_rettifica_intra_controllo;
end;

procedure TGESACQ.v_modulaClick(Sender: TObject);
begin
  inherited;

  esegui_modula('acq_' + tabella.fieldbyname('tipo_documento').asstring,
    tabella.fieldbyname('progressivo').asinteger);
end;

procedure TGESACQ.v_trimestre_rettifica_intraExit(Sender: TObject);
begin
  inherited;
  trimestre_rettifica_intra_controllo;
end;

procedure TGESACQ.v_anno_rettifica_intraExit(Sender: TObject);
begin
  inherited;
  anno_rettifica_intra_controllo;
end;

procedure TGESACQ.mese_rettifica_intra_controllo;
begin
  if controllo then
  begin
    if (v_mese_rettifica_intra.value <> 0) and
      ((v_mese_rettifica_intra.value < 1) or (v_mese_rettifica_intra.value > 12)) then
    begin
      messaggio(002, label65.caption);
      if v_mese_rettifica_intra.canfocus then
      begin
        v_mese_rettifica_intra.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESACQ.trimestre_rettifica_intra_controllo;
begin
  if controllo then
  begin
    if (v_trimestre_rettifica_intra.value <> 0) and
      ((v_trimestre_rettifica_intra.value < 1) or (v_trimestre_rettifica_intra.value > 4)) then
    begin
      messaggio(002, label65.caption);
      if v_trimestre_rettifica_intra.canfocus then
      begin
        v_trimestre_rettifica_intra.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESACQ.anno_rettifica_intra_controllo;
begin
  if controllo then
  begin
    if (v_anno_rettifica_intra.value <> 0) and
      (v_anno_rettifica_intra.value < 2003) then
    begin
      messaggio(002, label65.caption);
      if v_anno_rettifica_intra.canfocus then
      begin
        v_anno_rettifica_intra.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESACQ.v_esistenza_depositoChange(Sender: TObject);
begin
  inherited;
  if v_esistenza_deposito.value > 0 then
  begin
    v_esistenza_deposito.color := cllime;
  end
  else if v_esistenza_deposito.value < 0 then
  begin
    v_esistenza_deposito.color := clred;
  end
  else
  begin
    v_esistenza_deposito.color := clyellow;
  end;
end;

procedure TGESACQ.v_esistenza_principaleChange(Sender: TObject);
begin
  inherited;
  if v_esistenza_principale.value > 0 then
  begin
    v_esistenza_principale.color := cllime;
  end
  else if v_esistenza_principale.value < 0 then
  begin
    v_esistenza_principale.color := clred;
  end
  else
  begin
    v_esistenza_principale.color := clyellow;
  end;
end;

procedure TGESACQ.v_esistenza_totaleChange(Sender: TObject);
begin
  inherited;
  if v_esistenza_totale.value > 0 then
  begin
    v_esistenza_totale.color := cllime;
  end;
  if v_esistenza_totale.value < 0 then
  begin
    v_esistenza_totale.color := clred;
  end;
  if v_esistenza_totale.value = 0 then
  begin
    v_esistenza_totale.color := clyellow;
  end;
end;

procedure TGESACQ.v_data_registrazioneEnter(Sender: TObject);
begin
  inherited;
  variato_data := v_data_registrazione.date;
end;

procedure TGESACQ.v_data_registrazioneExit(Sender: TObject);
begin
  inherited;
  data_registrazione_controllo;
  if controllo then
  begin
    if (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
    begin
      if not esiste then
      begin
        if tabella.fieldbyname('data_documento').asdatetime <> tabella.fieldbyname('data_registrazione').asdatetime then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('data_documento').asdatetime := tabella.fieldbyname('data_registrazione').asdatetime;
          end;
        end;
      end;
    end;
    if v_data_registrazione.date > date then
    begin
      messaggio(000, 'data superiore a quella attuale');
    end;

    if (variato_data <> v_data_registrazione.date) or (v_data_competenza_bilancio.date = 0) then
    begin
      assegna_data_competenza_bilancio;
    end;
  end;
end;

procedure TGESACQ.data_registrazione_controllo;
begin
  if controllo then
  begin
    if v_data_registrazione.date = 0 then
    begin
      messaggio(002, label28.caption);
      tab_control.ActivePage := tab_pagina1;
      if v_data_registrazione.canfocus then
      begin
        v_data_registrazione.setfocus;
      end;
      abort;
    end
    else
    begin
      if (tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine') and (tabella.state <> dsbrowse) then
      begin
        if (v_data_registrazione.date < data_inizio) or (v_data_registrazione.date > data_bilancio) then
        begin
          messaggio(000, 'data fuori dai limiti dell''esercizio fiscale');
          if v_data_registrazione.canfocus then
          begin
            v_data_registrazione.setfocus;
          end;
          abort;
        end
        else if (v_data_registrazione.date < data_inizio) or (v_data_registrazione.date > data_fine) then
        begin
          if messaggio(304, 'data fuori dagli estremi dell''esercizio') <> 1 then
          begin
            if v_data_registrazione.canfocus then
            begin
              v_data_registrazione.setfocus;
            end;
            abort;
          end;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.v_descrizione_spese_01Change(Sender: TObject);
begin
  inherited;
  abilita_spese_01;
end;

procedure TGESACQ.abilita_spese_01;
begin
  if trim(v_descrizione_spese_01.text) = '' then
  begin
    v_importo_spese_01.enabled := false;
    v_iva_ripartita_spese_01.enabled := false;
    v_tiv_codice_spese_01.enabled := false;
    v_costo_ripartito_spese_01.enabled := false;
    v_gen_codice_spese_01.enabled := false;

    v_importo_spese_01.color := clbtnface;
    v_tiv_codice_spese_01.color := clbtnface;
    v_gen_codice_spese_01.color := clbtnface;
  end
  else
  begin
    v_importo_spese_01.enabled := true;
    v_iva_ripartita_spese_01.enabled := true;
    v_tiv_codice_spese_01.enabled := true;
    v_costo_ripartito_spese_01.enabled := true;
    v_gen_codice_spese_01.enabled := true;

    v_importo_spese_01.color := clwindow;
    v_tiv_codice_spese_01.color := clwindow;
    v_gen_codice_spese_01.color := clwindow;
  end;
end;

procedure TGESACQ.v_iva_ripartita_spese_01Click(Sender: TObject);
begin
  inherited;
  abilita_iva_spese_01;
end;

procedure TGESACQ.abilita_iva_spese_01;
begin
  if v_iva_ripartita_spese_01.enabled then
  begin
    if v_iva_ripartita_spese_01.checked then
    begin
      v_tiv_codice_spese_01.enabled := false;
      v_tiv_codice_spese_01.color := clbtnface;
    end
    else
    begin
      v_tiv_codice_spese_01.enabled := true;
      v_tiv_codice_spese_01.color := clwindow;
    end;
  end
  else
  begin
    v_tiv_codice_spese_01.enabled := false;
    v_tiv_codice_spese_01.color := clbtnface;
  end;
end;

procedure TGESACQ.v_costo_ripartito_spese_01Click(Sender: TObject);
begin
  inherited;
  abilita_costo_spese_01;
end;

procedure TGESACQ.abilita_costo_spese_01;
begin
  if v_costo_ripartito_spese_01.enabled then
  begin
    if v_costo_ripartito_spese_01.checked then
    begin
      v_gen_codice_spese_01.enabled := false;
      v_gen_codice_spese_01.color := clbtnface;
    end
    else
    begin
      v_gen_codice_spese_01.enabled := true;
      v_gen_codice_spese_01.color := clwindow;
    end;
  end
  else
  begin
    v_gen_codice_spese_01.enabled := false;
    v_gen_codice_spese_01.color := clbtnface;
  end;
end;

procedure TGESACQ.v_tiv_codice_spese_01Exit(Sender: TObject);
begin
  inherited;
  tiv_codice_spese_01_controllo(true);
end;

procedure TGESACQ.tiv_codice_spese_01_controllo(blocco: boolean);
var
  q_spese: tmyquery_go;
begin
  if (v_tiv_codice_spese_01.enabled) and not v_iva_ripartita_spese_01.checked then
  begin
    q_spese := tmyquery_go.create(nil);
    q_spese.connection := arc.arcdit;
    q_spese.sql.add('select descrizione');
    q_spese.sql.add('from tiv');
    q_spese.sql.add('where codice = :codice');
    try
      tabella_controllo(false, q_spese, v_tiv_codice_spese_01, blocco, tab_control, tab_testata_spese, tabella);
    finally
      q_spese.free;
    end;
  end;
end;

procedure TGESACQ.v_iva_ripartita_spese_01Exit(Sender: TObject);
begin
  inherited;
  assegna_valore_tiv_codice_spese_01;
end;

procedure TGESACQ.assegna_valore_tiv_codice_spese_01;
begin
  if (v_iva_ripartita_spese_01.checked) and (v_listino_con_iva.checked) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('iva_ripartita_spese_01').asstring := 'no';
    end;
  end;
  if v_iva_ripartita_spese_01.checked then
  begin
    if tabella.fieldbyname('tiv_codice_spese_01').asstring <> '' then
    begin
      tabella.fieldbyname('tiv_codice_spese_01').asstring := '';
    end;
  end;
end;

procedure TGESACQ.v_costo_ripartito_spese_01Exit(Sender: TObject);
begin
  inherited;
  assegna_valore_gen_codice_spese_01;
end;

procedure TGESACQ.assegna_valore_gen_codice_spese_01;
begin
  if v_costo_ripartito_spese_01.checked then
  begin
    if tabella.fieldbyname('gen_codice_spese_01').asstring <> '' then
    begin
      tabella.fieldbyname('gen_codice_spese_01').asstring := '';
    end;
  end;
end;

procedure TGESACQ.v_gen_codice_spese_01Exit(Sender: TObject);
begin
  inherited;
  gen_codice_spese_01_controllo(true);
end;

procedure TGESACQ.gen_codice_spese_01_controllo(blocco: boolean);
begin
  if (v_gen_codice_spese_01.enabled) and not v_costo_ripartito_spese_01.checked then
  begin
    tabella_controllo(false, gen_spese_01, v_gen_codice_spese_01, blocco, tab_control, tab_testata_spese, tabella);
  end;
end;

procedure TGESACQ.v_descrizione_spese_02Change(Sender: TObject);
begin
  inherited;
  abilita_spese_02;
end;

procedure TGESACQ.abilita_spese_02;
begin
  if trim(v_descrizione_spese_02.text) = '' then
  begin
    v_importo_spese_02.enabled := false;
    v_iva_ripartita_spese_02.enabled := false;
    v_tiv_codice_spese_02.enabled := false;
    v_costo_ripartito_spese_02.enabled := false;
    v_gen_codice_spese_02.enabled := false;

    v_importo_spese_02.color := clbtnface;
    v_tiv_codice_spese_02.color := clbtnface;
    v_gen_codice_spese_02.color := clbtnface;
  end
  else
  begin
    v_importo_spese_02.enabled := true;
    v_iva_ripartita_spese_02.enabled := true;
    v_tiv_codice_spese_02.enabled := true;
    v_costo_ripartito_spese_02.enabled := true;
    v_gen_codice_spese_02.enabled := true;

    v_importo_spese_02.color := clwindow;
    v_tiv_codice_spese_02.color := clwindow;
    v_gen_codice_spese_02.color := clwindow;
  end;
end;

procedure TGESACQ.v_descrizione_spese_03Change(Sender: TObject);
begin
  inherited;
  abilita_spese_03;
end;

procedure TGESACQ.abilita_spese_03;
begin
  if trim(v_descrizione_spese_03.text) = '' then
  begin
    v_importo_spese_03.enabled := false;
    v_iva_ripartita_spese_03.enabled := false;
    v_tiv_codice_spese_03.enabled := false;
    v_costo_ripartito_spese_03.enabled := false;
    v_gen_codice_spese_03.enabled := false;

    v_importo_spese_03.color := clbtnface;
    v_tiv_codice_spese_03.color := clbtnface;
    v_gen_codice_spese_03.color := clbtnface;
  end
  else
  begin
    v_importo_spese_03.enabled := true;
    v_iva_ripartita_spese_03.enabled := true;
    v_tiv_codice_spese_03.enabled := true;
    v_costo_ripartito_spese_03.enabled := true;
    v_gen_codice_spese_03.enabled := true;

    v_importo_spese_03.color := clwindow;
    v_tiv_codice_spese_03.color := clwindow;
    v_gen_codice_spese_03.color := clwindow;
  end;
end;

procedure TGESACQ.v_descrizione_spese_04Change(Sender: TObject);
begin
  inherited;
  abilita_spese_04;
end;

procedure TGESACQ.abilita_spese_04;
begin
  if trim(v_descrizione_spese_04.text) = '' then
  begin
    v_importo_spese_04.enabled := false;
    v_iva_ripartita_spese_04.enabled := false;
    v_tiv_codice_spese_04.enabled := false;
    v_costo_ripartito_spese_04.enabled := false;
    v_gen_codice_spese_04.enabled := false;

    v_importo_spese_04.color := clbtnface;
    v_tiv_codice_spese_04.color := clbtnface;
    v_gen_codice_spese_04.color := clbtnface;
  end
  else
  begin
    v_importo_spese_04.enabled := true;
    v_iva_ripartita_spese_04.enabled := true;
    v_tiv_codice_spese_04.enabled := true;
    v_costo_ripartito_spese_04.enabled := true;
    v_gen_codice_spese_04.enabled := true;

    v_importo_spese_04.color := clwindow;
    v_tiv_codice_spese_04.color := clwindow;
    v_gen_codice_spese_04.color := clwindow;
  end;
end;

procedure TGESACQ.v_iva_ripartita_spese_02Click(Sender: TObject);
begin
  inherited;
  abilita_iva_spese_02;
end;

procedure TGESACQ.abilita_iva_spese_02;
begin
  if v_iva_ripartita_spese_02.enabled then
  begin
    if v_iva_ripartita_spese_02.checked then
    begin
      v_tiv_codice_spese_02.enabled := false;
      v_tiv_codice_spese_02.color := clbtnface;
    end
    else
    begin
      v_tiv_codice_spese_02.enabled := true;
      v_tiv_codice_spese_02.color := clwindow;
    end;
  end
  else
  begin
    v_tiv_codice_spese_02.enabled := false;
    v_tiv_codice_spese_02.color := clbtnface;
  end;
end;

procedure TGESACQ.v_iva_ripartita_spese_02Exit(Sender: TObject);
begin
  inherited;
  assegna_valore_tiv_codice_spese_02;
end;

procedure TGESACQ.assegna_valore_tiv_codice_spese_02;
begin
  if (v_iva_ripartita_spese_02.checked) and (v_listino_con_iva.checked) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('iva_ripartita_spese_02').asstring := 'no';
    end;
  end;
  if v_iva_ripartita_spese_02.checked then
  begin
    if tabella.fieldbyname('tiv_codice_spese_02').asstring <> '' then
    begin
      tabella.fieldbyname('tiv_codice_spese_02').asstring := '';
    end;
  end;
end;

procedure TGESACQ.v_iva_ripartita_spese_03Click(Sender: TObject);
begin
  inherited;
  abilita_iva_spese_03;
end;

procedure TGESACQ.abilita_iva_spese_03;
begin
  if v_iva_ripartita_spese_03.enabled then
  begin
    if v_iva_ripartita_spese_03.checked then
    begin
      v_tiv_codice_spese_03.enabled := false;
      v_tiv_codice_spese_03.color := clbtnface;
    end
    else
    begin
      v_tiv_codice_spese_03.enabled := true;
      v_tiv_codice_spese_03.color := clwindow;
    end;
  end
  else
  begin
    v_tiv_codice_spese_03.enabled := false;
    v_tiv_codice_spese_03.color := clbtnface;
  end;
end;

procedure TGESACQ.v_iva_ripartita_spese_03Exit(Sender: TObject);
begin
  inherited;
  assegna_valore_tiv_codice_spese_03;
end;

procedure TGESACQ.assegna_valore_tiv_codice_spese_03;
begin
  if (v_iva_ripartita_spese_03.checked) and (v_listino_con_iva.checked) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('iva_ripartita_spese_03').asstring := 'no';
    end;
  end;
  if v_iva_ripartita_spese_03.checked then
  begin
    if tabella.fieldbyname('tiv_codice_spese_03').asstring <> '' then
    begin
      tabella.fieldbyname('tiv_codice_spese_03').asstring := '';
    end;
  end;
end;

procedure TGESACQ.v_iva_ripartita_spese_04Click(Sender: TObject);
begin
  inherited;
  abilita_iva_spese_04;
end;

procedure TGESACQ.abilita_iva_spese_04;
begin
  if v_iva_ripartita_spese_04.enabled then
  begin
    if v_iva_ripartita_spese_04.checked then
    begin
      v_tiv_codice_spese_04.enabled := false;
      v_tiv_codice_spese_04.color := clbtnface;
    end
    else
    begin
      v_tiv_codice_spese_04.enabled := true;
      v_tiv_codice_spese_04.color := clwindow;
    end;
  end
  else
  begin
    v_tiv_codice_spese_04.enabled := false;
    v_tiv_codice_spese_04.color := clbtnface;
  end;
end;

procedure TGESACQ.v_iva_ripartita_spese_04Exit(Sender: TObject);
begin
  inherited;
  assegna_valore_tiv_codice_spese_04;
end;

procedure TGESACQ.assegna_valore_tiv_codice_spese_04;
begin
  if (v_iva_ripartita_spese_04.checked) and (v_listino_con_iva.checked) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('iva_ripartita_spese_04').asstring := 'no';
    end;
  end;
  if v_iva_ripartita_spese_04.checked then
  begin
    if tabella.fieldbyname('tiv_codice_spese_04').asstring <> '' then
    begin
      tabella.fieldbyname('tiv_codice_spese_04').asstring := '';
    end;
  end;
end;

procedure TGESACQ.v_tiv_codice_spese_02Exit(Sender: TObject);
begin
  inherited;
  tiv_codice_spese_02_controllo(true);
end;

procedure TGESACQ.tiv_codice_spese_02_controllo(blocco: boolean);
var
  q_spese: tmyquery_go;
begin
  if (v_tiv_codice_spese_02.enabled) and not v_iva_ripartita_spese_02.checked then
  begin
    q_spese := tmyquery_go.create(nil);
    q_spese.connection := arc.arcdit;
    q_spese.sql.add('select descrizione');
    q_spese.sql.add('from tiv');
    q_spese.sql.add('where codice = :codice');
    try
      tabella_controllo(false, q_spese, v_tiv_codice_spese_02, blocco, tab_control, tab_testata_spese, tabella);
    finally
      q_spese.free;
    end;
  end;
end;

procedure TGESACQ.v_tiv_codice_spese_03Exit(Sender: TObject);
begin
  inherited;
  tiv_codice_spese_03_controllo(true);
end;

procedure TGESACQ.tiv_codice_spese_03_controllo(blocco: boolean);
var
  q_spese: tmyquery_go;
begin
  if (v_tiv_codice_spese_03.enabled) and not v_iva_ripartita_spese_03.checked then
  begin
    q_spese := tmyquery_go.create(nil);
    q_spese.connection := arc.arcdit;
    q_spese.sql.add('select descrizione');
    q_spese.sql.add('from tiv');
    q_spese.sql.add('where codice = :codice');
    try
      tabella_controllo(false, q_spese, v_tiv_codice_spese_03, blocco, tab_control, tab_testata_spese, tabella);
    finally
      q_spese.free;
    end;
  end;
end;

procedure TGESACQ.v_tiv_codice_spese_04Exit(Sender: TObject);
begin
  inherited;
  tiv_codice_spese_04_controllo(true);
end;

procedure TGESACQ.tiv_codice_spese_04_controllo(blocco: boolean);
var
  q_spese: tmyquery_go;
begin
  if (v_tiv_codice_spese_04.enabled) and not v_iva_ripartita_spese_04.checked then
  begin
    q_spese := tmyquery_go.create(nil);
    q_spese.connection := arc.arcdit;
    q_spese.sql.add('select descrizione');
    q_spese.sql.add('from tiv');
    q_spese.sql.add('where codice = :codice');
    try
      tabella_controllo(false, q_spese, v_tiv_codice_spese_04, blocco, tab_control, tab_testata_spese, tabella);
    finally
      q_spese.free;
    end;
  end;
end;

procedure TGESACQ.v_costo_ripartito_spese_02Click(Sender: TObject);
begin
  inherited;
  abilita_costo_spese_02;
end;

procedure TGESACQ.abilita_costo_spese_02;
begin
  if v_costo_ripartito_spese_02.enabled then
  begin
    if v_costo_ripartito_spese_02.checked then
    begin
      v_gen_codice_spese_02.enabled := false;
      v_gen_codice_spese_02.color := clbtnface;
    end
    else
    begin
      v_gen_codice_spese_02.enabled := true;
      v_gen_codice_spese_02.color := clwindow;
    end;
  end
  else
  begin
    v_gen_codice_spese_02.enabled := false;
    v_gen_codice_spese_02.color := clbtnface;
  end;
end;

procedure TGESACQ.v_costo_ripartito_spese_02Exit(Sender: TObject);
begin
  inherited;
  assegna_valore_gen_codice_spese_02;
end;

procedure TGESACQ.assegna_valore_gen_codice_spese_02;
begin
  if v_costo_ripartito_spese_02.checked then
  begin
    if tabella.fieldbyname('gen_codice_spese_02').asstring <> '' then
    begin
      tabella.fieldbyname('gen_codice_spese_02').asstring := '';
    end;
  end;
end;

procedure TGESACQ.v_costo_ripartito_spese_03Click(Sender: TObject);
begin
  inherited;
  abilita_costo_spese_03;
end;

procedure TGESACQ.abilita_costo_spese_03;
begin
  if v_costo_ripartito_spese_03.enabled then
  begin
    if v_costo_ripartito_spese_03.checked then
    begin
      v_gen_codice_spese_03.enabled := false;
      v_gen_codice_spese_03.color := clbtnface;
    end
    else
    begin
      v_gen_codice_spese_03.enabled := true;
      v_gen_codice_spese_03.color := clwindow;
    end;
  end
  else
  begin
    v_gen_codice_spese_03.enabled := false;
    v_gen_codice_spese_03.color := clbtnface;
  end;
end;

procedure TGESACQ.v_costo_ripartito_spese_03Exit(Sender: TObject);
begin
  inherited;
  assegna_valore_gen_codice_spese_03;
end;

procedure TGESACQ.assegna_valore_gen_codice_spese_03;
begin
  if v_costo_ripartito_spese_03.checked then
  begin
    if tabella.fieldbyname('gen_codice_spese_03').asstring <> '' then
    begin
      tabella.fieldbyname('gen_codice_spese_03').asstring := '';
    end;
  end;
end;

procedure TGESACQ.v_costo_ripartito_spese_04Click(Sender: TObject);
begin
  inherited;
  abilita_costo_spese_04;
end;

procedure TGESACQ.abilita_costo_spese_04;
begin
  if v_costo_ripartito_spese_04.enabled then
  begin
    if v_costo_ripartito_spese_04.checked then
    begin
      v_gen_codice_spese_04.enabled := false;
      v_gen_codice_spese_04.color := clbtnface;
    end
    else
    begin
      v_gen_codice_spese_04.enabled := true;
      v_gen_codice_spese_04.color := clwindow;
    end;
  end
  else
  begin
    v_gen_codice_spese_04.enabled := false;
    v_gen_codice_spese_04.color := clbtnface;
  end;
end;

procedure TGESACQ.v_costo_ripartito_spese_04Exit(Sender: TObject);
begin
  inherited;
  assegna_valore_gen_codice_spese_04;
end;

procedure TGESACQ.assegna_valore_gen_codice_spese_04;
begin
  if v_costo_ripartito_spese_04.checked then
  begin
    if tabella.fieldbyname('gen_codice_spese_04').asstring <> '' then
    begin
      tabella.fieldbyname('gen_codice_spese_04').asstring := '';
    end;
  end;
end;

procedure TGESACQ.v_gen_codice_spese_02Exit(Sender: TObject);
begin
  inherited;
  gen_codice_spese_02_controllo(true);
end;

procedure TGESACQ.gen_codice_spese_02_controllo(blocco: boolean);
begin
  if (v_gen_codice_spese_02.enabled) and not v_costo_ripartito_spese_02.checked then
  begin
    tabella_controllo(false, gen_spese_02, v_gen_codice_spese_02, blocco, tab_control, tab_testata_spese, tabella);
  end;
end;

procedure TGESACQ.v_gen_codice_spese_03Exit(Sender: TObject);
begin
  inherited;
  gen_codice_spese_03_controllo(true);
end;

procedure TGESACQ.gen_codice_spese_03_controllo(blocco: boolean);
begin
  if (v_gen_codice_spese_03.enabled) and not v_costo_ripartito_spese_03.checked then
  begin
    tabella_controllo(false, gen_spese_03, v_gen_codice_spese_03, blocco, tab_control, tab_testata_spese, tabella);
  end;
end;

procedure TGESACQ.v_gen_codice_spese_04Exit(Sender: TObject);
begin
  inherited;
  gen_codice_spese_04_controllo(true);
end;

procedure TGESACQ.gen_codice_spese_04_controllo(blocco: boolean);
begin
  if (v_gen_codice_spese_04.enabled) and not v_costo_ripartito_spese_04.checked then
  begin
    tabella_controllo(false, gen_spese_04, v_gen_codice_spese_04, blocco, tab_control, tab_testata_spese, tabella);
  end;
end;

procedure TGESACQ.v_descrizione_spese_01Exit(Sender: TObject);
begin
  inherited;
  assegna_valore_spese_01;
end;

procedure TGESACQ.assegna_valore_spese_01;
begin
  if trim(v_descrizione_spese_01.text) = '' then
  begin
    if tabella.fieldbyname('importo_spese_01').asfloat <> 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('importo_spese_01').asfloat := 0;
      end;
    end;
    if tabella.fieldbyname('iva_ripartita_spese_01').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('iva_ripartita_spese_01').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('costo_ripartito_spese_01').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('costo_ripartito_spese_01').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tiv_codice_spese_01').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tiv_codice_spese_01').asstring := '';
      end;
    end;
    if tabella.fieldbyname('gen_codice_spese_01').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('gen_codice_spese_01').asstring := '';
      end;
    end;
  end;
end;

procedure TGESACQ.v_descrizione_spese_02Exit(Sender: TObject);
begin
  inherited;
  assegna_valore_spese_02;
end;

procedure TGESACQ.assegna_valore_spese_02;
begin
  if trim(v_descrizione_spese_02.text) = '' then
  begin
    if tabella.fieldbyname('importo_spese_02').asfloat <> 0 then
    begin
      tabella.fieldbyname('importo_spese_02').asfloat := 0;
    end;
    if tabella.fieldbyname('iva_ripartita_spese_02').asstring <> 'no' then
    begin
      tabella.fieldbyname('iva_ripartita_spese_02').asstring := 'no';
    end;
    if tabella.fieldbyname('costo_ripartito_spese_02').asstring <> 'no' then
    begin
      tabella.fieldbyname('costo_ripartito_spese_02').asstring := 'no';
    end;
    if tabella.fieldbyname('tiv_codice_spese_02').asstring <> '' then
    begin
      tabella.fieldbyname('tiv_codice_spese_02').asstring := '';
    end;
    if tabella.fieldbyname('gen_codice_spese_02').asstring <> '' then
    begin
      tabella.fieldbyname('gen_codice_spese_02').asstring := '';
    end;
  end;
end;

procedure TGESACQ.v_descrizione_spese_03Exit(Sender: TObject);
begin
  inherited;
  assegna_valore_spese_03;
end;

procedure TGESACQ.assegna_valore_spese_03;
begin
  if trim(v_descrizione_spese_03.text) = '' then
  begin
    if tabella.fieldbyname('importo_spese_03').asfloat <> 0 then
    begin
      tabella.fieldbyname('importo_spese_03').asfloat := 0;
    end;
    if tabella.fieldbyname('iva_ripartita_spese_03').asstring <> 'no' then
    begin
      tabella.fieldbyname('iva_ripartita_spese_03').asstring := 'no';
    end;
    if tabella.fieldbyname('costo_ripartito_spese_03').asstring <> 'no' then
    begin
      tabella.fieldbyname('costo_ripartito_spese_03').asstring := 'no';
    end;
    if tabella.fieldbyname('tiv_codice_spese_03').asstring <> '' then
    begin
      tabella.fieldbyname('tiv_codice_spese_03').asstring := '';
    end;
    if tabella.fieldbyname('gen_codice_spese_03').asstring <> '' then
    begin
      tabella.fieldbyname('gen_codice_spese_03').asstring := '';
    end;
  end;
end;

procedure TGESACQ.v_descrizione_spese_04Exit(Sender: TObject);
begin
  inherited;
  assegna_valore_spese_04;
end;

procedure TGESACQ.v_dettaglioEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_art_codice.text;
  if art.fieldbyname('var_codice').asstring = '' then
  begin
    selectnext(v_dettaglio, true, true);
  end;
end;

procedure TGESACQ.v_dettaglioExit(Sender: TObject);
begin
  inherited;
  v_dettaglio_controllo(true);
end;

procedure TGESACQ.v_dettaglio_controllo(blocco: boolean);
begin
  if (art.fieldbyname('var_codice').asstring <> '') then
  begin
    tabella_controllo(false, artvardet, v_art_codice, v_dettaglio, blocco, nil, nil, tabella_righe);
  end
  else
  begin
    tabella_controllo(true, artvardet, v_art_codice, v_dettaglio, blocco, nil, nil, tabella_righe);
  end;
end;

procedure TGESACQ.v_dettaglio_taglieClick(Sender: TObject);
var
  pr: tqtatgl;
begin
  inherited;
  pr := tqtatgl.create(nil);
  pr.modulo := 'acquisti';
  pr.tipo_documento := tipo_documento;
  pr.solo_lettura := true;
  pr.progressivo := tabella_righe.fieldbyname('progressivo').asinteger;
  pr.riga := tabella_righe.fieldbyname('riga').asinteger;
  pr.tgl_codice := art.fieldbyname('tgl_codice').asstring;
  pr.showmodal;
  freeandnil(pr);
end;

procedure TGESACQ.assegna_valore_spese_04;
begin
  if trim(v_descrizione_spese_04.text) = '' then
  begin
    if tabella.fieldbyname('importo_spese_04').asfloat <> 0 then
    begin
      tabella.fieldbyname('importo_spese_04').asfloat := 0;
    end;
    if tabella.fieldbyname('iva_ripartita_spese_04').asstring <> 'no' then
    begin
      tabella.fieldbyname('iva_ripartita_spese_04').asstring := 'no';
    end;
    if tabella.fieldbyname('costo_ripartito_spese_04').asstring <> 'no' then
    begin
      tabella.fieldbyname('costo_ripartito_spese_04').asstring := 'no';
    end;
    if tabella.fieldbyname('tiv_codice_spese_04').asstring <> '' then
    begin
      tabella.fieldbyname('tiv_codice_spese_04').asstring := '';
    end;
    if tabella.fieldbyname('gen_codice_spese_04').asstring <> '' then
    begin
      tabella.fieldbyname('gen_codice_spese_04').asstring := '';
    end;
  end;
end;

procedure TGESACQ.assegna_ritenuta;
begin
  if frn.fieldbyname('tpe_codice').asstring = '' then
  begin
    if tabella.fieldbyname('percipienti').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('percipienti').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('percipienti').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('percipienti').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('tpe_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tpe_codice').asstring := '';
      end;
    end;

    if tabella.fieldbyname('importo_imponibile_percipienti').asfloat <> 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('importo_imponibile_percipienti').asfloat := 0;
      end;
    end;

    if tabella.fieldbyname('importo_ritenuta_percipienti').asfloat <> 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('importo_ritenuta_percipienti').asfloat := 0;
      end;
    end;

    if tabella.fieldbyname('ritenuta_sospesa_percipienti').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('ritenuta_sospesa_percipienti').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('importo_non_soggetto_per').asfloat <> 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('importo_non_soggetto_per').asfloat := 0;
      end;
    end;

    if tabella.fieldbyname('importo_non_imponibile_per').asfloat <> 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('importo_non_imponibile_per').asfloat := 0;
      end;
    end;

    if tabella.fieldbyname('importo_addizionale_percipienti').asfloat <> 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('importo_addizionale_percipienti').asfloat := 0;
      end;
    end;

    if tabella.fieldbyname('addizionale_sospesa_percipienti').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('addizionale_sospesa_percipienti').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('anno_indennita_percipienti').asinteger <> 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('anno_indennita_percipienti').asinteger := 0;
      end;
    end;

    if tabella.fieldbyname('anticipazioni_percipienti').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('anticipazioni_percipienti').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('importo_imponibile_anni_pre_per').asfloat <> 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('importo_imponibile_anni_pre_per').asfloat := 0;
      end;
    end;

    if tabella.fieldbyname('importo_ritenuta_anni_pre_per').asfloat <> 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('importo_ritenuta_anni_pre_per').asfloat := 0;
      end;
    end;

    if tabella.fieldbyname('causale_pagamento_percipienti').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('causale_pagamento_percipienti').asstring := '';
      end;
    end;
  end
  else
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('percipienti').asstring := 'si';
      tabella.fieldbyname('tpe_codice').asstring := frn.fieldbyname('tpe_codice').asstring;
    end;
    assegna_valore_ritenuta;
  end;
end;

procedure TGESACQ.assegna_valore_ritenuta;
begin
  if (tipo_documento <> 'fattura') and (tipo_documento <> 'nota credito') then
  begin
    if tabella.fieldbyname('percipienti').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('percipienti').asstring := 'no';
      end;
    end;
  end;
end;

procedure TGESACQ.pannello_righeExit(Sender: TObject);
begin
  tool_f7.enabled := false;
  if controllo then
  begin
    if (esegui_dati_riga = 'si') or (art.active and (art.fieldbyname('gestione_dati_extra').asstring = 'si')) then
    begin
      esegui_gesacq02;
    end;
  end;

  inherited;
  v_gestione_collegato.enabled := false;
  lsv.close;
end;

procedure TGESACQ.v_saldo_accontoExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    if (variato_stringa <> v_saldo_acconto.text) and (tabella_righe.fieldbyname('situazione').asstring <> 'inserito') then
    begin
      tabella_righe.cancel;
      messaggio(000, 'non è possibile variare lo stato per una riga già elaborata');
    end;
  end;
  saldo_acconto_controllo;
end;

procedure TGESACQ.v_scadenzeClick(Sender: TObject);
var
  i: word;
  data_pagamento: tdate;
  stringa: string;
  pagamento: tmyquery_go;
begin
  inherited;
  if tipo_documento <> 'ddt clienti' then
  begin
    pagamento := tmyquery_go.create(nil);
    pagamento.connection := arc.arcdit;
    if tipo_documento = 'ddt' then
    begin
      pagamento.sql.text := 'select * from dap where progressivo = :progressivo order by rata';
    end
    else if tipo_documento = 'preventivo' then
    begin
      pagamento.sql.text := 'select * from rap where progressivo = :progressivo order by rata';
    end
    else if tipo_documento = 'ordine' then
    begin
      pagamento.sql.text := 'select * from oap where progressivo = :progressivo order by rata';
    end
    else
    begin
      pagamento.sql.text := 'select * from fap where progressivo = :progressivo order by rata';
    end;
    pagamento.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
    pagamento.open;

    data_pagamento := tabella.fieldbyname('data_inizio_conteggio').asdatetime;
    if data_pagamento = 0 then
    begin
      data_pagamento := tabella.fieldbyname('data_documento').asdatetime;
    end;

    if pagamento.isempty then
    begin
      read_tabella(arc.arcdit, 'tpa', 'codice', tabella.fieldbyname('tpa_codice').asstring, 'numero_rate');
      setlength(tabella_scadenze, archivio.fieldbyname('numero_rate').asinteger);
    end
    else
    begin
      setlength(tabella_scadenze, pagamento.recordcount);
    end;

    calsca.calsca('F', tabella.fieldbyname('frn_codice').asstring, tabella.fieldbyname('tva_codice').asstring,
      tabella.fieldbyname('tpa_codice').asstring, tabella.fieldbyname('importo_totale').asfloat, 0,
      tabella.fieldbyname('importo_totale_iva').asfloat, 0,
      data_pagamento, tabella_scadenze, pagamento);

    pagamento.free;

    stringa := '';
    for i := 0 to length(tabella_scadenze) - 1 do
    begin
      stringa := stringa + formatdatetime('dd/mm/yyyy', tabella_scadenze[i].data_scadenza) + '   ' +
        formatfloat(',0.00', tabella_scadenze[i].importo_scadenza) + #13;
    end;
    messaggio(100, stringa);
  end
  else
  begin
    messaggio(200, 'funzione non attiva per questo tipo documento');
  end;
end;

procedure TGESACQ.v_prezzoKeyDown(Sender: TObject;
  var
  Key: Word;
  Shift:
  TShiftState);
var
  pr: tultprz;
  pr1: tvislsa;
  pr2: tvislsv;

  scorpora: boolean;
begin
  inherited;
  if (key = vk_f11) and (shift = []) then
  begin
    if not scorporo_eseguito then
    begin
      if tabella.fieldbyname('listino_con_iva').asstring = 'no' then
      begin
        scorpora := true;
      end
      else
      begin
        scorpora := false;
      end;
      if tabella_edit(tabella_righe) then
      begin
        if read_tabella(arc.arcdit, 'tiv', 'codice', tabella_righe.fieldbyname('tiv_codice').asstring, 'percentuale') then
        begin
          tabella_righe.fieldbyname('prezzo').asfloat := arrotonda
            (v_prezzo.value / (1 + archivio.fieldbyname('percentuale').asfloat / 100), decimali_max_prezzo);
        end;
      end;
      calcola_importo;
      scorporo_eseguito := true;
    end;
  end;

  if (key = vk_f11) and (shift = [ssctrl]) then
  begin
    pr := Tultprz.Create(nil);
    if pr.esegui_form then
    begin
      pr.tipo_modulo := 'acquisti';
      pr.programma_chiamante := programma;
      pr.cfg_codice := v_frn_codice.text;
      pr.art_codice := v_art_codice.text;
      pr.tipo_documento := tipo_documento;
      pr.progressivo := v_progressivo.value;
      pr.riga := tabella_righe.fieldbyname('riga').asinteger;
      pr.modificabile := true;
      if (tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti') or (tipo_documento = 'fattura') or (tipo_documento = 'nota credito') or
        (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
      begin
        if tabella.fieldbyname('situazione').asstring = 'consolidato' then
        begin
          pr.modificabile := false;
        end;
      end;
      pr.showmodal;
      if pr.modificato then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('prezzo').asfloat := pr.prezzo;
          tabella_righe.fieldbyname('tsm_codice').asstring := pr.tsm_codice;
          tabella_righe.fieldbyname('tsm_codice_art').asstring := pr.tsm_codice_art;
        end;
        calcola_importo;
      end;
    end;
    pr.free;
  end;

  if (key = vk_f9) and (shift = [ssctrl]) then
  begin
    pr1 := Tvislsa.Create(nil);
    if pr1.esegui_form then
    begin
      pr1.art_codice := v_art_codice.text;
      pr1.data_validita := date;
      pr1.modificabile := true;
      pr1.showmodal;

      if pr1.modificato then
      begin
        try
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('prezzo').asfloat := pr1.prezzo;
            tabella_righe.fieldbyname('tsm_codice').asstring := pr1.tsm_codice_art;
            tsm_codice_righe_controllo(false);
            tabella_righe.fieldbyname('tsm_codice_art').asstring := '';
          end;
          calcola_importo;
        except
        end;
      end;
    end;
    pr1.free;
  end;

  if (key = vk_f10) and (shift = [ssctrl]) then
  begin
    pr2 := Tvislsv.Create(nil);
    if pr2.esegui_form then
    begin
      pr2.art_codice := v_art_codice.text;
      pr2.data_validita := now;
      pr2.prezzo := tabella_righe.fieldbyname('prezzo').asfloat;
      pr2.cifre_decimali_prezzo := cifre_decimali_prezzo_acq;
      pr2.tsm_codice := tabella_righe.fieldbyname('tsm_codice').asstring;
      pr2.tsm_codice_art := tabella_righe.fieldbyname('tsm_codice_art').asstring;
      pr2.aggiorna := false;
      pr2.modificabile := false;
      pr2.sconto_imponibile_lordo := sconto_imponibile_lordo;
      pr2.tipo_documento := 'acquisti';
      pr2.listino_con_iva := tabella.fieldbyname('listino_con_iva').asstring;
      pr2.showmodal;
    end;
    pr2.free;
  end;
end;

procedure TGESACQ.v_bottone_percipientiClick(Sender: TObject);
begin
  inherited;
  esegui_percipienti;
end;

procedure TGESACQ.esegui_percipienti;
var
  pr: tgespri04;
begin
  if v_data_documento.date = 0 then
  begin
    messaggio(000, 'non è possibile inserire i dati della ritenuta d''acconto' + #13 +
      'perchè non è stato indicato il numero documento');
  end
  else
  begin
    pr := Tgespri04.Create(nil);
    if pr.esegui_form then
    begin
      pr.programma_chiamante := programma;
      pr.form_chiamante_gesacq := self;
      pr.showmodal;
    end;
    pr.free;
  end;
end;

procedure TGESACQ.v_consolidaClick(Sender: TObject);
var
  pnt: tmyquery_go;
begin
  if not esercizio_diverso then
  begin
    inherited;
    codice_passato := v_progressivo.value;
    esegui_programma('CONDOCA', codice_passato, true);
    tabella.refresh;
    tabella_righe.refresh;

    abilita_codice;

    //  esegui gestione primanota
    if tda.fieldbyname('tco_codice').asstring <> '' then
    begin
      pnt := tmyquery_go.create(nil);
      pnt.connection := arc.arcdit;
      pnt.sql.text := 'select progressivo from pnt where documento_origine = ' + quotedstr(tipo_documento + ' acq') +
        ' and doc_progressivo_origine = ' + tabella.fieldbyname('progressivo').asstring;
      pnt.open;
      if not pnt.isempty then
      begin
        esegui_programma('GESPRI', pnt.fieldbyname('progressivo').asinteger, true);
      end;
      freeandnil(pnt);
    end;
  end;
end;

procedure TGESACQ.v_senza_prezzoClick(Sender: TObject);
begin
  inherited;

  if (tabella.fieldbyname('tipo_documento').asstring = 'ddt') or (tabella.fieldbyname('tipo_documento').asstring = 'fattura') then
  begin
    parametri_extra_programma_chiamato[0] := tabella.fieldbyname('progressivo').asinteger;
    parametri_extra_programma_chiamato[1] := tabella.fieldbyname('data_registrazione').asdatetime;
    parametri_extra_programma_chiamato[2] := tabella.fieldbyname('tipo_documento').asstring;
    esegui_programma('VALDOCA', tabella.fieldbyname('frn_codice').asstring, true);

    tabella_righe.refresh;
  end
  else
  begin
    messaggio(200, 'tipo documento non gestibile');
  end;
end;

procedure TGESACQ.v_situazione_accontoClick(Sender: TObject);
var
  ql_pat: tmyquery_go;
begin
  inherited;

  ql_pat := tmyquery_go.create(nil);
  ql_pat.connection := arc.arcdit;
  ql_pat.sql.text := 'select progressivo from pat where progressivo_ordine_acconto = :progressivo';
  if read_tabella(ql_pat, tabella.fieldbyname('progressivo').asinteger) then
  begin
    esegui_programma('GESPAR', ql_pat.fieldbyname('progressivo').asinteger, true);
  end
  else
  begin
    messaggio(100, 'nessun acconto collegato all''ordine');
  end;
  freeandnil(ql_pat);
end;

procedure TGESACQ.v_storno_evasioneClick(Sender: TObject);
var
  pr: timpalf;
  esegui: boolean;
  password_storno_evasione: string;
begin
  if not esercizio_diverso then
  begin
    inherited;
    esegui := true;

    password_storno_evasione := '';
    if tipo_documento = 'ddt' then
    begin
      password_storno_evasione := arc.dit.fieldbyname('pswd_storno_ddt_acq').asstring;
    end;
    if (tipo_documento = 'fattura') or (tipo_documento = 'fattura differita') or
      (tipo_documento = 'nota credito') then
    begin
      password_storno_evasione := arc.dit.fieldbyname('pswd_storno_fatture_acq').asstring;
    end;
    if password_storno_evasione = '' then
    begin
      password_storno_evasione := password_storno_evasione_acquisti;
    end;
    if password_storno_evasione <> '' then
    begin
      pr := Timpalf.Create(nil);
      try
        pr.v_form_caption := 'Password per storno evasione';
        pr.v_descrizione_caption := 'password';
        pr.v_width_campo := 10;
        pr.valore_passato := '';
        pr.tipo_campo := 'alfa';
        pr.campo_password := true;
        pr.showmodal;

        if pr.premuto_escape then
        begin
          esegui := false;
        end
        else if pr.valore_passato <> password_storno_evasione then
        begin
          messaggio(000, 'password errata');
          esegui := false;
        end;
      finally
        freeandnil(pr);
      end;
    end;
    if esegui then
    begin
      codice_passato := vararrayof([v_progressivo.value, tipo_documento]);
      esegui_programma('STOEVAA', codice_passato, true);
      tabella.refresh;
      tabella_righe.refresh;

    end;
    abilita_codice;
  end;
end;

procedure TGESACQ.v_importo_scontoExit(Sender: TObject);
begin
  inherited;
  if arrotonda(v_importo_sconto.value, 2) <> arrotonda(v_importo_sconto.value, cifre_decimali_importo) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('importo_sconto').asfloat := arrotonda
        (tabella.fieldbyname('importo_sconto').asfloat, cifre_decimali_importo);
    end;
  end;
end;

procedure TGESACQ.v_importo_spese_01Exit(Sender: TObject);
begin
  inherited;
  if arrotonda(v_importo_spese_01.value, 2) <> arrotonda(v_importo_spese_01.value, cifre_decimali_importo) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('importo_spese_01').asfloat := arrotonda
        (tabella.fieldbyname('importo_spese_01').asfloat, cifre_decimali_importo);
    end;
  end;
end;

procedure TGESACQ.v_importo_spese_02Exit(Sender: TObject);
begin
  inherited;
  if arrotonda(v_importo_spese_02.value, 2) <> arrotonda(v_importo_spese_02.value, cifre_decimali_importo) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('importo_spese_02').asfloat := arrotonda
        (tabella.fieldbyname('importo_spese_02').asfloat, cifre_decimali_importo);
    end;
  end;
end;

procedure TGESACQ.v_importo_spese_03Exit(Sender: TObject);
begin
  inherited;
  if arrotonda(v_importo_spese_03.value, 2) <> arrotonda(v_importo_spese_03.value, cifre_decimali_importo) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('importo_spese_03').asfloat := arrotonda
        (tabella.fieldbyname('importo_spese_03').asfloat, cifre_decimali_importo);
    end;
  end;
end;

procedure TGESACQ.v_importo_spese_04Exit(Sender: TObject);
begin
  inherited;
  if arrotonda(v_importo_spese_04.value, 2) <> arrotonda(v_importo_spese_04.value, cifre_decimali_importo) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('importo_spese_04').asfloat := arrotonda
        (tabella.fieldbyname('importo_spese_04').asfloat, cifre_decimali_importo);
    end;
  end;
end;

procedure TGESACQ.v_importo_spese_extraChange(Sender: TObject);
begin
  inherited;
  abilita_modalita_ripartizione;
end;

procedure TGESACQ.v_importo_spese_extraEnter(Sender: TObject);
begin
  inherited;
  variato_importo := v_importo_spese_extra.value;
end;

procedure TGESACQ.v_importo_spese_extraExit(Sender: TObject);
var
  testata_ripartizione: tmyquery_go;
begin
  inherited;

  if controllo and (v_importo_spese_extra.value <> 0) then
  begin
    if v_importo_spese_extra.value = 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('modalita_ripartizione').asstring := '';
      end;
    end
    else if variato_importo <> v_importo_spese_extra.value then
    begin
      if tabella_edit(tabella) then
      begin
        testata_ripartizione := tmyquery_go.create(nil);
        testata_ripartizione.connection := arc.arcdit;

        try
          if tipo_documento = 'ddt' then
          begin
            testata_ripartizione.sql.add('select modalita_ripartizione from dat')
          end
          else
          begin
            testata_ripartizione.sql.add('select modalita_ripartizione from fat')
          end;

          testata_ripartizione.sql.add('where tipo_documento = :tipo_documento and frn_codice = :frn_codice');
          testata_ripartizione.sql.add('order by data_registrazione, progressivo desc limit 1');

          testata_ripartizione.parambyname('tipo_documento').asstring := tipo_documento;
          testata_ripartizione.parambyname('frn_codice').asstring := tabella.fieldbyname('frn_codice').asstring;

          testata_ripartizione.open;

          tabella.fieldbyname('modalita_ripartizione').asstring := testata_ripartizione.fieldbyname('modalita_ripartizione').asstring;
          v_modalita_ripartizione.itemindex := v_modalita_ripartizione.indexof(tabella.fieldbyname('modalita_ripartizione').asstring);
        finally
          testata_ripartizione.free;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.abilita_modalita_ripartizione;
begin
  if v_importo_spese_extra.value = 0 then
  begin
    disabilita_campo(v_modalita_ripartizione);
  end
  else
  begin
    abilita_campo(v_modalita_ripartizione);
  end;
end;

procedure TGESACQ.assegna_valore_modalita_ripartizione;
begin
  if v_importo_spese_extra.value = 0 then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('modalita_ripartizione').asstring := '';
    end;
  end;
end;

procedure TGESACQ.v_conto_correnteExit(Sender: TObject);
begin
  inherited;
  conto_corrente_controllo;
end;

procedure TGESACQ.conto_corrente_controllo;
begin
  if trim(v_conto_corrente.text) <> '' then
  begin
    if length(trim(v_conto_corrente.text)) <> 12 then
    begin
      messaggio(000, 'il conto corrente deve essere di 12 caratteri');
      if v_conto_corrente.canfocus then
      begin
        v_conto_corrente.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESACQ.v_frn_codiceKeyDown(Sender: TObject;
  var
  Key: Word;
  Shift:
  TShiftState);
begin
  inherited;
  if (key = vk_f9) and (shift = []) and (not esiste) and (screen.activecontrol = v_frn_codice) and (trim(v_frn_codice.text) <> '') then
  begin
    controllare_documenti_livello_superiore;
  end;
end;

procedure TGESACQ.controllare_documenti_livello_superiore;
var
  pr: tvisdocev;
  camdoc, testata_documento_evaso: tmyquery_go;
  stringa, campo: string;
begin
  if (not((tipo_documento = 'preventivo') or
    ((tipo_documento = 'ddt') and (tabella.fieldbyname('tda_codice_differite').asstring = '')))) then
  begin
    if codice_nom_numerico = 'si' then
    begin
      v_frn_codice.text := setta_lunghezza(v_frn_codice.text, 8, true, '0');
    end;

    pr := tvisdocev.create(nil);
    if pr.esegui_form then
    begin
      pr.tipo_modulo := 'acquisti';
      if (tipo_documento = 'fattura') and (tda.fieldbyname('tda_codice_conto_acquisto').asstring <> '') then
      begin
        pr.tipo_documento_evasione := 'ddt';
        pr.tda_codice_conto_acquisto := tda.fieldbyname('tda_codice_conto_acquisto').asstring;
      end
      else if tipo_documento = 'ordine' then
      begin
        pr.tipo_documento_evasione := 'preventivo';
      end
      else if (((tipo_documento = 'ddt') and (tabella.fieldbyname('tda_codice_differite').asstring <> '')) or
        (tipo_documento = 'fattura')) then
      begin
        pr.tipo_documento_evasione := 'ordine';
      end
      else if tipo_documento = 'fattura differita' then
      begin
        pr.tipo_documento_evasione := 'ddt';
      end
      else if tipo_documento = 'nota credito' then
      begin
        pr.tipo_documento_evasione := 'ddt fornitori';
      end
      else if tipo_documento = 'ddt clienti' then
      begin
        pr.tipo_documento_evasione := 'ddt clienti';
      end;
      pr.cli_frn_codice := v_frn_codice.text;
      pr.showmodal;

      if pr.progressivo <> 0 then
      begin
        testata_documento_evaso := tmyquery_go.create(nil);
        testata_documento_evaso.connection := arc.arcdit;

        try
          if tipo_documento = 'ordine' then
          begin
            testata_documento_evaso.sql.add('select * from rat where progressivo = :progressivo');
          end
          else if tipo_documento = 'fattura differita' then
          begin
            testata_documento_evaso.sql.add('select * from dat where progressivo = :progressivo');
          end
          else
          begin
            testata_documento_evaso.sql.add('select * from oat where progressivo = :progressivo');
          end;

          progressivo_documento_evadere := pr.progressivo;
          testata_documento_evaso.params[0].asfloat := pr.progressivo;

          if tipo_documento <> 'ddt clienti' then
          begin
            testata_documento_evaso.close;
            testata_documento_evaso.open;
            if not testata_documento_evaso.eof then
            begin
              tabella.fieldbyname('tla_codice').asstring := testata_documento_evaso.fieldbyname('tla_codice').asstring;
              tabella.fieldbyname('listino_con_iva').asstring := testata_documento_evaso.fieldbyname('listino_con_iva').asstring;
              tabella.fieldbyname('tpa_codice').asstring := testata_documento_evaso.fieldbyname('tpa_codice').asstring;
              tabella.fieldbyname('data_inizio_conteggio').asdatetime := testata_documento_evaso.fieldbyname('data_inizio_conteggio').asdatetime;
              tabella.fieldbyname('tsm_codice').asstring := testata_documento_evaso.fieldbyname('tsm_codice').asstring;
              tabella.fieldbyname('tva_codice').asstring := testata_documento_evaso.fieldbyname('tva_codice').asstring;
              tabella.fieldbyname('lti_progressivo').asinteger := testata_documento_evaso.fieldbyname('lti_progressivo').asinteger;
              tabella.fieldbyname('tiv_codice').asstring := testata_documento_evaso.fieldbyname('tiv_codice').asstring;
              tabella.fieldbyname('riferimento').asstring := testata_documento_evaso.fieldbyname('riferimento').asstring;
              tabella.fieldbyname('contatto_commerciale').asstring := testata_documento_evaso.fieldbyname('contatto_commerciale').asstring;
              tabella.fieldbyname('data_riferimento').value := testata_documento_evaso.fieldbyname('data_riferimento').value;
              tabella.fieldbyname('tsp_codice').asstring := testata_documento_evaso.fieldbyname('tsp_codice').asstring;
              tabella.fieldbyname('tpo_codice').asstring := testata_documento_evaso.fieldbyname('tpo_codice').asstring;
              tabella.fieldbyname('intra').asstring := testata_documento_evaso.fieldbyname('intra').asstring;
              tabella.fieldbyname('reverse_change').asstring := testata_documento_evaso.fieldbyname('reverse_change').asstring;
              tabella.fieldbyname('data_inizio_conteggio').asstring := testata_documento_evaso.fieldbyname('data_inizio_conteggio').asstring;
              tabella.fieldbyname('scadenziario_manuale').asstring := testata_documento_evaso.fieldbyname('scadenziario_manuale').asstring;
              tabella.fieldbyname('codice_abi').asstring := testata_documento_evaso.fieldbyname('codice_abi').asstring;
              tabella.fieldbyname('codice_cab').asstring := testata_documento_evaso.fieldbyname('codice_cab').asstring;
              tabella.fieldbyname('tba_codice').asstring := testata_documento_evaso.fieldbyname('tba_codice').asstring;
              tabella.fieldbyname('conto_corrente').asstring := testata_documento_evaso.fieldbyname('conto_corrente').asstring;
              tabella.fieldbyname('cin').asstring := testata_documento_evaso.fieldbyname('cin').asstring;
              tabella.fieldbyname('iban').asstring := testata_documento_evaso.fieldbyname('iban').asstring;
              if tipo_documento <> 'ordine' then
              begin
                tabella.fieldbyname('bic').asstring := testata_documento_evaso.fieldbyname('bic').asstring;
              end
              else
              begin
                tabella.fieldbyname('indirizzo').asstring := testata_documento_evaso.fieldbyname('indirizzo').asstring;
                tabella.fieldbyname('descrizione1').asstring := testata_documento_evaso.fieldbyname('descrizione1').asstring;
                tabella.fieldbyname('descrizione2').asstring := testata_documento_evaso.fieldbyname('descrizione2').asstring;
                tabella.fieldbyname('via').asstring := testata_documento_evaso.fieldbyname('via').asstring;
                tabella.fieldbyname('cap').asstring := testata_documento_evaso.fieldbyname('cap').asstring;
                tabella.fieldbyname('citta').asstring := testata_documento_evaso.fieldbyname('citta').asstring;
                tabella.fieldbyname('provincia').asstring := testata_documento_evaso.fieldbyname('provincia').asstring;
                tabella.fieldbyname('tna_codice').asstring := testata_documento_evaso.fieldbyname('tna_codice').asstring;
              end;

              if tipo_documento <> 'ordine' then
              begin
                tabella.fieldbyname('tma_codice').asstring := testata_documento_evaso.fieldbyname('tma_codice').asstring;
              end;
              if testata_documento_evaso.fieldbyname('tma_codice').asstring <> '' then
              begin
                if (tabella.fieldbyname('tma_codice').asstring <> '') and
                  (tabella.fieldbyname('tma_codice').asstring <> testata_documento_evaso.fieldbyname('tma_codice').asstring) then
                begin
                  if messaggio(300, 'il deposito già impostato sul documento [' + tabella.fieldbyname('tma_codice').asstring + ']' + #13 +
                    'è diverso da quello del documento da evadere [' + testata_documento_evaso.fieldbyname('tma_codice').asstring + ']' + #13 +
                    'lo si vuole rimpiazzare?') = 1 then
                  begin
                    tabella.fieldbyname('tma_codice').asstring := testata_documento_evaso.fieldbyname('tma_codice').asstring;
                  end;
                end;
              end;

              tabella.fieldbyname('iva_sospensione').asstring := testata_documento_evaso.fieldbyname('iva_sospensione').asstring;
              tabella.fieldbyname('tna_codice_intra').asstring := testata_documento_evaso.fieldbyname('tna_codice_intra').asstring;
              tabella.fieldbyname('tsm_codice_sconto').asstring := testata_documento_evaso.fieldbyname('tsm_codice_sconto').asstring;
              tabella.fieldbyname('data_inizio_conteggio').asstring := testata_documento_evaso.fieldbyname('data_inizio_conteggio').asstring;
              tabella.fieldbyname('scadenziario_manuale').asstring := testata_documento_evaso.fieldbyname('scadenziario_manuale').asstring;
              tabella.fieldbyname('cms_codice').asstring := testata_documento_evaso.fieldbyname('cms_codice').asstring;
              tabella.fieldbyname('tipologia').asstring := testata_documento_evaso.fieldbyname('tipologia').asstring;
              tabella.fieldbyname('cen_codice').asstring := testata_documento_evaso.fieldbyname('cen_codice').asstring;
              tabella.fieldbyname('tvc_codice').asstring := testata_documento_evaso.fieldbyname('tvc_codice').asstring;
              tabella.fieldbyname('contratto_elenco_cli_for').asstring := testata_documento_evaso.fieldbyname('contratto_elenco_cli_for').asstring;
              tabella.fieldbyname('pagamento_elenco_cli_for').asstring := testata_documento_evaso.fieldbyname('pagamento_elenco_cli_for').asstring;

              if tipo_documento <> 'fattura differita' then
              begin
                tabella.fieldbyname('cli_codice').asstring := testata_documento_evaso.fieldbyname('cli_codice').asstring;
              end;

              if copy(tipo_documento, 1, 7) = 'fattura' then
              begin
                tabella.fieldbyname('importo_pagato').asfloat := testata_documento_evaso.fieldbyname('importo_pagato').asfloat;
                tabella.fieldbyname('incasso_saldo').asstring := testata_documento_evaso.fieldbyname('incasso_saldo').asstring;
              end;

              if testata_documento_evaso.fieldbyname('situazione').asstring = 'inserito' then
              begin
                if testata_documento_evaso.fieldbyname('importo_sconto').asfloat <> 0 then
                begin
                  if messaggio(300, 'nel documento di origine è previsto uno sconto in valore assoluto di ' +
                    testata_documento_evaso.fieldbyname('importo_sconto').asstring + ' ' + testata_documento_evaso.fieldbyname('tva_codice').asstring + #13 +
                    'conferma per assegnarlo al documento derivato') = 1 then
                  begin
                    tabella.fieldbyname('importo_sconto').asfloat := testata_documento_evaso.fieldbyname('importo_sconto').asfloat;
                  end;
                end;
              end;

              assegna_cambio;

              visualizza_descrizioni;

              variato_stringa := v_frn_codice.text;

              //  campi personalizzati da passare
              camdoc := tmyquery_go.create(nil);
              camdoc.connection := arc.arcdit;
              camdoc.sql.add('select *');
              camdoc.sql.add('from camdoc');
              camdoc.sql.add('where modulo_origine = :modulo_origine and tipo_documento_origine = :tipo_documento_origine');
              camdoc.sql.add('and modulo_derivato = :modulo_derivato and tipo_documento_derivato = :tipo_documento_derivato');

              try
                if read_tabella(camdoc, vararrayof(['acquisti', pr.tipo_documento_evasione, 'acquisti', tipo_documento])) then
                begin
                  stringa := trim(camdoc.fieldbyname('campi_testata').asstring);
                  while pos(';', stringa) > 0 do
                  begin
                    campo := copy(stringa, 1, pos(';', stringa) - 1);
                    tabella.fieldbyname(campo).value := testata_documento_evaso.fieldbyname(campo).value;
                    stringa := trim(copy(stringa, pos(';', stringa) + 1, length(stringa)));
                  end;
                  if stringa <> '' then
                  begin
                    tabella.fieldbyname(stringa).value := testata_documento_evaso.fieldbyname(stringa).value;
                  end;
                end;
              finally
                camdoc.free;
              end;
              //
            end;
          end;
        finally
          testata_documento_evaso.free;
        end;
      end;
    end;
    pr.free;
  end
end;

procedure TGESACQ.pannello_griglia_righeEnter(Sender: TObject);
begin
  inherited;
  if (tda.fieldbyname('note_visibili').asstring = 'no') then
  begin
    v_note_righe.visible := false;
  end
  else
  begin
    v_note_righe.visible := true;
  end;
end;

procedure TGESACQ.pannello_griglia_righeExit(Sender: TObject);
begin
  inherited;
  if not esiste_righe then
  begin
    //  creata procedura che utilizza anche il lettore
    assegna_campi_righe;
  end;
end;

procedure TGESACQ.assegna_campi_righe;
begin
  if tabella_edit(tabella_righe) then
  begin
    tabella_righe.fieldbyname('data_consegna').asstring := tabella.fieldbyname('data_consegna').asstring;
    tabella_righe.fieldbyname('data_consegna_confermata').asstring := tabella.fieldbyname('data_consegna_confermata').asstring;

    tabella_righe.fieldbyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
    tabella_righe.fieldbyname('tipologia').asstring := tabella.fieldbyname('tipologia').asstring;
    if ultimo_cms_codice <> '' then
    begin
      tabella_righe.fieldbyname('cms_codice').asstring := ultimo_cms_codice;
      tabella_righe.fieldbyname('tipologia').asstring := ultimo_tipologia;
    end;

    tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice').asstring;
    tabella_righe.fieldbyname('tma_codice_collegato').asstring := tabella.fieldbyname('tma_codice_collegato').asstring;

    tabella_righe.fieldbyname('evadere_note').asstring := tda.fieldbyname('evadere_note').asstring;
    tabella_righe.fieldbyname('data_inizio_competenza').asstring := tabella.fieldbyname('data_inizio_competenza').asstring;
    tabella_righe.fieldbyname('data_fine_competenza').asstring := tabella.fieldbyname('data_fine_competenza').asstring;

    tabella_righe.fieldbyname('cen_codice').asstring := tabella.fieldbyname('cen_codice').asstring;
    tabella_righe.fieldbyname('tvc_codice').asstring := tabella.fieldbyname('tvc_codice').asstring;

    tabella_righe.fieldbyname('note_art').asstring := tda.fieldbyname('note_come_descrizioni').asstring;
  end;
end;

procedure TGESACQ.v_tum_codiceExit(Sender: TObject);
var
  decimali: word;
begin
  inherited;

  tum_codice_controllo(true);

  if controllo then
  begin
    if variato_stringa <> v_tum_codice.text then
    begin
      cifre_decimali_quantita := decimali_quantita(v_tum_codice.text);

      assegna_tum_quantita_base;

      cerca_prezzo;
      calcola_importo;
      attiva_importo;
    end;
  end;
end;

procedure TGESACQ.assegna_cum;
var
  decimali: word;
  cum: tmyquery_go;
begin
  if (tabella_righe.fieldbyname('tum_codice').asstring <> art.fieldbyname('tum_codice').asstring) and
    (tabella_righe.fieldbyname('tum_codice').asstring <> art.fieldbyname('tum_codice_acquisti').asstring) and
    not((tipo_documento = 'ddt clienti') and (tabella_righe.fieldbyname('tum_codice').asstring = art.fieldbyname('tum_codice_vendite').asstring)) then
  begin
    cum := tmyquery_go.create(nil);
    cum.connection := arc.arcdit;
    cum.sql.add('select coefficiente');
    cum.sql.add('from cum');
    cum.sql.add('where tum_codice = :tum_codice and tum_codice_collegato = :tum_codice_collegato');

    try
      cum.parambyname('tum_codice').asstring := art.fieldbyname('tum_codice').asstring;
      cum.parambyname('tum_codice_collegato').asstring := tabella_righe.fieldbyname('tum_codice').asstring;
      cum.open;
      if cum.isempty then
      begin
        cum.close;
        cum.parambyname('tum_codice_collegato').asstring := art.fieldbyname('tum_codice').asstring;
        cum.parambyname('tum_codice').asstring := tabella_righe.fieldbyname('tum_codice').asstring;
        cum.open;
        if cum.isempty then
        begin
          tabella_righe.fieldbyname('tum_quantita_base').asfloat := tabella_righe.fieldbyname('quantita').asfloat;
        end
        else
        begin
          decimali := decimali_quantita_art(v_art_codice.text);
          tabella_righe.fieldbyname('tum_quantita_base').asfloat := arrotonda(tabella_righe.fieldbyname('quantita').asfloat /
            cum.fieldbyname('coefficiente').asfloat, decimali);
        end;
      end
      else
      begin
        decimali := decimali_quantita_art(v_art_codice.text);
        tabella_righe.fieldbyname('tum_quantita_base').asfloat := arrotonda(tabella_righe.fieldbyname('quantita').asfloat *
          cum.fieldbyname('coefficiente').asfloat, decimali);
      end;
    finally
      cum.free;
    end;
  end;
end;

procedure TGESACQ.v_tum_quantita_baseEnter(Sender: TObject);
begin
  inherited;

  variato_importo := v_tum_quantita_base.value;

  if v_tum_codice.text = art.fieldbyname('tum_codice').asstring then
  begin
    selectnext(v_tum_quantita_base, true, true);
  end;
end;

procedure TGESACQ.v_tum_quantita_baseExit(Sender: TObject);
var
  decimali: word;
begin
  inherited;

  if variato_importo <> v_tum_quantita_base.value then
  begin
    if tabella_righe.fieldbyname('tum_quantita_base').asfloat <> tabella_righe.fieldbyname('quantita').asfloat then
    begin
      if (tabella_righe.fieldbyname('quantita').asfloat = 0) or
        ((tabella_righe.fieldbyname('quantita').asfloat <> 0) and
         (messaggio(M_CONFERMA, 'conferma ricalcolo quantita') = 1)) then
      begin
        if tabella_edit(tabella_righe) then
        begin
          decimali := decimali_quantita(v_tum_codice.text);
          if tabella_righe.fieldbyname('tum_codice').asstring = art.fieldbyname('tum_codice_acquisti').asstring then
          begin
            if art.fieldbyname('operazione_coefficiente_acq').asstring = '/' then
            begin
              tabella_righe.fieldbyname('quantita').asfloat := arrotonda(tabella_righe.fieldbyname('tum_quantita_base').asfloat *
                (art.fieldbyname('tum_coefficiente_acquisti').asfloat), decimali);
            end
            else
            begin
              tabella_righe.fieldbyname('quantita').asfloat := arrotonda(tabella_righe.fieldbyname('tum_quantita_base').asfloat /
                (art.fieldbyname('tum_coefficiente_acquisti').asfloat), decimali);
            end;
          end
          else if tabella_righe.fieldbyname('tum_codice').asstring = art.fieldbyname('tum_codice_vendite').asstring then
          begin
            if art.fieldbyname('operazione_coefficiente_ven').asstring = '/' then
            begin
              tabella_righe.fieldbyname('quantita').asfloat := arrotonda(tabella_righe.fieldbyname('tum_quantita_base').asfloat *
                (art.fieldbyname('tum_coefficiente_vendite').asfloat), decimali);
            end
            else
            begin
              tabella_righe.fieldbyname('quantita').asfloat := arrotonda(tabella_righe.fieldbyname('tum_quantita_base').asfloat /
                (art.fieldbyname('tum_coefficiente_vendite').asfloat), decimali);
            end;
          end
          else
          begin
            tabella_righe.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
          end;
        end;
      end;
    end;
    v_quantitaexit(v_quantita);
  end;
end;

procedure TGESACQ.v_quantitaKeyDown(Sender: TObject;
  var
  Key: Word;
  Shift:
  TShiftState);
var
  pr: timpalf;
begin
  if (key = vk_f11) and (shift = [ssctrl]) then
  begin
    if art.fieldbyname('tum_codice').asstring = v_tum_codice.text then
    begin
      messaggio(200, 'l''unità di misura utilizzata nel documento è già quella base');
    end
    else
    begin
      pr := timpalf.create(nil);
      try
        pr.v_form_caption := 'Richiesta quantità unità di misura base';
        pr.v_descrizione_caption := 'quantità u.m. base';
        pr.v_width_campo := 15;
        pr.valore_passato := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
        pr.tipo_campo := 'numero';
        pr.formattare := true;
        pr.decimali := decimali_quantita_art(v_art_codice.text);
        pr.showmodal;

        if tabella_edit(tabella_righe) then
        begin
          try
            if esiste_righe then
            begin
              if art.fieldbyname('operazione_coefficiente_acq').asstring = '*' then
              begin
                tabella_righe.fieldbyname('quantita').asfloat := arrotonda(pr.valore_passato /
                  (tabella_righe.fieldbyname('tum_quantita_base').asfloat / tabella_righe.fieldbyname('quantita').asfloat),
                  cifre_decimali_quantita_acquisti);
              end
              else
              begin
                tabella_righe.fieldbyname('quantita').asfloat := arrotonda(pr.valore_passato *
                  (tabella_righe.fieldbyname('tum_quantita_base').asfloat / tabella_righe.fieldbyname('quantita').asfloat),
                  cifre_decimali_quantita_acquisti);
              end;
            end
            else
            begin
              if art.fieldbyname('operazione_coefficiente_acq').asstring = '*' then
              begin
                tabella_righe.fieldbyname('quantita').asfloat := arrotonda
                  (pr.valore_passato / art.fieldbyname('tum_coefficiente_acquisti').asstring, cifre_decimali_quantita_acquisti);
              end
              else
              begin
                tabella_righe.fieldbyname('quantita').asfloat := arrotonda
                  (pr.valore_passato * art.fieldbyname('tum_coefficiente_acquisti').asstring, cifre_decimali_quantita_acquisti);
              end;
            end;
          except
            messaggio(200, 'non è stato assegnato il coefficiente di conversione all''unità di misura secondaria');
          end;
        end;
      finally
        freeandnil(pr);
      end;
    end;
  end
  else
  begin
    inherited;
  end;
end;

procedure TGESACQ.v_cms_codiceExit(Sender: TObject);
begin
  inherited;
  cms_codice_controllo(true);

  if controllo and (cms.fieldbyname('chiusa').asstring = 'si') then
  begin
    messaggio(200, 'la commessa è chiusa');
  end;

  if controllo and (variato_stringa <> v_cms_codice.text) then
  begin
    tabella.fieldbyname('tipologia').asstring := cms.fieldbyname('cmt_codice').asstring;
    tipologia_controllo(false);

    if (cms.fieldbyname('tma_codice').asstring <> '') and
      (cms.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice').asstring) and
      ((cmt.isempty) or (cmt.fieldbyname('tma_codice').asstring = '')) then
    begin
      if messaggio(300, 'aggiorna il deposito principale per adeguarlo a quello della commessa') = 1 then
      begin
        tabella.fieldbyname('tma_codice').asstring := cms.fieldbyname('tma_codice').asstring;
        tma_codice_controllo(false);
      end;
    end
    else
    begin
      if (cmt.fieldbyname('tma_codice').asstring <> '') and
        (cmt.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice').asstring) then
      begin
        if messaggio(300, 'aggiorna il deposito principale per adeguarlo a quello della sottocommessa') = 1 then
        begin
          tabella.fieldbyname('tma_codice').asstring := cmt.fieldbyname('tma_codice').asstring;
          tma_codice_controllo(false);
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.cms_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, cms, v_cms_codice, blocco, tab_control, tab_testata_magazzino, tabella);
end;

procedure TGESACQ.v_tipologiaEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_cms_codice.text;
  variato_stringa := v_tipologia.text;
end;

procedure TGESACQ.v_tipologiaExit(Sender: TObject);
begin
  inherited;
  tipologia_controllo(true);

  if controllo and (variato_stringa <> v_tipologia.text) then
  begin
    if (cmt.fieldbyname('tma_codice').asstring <> '') and
      (cmt.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice').asstring) then
    begin
      if messaggio(300, 'aggiorna il deposito principale per adeguarlo a quello della sottocommessa') = 1 then
      begin
        tabella.fieldbyname('tma_codice').asstring := cmt.fieldbyname('tma_codice').asstring;
        tma_codice_controllo(false);
      end;
    end;
  end;
end;

procedure TGESACQ.tipologia_controllo(blocco: boolean);
begin
  if (v_cms_codice.text = '') and (v_tipologia.text = '') then
  begin
    tabella_controllo(true, cmt, v_cms_codice, v_tipologia, blocco, tab_control, tab_testata_magazzino, tabella);
  end
  else
  begin
    tabella_controllo(false, cmt, v_cms_codice, v_tipologia, blocco, tab_control, tab_testata_magazzino, tabella);
  end;
end;

procedure TGESACQ.abilita_campi_opzionali(flag: boolean);
begin
  if not flag then
  begin
    v_descrizione1_riga.enabled := false;
    v_descrizione1_riga.color := clbtnface;

    v_descrizione2_riga.enabled := false;
    v_descrizione2_riga.color := clbtnface;

    v_numero_colli_riga.enabled := false;
    v_numero_colli_riga.color := clbtnface;

    v_numero_confezioni.enabled := false;
    v_numero_confezioni.color := clbtnface;

    v_tipo_movimento.enabled := false;
    v_tipo_movimento.color := clbtnface;
  end
  else
  begin
    if trim(v_art_codice.text) <> '' then
    begin
      v_descrizione1_riga.enabled := true;
      v_descrizione1_riga.color := clwindow;

      v_descrizione2_riga.enabled := true;
      v_descrizione2_riga.color := clwindow;

      v_numero_colli_riga.enabled := true;
      v_numero_colli_riga.color := clwindow;

      v_numero_confezioni.enabled := true;
      v_numero_confezioni.color := clwindow;

      v_tipo_movimento.enabled := true;
      v_tipo_movimento.color := clwindow;
    end
    else
    begin
      v_descrizione1_riga.enabled := true;
      v_descrizione1_riga.color := clwindow;

      v_descrizione2_riga.enabled := true;
      v_descrizione2_riga.color := clwindow;

      v_numero_colli_riga.enabled := false;
      v_numero_colli_riga.color := clbtnface;

      v_numero_confezioni.enabled := false;
      v_numero_confezioni.color := clbtnface;

      v_tipo_movimento.enabled := false;
      v_tipo_movimento.color := clbtnface;
    end;
  end;
end;

procedure TGESACQ.v_accessoriClick(Sender: TObject);
var
  pr: tsceacc;

  i, riga: word;
  quantita: double;
  descrizione, tipo_movimento, cms_codice, cmt_codice: string;
  data_prezzo, data_consegna: tdatetime;
  sceacc_note: boolean;
begin
  inherited;
  pr := Tsceacc.Create(nil);
  if pr.esegui_form then
  begin
    pr.art_codice := v_art_codice.text;
    sce_lista_multiselezione.clear;
    pr.lista_multiselezione := sce_lista_multiselezione;
    pr.showmodal;

    sceacc_note := pr.v_note.checked;

    if sce_lista_multiselezione.count > 0 then
    begin
      quantita := v_quantita.value;
      tipo_movimento := v_tipo_movimento.text;
      data_consegna := v_data_consegna_righe.date;
      cms_codice := tabella_righe.fieldbyname('cms_codice').asstring;
      cmt_codice := tabella_righe.fieldbyname('tipologia').asstring;

      query_presenti_righe.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
      query_presenti_righe.close;
      query_presenti_righe.open;
      i := trunc(query_presenti_righe.fieldbyname('ultima_riga').asinteger / incremento_righe);
      riga := i * incremento_righe;

      if sceacc_note then
      begin
        riga := riga + incremento_righe;
        tabella_righe.append;

        tabella_righe.fieldbyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asfloat;
        tabella_righe.fieldbyname('riga').asinteger := riga;

        tabella_righe.fieldbyname('note').asstring := '__________ACCESSORI__________';

        for i := 0 to sce_lista_multiselezione.count - 1 do
        begin
          read_tabella(arc.arcdit, 'art', 'codice', sce_lista_multiselezione[i]);
          descrizione := sce_lista_multiselezione[i] + ' - ' +
            archivio.fieldbyname('descrizione1').asstring + ' ' +
            archivio.fieldbyname('descrizione2').asstring + ' ' +
            archivio.fieldbyname('tum_codice').asstring + ' ';
          read_tabella(arc.arcdit, 'acc', 'art_codice;art_codice_accessorio', vararrayof([pr.art_codice, sce_lista_multiselezione[i]]));
          descrizione := descrizione + formatfloat(formato_display_quantita, arrotonda(archivio.fieldbyname('quantita').asfloat * quantita, 4));

          tabella_righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring + #13 +
            descrizione;
        end;

        tabella_righe.post;
      end
      else
      begin
        for i := 0 to sce_lista_multiselezione.count - 1 do
        begin
          riga := riga + incremento_righe;

          tabella_righe.append;

          tabella_righe.fieldbyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asfloat;
          tabella_righe.fieldbyname('riga').asinteger := riga;
          tabella_righe.fieldbyname('art_codice').asstring := sce_lista_multiselezione[i];
          read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring);
          tabella_righe.fieldbyname('descrizione1').asstring := archivio.fieldbyname('descrizione1').asstring;
          tabella_righe.fieldbyname('descrizione2').asstring := archivio.fieldbyname('descrizione2').asstring;
          tabella_righe.fieldbyname('tum_codice').asstring := archivio.fieldbyname('tum_codice').asstring;

          cifre_decimali_quantita := decimali_quantita_art(tabella_righe.fieldbyname('art_codice').asstring);
          read_tabella(arc.arcdit, 'acc', 'art_codice;art_codice_accessorio', vararrayof([pr.art_codice, tabella_righe.fieldbyname('art_codice').asstring]));
          tabella_righe.fieldbyname('quantita').asfloat := arrotonda
            (archivio.fieldbyname('quantita').asfloat * quantita, cifre_decimali_quantita);
          tabella_righe.fieldbyname('tum_quantita_base').asfloat := tabella_righe.fieldbyname('quantita').asfloat;
          tabella_righe.fieldbyname('cms_codice').asstring := cms_codice;
          tabella_righe.fieldbyname('tipologia').asstring := cmt_codice;

          read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring);
          if tipo_documento <> 'ddt clienti' then
          begin
            cerca_prezzo(tipo_prezzo);

            tabella_righe.fieldbyname('prezzo').asfloat := prezzo;
            tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;
            tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;

            tabella_righe.fieldbyname('tipo_movimento').asstring := tipo_movimento;
            tabella_righe.fieldbyname('data_consegna').asdatetime := data_consegna;
            if data_consegna = 0 then
            begin
              tabella_righe.fieldbyname('data_consegna').asstring := '';
            end;
          end;

          art.params[0].asstring := tabella_righe.fieldbyname('art_codice').asstring;
          art.close;
          art.open;

          assegna_tiv_codice_righe;
          assegna_gen_codice;
          calcola_importo;

          tabella_righe.post;
        end;
      end;
    end;
  end;
  pr.free;
end;

procedure TGESACQ.v_accettatoClick(Sender: TObject);
begin
  inherited;
  if v_accettato.checked then
  begin
    v_accettato.color := cllime;
  end
  else
  begin
    v_accettato.color := clwindow;
  end;
end;

procedure TGESACQ.v_codice_abiKeyDown(Sender: TObject;
  var
  Key: Word;
  Shift:
  TShiftState);
var
  pr: tvisbcf;
begin
  inherited;
  if (key = vk_f11) and (shift = [ssctrl]) then
  begin
    pr := tvisbcf.create(nil);
    if pr.esegui_form then
    begin
      if tipo_documento = 'ddt clienti' then
      begin
        pr.cfg_tipo := 'C';
      end
      else
      begin
        pr.cfg_tipo := 'F';
      end;
      pr.cfg_codice := v_frn_codice.text;
      pr.showmodal;
    end;
    if pr.riferimento <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('codice_abi').asstring := pr.codice_abi;
        tabella.fieldbyname('codice_cab').asstring := pr.codice_cab;
        tabella.fieldbyname('conto_corrente').asstring := pr.conto_corrente;
        tabella.fieldbyname('cin').asstring := pr.cin;
        tabella.fieldbyname('iban').asstring := pr.iban;
        tabella.fieldbyname('bic').asstring := pr.bic;
        codice_abi_controllo(false);
        codice_cab_controllo(false);
      end;
    end;
    pr.free;
  end;
end;

procedure TGESACQ.v_art_codiceKeyDown(Sender: TObject;
  var
  Key: Word;
  Shift:
  TShiftState);
var
  pr: timpalf;
  pr1: tanaequ;
  pr2: tprzacq;
  pr3: tultprz;
  art_codice, frn_codice: string;
  arfacq: tarfacq;
  arcven: tarcven;
  codice_archivio: variant;
  rda: tmyquery_go;
begin
  inherited;
  if (key = vk_f8) and (shift = [ssctrl]) then
  begin
    pr1 := Tanaequ.Create(nil);
    if pr1.esegui_form then
    begin
      pr1.art_codice := v_art_codice.text;
      pr1.tma_codice := tabella_righe.fieldbyname('tma_codice').asstring;
      pr1.showmodal;
      if pr1.art_codice_assegnato <> '' then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('art_codice').asstring := pr1.art_codice_assegnato;
        end;
        selectnext(v_art_codice, true, true);
      end;
    end;
    pr1.free;
  end;

  if (key = vk_f8) and (shift = [ssalt]) and
    ((tipo_documento = 'ddt') or (tipo_documento = 'fattura') or (tipo_documento = 'ddt clienti') or
    (tipo_documento = 'preventivo') or (tipo_documento = 'ordine')) then
  begin
    nca.art_codice := v_art_codice.text;
    nca.tnc_codice := '';

    if esiste_righe then
    begin
      nca.modulo_origine := 'acq';
      nca.documento_origine := tipo_documento;
      nca.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
      nca.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
    end
    else
    begin
      nca.modulo_origine := '';
      nca.documento_origine := '';
      nca.doc_progressivo_origine := 0;
      nca.doc_riga_origine := 0;
    end;
    nca.assegna_nct;

    if nca.progressivo <> 0 then
    begin
      progressivo_nca := nca.progressivo;
      tac_codice_nca := nca.tac_codice;
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('art_codice').asstring := nca.art_codice;
        tabella_righe.fieldbyname('quantita').asfloat := nca.quantita_non_conforme;
      end;
    end
    else
    begin
      progressivo_nca := 0;
      tac_codice_nca := '';
    end;
  end;

  if (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
  begin
    if (key = vk_f9) and (shift = [ssctrl]) then
    begin
      pr2 := Tprzacq.Create(nil);
      if pr2.esegui_form then
      begin
        pr2.art_codice := v_art_codice.text;
        pr2.tma_codice := tabella_righe.fieldbyname('tma_codice').asstring;
        pr2.showmodal;
        if pr2.art_codice_selezionato <> '' then
        begin
          if (tipo_documento = 'ordine') and (pr2.frn_codice_selezionato <> v_frn_codice.text) then
          begin
            frn_codice := pr2.frn_codice_selezionato;
            art_codice := pr2.art_codice_selezionato;
            if messaggio(300, 'vuoi generare di una richiesta di acquisto per il fornitore ' +
              pr2.frn_codice_selezionato) = 1 then
            begin
              pr := Timpalf.Create(nil);
              try
                pr.v_form_caption := 'richiesta quantità da ordinare';
                pr.v_descrizione_caption := 'quantità da ordinare';
                pr.v_width_campo := 15;
                pr.valore_passato := 0;
                pr.tipo_campo := 'numero';
                pr.formattare := true;
                pr.decimali := decimali_quantita_art(art_codice);
                pr.ShowModal;

                if pr.valore_passato <> 0 then
                begin
                  rda := tmyquery_go.create(nil);
                  rda.connection := arc.arcdit;
                  rda.sql.add('select *');
                  rda.sql.add('from rda');
                  rda.sql.add('where progressivo = :progressivo');
                  try
                    rda.open;
                    rda.append;

                    rda.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(rda.connection), 'rda_progressivo');
                    read_tabella(arc.arcdit, 'tma', 'codice', tabella_righe.fieldbyname('tma_codice').asstring, 'tma_codice_carorda_opr');
                    if archivio.fieldbyname('tma_codice_carorda_opr').asstring <> '' then
                    begin
                      rda.fieldbyname('tma_codice_richiesta').asstring := archivio.fieldbyname('tma_codice_carorda_opr').asstring;
                    end
                    else
                    begin
                      rda.fieldbyname('tma_codice_richiesta').asstring := tabella_righe.fieldbyname('tma_codice').asstring;
                    end;

                    rda.fieldbyname('art_codice_richiesta').asstring := art_codice;
                    rda.fieldbyname('frn_codice_richiesta').asstring := frn_codice;
                    rda.fieldbyname('quantita_richiesta').asfloat := pr.valore_passato;
                    rda.fieldbyname('tipo_richiesta').asstring := 'ordini fornitori';
                    rda.fieldbyname('utn_codice_richiesta').asstring := utente;

                    rda.post;
                  finally
                    rda.free;
                  end;
                end;
              finally
                freeandnil(pr);
              end;
            end;
          end;
        end;
      end;
      pr2.free;
    end;
  end;

  if (key = vk_f11) and (shift = [ssctrl]) then
  begin
    pr3 := Tultprz.Create(nil);
    if pr3.esegui_form then
    begin
      pr3.tipo_modulo := 'acquisti';
      pr3.programma_chiamante := programma;
      pr3.cfg_codice := v_frn_codice.text;
      pr3.art_codice := v_art_codice.text;
      pr3.tipo_documento := tipo_documento;
      pr3.progressivo := v_progressivo.value;
      pr3.riga := tabella_righe.fieldbyname('riga').asinteger;
      pr3.modificabile := true;
      if (tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti') or (tipo_documento = 'fattura') or (tipo_documento = 'nota credito') or
        (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
      begin
        if tabella.fieldbyname('situazione').asstring = 'consolidato' then
        begin
          pr3.modificabile := false;
        end;
      end;
      pr3.showmodal;
      if pr3.modificato then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('prezzo').asfloat := pr3.prezzo;
          tabella_righe.fieldbyname('tsm_codice').asstring := pr3.tsm_codice;
          tabella_righe.fieldbyname('tsm_codice_art').asstring := pr3.tsm_codice_art;
        end;
        calcola_importo;
      end;
    end;
    pr3.free;
  end;

  if (key = vk_f9) and (shift = []) then
  begin
    if tipo_documento = 'ddt clienti' then
    begin
      arcven := tarcven.create(nil);
      arcven.cli_codice := v_frn_codice.text;
      arcven.codice_articolo_cliente := v_art_codice.text;
      arcven.showmodal;

      if arcven.art_codice <> '' then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('art_codice').asstring := arcven.art_codice;
        end;
      end;
      arcven.free;
    end
    else
    begin
      arfacq := tarfacq.create(nil);
      arfacq.frn_codice := v_frn_codice.text;
      arfacq.codice_articolo_fornitore := v_art_codice.text;
      arfacq.showmodal;

      if arfacq.art_codice <> '' then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('art_codice').asstring := arfacq.art_codice;
          if arfacq.codice_articolo_fornitore <> arfacq.art_codice then
          begin
            tabella_righe.fieldbyname('codice_articolo_fornitore').asstring := arfacq.codice_articolo_fornitore;
          end;
        end;
      end;
      arfacq.free;
    end;
  end;

  if (key = vk_f7) and (shift = [ssctrl]) and (arc.dit.fieldbyname('art_codice_potenziale').asstring <> '') then
  begin
    if (copy(tipo_documento, 1, 10) = 'preventivo') and (tabella_righe.fieldbyname('situazione').asstring = 'inserito') then
    begin
      codice_archivio := '';
      esegui_visarc(arc.arcdit, 'ARTP', 'ARTP', codice_archivio, '', '', '', '', '', '');
      if codice_archivio <> '' then
      begin
        if tabella_edit(tabella_righe) then
        begin
          artp.close;
          artp.parambyname('codice').asstring := codice_archivio;
          artp.open;
          tabella_righe.fieldbyname('art_codice').asstring := arc.dit.fieldbyname('art_codice_potenziale').asstring;
          tabella_righe.fieldbyname('artp_codice').asstring := artp.fieldbyname('codice').asstring;
        end;
      end;
    end;
  end;

  if (key = vk_f2) and (shift = [ssctrl]) then
  begin
    codice_archivio := vararrayof(['', '']);
    if tipo_documento = 'ddt clienti' then
    begin
      esegui_visarc(arc.arcdit, 'ARC', 'ARCLCLI', codice_archivio, tabella.fieldbyname('frn_codice').asstring, '', '', '', '', '');
    end
    else
    begin
      esegui_visarc(arc.arcdit, 'ARF', 'ARFFRN', codice_archivio, tabella.fieldbyname('frn_codice').asstring, '', '', '', '', '');
    end;
    if codice_archivio[1] <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('art_codice').asstring := codice_archivio[1];
      end;
    end;
    key := 0;
    shift := [];
  end;
end;

procedure TGESACQ.v_descrizione2_rigaEnter(Sender: TObject);
begin
  inherited;
end;

// fattura differita

procedure TGESACQ.assegna_righe(accoda: word);
begin
  if tipo_documento = 'fattura differita' then
  begin
    inserimento_fattura_differita := true;
  end
  else
  begin
    inserimento_fattura_differita := false;
  end;

  inherited;
end;
// fine fattura differita

procedure TGESACQ.v_distinta_baseClick(Sender: TObject);
var
  pr: tscedsb;

  i, riga: word;
  quantita: double;
  tipo_movimento, cms_codice, cmt_codice: string;
  data_prezzo, data_consegna: tdatetime;
begin
  inherited;
  pr := Tscedsb.Create(nil);
  if pr.esegui_form then
  begin
    pr.art_codice := v_art_codice.text;
    pr.data_documento := v_data_documento.date;
    sce_lista_multiselezione.clear;
    sce_lista_multiselezione_quantita.clear;
    pr.lista_multiselezione := sce_lista_multiselezione;
    pr.lista_multiselezione_quantita := sce_lista_multiselezione_quantita;
    pr.showmodal;

    if sce_lista_multiselezione.count > 0 then
    begin
      quantita := v_quantita.value;
      tipo_movimento := v_tipo_movimento.text;
      data_consegna := v_data_consegna_righe.date;
      cms_codice := tabella_righe.fieldbyname('cms_codice').asstring;
      cmt_codice := tabella_righe.fieldbyname('tipologia').asstring;

      query_presenti_righe.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
      query_presenti_righe.close;
      query_presenti_righe.open;
      i := trunc(query_presenti_righe.fieldbyname('ultima_riga').asinteger / incremento_righe);
      riga := i * incremento_righe;

      if pr.modalita_inserimento = 0 then
      begin
        riga := riga + incremento_righe;

        tabella_righe.append;

        tabella_righe.fieldbyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asfloat;
        tabella_righe.fieldbyname('riga').asinteger := riga;

        tabella_righe.fieldbyname('note').asstring := '__________COMPONENTI__________';

        for i := 0 to sce_lista_multiselezione.count - 1 do
        begin
          read_tabella(arc.arcdit, 'art', 'codice', sce_lista_multiselezione[i]);
          tabella_righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring + #13 +
            sce_lista_multiselezione[i] + ' - ' +
            archivio.fieldbyname('descrizione1').asstring + ' ' +
            archivio.fieldbyname('descrizione2').asstring + ' ' +
            archivio.fieldbyname('tum_codice').asstring + ' ' +
            formatfloat(formato_display_quantita, arrotonda(quantita * strtofloat(sce_lista_multiselezione_quantita[i]), 4));
        end;

        tabella_righe.post;
      end
      else
      begin
        for i := 0 to sce_lista_multiselezione.count - 1 do
        begin
          riga := riga + incremento_righe;

          tabella_righe.append;

          tabella_righe.fieldbyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asfloat;
          tabella_righe.fieldbyname('riga').asinteger := riga;
          tabella_righe.fieldbyname('art_codice').asstring := sce_lista_multiselezione[i];
          read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring);
          tabella_righe.fieldbyname('descrizione1').asstring := archivio.fieldbyname('descrizione1').asstring;
          tabella_righe.fieldbyname('descrizione2').asstring := archivio.fieldbyname('descrizione2').asstring;

          cifre_decimali_quantita := decimali_quantita_art(tabella_righe.fieldbyname('art_codice').asstring);
          tabella_righe.fieldbyname('quantita').asfloat := arrotonda
            (strtofloat(sce_lista_multiselezione_quantita[i]) * quantita, cifre_decimali_quantita);

          read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring);
          if tipo_documento <> 'ddt clienti' then
          begin
            cerca_prezzo(tipo_prezzo);

            tabella_righe.fieldbyname('prezzo').asfloat := prezzo;
            tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;
            tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
          end;

          tabella_righe.fieldbyname('tipo_movimento').asstring := tipo_movimento;
          tabella_righe.fieldbyname('data_consegna').asdatetime := data_consegna;
          if data_consegna = 0 then
          begin
            tabella_righe.fieldbyname('data_consegna').asstring := '';
          end;
          tabella_righe.fieldbyname('cms_codice').asstring := cms_codice;
          tabella_righe.fieldbyname('tipologia').asstring := cmt_codice;

          art.params[0].asstring := tabella_righe.fieldbyname('art_codice').asstring;
          art.close;
          art.open;

          assegna_tiv_codice_righe;
          assegna_gen_codice;
          calcola_importo;

          tabella_righe.post;
        end;
      end;
    end;
  end;
  pr.free;
end;

procedure TGESACQ.assegna_gestioni;
begin
  if trim(v_art_codice.text) <> '' then
  begin
    if gestione_descrizione1 = 'no' then
    begin
      v_descrizione1_riga.tabstop := false;
    end
    else
    begin
      v_descrizione1_riga.tabstop := true;
    end;

    if gestione_descrizione2 = 'no' then
    begin
      v_descrizione2_riga.tabstop := false;
    end
    else
    begin
      v_descrizione2_riga.tabstop := true;
    end;

    if gestione_numero_colli = 'no' then
    begin
      v_numero_colli_riga.tabstop := false;
    end
    else
    begin
      v_numero_colli_riga.tabstop := true;
    end;

    if gestione_numero_confezioni = 'no' then
    begin
      v_numero_confezioni.tabstop := false;
    end
    else
    begin
      v_numero_confezioni.tabstop := true;
    end;

    if gestione_tum_codice = 'no' then
    begin
      v_tum_codice.tabstop := false;
    end
    else
    begin
      v_tum_codice.tabstop := true;
    end;

    if gestione_quantita = 'no' then
    begin
      v_quantita.tabstop := false;
    end
    else
    begin
      v_quantita.tabstop := true;
    end;

    if gestione_prezzo = 'no' then
    begin
      v_prezzo.tabstop := false;
    end
    else
    begin
      v_prezzo.tabstop := true;
    end;

    if gestione_sconto_fornitore = 'no' then
    begin
      v_tsm_codice_righe.tabstop := false;
      v_tsm_codice_art.tabstop := false;
      v_importo_sconto_righe.tabstop := false;
    end
    else
    begin
      v_tsm_codice_righe.tabstop := true;
      v_tsm_codice_art.tabstop := true;
      v_importo_sconto_righe.tabstop := true;
    end;

    if gestione_tipo_movimento = 'no' then
    begin
      v_tipo_movimento.tabstop := false;
    end
    else
    begin
      v_tipo_movimento.tabstop := true;
    end;

    if gestione_importo = 'no' then
    begin
      v_importo.tabstop := false;
    end
    else
    begin
      v_importo.tabstop := true;
    end;

    if gestione_data_consegna = 'no' then
    begin
      v_data_consegna_righe.tabstop := false;
    end
    else
    begin
      v_data_consegna_righe.tabstop := true;
    end;
  end
  else
  begin
    v_descrizione1_riga.tabstop := true;
    v_descrizione2_riga.tabstop := true;
    v_numero_colli_riga.tabstop := false;
    v_numero_confezioni.tabstop := false;
    v_tum_codice.tabstop := false;
    v_quantita.tabstop := false;
    v_tsm_codice_righe.tabstop := false;
    v_tsm_codice_art.tabstop := false;
    v_prezzo.tabstop := false;
    v_tipo_movimento.tabstop := false;
    v_importo.tabstop := false;
    v_data_consegna_righe.tabstop := false;
  end;
end;

procedure TGESACQ.v_annulla_documentoClick(Sender: TObject);
begin
  inherited;
  tabella_righe.close;
  tabella_righe.open;
  while not tabella_righe.eof do
  begin
    if tabella_righe.fieldbyname('situazione').asstring = 'inserito' then
    begin
      annulla_riga_documento;
    end;

    tabella_righe.next;
  end;
end;

procedure TGESACQ.v_annulla_riga_documentoClick(Sender: TObject);
begin
  inherited;

  annulla_riga_documento;
end;

procedure TGESACQ.annulla_riga_documento;
var
  conferma_annullamento: boolean;
begin
  inherited;
  if messaggio(304, 'conferma dell''annullamento della riga del documento' + #13 + #13 +
    'la riga annullata non è più ripristinabile') = 1 then
  begin
    conferma_annullamento := true;

    if (tipo_documento = 'ordine') and (tabella_righe.fieldbyname('ovr_tipo').asstring = 'cliente') and
      (tabella_righe.fieldbyname('ovr_progressivo').asfloat <> 0) then
    begin
      if messaggio(300, 'la riga deriva da un ordine cliente' + #13 +
        'la si vuole effettivamente annullare?') <> 1 then
      begin
        conferma_annullamento := false;
      end;
    end
    else if (tipo_documento = 'ordine') and (tabella_righe.fieldbyname('ovr_tipo').asstring = 'produzione') and
      (tabella_righe.fieldbyname('ovr_progressivo').asfloat <> 0) then
    begin
      if messaggio(300, 'la riga deriva da un ordine di produzione' + #13 +
        'la si vuole effettivamente annullare?') <> 1 then
      begin
        conferma_annullamento := false;
      end;
    end;

    if conferma_annullamento then
    begin
      tabella_righe.edit;
      tabella_righe.fieldbyname('situazione').asstring := 'annullato';
      tabella_righe.fieldbyname('importo').asfloat := 0;
      tabella_righe.fieldbyname('importo_euro').asfloat := 0;
      tabella_righe.fieldbyname('importo_iva').asfloat := 0;
      tabella_righe.fieldbyname('importo_iva_euro').asfloat := 0;
      aggiorna_totali_testata := true;
      tabella_righe.post;
    end;

    aggiorna_rda;
  end;
end;

procedure TGESACQ.v_esistenzaClick(Sender: TObject);
begin
  inherited;
  esegui_esistenza;
end;

procedure TGESACQ.v_tva_codiceChange(Sender: TObject);
begin
  inherited;
  if v_tva_codice.text = divisa_di_conto then
  begin
    v_cambio.enabled := false;
    v_cambio.color := clbtnface;
  end
  else
  begin
    v_cambio.enabled := true;
    v_cambio.color := clwindow;
  end;
end;

procedure TGESACQ.tabella_dsStateChange(Sender: TObject);
begin
  inherited;
  if tabella_ds.State = dsbrowse then
  begin
    abilita_storni(true);
  end
  else
  begin
    abilita_storni(false);
  end;
end;

procedure TGESACQ.tabella_righeAfterScroll(DataSet: TDataSet);
begin
  inherited;

  if v_griglia_righe.focused and not art.isempty then
  begin
    if art.fieldbyname('tgl_codice').asstring <> '' then
    begin
      v_dettaglio_taglie.enabled := true;
    end
    else
    begin
      v_dettaglio_taglie.enabled := false;
    end;
  end;
end;

procedure TGESACQ.tabella_righeBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if not esiste_righe then
  begin
    cancella_qtatgl;
  end;
end;

procedure TGESACQ.cancella_qtatgl;
var
  canc_qtatgl: tmyquery_go;
begin
  if arc.dit.fieldbyname('gestione_taglie').asstring = 'si' then
  begin
    canc_qtatgl := tmyquery_go.create(nil);
    canc_qtatgl.connection := arc.arcdit;
    canc_qtatgl.sql.add('delete from qtatgl where');
    canc_qtatgl.sql.add('modulo = ''acquisti'' and tipo_documento = :tipo_documento');
    canc_qtatgl.sql.add('and progressivo = :progressivo and riga = :riga');

    canc_qtatgl.parambyname('tipo_documento').asstring := tipo_documento;
    canc_qtatgl.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
    canc_qtatgl.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;

    try
      canc_qtatgl.execsql;
    finally
      canc_qtatgl.free;
    end;
  end;
end;

procedure TGESACQ.abilita_bottoni_analitica(flag: boolean);
begin
  if flag and esiste and (analitica = 'si') then
  begin
    v_analitica_spese_01.enabled := false;
    v_analitica_spese_02.enabled := false;
    v_analitica_spese_03.enabled := false;
    v_analitica_spese_04.enabled := false;
    v_analitica_sconto_cassa.enabled := false;
    v_analitica_sconto_finale.enabled := false;

    if (tabella.fieldbyname('importo_spese_01').asfloat <> 0) and (tabella.fieldbyname('gen_codice_spese_01').asstring <> '') then
    begin
      v_analitica_spese_01.enabled := true;
    end;
    if (tabella.fieldbyname('importo_spese_02').asfloat <> 0) and (tabella.fieldbyname('gen_codice_spese_02').asstring <> '') then
    begin
      v_analitica_spese_02.enabled := true;
    end;
    if (tabella.fieldbyname('importo_spese_03').asfloat <> 0) and (tabella.fieldbyname('gen_codice_spese_03').asstring <> '') then
    begin
      v_analitica_spese_03.enabled := true;
    end;
    if (tabella.fieldbyname('importo_spese_04').asfloat <> 0) and (tabella.fieldbyname('gen_codice_spese_04').asstring <> '') then
    begin
      v_analitica_spese_04.enabled := true;
    end;
    if (tabella.fieldbyname('importo_sconto_finale').asfloat + tabella.fieldbyname('importo_sconto').asfloat) <> 0 then
    begin
      v_analitica_sconto_finale.enabled := true;
    end;
    if tabella.fieldbyname('importo_sconto_cassa').asfloat <> 0 then
    begin
      v_analitica_sconto_cassa.enabled := true;
    end;
  end
  else
  begin
    v_analitica_spese_01.enabled := false;
    v_analitica_spese_02.enabled := false;
    v_analitica_spese_03.enabled := false;
    v_analitica_spese_04.enabled := false;
    v_analitica_sconto_cassa.enabled := false;
    v_analitica_sconto_finale.enabled := false;
  end;
end;

procedure TGESACQ.v_tsm_codice_artExit(Sender: TObject);
begin
  inherited;
  if v_tsm_codice_art.enabled then
  begin
    if controllo then
    begin
      assegna_valore_tsm_codice_righe;
      tsm_codice_art_controllo(true);
      if variato_stringa <> v_tsm_codice_art.text then
      begin
        calcola_importo;
      end;
    end;
  end;
end;

procedure TGESACQ.v_tsm_codice_artKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_f5) and (shift = [ssctrl]) then
  begin
    arc.sconti_percentuale(screen.activecontrol);
    selectnext(screen.activecontrol, true, true);
  end;
end;

procedure TGESACQ.tsm_codice_art_controllo(blocco: boolean);
begin
  tabella_controllo(true, tsm_art, v_tsm_codice_art, blocco, nil, nil, tabella_righe);
end;

procedure TGESACQ.v_evadi_riga_documentoClick(Sender: TObject);
begin
  inherited;
  if messaggio(304, 'conferma dell''evasione della riga del documento a saldo') = 1 then
  begin
    tabella_righe.edit;

    tabella_righe.fieldbyname('situazione').asstring := 'evaso';

    tabella_righe.post;

    aggiorna_totali_testata := true;

    tabella.refresh;

    abilita_bottoni(true);
  end;
end;

procedure TGESACQ.v_crea_listino_fornitoreClick(Sender: TObject);
begin
  inherited;

  crea_listino_fornitore_acq;
end;

procedure TGESACQ.crea_listino_fornitore_acq;
var
  prezzo, prezzo_base: double;
  tipo_listino: string;
begin
  tipo_listino := '';
  codice_archivio := '';

  try
    prezzo := tabella_righe.fieldbyname('prezzo').asfloat;
  except
    prezzo := 0;
  end;

  try
    prezzo_base := tabella_righe.fieldbyname('prezzo').asfloat * tabella_righe.fieldbyname('quantita').asfloat /
      tabella_righe.fieldbyname('tum_quantita_base').asfloat;
  except
    prezzo_base := 0;
  end;

  if crea_listino_fornitore(tabella.fieldbyname('frn_codice').asstring,
    tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('tsm_codice').asstring,
    tabella_righe.fieldbyname('tsm_codice_art').asstring, prezzo, prezzo_base,
    tipo_listino, codice_archivio, tabella.fieldbyname('data_registrazione').asdatetime,
    tabella.fieldbyname('tla_codice').asstring, aggiorna_listini_acquisti, aggiorna_listini_vendita,
    tda.fieldbyname('usa_prezzo_lordo_listini_vendita').asstring) then
  begin
    if tda.fieldbyname('esegui_gestione_listini_acquisto').asstring = 'si' then
    begin
      if tipo_listino = 'fls' then
      begin
        parametri_extra_programma_chiamato[0] := 'F';
        parametri_extra_programma_chiamato[1] := tabella.fieldbyname('frn_codice').asstring;
        parametri_extra_programma_chiamato[2] := tabella_righe.fieldbyname('art_codice').asstring;
        esegui_programma('GESFLS', codice_archivio, true);
      end
      else if tipo_listino = 'lsa' then
      begin
        esegui_programma('GESLSA', codice_archivio, true);
      end;
    end;
  end;
end;

procedure TGESACQ.v_crea_listino_venditaClick(Sender: TObject);
var
  pr: tvislsv;
begin
  inherited;

  pr := Tvislsv.Create(nil);
  if pr.esegui_form then
  begin
    pr.art_codice := v_art_codice.text;
    pr.data_validita := now;
    pr.prezzo := tabella_righe.fieldbyname('prezzo').asfloat;
    pr.cifre_decimali_prezzo := cifre_decimali_prezzo_acq;
    pr.tsm_codice := tabella_righe.fieldbyname('tsm_codice').asstring;
    pr.tsm_codice_art := tabella_righe.fieldbyname('tsm_codice_art').asstring;
    pr.aggiorna := true;
    pr.modificabile := false;
    pr.sconto_imponibile_lordo := sconto_imponibile_lordo;
    pr.tipo_documento := 'acquisti';
    pr.listino_con_iva := tabella.fieldbyname('listino_con_iva').asstring;
    pr.prezzo_netto := tda.fieldbyname('usa_prezzo_lordo_listini_vendita').asstring = 'no';
    if tabella_righe.fieldbyname('tum_quantita_base').asfloat <> 0 then
    begin
      pr.coefficiente_tum := tabella_righe.fieldbyname('quantita').asfloat /
        tabella_righe.fieldbyname('tum_quantita_base').asfloat;
    end
    else
    begin
      pr.coefficiente_tum := 1;
    end;
    pr.showmodal;
  end;
  pr.free;
end;

procedure TGESACQ.v_indirizzoEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_indirizzo.text;
  visarc_filtro_01 := v_frn_codice.text;
end;

procedure TGESACQ.v_indirizzoExit(Sender: TObject);
begin
  inherited;
  indirizzo_controllo(true);
  if controllo then
  begin
    if trim(v_indirizzo.text) <> variato_stringa then
    begin
      if tipo_documento = 'ddt clienti' then
      begin
        assegna_ind;
      end
      else
      begin
        assegna_inf;
        assegna_tsp_codice;
        assegna_tpo_codice;
      end;
    end;
  end;
end;

procedure TGESACQ.v_intra_testataClick(Sender: TObject);
begin
  inherited;
  if v_intra_testata.focused and v_intra_testata.checked then
  begin
    disabilita_campo(v_reverse_change);
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('reverse_change').asstring := 'no';
    end;
  end
  else
  begin
    if tipo_documento <> 'ddt clienti' then
    begin
      abilita_campo(v_reverse_change);
    end;
  end;
end;

procedure TGESACQ.indirizzo_controllo(blocco: boolean);
begin
  if v_indirizzo.enabled then
  begin
    if tipo_documento = 'ddt clienti' then
    begin
      tabella_controllo(true, ind, v_frn_codice, v_indirizzo, blocco, tab_control, tab_testata_destinazione, tabella);
    end
    else
    begin
      tabella_controllo(true, inf, v_frn_codice, v_indirizzo, blocco, tab_control, tab_testata_destinazione, tabella);
    end;
  end;
end;

procedure TGESACQ.assegna_indirizzo;
var
  cli_codice, ind_codice: variant;
begin
  if tipo_documento = 'ddt clienti' then
  begin
    if (read_tabella(arc.arcdit, 'ind', 'cli_codice;indirizzo', vararrayof([v_frn_codice.text, v_frn_codice.text]))) and
      (archivio.fieldbyname('obsoleto').asstring = 'no') then
    begin
      if tabella.fieldbyname('indirizzo').asstring <> archivio.fieldbyname('indirizzo').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('indirizzo').asstring := archivio.fieldbyname('indirizzo').asstring;
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('indirizzo').asstring <> '' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('indirizzo').asstring := '';
        end;
      end;
    end;
    assegna_ind;
  end
  else
  begin
    if (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
    begin
      if read_tabella(arc.arcdit, 'inf', 'frn_codice;indirizzo', vararrayof([v_frn_codice.text, frn.fieldbyname('inf_codice').asstring])) then
      begin
        if tabella.fieldbyname('indirizzo').asstring <> archivio.fieldbyname('indirizzo').asstring then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('indirizzo').asstring := archivio.fieldbyname('indirizzo').asstring;
          end;
        end;
      end
      else if read_tabella(arc.arcdit, 'inf', 'frn_codice;indirizzo', vararrayof([v_frn_codice.text, v_frn_codice.text])) then
      begin
        if tabella.fieldbyname('indirizzo').asstring <> archivio.fieldbyname('indirizzo').asstring then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('indirizzo').asstring := archivio.fieldbyname('indirizzo').asstring;
          end;
        end;
      end
      else
      begin
        if tabella.fieldbyname('indirizzo').asstring <> '' then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('indirizzo').asstring := '';
          end;
        end;
      end;
    end;
    assegna_inf;
  end;
end;

procedure TGESACQ.assegna_inf;
begin
  if (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
  begin
    inf.params[0].asstring := v_frn_codice.text;
    inf.params[1].asstring := v_indirizzo.text;
  end
  else
  begin
    inf.params[0].asstring := '';
    inf.params[1].asstring := '';
  end;
  inf.close;
  inf.open;
  if not inf.eof then
  begin
    if tabella.fieldbyname('descrizione1').asstring <> inf.fieldbyname('descrizione1').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('descrizione1').asstring := inf.fieldbyname('descrizione1').asstring;
      end;
    end;

    if tabella.fieldbyname('descrizione2').asstring <> inf.fieldbyname('descrizione2').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('descrizione2').asstring := inf.fieldbyname('descrizione2').asstring;
      end;
    end;

    if tabella.fieldbyname('via').asstring <> inf.fieldbyname('via').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('via').asstring := inf.fieldbyname('via').asstring;
      end;
    end;

    if tabella.fieldbyname('cap').asstring <> inf.fieldbyname('cap').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cap').asstring := inf.fieldbyname('cap').asstring;
      end;
    end;

    if tabella.fieldbyname('citta').asstring <> inf.fieldbyname('citta').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('citta').asstring := inf.fieldbyname('citta').asstring;
      end;
    end;

    if tabella.fieldbyname('provincia').asstring <> inf.fieldbyname('provincia').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('provincia').asstring := inf.fieldbyname('provincia').asstring;
      end;
    end;

    if tabella.fieldbyname('tna_codice').asstring <> inf.fieldbyname('tna_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tna_codice').asstring := inf.fieldbyname('tna_codice').asstring;
      end;
      tna_codice_controllo(false);
    end;

    assegna_tsp_codice;
    assegna_tpo_codice;
  end
  else
  begin
    if tabella.fieldbyname('descrizione1').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('descrizione1').asstring := '';
      end;
    end;

    if tabella.fieldbyname('descrizione2').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('descrizione2').asstring := '';
      end;
    end;

    if tabella.fieldbyname('via').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('via').asstring := '';
      end;
    end;

    if tabella.fieldbyname('cap').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cap').asstring := '';
      end;
    end;

    if tabella.fieldbyname('citta').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('citta').asstring := '';
      end;
    end;

    if tabella.fieldbyname('provincia').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('provincia').asstring := '';
      end;
    end;

    if tabella.fieldbyname('tna_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tna_codice').asstring := '';
        tna_codice_controllo(false);
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_ind;
begin
  ind.close;
  ind.params[0].asstring := tabella.fieldbyname('frn_codice').asstring;
  ind.params[1].asstring := tabella.fieldbyname('indirizzo').asstring;
  ind.open;
  if not ind.eof then
  begin
    if tabella.fieldbyname('descrizione1').asstring <> ind.fieldbyname('descrizione1').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('descrizione1').asstring := ind.fieldbyname('descrizione1').asstring;
      end;
    end;

    if tabella.fieldbyname('descrizione2').asstring <> ind.fieldbyname('descrizione2').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('descrizione2').asstring := ind.fieldbyname('descrizione2').asstring;
      end;
    end;

    if tabella.fieldbyname('via').asstring <> ind.fieldbyname('via').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('via').asstring := ind.fieldbyname('via').asstring;
      end;
    end;

    if tabella.fieldbyname('cap').asstring <> ind.fieldbyname('cap').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cap').asstring := ind.fieldbyname('cap').asstring;
      end;
    end;

    if tabella.fieldbyname('citta').asstring <> ind.fieldbyname('citta').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('citta').asstring := ind.fieldbyname('citta').asstring;
      end;
    end;

    if tabella.fieldbyname('provincia').asstring <> ind.fieldbyname('provincia').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('provincia').asstring := ind.fieldbyname('provincia').asstring;
      end;
    end;

    if tabella.fieldbyname('tna_codice').asstring <> ind.fieldbyname('tna_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tna_codice').asstring := ind.fieldbyname('tna_codice').asstring;
        tna_codice_controllo(false);
      end;
    end;
  end;
end;

procedure TGESACQ.v_tna_codiceExit(Sender: TObject);
begin
  inherited;
  tna_codice_controllo(true);
end;

procedure TGESACQ.tna_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tna, v_tna_codice, blocco, tab_control, tab_testata_destinazione, tabella);
end;

function TGESACQ.controllo_ordine_produzione: boolean;
begin
  result := false;
  if (tabella_righe.fieldbyname('art_codice').asstring <> '') and (tabella.fieldbyname('situazione').asstring = 'evaso') then
  begin
    riga_documento_evaso.sql.clear;
    riga_documento_evaso.sql.add('select * from oar');
    riga_documento_evaso.sql.add('where progressivo = :progressivo and riga = :riga');
    riga_documento_evaso.params[0].asfloat := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    riga_documento_evaso.params[1].asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
    riga_documento_evaso.close;
    riga_documento_evaso.open;
    if not riga_documento_evaso.eof then
    begin
      if riga_documento_evaso.fieldbyname('documento_origine').asstring = 'produzione' then
      begin
        messaggio(200, 'l''ordine da cui deriva il documento è stato emesso a fronte dell''ordine di produzione' + #13 +
          'con progressivo: ' + riga_documento_evaso.fieldbyname('doc_progressivo_origine').asstring + #13 +
          'per aggiornare correttamente tutti i movimenti collegati eseguire l''operazione di storno dell''evasione del documento');
        result := true;
      end;
    end;
  end;
end;

procedure TGESACQ.annulla_dataset;
begin
  inherited;

  esistenza_deposito_ds.dataset := nil;
  esistenza_totale_ds.dataset := nil;
end;

procedure TGESACQ.assegna_dataset;
begin
  inherited;

  esistenza_deposito_ds.dataset := esistenza_deposito;
  esistenza_totale_ds.dataset := esistenza_totale;
end;

procedure TGESACQ.tool_assegna_immagineClick(Sender: TObject);
var
  tipo_archivio: string;
begin
  inherited;
  if v_progressivo.value <> 0 then
  begin
    tipo_archivio := tabella_tablename;

    if read_tabella(arc.arcdit, 'ard', 'tipo_archivio_go;progressivo_archivio_go', vararrayof([tipo_archivio, v_progressivo.value])) then
    begin
      messaggio(100, 'è già stata associata un''immagine a questo documento' + #13 +
        'per eseguire una nuova assegnazione bisogna annullare la vecchia');
      parametri_extra_programma_chiamato[0] := '';
      parametri_extra_programma_chiamato[1] := 0;
      esegui_programma('GESARD', archivio.fieldbyname('progressivo').asfloat, true);
    end
    else
    begin
      parametri_extra_programma_chiamato[0] := tipo_archivio;
      parametri_extra_programma_chiamato[1] := v_progressivo.value;
      esegui_programma('GESARD', '', true);
    end;
  end;
end;

procedure TGESACQ.tool_visualizza_immagineClick(Sender: TObject);
var
  tipo_archivio: string;
begin
  inherited;

  tipo_archivio := tabella_tablename;

  if read_tabella(arc.arcdit, 'ard', 'tipo_archivio_go;progressivo_archivio_go', vararrayof([tipo_archivio, v_progressivo.value])) then
  begin
    esegui(archivio.fieldbyname('pathname').asstring);
  end
  else
  begin
    if messaggio(300, 'non esiste nessuna immagine associata a questo documento' + #13 +
      'è possibile eseguire una ricerca generica su tutti i tipi documento') = 1 then
    begin
      parametri_extra_programma_chiamato[0] := tabella.fieldbyname('data_documento').asdatetime;
      parametri_extra_programma_chiamato[1] := tabella.fieldbyname('numero_documento').asfloat;
      esegui_programma('SITARD', '', true);
    end;
  end;
end;

procedure TGESACQ.v_codice_articolo_fornitoreClick(Sender: TObject);
var
  pr: tcodartfr;
  codice_articolo_fornitore, descrizione_articolo_fornitore: string;
  arf: tmyquery_go;
begin
  inherited;
  arf := tmyquery_go.create(nil);
  arf.connection := arc.arcdit;
  arf.sql.add('select *');
  arf.sql.add('from arf');
  arf.sql.add('where frn_codice = :frn_codice and art_codice = :art_codice');

  codice_articolo_fornitore := '';
  descrizione_articolo_fornitore := '';

  try
    arf.params[0].asstring := trim(v_frn_codice.text);
    arf.params[1].asstring := trim(v_art_codice.text);
    arf.close;
    arf.open;
    codice_articolo_fornitore := arf.fieldbyname('codice_articolo_fornitore').asstring;
    descrizione_articolo_fornitore := arf.fieldbyname('descrizione_articolo_fornitore').asstring;

    pr := tcodartfr.create(nil);
    pr.codice_articolo := codice_articolo_fornitore;
    pr.descrizione_articolo := descrizione_articolo_fornitore;
    pr.showmodal;

    try
      if (pr.codice_articolo <> '') or (pr.descrizione_articolo <> '') then
      begin
        if arf.isempty then
        begin
          arf.append;
          arf.fieldbyname('frn_codice').asstring := trim(v_frn_codice.text);
          arf.fieldbyname('art_codice').asstring := trim(v_art_codice.text);
          arf.post;
          arf.close;
          arf.open;
        end;
        arf.edit;

        arf.fieldbyname('codice_articolo_fornitore').asstring := pr.codice_articolo;
        arf.fieldbyname('descrizione_articolo_fornitore').asstring := pr.descrizione_articolo;

        arf.post;
      end;
    finally
      pr.free;
    end;
  finally
    arf.free;
  end;
end;

procedure TGESACQ.esegui_controllo_esistenza;
begin
  if controllo_esistenza = 'si' then
  begin
    if (tmo.fieldbyname('esistenza').asstring = 'decrementa') and
      (esistenza_deposito.active) and (esistenza_deposito.fieldbyname('esistenza').asfloat <= 0) then
    begin
      messaggio(200, 'l''esistenza dell''articolo [' + formatfloat(formato_display_quantita, esistenza_deposito.fieldbyname('esistenza').asfloat) +
        '] nel deposito [' + trim(v_tma_codice.text) + '] è negativa o uguale a zero');
    end;
  end;
end;

procedure TGESACQ.v_tbp_codiceExit(Sender: TObject);
begin
  inherited;
  tbp_codice_controllo(true);
end;

procedure TGESACQ.tbp_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tbp, v_tbp_codice, blocco, tab_control, tab_testata_finanziario, tabella);
end;

procedure TGESACQ.assegna_contatto_commerciale;
var
  pr: tvisrif;
begin
  pr := tvisrif.create(nil);
  if pr.esegui_form then
  begin
    pr.tipo_nominativo := 'fornitore';
    pr.nom_codice := v_frn_codice.text;
    pr.showmodal;

    if pr.descrizione <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('contatto_commerciale').asstring := pr.descrizione;
      end;
    end;
  end;
  pr.free;
end;

procedure TGESACQ.FormKeyDown(Sender: TObject;
  var
  Key: Word;
  Shift:
  TShiftState);
var
  pr: tvisfatnc;
  pr4: tevarma;
  tcd_codice, lingua: string;
  i: word;
begin
  if (screen.activecontrol.parent = tab_testata_spedizione) and (key = vk_f11) and (shift = []) then
  begin
    totalizza_colli;
  end
  else if (screen.activecontrol = v_contatto_commerciale) and (key = vk_f4) and (shift = []) then
  begin
    assegna_contatto_commerciale;
  end
  else if (key = vk_f4) and (shift = []) and (screen.activecontrol = v_note) then
  begin
    key := 0;
    codice_archivio := '';
    esegui_visarc(arc.arcdit, 'TCD', 'TCD', codice_archivio, '', '', '', '', '', 'gestcd');
    if codice_archivio <> '' then
    begin
      read_tabella(arc.arcdit, 'nom', 'codice', tabella.fieldbyname('frn_codice').asstring);
      lingua := archivio.fieldbyname('lingua').asstring;
      tcd_codice := codice_archivio;
      if read_tabella(arc.arcdit, 'tcd', 'codice', tcd_codice) then
      begin
        if tabella_edit(tabella) then
        begin
          if lingua = lingua_nominativi then
          begin
            tabella.fieldbyname('note').asstring := tabella.fieldbyname('note').asstring + #13 +
              archivio.fieldbyname('note').asstring;
          end
          else if lingua = arc.lin.fieldbyname('lingua_01').asstring then
          begin
            tabella.fieldbyname('note').asstring := tabella.fieldbyname('note').asstring + #13 +
              archivio.fieldbyname('note_lingua_01').asstring;
          end
          else if lingua = arc.lin.fieldbyname('lingua_02').asstring then
          begin
            tabella.fieldbyname('note').asstring := tabella.fieldbyname('note').asstring + #13 +
              archivio.fieldbyname('note_lingua_02').asstring;
          end
          else if lingua = arc.lin.fieldbyname('lingua_03').asstring then
          begin
            tabella.fieldbyname('note').asstring := tabella.fieldbyname('note').asstring + #13 +
              archivio.fieldbyname('note_lingua_03').asstring;
          end
          else if lingua = arc.lin.fieldbyname('lingua_04').asstring then
          begin
            tabella.fieldbyname('note').asstring := tabella.fieldbyname('note').asstring + #13 +
              archivio.fieldbyname('note_lingua_04').asstring;
          end
          else if lingua = arc.lin.fieldbyname('lingua_05').asstring then
          begin
            tabella.fieldbyname('note').asstring := tabella.fieldbyname('note').asstring + #13 +
              archivio.fieldbyname('note_lingua_05').asstring;
          end;
        end;
      end;
    end;
  end
  else
  begin
    if (screen.activecontrol = v_griglia_righe) then
    begin
      if (key = vk_f1) and (shift = []) and v_analitica.enabled then
      begin
        esegui_analitica('righe');
      end
      else if (key = vk_f2) and (shift = []) and v_commesse.enabled then
      begin
        esegui_commesse;
      end
      else if (key = vk_f3) and (shift = []) and v_conto_terzi.enabled then
      begin
        v_conto_terziClick(nil);
      end
      else if (key = vk_f4) and (shift = []) and v_lotti.enabled then
      begin
        esegui_lotti;
      end
      else if (key = vk_f5) and (shift = []) and v_accessori.enabled then
      begin
        v_accessoriClick(nil);
      end
      else if (key = vk_f6) and (shift = []) and v_distinta_base.enabled then
      begin
        v_distinta_baseClick(nil);
      end
      else if (key = vk_f7) and (shift = []) and v_crea_listino_fornitore.enabled then
      begin
        key := 0;
        crea_listino_fornitore_acq;
      end
      else if (key = vk_f8) and (shift = []) and v_codice_articolo_fornitore.enabled then
      begin
        v_codice_articolo_fornitoreClick(nil);
      end
      else if (key = vk_f11) and (shift = []) and v_crea_listino_vendita.enabled then
      begin
        v_crea_listino_venditaClick(nil);
      end
      else if (key = vk_f10) and (shift = []) and v_lettore.enabled then
      begin
        v_lettoreClick(nil);
      end
      else if (key = vk_delete) and (shift = [ssctrl]) and (screen.activecontrol = v_griglia_righe) and
        (v_griglia_righe.selectedrows.count > 1) then
      begin
        if messaggio(304, 'conferma cancellazione') = 1 then
        begin
          for i := v_griglia_righe.selectedrows.count - 1 downto 0 do
          begin
            v_griglia_righe.datasource.dataset.gotobookmark(v_griglia_righe.selectedrows.items[i]);
            cancella_record_righe;
          end;
        end;
        v_griglia_righe.selectedrows.clear;
      end
      else
      begin
        inherited;
      end;
    end
    else
    begin
      if (screen.activecontrol = v_art_codice) and (key = vk_f9) and (shift = [ssalt]) and
        ((tipo_documento = 'ddt') or (tipo_documento = 'fattura') or (tipo_documento = 'nota credito') or (tipo_documento = 'ddt clienti')) and
        not esiste_righe and (tda.fieldbyname('rma').asstring = 'si') then
      begin
        pr4 := tevarma.create(nil);
        pr4.modulo := 'acquisti';
        pr4.tipo_documento := tipo_documento;
        pr4.cfg_codice := tabella.fieldbyname('frn_codice').asstring;
        pr4.art_codice := v_art_codice.text;
        pr4.showmodal;
        if pr4.progressivo <> 0 then
        begin
          progressivo_rma := pr4.progressivo;
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('art_codice').asstring := pr4.art_codice;

            if tabella_righe.fieldbyname('note').asstring = '' then
            begin
              tabella_righe.fieldbyname('note').asstring := pr4.note_documento;
            end
            else
            begin
              tabella_righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring + #13 + #13 +
                pr4.note_documento;
            end;

            if tabella_righe.fieldbyname('note_interne').asstring = '' then
            begin
              tabella_righe.fieldbyname('note_interne').asstring := pr4.note_interne;
            end
            else
            begin
              tabella_righe.fieldbyname('note_interne').asstring := tabella_righe.fieldbyname('note_interne').asstring + #13 + #13 +
                pr4.note_interne;
            end;
          end;
        end;
        pr4.free;
      end
      else if ((tipo_documento = 'ordine') or (tipo_documento = 'preventivo')) and (screen.activecontrol = v_descrizione1) and
        (key = vk_f4) and (shift = []) then
      begin
        assegna_destinazione;
      end
      else
      begin
        if screen.activecontrol = v_art_codice then
        begin
          if (key = vk_return) and (shift = []) then
          begin
            selectnext(v_art_codice, true, true);
          end;
        end;

        if ((key = vk_insert) and (shift = [])) or
          ((key = vk_return) and (shift = [])) and (screen.activecontrol = v_progressivo) then
        begin
          v_tda_codice.enabled := true;
          v_tda_codice.color := clwindow;

          inherited;
        end
        else
        begin
          inherited;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_destinazione;
var
  pr: tvisdescl;

  descrizione1, descrizione2, via, cap, citta, provincia, tna_codice: string;
begin
  pr := tvisdescl.create(nil);
  if pr.esegui_form then
  begin
    pr.showmodal;

    descrizione1 := pr.descrizione1;
    descrizione2 := pr.descrizione2;
    via := pr.via;
    cap := pr.cap;
    citta := pr.citta;
    provincia := pr.provincia;
    tna_codice := pr.tna_codice;

    if pr.descrizione1 <> '' then
    begin
      try
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('descrizione1').asstring := descrizione1;
          tabella.fieldbyname('descrizione2').asstring := descrizione2;
          tabella.fieldbyname('via').asstring := via;
          tabella.fieldbyname('cap').asstring := cap;
          tabella.fieldbyname('citta').asstring := citta;
          tabella.fieldbyname('provincia').asstring := provincia;
          tabella.fieldbyname('tna_codice').asstring := tna_codice;
          tna_codice_controllo(false);
        end;
      except
      end;
    end;
  end;
  pr.free;
end;

procedure TGESACQ.v_lettoreClick(Sender: TObject);
var
  pr: tltterlasinh;

  lista_art_codice, lista_codice_originale, lista_quantita, lista_prezzo, lista_codice_lotto,
    lista_data_scadenza, lista_progressivo_evasione, lista_riga_evasione, lista_tipo_evasione,
    lista_descrizione1, lista_descrizione2, lista_ubicazione: tstringlist;
begin
  inherited;

  lettore := true;

  lista_art_codice := tstringlist.create;
  lista_codice_originale := tstringlist.create;
  lista_quantita := tstringlist.create;
  lista_prezzo := tstringlist.create;
  lista_codice_lotto := tstringlist.create;
  lista_data_scadenza := tstringlist.create;
  lista_progressivo_evasione := tstringlist.create;
  lista_riga_evasione := tstringlist.create;
  lista_tipo_evasione := tstringlist.create;
  lista_descrizione1 := tstringlist.create;
  lista_descrizione2 := tstringlist.create;
  lista_ubicazione := tstringlist.create;

  pr := tltterlasinh.create(nil);
  if pr.esegui_form then
  begin
    if tipo_documento <> 'ddt clienti' then
    begin
      pr.frn_codice := tabella.fieldbyname('frn_codice').asstring;;
    end;
    pr.lista_art_codice := lista_art_codice;
    pr.lista_codice_originale := lista_codice_originale;
    pr.lista_quantita := lista_quantita;
    pr.lista_prezzo := lista_prezzo;
    pr.lista_codice_lotto := lista_codice_lotto;
    pr.lista_data_scadenza := lista_data_scadenza;
    pr.lista_progressivo_evasione := lista_progressivo_evasione;
    pr.lista_riga_evasione := lista_riga_evasione;
    pr.lista_tipo_evasione := lista_tipo_evasione;
    pr.lista_descrizione1 := lista_descrizione1;
    pr.lista_descrizione2 := lista_descrizione2;
    pr.lista_ubicazione := lista_ubicazione;
    pr.showmodal;
    if (pr.conferma = true) and (pr.lista_art_codice.count > 0) then
    begin
      aggiungi_righe_lettore(lista_art_codice, lista_codice_originale, lista_quantita,
        lista_prezzo, lista_codice_lotto, lista_data_scadenza, lista_descrizione1, lista_descrizione2,
        lista_progressivo_evasione, lista_riga_evasione, lista_tipo_evasione, lista_ubicazione);
    end;
  end;

  lettore := false;

  freeandnil(lista_art_codice);
  freeandnil(lista_codice_originale);
  freeandnil(lista_quantita);
  freeandnil(lista_prezzo);
  freeandnil(lista_codice_lotto);
  freeandnil(lista_data_scadenza);
  freeandnil(lista_progressivo_evasione);
  freeandnil(lista_riga_evasione);
  freeandnil(lista_tipo_evasione);
  freeandnil(lista_descrizione1);
  freeandnil(lista_descrizione2);
  freeandnil(lista_ubicazione);
  pr.free;
end;

procedure TGESACQ.aggiungi_righe_lettore(lista_art_codice, lista_codice_originale,
  lista_quantita, lista_prezzo, lista_codice_lotto, lista_data_scadenza, lista_descrizione1,
  lista_descrizione2, lista_progressivo_evasione, lista_riga_evasione, lista_tipo_evasione,
  lista_ubicazione: tstringlist; modalita: string = '');
var
  pr1: timpmod;
  pr2: tvislet;

  imponibile: double;
  i, riga: word;
  cfg_tipo: string;

  modalita_lettore: string;
  esiste_documento_evasione: boolean;

  numero1, numero2: double;

  evasione: tmyquery_go;
begin
  parte_attiva := 'pannello_righe';
  tool_f8.enabled := true;
  // programma in sola lettura
  if (arc_prg.fieldbyname('abr_id').asinteger <> 0) then
  begin
    tool_f8.enabled := false;
  end;

  query_presenti_righe.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
  query_presenti_righe.close;
  query_presenti_righe.open;
  i := trunc(query_presenti_righe.fieldbyname('ultima_riga').asinteger / incremento_righe);
  riga := i * incremento_righe;

  if modalita = '' then
  begin
    modalita_lettore := tda.fieldbyname('modalita_lettore').asstring;
  end
  else
  begin
    modalita_lettore := modalita;
  end;
  if modalita_lettore = 'entrambe' then
  begin
    pr1 := timpmod.create(nil);
    try
      pr1.showmodal;
      modalita_lettore := pr1.modalita_lettore;
    finally
      pr1.free;
    end;
  end;

  if modalita_lettore = 'inserimento' then
  begin
    for i := 0 to lista_art_codice.count - 1 do
    begin
      if not read_tabella(arc.arcdit, 'art', 'codice', lista_art_codice[i], 'id') then
      begin
        messaggio(000, 'il codice  ' + trim(lista_art_codice[i]) + '  non è presente nell''anagrafica articoli' + #13 +
          'la riga della quantità di  ' + trim(lista_quantita[i]) + '  non verrà generata ' + #13 +
          'il movimento va caricato manualmente dopo aver creato il nuovo articolo');
      end
      else
      begin
        esiste_righe := false;
        tabella_righe.append;

        assegna_campi_righe;

        tabella_righe.fieldbyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asfloat;
        riga := riga + incremento_righe;
        tabella_righe.fieldbyname('riga').asinteger := riga;
        tabella_righe.fieldbyname('art_codice').asstring := lista_art_codice[i];
        read_tabella(art, tabella_righe.fieldbyname('art_codice').asstring);
        if assigned(lista_descrizione1) and (lista_descrizione1[i] <> '') then
        begin
          tabella_righe.fieldbyname('descrizione1').asstring := lista_descrizione1[i];
        end
        else
        begin
          tabella_righe.fieldbyname('descrizione1').asstring := art.fieldbyname('descrizione1').asstring;
        end;
        if assigned(lista_descrizione2) and (lista_descrizione2[i] <> '') then
        begin
          tabella_righe.fieldbyname('descrizione2').asstring := lista_descrizione2[i];
        end
        else
        begin
          tabella_righe.fieldbyname('descrizione2').asstring := art.fieldbyname('descrizione2').asstring;
        end;

        if assigned(lista_codice_originale) and (lista_codice_originale[i] <> '') then
        begin
          tabella_righe.fieldbyname('descrizione2').asstring := lista_codice_originale[i];
        end;
        tabella_righe.fieldbyname('tiv_codice').asstring := art.fieldbyname('tiv_codice_acquisti').asstring;
        if tabella.fieldbyname('tiv_codice').asstring <> '' then
        begin
          tabella_righe.fieldbyname('tiv_codice').asstring := tabella.fieldbyname('tiv_codice').asstring;
        end;
        tabella_righe.fieldbyname('quantita').asfloat := strtofloat(lista_quantita[i]);
        if assigned(lista_prezzo) then
        begin
          tabella_righe.fieldbyname('prezzo').asfloat := strtofloat(lista_prezzo[i]);
        end;

        if tipo_documento = 'ddt clienti' then
        begin
          if art.fieldbyname('tum_codice_vendite').asstring <> '' then
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice_vendite').asstring;
          end
          else
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice').asstring;
          end;
        end
        else
        begin
          if art.fieldbyname('tum_codice_acquisti').asstring <> '' then
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice_acquisti').asstring;
          end
          else
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice').asstring;
          end;
        end;

        assegna_tum_quantita_base;
        assegna_gen_codice;

        if not art.eof then
        begin
          assegna_colli_confezioni(tabella_righe, art, 'quantita', 'numero_colli', 'numero_confezioni');

          if (tabella_righe.fieldbyname('numero_colli').asinteger <> 0) then
          begin
            controllo_numero_colli_evasi;
          end;

          if (tabella_righe.fieldbyname('numero_confezioni').asinteger <> 0) then
          begin
            controllo_numero_confezioni_evase;
          end;
        end;

        tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice').asstring;
        tabella_righe.fieldbyname('tma_codice_collegato').asstring := tabella.fieldbyname('tma_codice_collegato').asstring;

        tabella_righe.fieldbyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
        tabella_righe.fieldbyname('tipologia').asstring := tabella.fieldbyname('tipologia').asstring;

        tabella_righe.fieldbyname('cen_codice').asstring := tabella.fieldbyname('cen_codice').asstring;
        tabella_righe.fieldbyname('tvc_codice').asstring := tabella.fieldbyname('tvc_codice').asstring;

        if tabella_righe.fieldbyname('prezzo').asfloat = 0 then
        begin
          cerca_prezzo;
        end;
        calcola_importo;

        tub_codice_globale := lista_ubicazione[i];

        scrivi_record_righe;

        if assigned(lista_codice_lotto) and (lista_codice_lotto[i] <> '') then
        begin
          if tipo_documento = 'ddt clienti' then
          begin
            cfg_tipo := 'C';
          end
          else
          begin
            cfg_tipo := 'F';
          end;
          arc.crea_ltm_lettore(lista_art_codice[i], lista_codice_lotto[i], tabella.fieldbyname('tma_codice').asstring,
            lista_quantita[i], lista_data_scadenza[i], tipo_documento + ' acq', tmo.fieldbyname('esistenza').asstring,
            cfg_tipo, tabella.fieldbyname('frn_codice').asstring,
            tabella.fieldbyname('serie_documento').asstring, tabella.fieldbyname('progressivo').asinteger,
            riga, tabella.fieldbyname('numero_documento').asfloat,
            tabella.fieldbyname('data_registrazione').asdatetime, tabella.fieldbyname('data_documento').asdatetime);
          abilita_bottoni(true);
        end;
      end;
    end;
  end
  else if modalita_lettore = 'controllo' then
  begin
    arc.lettore.close;
    arc.lettore.clear;
    arc.lettore.open;
    tabella_righe.close;
    tabella_righe.open;
    while not tabella_righe.eof do
    begin
      if not arc.lettore.locate('art_codice', tabella_righe.fieldbyname('art_codice').asstring, []) then
      begin
        arc.lettore.append;
        arc.lettore.fieldbyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
        read_tabella(art, tabella_righe.fieldbyname('art_codice').asstring);
        arc.lettore.fieldbyname('art_descrizione').asstring := art.fieldbyname('descrizione1').asstring + ' ' +
          art.fieldbyname('descrizione2').asstring;
        arc.lettore.fieldbyname('quantita').asfloat := 0;
        arc.lettore.fieldbyname('quantita_documento').asfloat := 0;
        arc.lettore.post;
      end;
      arc.lettore.edit;
      arc.lettore.fieldbyname('quantita_documento').asfloat := arc.lettore.fieldbyname('quantita_documento').asfloat +
        tabella_righe.fieldbyname('quantita').asfloat;
      arc.lettore.post;

      tabella_righe.next;
    end;
    tabella_righe.first;

    for i := 0 to lista_art_codice.count - 1 do
    begin
      if not read_tabella(arc.arcdit, 'art', 'codice', lista_art_codice[i], 'id') then
      begin
        messaggio(000, 'il codice  ' + trim(lista_art_codice[i]) + '  non è presente nell''anagrafica articoli' + #13 +
          'la riga della quantità di  ' + trim(lista_quantita[i]) + '  non verrà generata ' + #13 +
          'il movimento va caricato manualmente dopo aver creato il nuovo articolo');
      end
      else
      begin
        if not arc.lettore.locate('art_codice', lista_art_codice[i], []) then
        begin
          arc.lettore.append;
          arc.lettore.fieldbyname('art_codice').asstring := lista_art_codice[i];
          read_tabella(art, lista_art_codice[i]);
          arc.lettore.fieldbyname('art_descrizione').asstring := art.fieldbyname('descrizione1').asstring + ' ' +
            art.fieldbyname('descrizione2').asstring;
          arc.lettore.fieldbyname('quantita').asfloat := 0;
          arc.lettore.fieldbyname('quantita_documento').asfloat := 0;
          arc.lettore.post;
        end;
        arc.lettore.edit;
        arc.lettore.fieldbyname('quantita').asfloat := arc.lettore.fieldbyname('quantita').asfloat +
          strtofloat(lista_quantita[i]);
        arc.lettore.post;
      end;
    end;

    pr2 := tvislet.create(nil);
    try
      pr2.showmodal;
    finally
      pr2.free;
    end;
  end
  else if modalita_lettore = 'evasione' then
  begin
    if (tipo_documento = 'ordine') or (tipo_documento = 'ddt') or (tipo_documento = 'fattura') then
    begin
      evasione := tmyquery_go.create(nil);
      evasione.connection := arc.arcdit;
      if tipo_documento = 'ordine' then
      begin
        evasione.sql.text := 'select * from rar where progressivo = :progressivo and art_codice = :art_codice ' +
          'and situazione <> ''evaso'' and situazione <> ''annullato''';
      end
      else
      begin
        evasione.sql.text := 'select * from oar where progressivo = :progressivo and art_codice = :art_codice ' +
          'and situazione <> ''evaso'' and situazione <> ''annullato''';
      end;

      for i := 0 to lista_art_codice.count - 1 do
      begin
        if not read_tabella(arc.arcdit, 'art', 'codice', lista_art_codice[i], 'id') then
        begin
          messaggio(000, 'il codice  ' + trim(lista_art_codice[i]) + '  non è presente nell''anagrafica articoli' + #13 +
            'la riga della quantità di  ' + trim(lista_quantita[i]) + '  non verrà generata ' + #13 +
            'il movimento va caricato manualmente dopo aver creato il nuovo articolo');
        end
        else
        begin
          //  controllo documento da evadere
          esiste_documento_evasione := true;
          if not read_tabella(evasione, vararrayof([lista_progressivo_evasione[i], lista_art_codice[i]])) then
          begin
            esiste_documento_evasione := false;
          end
          else
          begin
            if (lista_riga_evasione[i] <> '') and (lista_riga_evasione[i] <> '0') then
            begin
              if not evasione.locate('riga', lista_riga_evasione[i], []) then
              begin
                esiste_documento_evasione := false;
              end;
            end;
          end;

          if esiste_documento_evasione then
          begin
            esiste_righe := false;

            tabella_righe.append;

            tabella_righe.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
            riga := riga + incremento_righe;
            tabella_righe.fieldbyname('riga').asinteger := riga;

            if tipo_documento = 'ordine' then
            begin
              tabella_righe.fieldbyname('documento_origine').asstring := 'preventivo acq';
            end
            else
            begin
              tabella_righe.fieldbyname('documento_origine').asstring := 'ordine acq';
            end;
            tabella_righe.fieldbyname('doc_progressivo_origine').asinteger := evasione.fieldbyname('progressivo').asinteger;
            tabella_righe.fieldbyname('doc_riga_origine').asinteger := evasione.fieldbyname('riga').asinteger;

            tabella_righe.fieldbyname('art_codice').asstring := lista_art_codice[i];
            read_tabella(art, tabella_righe.fieldbyname('art_codice').asstring);
            tabella_righe.fieldbyname('descrizione1').asstring := evasione.fieldbyname('descrizione1').asstring;
            tabella_righe.fieldbyname('descrizione2').asstring := evasione.fieldbyname('descrizione2').asstring;
            tabella_righe.fieldbyname('tum_codice').asstring := evasione.fieldbyname('tum_codice').asstring;
            tabella_righe.fieldbyname('quantita').asfloat := strtofloat(lista_quantita[i]);
            tabella_righe.fieldbyname('prezzo').asfloat := evasione.fieldbyname('prezzo').asfloat;
            tabella_righe.fieldbyname('tum_quantita_base').asfloat := arrotonda
              ((evasione.fieldbyname('tum_quantita_base').asfloat / evasione.fieldbyname('quantita').asfloat) *
              tabella_righe.fieldbyname('quantita').asfloat, decimali_quantita_art(tabella_righe.fieldbyname('art_codice').asstring));

            assegna_gen_codice;

            tabella_righe.fieldbyname('tiv_codice').asstring := evasione.fieldbyname('tiv_codice').asstring;
            if tabella.fieldbyname('tiv_codice').asstring <> '' then
            begin
              tabella_righe.fieldbyname('tiv_codice').asstring := tabella.fieldbyname('tiv_codice').asstring;
            end;

            tabella_righe.fieldbyname('tma_codice').asstring := evasione.fieldbyname('tma_codice').asstring;
            tabella_righe.fieldbyname('tma_codice_collegato').asstring := evasione.fieldbyname('tma_codice_collegato').asstring;
            tabella_righe.fieldbyname('saldo_acconto').asstring := lista_tipo_evasione[i];
            if (tabella_righe.fieldbyname('saldo_acconto').asstring = 'acconto') and
              (tabella_righe.fieldbyname('quantita').asfloat >= (evasione.fieldbyname('quantita').asfloat - evasione.fieldbyname('quantita_evasa').asfloat)) then
            begin
              tabella_righe.fieldbyname('saldo_acconto').asstring := 'saldo';
            end;

            art.close;
            art.params[0].asstring := v_art_codice.text;
            art.open;

            tabella_righe.fieldbyname('cms_codice').asstring := evasione.fieldbyname('cms_codice').asstring;
            tabella_righe.fieldbyname('tipologia').asstring := evasione.fieldbyname('tipologia').asstring;

            if tabella_righe.fieldbyname('prezzo').asfloat = 0 then
            begin
              cerca_prezzo;
            end;
            calcola_importo;

            scrivi_record_righe;
          end
          else
          begin
            messaggio(200, 'non esiste il documento da evadere' + #13 +
              'progressivo: ' + lista_progressivo_evasione[i] + #13 +
              'riga: ' + lista_riga_evasione[i] + #13 +
              'articolo: ' + lista_art_codice[i]);
          end;
        end;
      end;

      evasione.free;
    end
    else
    begin
      messaggio(200, 'per questo tipo documento non è consentita la modalità [evasione]');
    end;
  end;
  parte_attiva := 'griglia_righe';
  tool_f8.enabled := false;

  pannello_righe.enabled := true;
  colore_control(pannello_righe, true);
end;

procedure TGESACQ.genera_tabella_etichette;
begin
  nome_tabella := 'etiartmo';
  azzera_tabella(nome_tabella, sor);
  sor.indexfieldnames := 'utn_codice,riga';

  if tda.fieldbyname('stampa_lotto_etichette').asstring = 'si' then
  begin
    ltm.close;
    ltm.sql.text := 'select * from ltm where documento_origine = :documento_origine ' +
      'and doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
  end;

  tabella_righe.disablecontrols;
  tabella_righe.close;
  tabella_righe.open;
  while not tabella_righe.eof do
  begin
    if tabella_righe.fieldbyname('art_codice').asstring <> '' then
    begin
      art.close;
      art.parambyname('codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
      art.open;

      if tda.fieldbyname('stampa_lotto_etichette').asstring = 'si' then
      begin
        ltm.close;
        ltm.params[0].asstring := tipo_documento + ' acq';
        ltm.params[1].asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
        ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
        ltm.open;
      end;

      if (tda.fieldbyname('stampa_lotto_etichette').asstring = 'no') or ltm.isempty then
      begin
        sor.append;
        sor.fieldbyname('codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
        sor.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('quantita').asfloat;
        sor.fieldbyname('art_descrizione1').asstring := tabella_righe.fieldbyname('descrizione1').asstring;
        sor.fieldbyname('art_descrizione2').asstring := tabella_righe.fieldbyname('descrizione2').asstring;
        sor.fieldbyname('art_tum_codice').asstring := tabella_righe.fieldbyname('tum_codice').asstring;
        sor.fieldbyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
        sor.fieldbyname('colli').asinteger := tabella_righe.fieldbyname('numero_colli').asinteger;
        sor.fieldbyname('confezioni').asinteger := tabella_righe.fieldbyname('numero_confezioni').asinteger;
        if art.fieldbyname('etichetta_singola').asstring = 'si' then
        begin
          sor.fieldbyname('etichette').asinteger := 1;
        end
        else
        begin
          sor.fieldbyname('etichette').asinteger := trunc(tabella_righe.fieldbyname('quantita').asinteger);
        end;
        sor.fieldbyname('modulo').asstring := 'acquisti';
        sor.fieldbyname('tipo_documento').asstring := tabella.fieldbyname('tipo_documento').asstring;
        sor.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
        sor.fieldbyname('lot_codice').asstring := '';
        sor.fieldbyname('utn_codice').asstring := utente;
        sor.post;
      end
      else
      begin
        while not ltm.eof do
        begin
          sor.append;
          sor.fieldbyname('codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
          sor.fieldbyname('quantita').asfloat := ltm.fieldbyname('quantita').asfloat;
          sor.fieldbyname('art_descrizione1').asstring := tabella_righe.fieldbyname('descrizione1').asstring;
          sor.fieldbyname('art_descrizione2').asstring := tabella_righe.fieldbyname('descrizione2').asstring;
          sor.fieldbyname('art_tum_codice').asstring := tabella_righe.fieldbyname('tum_codice').asstring;
          sor.fieldbyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
          sor.fieldbyname('colli').asinteger := tabella_righe.fieldbyname('numero_colli').asinteger;
          sor.fieldbyname('confezioni').asinteger := tabella_righe.fieldbyname('numero_confezioni').asinteger;
          if art.fieldbyname('etichetta_singola').asstring = 'si' then
          begin
            sor.fieldbyname('etichette').asinteger := 1;
          end
          else
          begin
            sor.fieldbyname('etichette').asinteger := trunc(ltm.fieldbyname('quantita').asinteger);
          end;
          sor.fieldbyname('modulo').asstring := 'acquisti';
          sor.fieldbyname('tipo_documento').asstring := tabella.fieldbyname('tipo_documento').asstring;
          sor.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
          sor.fieldbyname('lot_codice').asstring := ltm.fieldbyname('lotto').asstring;
          sor.fieldbyname('utn_codice').asstring := utente;
          sor.post;

          ltm.next;
        end;
      end;
    end;

    tabella_righe.next;
  end;
  tabella_righe.first;
  tabella_righe.enablecontrols;
end;

procedure TGESACQ.FormDestroy(Sender: TObject);
begin
  inherited;

  freeandnil(dicint);
  freeandnil(iban);
  freeandnil(movmag);
  freeandnil(cerca_prezzi);
  freeandnil(rma);
  freeandnil(nca);
  freeandnil(calsca);
  freeandnil(totacq);
  freeandnil(qtamin);
  freeandnil(spese_acq);
  freeandnil(cos);

  freeandnil(sce_lista_multiselezione);
  freeandnil(sce_lista_multiselezione_quantita);
  freeandnil(tum_codice);
end;

procedure TGESACQ.v_importo_sconto_righeExit(Sender: TObject);
begin
  inherited;
  if v_importo_sconto_righe.enabled then
  begin
    if controllo then
    begin
      assegna_valore_tsm_codice_righe;
      if arrotonda(variato_importo) <> arrotonda(v_importo_sconto_righe.value) then
      begin
        calcola_importo;
      end;
    end;
  end;
end;

procedure TGESACQ.tool_ins_righeClick(Sender: TObject);
var
  tasto: word;
begin
  // inherited;
  tasto := vk_return;
  v_griglia_righekeydown(v_griglia_righe, tasto, []);
end;

procedure TGESACQ.tool_invia_excelClick(Sender: TObject);
var
  richiesta: tmyquery_go;
  i: word;
  pr: tmail;
  nome_file, nom_email_effettivo, testo_mail, stringa: string;
  lista_allegati: tstringlist;
begin
  inherited;

  lista_allegati := tstringlist.create;

  richiesta := tmyquery_go.create(nil);
  richiesta.connection := arc.arcdit;
  richiesta.sql.text := 'select rat.data_documento, rat.numero_documento, rar.progressivo, rar.riga, ' +
    'rar.art_codice nostro_codice, concat(trim(rar.descrizione1), '' '', rar.descrizione2) descrizione, ' +
    '(select codice_articolo_fornitore from arf ' +
    'where arf.art_codice = rar.art_codice and arf.frn_codice = :frn_codice limit 1) vostro_codice, ' +
    'rar.tum_codice um, rar.quantita, rar.prezzo, 100 - tsm_01.percentuale_totale percentuale_sconto_01, ' +
    '100 - tsm_02.percentuale_totale percentuale_sconto_02, rar.importo_sconto ' +
    'from rar inner join rat on rat.progressivo = rar.progressivo ' +
    'left join tsm tsm_01 on tsm_01.codice = rar.tsm_codice ' +
    'left join tsm tsm_02 on tsm_02.codice = rar.tsm_codice_art ' +
    'where rat.progressivo = :progressivo and rar.situazione = ''inserito''';
  richiesta.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
  richiesta.parambyname('frn_codice').asstring := tabella.fieldbyname('frn_codice').asstring;
  richiesta.open;

  tabella_virtuale.open;
  tabella_virtuale.clear;
  while not richiesta.eof do
  begin
    tabella_virtuale.append;
    for i := 0 to richiesta.fieldcount - 1 do
    begin
      tabella_virtuale.fieldbyname(richiesta.fields[i].fieldname).value := richiesta.fields[i].value;
    end;

    tabella_virtuale.post;

    richiesta.next;
  end;

  nome_file := cartella_root_installazione + 'esporta\' + 'preventivo_fornitori_progressivo_' +
    tabella.fieldbyname('progressivo').asstring + '.xlsx';
  arc.xlstxt(tabella_virtuale, 'xls', nome_file);

  richiesta.free;

  pr := tmail.create(nil);
  pr.conoscenza_ccn := '';
  pr.conoscenza := '';
  pr.pec := false;
  pr.nom_codice := tabella.fieldbyname('frn_codice').asstring;
  read_tabella(arc.arcdit, 'nom', 'codice', tabella.fieldbyname('frn_codice').asstring, '*');

  testo_mail := tda.fieldbyname('testo_mail_excel').asstring;
  if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_01').asstring then
  begin
    testo_mail := tda.fieldbyname('testo_mail_excel_lingua_01').asstring;
  end
  else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_02').asstring then
  begin
    testo_mail := tda.fieldbyname('testo_mail_excel_lingua_02').asstring;
  end
  else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_03').asstring then
  begin
    testo_mail := tda.fieldbyname('testo_mail_excel_lingua_03').asstring;
  end
  else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_04').asstring then
  begin
    testo_mail := tda.fieldbyname('testo_mail_excel_lingua_04').asstring;
  end
  else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_05').asstring then
  begin
    testo_mail := tda.fieldbyname('testo_mail_excel_lingua_05').asstring;
  end;

  pr.v_intestatario.text :=
    trim(archivio.fieldbyname('descrizione1').asstring) + ' ' +
    archivio.fieldbyname('citta').asstring;
  pr.v_indirizzo.itemindex := 0;
  if archivio.fieldbyname('e_mail_amministrazione').asstring <> '' then
  begin
    pr.v_indirizzo.items.add('AMMINISTRAZIONE (NOMINATIVO)');
    pr.v_indirizzo.itemindex := pr.v_indirizzo.items.count - 1;
  end;
  if archivio.fieldbyname('e_mail_acquisti').asstring <> '' then
  begin
    pr.v_indirizzo.items.add('ACQUISTI (NOMINATIVO)');
    pr.v_indirizzo.itemindex := pr.v_indirizzo.items.count - 1;
  end;
  if archivio.fieldbyname('e_mail_preventivi_fornitori').asstring <> '' then
  begin
    pr.v_indirizzo.items.add('PREVENTIVI FORNITORI (NOMINATIVO)');
    pr.v_indirizzo.itemindex := pr.v_indirizzo.items.count - 1;
  end;

  // senza filiale
  read_tabella(arc.arcdit, 'nml', 'nom_codice;ind_codice',
    vararrayof([tabella.fieldbyname('frn_codice').asstring, '']),
    'descrizione, mansione, email');
  while not archivio.eof do
  begin
    pr.v_indirizzo.items.add(uppercase(archivio.fieldbyname('descrizione').asstring + '  ' +
      archivio.fieldbyname('mansione').asstring));
    archivio.next;
  end;

  if pr.v_indirizzo.items.count > 0 then
  begin
    pr.v_oggetto.text := 'Richiesta quotazioni per articoli allegati';
    pr.v_testo.text := testo_mail;
    pr.showmodal;

    if pr.confermato then
    begin
      read_tabella(arc.arcdit, 'nom', 'codice', tabella.fieldbyname('frn_codice').asstring, '*');
      if pr.v_indirizzo.text = 'AMMINISTRAZIONE (NOMINATIVO)' then
      begin
        nom_email_effettivo := archivio.fieldbyname('e_mail_amministrazione').asstring;
      end
      else if pr.v_indirizzo.text = 'ACQUISTI (NOMINATIVO)' then
      begin
        nom_email_effettivo := archivio.fieldbyname('e_mail_acquisti').asstring;
      end
      else if pr.v_indirizzo.text = 'PREVENTIVI FORNITORI (NOMINATIVO)' then
      begin
        nom_email_effettivo := archivio.fieldbyname('e_mail_preventivi_fornitori').asstring;
      end
      else
      begin
        read_tabella(arc.arcdit, 'nml', 'nom_codice', tabella.fieldbyname('frn_codice').asstring, 'descrizione, mansione, email, email_pec');
        while not archivio.eof do
        begin
          if (uppercase(archivio.fieldbyname('descrizione').asstring + '  ' + archivio.fieldbyname('mansione').asstring)) =
            pr.v_indirizzo.text then
          begin
            nom_email_effettivo := archivio.fieldbyname('email').asstring;
            break;
          end;
          archivio.next;
        end;
      end;

      lista_allegati.add(nome_file);
      arc.invia_messaggio(pr.v_pec.checked, pr.v_oggetto.text, pr.v_conoscenza.text, pr.v_testo.text,
        nom_email_effettivo, lista_allegati, '', '', '', '', 0, 0, pr.v_conoscenza_ccn.text);
    end;
  end
  else
  begin
    messaggio(200, 'fornitore senza indirizzo email');
  end;

  freeandnil(lista_allegati);
  pr.free;
end;

procedure TGESACQ.tool_invio_messaggioClick(Sender: TObject);
begin
  if tda.fieldbyname('messaggio_interattivo').asstring = 'si' then
  begin
    messaggio_interattivo_modulo_documento := 'acquisto';
    messaggio_interattivo_tipo_documento := tipo_documento + ' [' + ditta + ']';
    messaggio_interattivo_progressivo_documento := tabella.fieldbyname('progressivo').asinteger;
  end;

  inherited;
end;

procedure TGESACQ.tool_ricevi_excelClick(Sender: TObject);
var
  i: integer;
  tsm: tmyquery_go;
  tsm_codice: string;
  opendialog: TOpenDialog;
begin
  inherited;

  tabella_virtuale.close;
  tabella_virtuale.clear;
  tabella_virtuale.open;

  opendialog := topendialog.create(nil);
  try
    opendialog.defaultext := 'xls';
    opendialog.filter := 'file Excel (*.xls, *.xlsx)|*.xls;*.xlsx';
    opendialog.initialdir := cartella_esporta;
    opendialog.filename := 'preventivo_fornitori_progressivo_' + tabella.fieldbyname('progressivo').asstring;
    opendialog.execute;

    if not fileexists(opendialog.filename) then
    begin
      exit;
    end;

    arc.xlswrite.clear;
    arc.xlswrite.filename := opendialog.filename;
    arc.xlswrite.read;
  finally
    opendialog.free;
  end;

  for i := 1 to arc.xlswrite.sheets[0].lastrow do
  begin
    tabella_virtuale.append;

    tabella_virtuale.fieldbyname('data_documento').asdatetime := arc.xlswrite.sheets[0].asdatetime[0, i];
    tabella_virtuale.fieldbyname('numero_documento').asfloat := arc.xlswrite.sheets[0].asfloat[1, i];
    tabella_virtuale.fieldbyname('progressivo').asinteger := arc.xlswrite.sheets[0].asinteger[2, i];
    tabella_virtuale.fieldbyname('riga').asinteger := arc.xlswrite.sheets[0].asinteger[3, i];
    tabella_virtuale.fieldbyname('nostro_codice').asstring := arc.xlswrite.sheets[0].asstring[4, i];
    tabella_virtuale.fieldbyname('descrizione').asstring := arc.xlswrite.sheets[0].asstring[5, i];
    tabella_virtuale.fieldbyname('vostro_codice').asstring := arc.xlswrite.sheets[0].asstring[6, i];
    tabella_virtuale.fieldbyname('um').asstring := arc.xlswrite.sheets[0].asstring[7, i];
    tabella_virtuale.fieldbyname('quantita').asfloat := arc.xlswrite.sheets[0].asfloat[8, i];
    tabella_virtuale.fieldbyname('prezzo').asfloat := arc.xlswrite.sheets[0].asfloat[9, i];
    tabella_virtuale.fieldbyname('percentuale_sconto_01').asfloat := arc.xlswrite.sheets[0].asfloat[10, i];
    tabella_virtuale.fieldbyname('percentuale_sconto_02').asfloat := arc.xlswrite.sheets[0].asfloat[11, i];
    tabella_virtuale.fieldbyname('importo_sconto').asfloat := arc.xlswrite.sheets[0].asfloat[12, i];

    tabella_virtuale.post;
  end;

  if not tabella_virtuale.isempty then
  begin
    if tabella_virtuale.fieldbyname('progressivo').asinteger <> tabella.fieldbyname('progressivo').asinteger then
    begin
      messaggio(000, 'il documento fa riferimento ad un progressivo documento' + #13#10 +
        'diverso da quello in gestione');
    end
    else
    begin
      tsm := tmyquery_go.create(nil);
      tsm.connection := arc.arcdit;
      tsm.sql.text := 'select codice from tsm where percentuale_totale = :percentuale_totale limit 1';

      try
        tabella_virtuale.first;
        while not tabella_virtuale.eof do
        begin
          if tabella_righe.locate('progressivo;riga', vararrayof([tabella_virtuale.fieldbyname('progressivo').asinteger,
            tabella_virtuale.fieldbyname('riga').asinteger]), []) then
          begin
            tabella_righe.edit;

            if (tabella_righe.fieldbyname('prezzo').asfloat <> 0) and
              (tabella_righe.fieldbyname('prezzo').asfloat <> tabella_virtuale.fieldbyname('prezzo').asfloat) then
            begin
              messaggio(200, 'il prezzo comunicato per la riga ' +
                tabella_righe.fieldbyname('riga').asstring + #13#10 +
                'articolo ' + tabella_righe.fieldbyname('art_codice').asstring + ' ' +
                tabella_righe.fieldbyname('descrizione1').asstring + #13#10 +
                'è diverso da quello storico');
            end;
            tabella_righe.fieldbyname('prezzo').asfloat := tabella_virtuale.fieldbyname('prezzo').asfloat;

            tsm_codice := '';
            if tabella_virtuale.fieldbyname('percentuale_sconto_01').asfloat <> 0 then
            begin
              tsm.close;
              tsm.parambyname('percentuale_totale').asfloat := 100 - tabella_virtuale.fieldbyname('percentuale_sconto_01').asfloat;
              tsm.open;
              if not tsm.isempty then
              begin
                tsm_codice := tsm.fieldbyname('codice').asstring;
              end
              else
              begin
                messaggio(200, 'il codice sconto relativo alla percentuale ' + tabella_virtuale.fieldbyname('percentuale_sconto_01').asstring +
                  'comunicato per la riga ' + tabella_righe.fieldbyname('riga').asstring + #13#10 +
                  'articolo ' + tabella_righe.fieldbyname('art_codice').asstring + ' ' +
                  tabella_righe.fieldbyname('descrizione1').asstring + #13#10 +
                  'non esiste');
              end;
            end;
            if tabella_righe.fieldbyname('tsm_codice').asstring <> tsm_codice then
            begin
              messaggio(200, 'il primo sconto comunicato per la riga ' +
                tabella_righe.fieldbyname('riga').asstring + #13#10 +
                'articolo ' + tabella_righe.fieldbyname('art_codice').asstring + ' ' +
                tabella_righe.fieldbyname('descrizione1').asstring + #13#10 +
                'è diverso da quello storico');
            end;
            tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;

            tsm_codice := '';
            if tabella_virtuale.fieldbyname('percentuale_sconto_02').asfloat <> 0 then
            begin
              tsm.close;
              tsm.parambyname('percentuale_totale').asfloat := 100 - tabella_virtuale.fieldbyname('percentuale_sconto_02').asfloat;
              tsm.open;
              if not tsm.isempty then
              begin
                tsm_codice := tsm.fieldbyname('codice').asstring;
              end
              else
              begin
                messaggio(200, 'il codice sconto relativo alla percentuale ' + tabella_virtuale.fieldbyname('percentuale_sconto_02').asstring +
                  'comunicato per la riga ' + tabella_righe.fieldbyname('riga').asstring + #13#10 +
                  'articolo ' + tabella_righe.fieldbyname('art_codice').asstring + ' ' +
                  tabella_righe.fieldbyname('descrizione1').asstring + #13#10 +
                  'non esiste');
              end;
            end;
            if tabella_righe.fieldbyname('tsm_codice_art').asstring <> tsm_codice then
            begin
              messaggio(200, 'il secondo sconto comunicato per la riga ' +
                tabella_righe.fieldbyname('riga').asstring + #13#10 +
                'articolo ' + tabella_righe.fieldbyname('art_codice').asstring + ' ' +
                tabella_righe.fieldbyname('descrizione1').asstring + #13#10 +
                'è diverso da quello storico');
            end;
            tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice;

            if (tabella_righe.fieldbyname('importo_sconto').asfloat <> 0) and
              (tabella_righe.fieldbyname('importo_sconto').asfloat <> tabella_virtuale.fieldbyname('importo_sconto').asfloat) then
            begin
              messaggio(200, 'l''importo dello sconto comunicato per la riga ' +
                tabella_righe.fieldbyname('riga').asstring + #13#10 +
                'articolo ' + tabella_righe.fieldbyname('art_codice').asstring + ' ' +
                tabella_righe.fieldbyname('descrizione1').asstring + #13#10 +
                'è diverso da quello storico');
            end;
            tabella_righe.fieldbyname('importo_sconto').asfloat := tabella_virtuale.fieldbyname('importo_sconto').asfloat;

            calcola_importo;
            tabella_righe.post;
          end;
          tabella_virtuale.next;
        end;

        messaggio(100, 'aggiornamento eseguito');
      finally
        tsm.free;
      end;
    end;
  end
  else
  begin
    messaggio(200, 'aggiornamento non eseguito');
  end;
end;

procedure TGESACQ.tool_sequenzaClick(Sender: TObject);
var
  riga: integer;
begin
  inherited;
  if tool_sequenza.down then
  begin
    if tabella_righe.fieldbyname('situazione').asstring <> 'inserito' then
    begin
      messaggio(000, 'riga non selezionabile perchè già movimentata');
      tool_sequenza.down := false;
    end
    else
    begin
      riga_drag_drop := tabella_righe.fieldbyname('riga').asinteger;
      tool_sequenza.hint := 'sposta la riga selezionata [' + inttostr(riga_drag_drop) + '] dopo quella attiva';
    end;
  end
  else
  begin
    if (tabella_righe.fieldbyname('riga').asinteger <> riga_drag_drop) then
    begin
      riga := tabella_righe.fieldbyname('riga').asinteger;
      if tabella_righe.locate('progressivo;riga', vararrayof([tabella.parambyname('progressivo').asinteger,
        riga_drag_drop]), []) then
      begin
        tabella_righe.edit;
        tabella_righe.fieldbyname('riga').asinteger := riga + 1;
        try
          tabella_righe.post;
        except
          messaggio(200, 'la riga con numero [' + tabella_righe.fieldbyname('riga').asstring +
            '] esiste già' + slinebreak + 'operazione annullata');
        end;
        esegui_query_righe;
      end;

      tool_sequenza.hint := 'seleziona la riga attiva per spostamento';
    end
    else
    begin
      messaggio(100, 'riga identica a quella selezionata');
    end;
  end;
end;

function TGESACQ.conferma_tabindex: boolean;
begin
  inherited;

  result := false;
  if ((tab_control.tabindex = 0) and (pagina_riferimento)) or
    ((tab_control.tabindex = 1) and (pagina_pagamento)) or
    ((tab_control.tabindex = 2) and (pagina_magazzino)) or
    ((tab_control.tabindex = 3) and (pagina_destinazione)) or
    ((tab_control.tabindex = 4) and (pagina_spedizione)) or
    ((tab_control.tabindex = 5) and (pagina_spese)) or
    ((tab_control.tabindex = 6) and (pagina_note)) or
    ((tab_control.tabindex = 7) and (pagina_analitica)) then
  begin
    result := true;
  end;
end;

procedure TGESACQ.esegui_bottone_dati_extra_testata;
var
  pr: tgesacq01;
begin
  pr := Tgesacq01.Create(nil);
  if pr.esegui_form then
  begin
    pr.tipo_documento := tipo_documento;
    pr.progressivo := v_progressivo.value;
    pr.form_chiamante := self;
    pr.showmodal;
    if pr.aggiorna_totali_testata then
    begin
      aggiorna_totali_testata := true;
    end;
  end;
  pr.free;
end;

procedure TGESACQ.esegui_bottone_dati_extra_righe;
begin
  esegui_gesacq02;
end;

procedure TGESACQ.tool_f2Click(Sender: TObject);
begin
  visarc_filtro_01 := tipo_documento;
  inherited;
end;

procedure TGESACQ.v_ibanExit(Sender: TObject);
begin
  inherited;
  if trim(v_iban.text) <> '' then
  begin
    if not iban.controlla_iban(string(v_iban.text)) then
    begin
      messaggio(100, 'il codice iban inserito non è corretto');
    end;
  end;
end;

procedure TGESACQ.esegui_query_righe;
begin
  if v_evadere.down then
  begin
    if tipo_documento = 'ordine' then
    begin
      if pos(' and (oar.situazione = ''inserito'' or oar.situazione = ''evaso parziale'') ', tabella_righe.sql.text) = 0 then
      begin
        tabella_righe.sql.text := copy(tabella_righe.sql.text, 1, pos('order by ', tabella_righe.sql.text) - 1) +
          ' and (oar.situazione = ''inserito'' or oar.situazione = ''evaso parziale'') ' +
          copy(tabella_righe.sql.text, pos('order by ', tabella_righe.sql.text), length(tabella_righe.sql.text));
      end;
    end
    else if tipo_documento = 'preventivo' then
    begin
      if pos(' and (rar.situazione = ''inserito'' or rar.situazione = ''evaso parziale'') ', tabella_righe.sql.text) = 0 then
      begin
        tabella_righe.sql.text := copy(tabella_righe.sql.text, 1, pos('order by ', tabella_righe.sql.text) - 1) +
          ' and (rar.situazione = ''inserito'' or rar.situazione = ''evaso parziale'') ' +
          copy(tabella_righe.sql.text, pos('order by ', tabella_righe.sql.text), length(tabella_righe.sql.text));
      end;
    end;
  end
  else
  begin
    if tipo_documento = 'ordine' then
    begin
      tabella_righe.sql.text := stringreplace(tabella_righe.sql.text, ' and (oar.situazione = ''inserito'' or oar.situazione = ''evaso parziale'') ', '', []);
    end
    else if tipo_documento = 'preventivo' then
    begin
      tabella_righe.sql.text := stringreplace(tabella_righe.sql.text, ' and (rar.situazione = ''inserito'' or rar.situazione = ''evaso parziale'') ', '', []);
    end;
  end;

  inherited;

  (v_griglia_righe.columnbyname('riga').field as tintegerfield).displayformat := '#';
  (v_griglia_righe.columnbyname('quantita').field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia_righe.columnbyname('prezzo').field as tfloatfield).displayformat := formato_display_prezzo_acq_zero;
  (v_griglia_righe.columnbyname('importo_sconto').field as tfloatfield).displayformat := formato_display_importo_zero;
  (v_griglia_righe.columnbyname('importo').field as tfloatfield).displayformat := formato_display_importo_zero;
end;

procedure TGESACQ.v_tmo_codiceEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_tmo_codice.Text;
end;

procedure TGESACQ.v_tpa_codiceEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_tpa_codice.text;
end;

procedure TGESACQ.v_tva_codiceEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_tva_codice.text;
end;

procedure TGESACQ.v_quantitaEnter(Sender: TObject);
var
  vd3_codice: string;

  dimensione1, dimensione2, dimensione3: double;
  quantita: double;
  lavorazione: boolean;

  pr: tqtatgl;
begin
  inherited;
  variato_importo := arrotonda(v_quantita.value, 4);

  if v_quantita.readonly then
  begin
    if esiste_righe and (tabella_righe.fieldbyname('documento_origine').asstring <> '') then
    begin
      messaggio(200, 'la quantità dei documenti derivati gestiti a taglie-misure non è modificabile' + slinebreak +
        'cancellare la riga ed rifare l''evasione del documento di origine');
    end
    else if esiste_righe and (tabella_righe.fieldbyname('situazione').asstring = 'evaso') and
      (tabella.fieldbyname('tmo_codice').asstring <> '') then
    begin
      messaggio(200, 'la quantità dei documenti gestiti a taglie-misure' + slinebreak +
        'in situazione "evaso" non è modificabile' + slinebreak +
        'stornare l''evasione del documento e rifare la stampa');
    end
    else
    begin
      pr := tqtatgl.create(nil);
      pr.modulo := 'acquisti';
      pr.tipo_documento := tipo_documento;
      pr.tipo_gestione := 'inserimento';
      pr.progressivo := tabella_righe.fieldbyname('progressivo').asinteger;
      pr.riga := tabella_righe.fieldbyname('riga').asinteger;
      pr.tgl_codice := art.fieldbyname('tgl_codice').asstring;
      pr.showmodal;

      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('quantita').asfloat := pr.v_quantita.intvalue;

        tabella_righe.post;
        tabella_edit(tabella_righe);
        esiste_righe := true;
      end;
      freeandnil(pr);
    end;

    selectnext(v_quantita, true, true);
  end
  else
  begin
    if (art.fieldbyname('codice_barre_peso').asstring <> 'no') and (codice_barre_quantita <> 0) then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('quantita').asfloat := codice_barre_quantita;
      end;
    end;

    if art.fieldbyname('gestione_dimensioni_acquisti').asstring = 'si' then
    begin
      dimensione1 := tabella_righe.fieldbyname('dimensione1').asfloat;
      dimensione2 := tabella_righe.fieldbyname('dimensione2').asfloat;
      dimensione3 := tabella_righe.fieldbyname('dimensione3').asfloat;
      if gestione_dimensioni(art, tabella_righe, lavorazione) then
      begin
        if not esiste_righe or (dimensione1 <> tabella_righe.fieldbyname('dimensione1').asfloat) or
          (dimensione2 <> tabella_righe.fieldbyname('dimensione2').asfloat) or
          (dimensione3 <> tabella_righe.fieldbyname('dimensione3').asfloat) or
          (vecchio_numero_colli <> tabella_righe.fieldbyname('numero_colli').asinteger) or
          (vecchio_numero_confezioni <> tabella_righe.fieldbyname('numero_confezioni').asinteger) then
        begin
          quantita := calcola_quantita_dimensioni(art, tabella_righe, false);
          if quantita <> 0 then
          begin
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('quantita').asfloat := quantita;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TGESACQ.v_tsm_codice_righeChange(Sender: TObject);
begin
  inherited;
  controllo_blocco_modifica_prezzi_vendita(sender);
end;

procedure TGESACQ.v_tsm_codice_righeEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_tsm_codice_righe.text;
end;

procedure TGESACQ.v_importoChange(Sender: TObject);
begin
  inherited;
  controllo_blocco_modifica_prezzi_vendita(sender);
end;

procedure TGESACQ.v_importoEnter(Sender: TObject);
begin
  inherited;
  variato_importo := arrotonda(v_importo.value, cifre_decimali_importo);
end;

procedure TGESACQ.v_tipo_movimentoChange(Sender: TObject);
begin
  inherited;
  controllo_blocco_modifica_prezzi_vendita(sender);
end;

procedure TGESACQ.v_tipo_movimentoEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_tipo_movimento.text;
end;

procedure TGESACQ.v_saldo_accontoEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_saldo_acconto.text;
end;

procedure TGESACQ.v_tum_codiceEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_tum_codice.text;
end;

procedure TGESACQ.v_importo_sconto_righeChange(Sender: TObject);
begin
  inherited;
  controllo_blocco_modifica_prezzi_vendita(sender);
end;

procedure TGESACQ.v_importo_sconto_righeEnter(Sender: TObject);
begin
  inherited;
  variato_importo := arrotonda(v_importo_sconto_righe.value);
end;

procedure TGESACQ.v_cli_codiceExit(Sender: TObject);
begin
  inherited;
  cli_codice_controllo(true);
end;

procedure TGESACQ.cli_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, cli_01, v_cli_codice, blocco, tab_control, tab_testata_destinazione, tabella);
end;

procedure TGESACQ.v_data_registrazioneChange(Sender: TObject);
begin
  inherited;
  v_giorno.text := formatdatetime('ddd', v_data_registrazione.date);
end;

procedure TGESACQ.v_bloccatoClick(Sender: TObject);
begin
  inherited;
  if not tabella.isempty then
  begin
    bloccato_click := true;

    if tabella_edit(tabella) then
    begin
      try
        if tabella.fieldbyname('bloccato').asstring = 'si' then
        begin
          tabella.fieldbyname('bloccato').asstring := 'no';
        end
        else
        begin
          tabella.fieldbyname('bloccato').asstring := 'si';
        end;
        tabella.post;
      except
      end;
    end;

    bloccato_click := false;

    abilita_bloccato;
    abilita_codice;
  end;
end;

procedure TGESACQ.abilita_bloccato;
begin
  if tabella.fieldbyname('bloccato').asstring = 'si' then
  begin
    v_bloccato.caption := 'bloccato';
    v_bloccato.hint := 'sblocca il documento';
  end
  else
  begin
    v_bloccato.caption := 'libero';
    v_bloccato.hint := 'blocca il documento';
  end;
end;

procedure TGESACQ.tool_f4Click(Sender: TObject);
begin
  if (tipo_documento = 'ordine') and (screen.activecontrol = v_descrizione1) then
  begin
    assegna_destinazione;
  end
  else
  begin
    inherited;
  end;
end;

procedure TGESACQ.v_evadereClick(Sender: TObject);
begin
  inherited;
  esegui_query_righe;
end;

procedure TGESACQ.v_tutteClick(Sender: TObject);
begin
  inherited;
  esegui_query_righe;
end;

procedure TGESACQ.v_analiticaClick(Sender: TObject);
begin
  inherited;

  if tabella.fieldbyname('ese_codice').asstring <> esercizio then
  begin
    messaggio(000, 'l''esercizio del documento è diverso dall''esercizio attivo');
  end
  else
  begin
    esegui_analitica('righe');
  end;
end;

procedure TGESACQ.v_analitica_spese_01Click(Sender: TObject);
begin
  inherited;
  esegui_analitica('spese_01');
end;

procedure TGESACQ.v_analitica_spese_02Click(Sender: TObject);
begin
  inherited;
  esegui_analitica('spese_02');
end;

procedure TGESACQ.v_analitica_spese_03Click(Sender: TObject);
begin
  inherited;
  esegui_analitica('spese_03');
end;

procedure TGESACQ.v_analitica_spese_04Click(Sender: TObject);
begin
  inherited;
  esegui_analitica('spese_04');
end;

procedure TGESACQ.v_analitica_sconto_cassaClick(Sender: TObject);
begin
  inherited;
  esegui_analitica('cassa');
end;

procedure TGESACQ.v_analitica_sconto_finaleClick(Sender: TObject);
begin
  inherited;
  esegui_analitica('sconti');
end;

procedure TGESACQ.v_tsm_codice_artChange(Sender: TObject);
begin
  inherited;
  controllo_blocco_modifica_prezzi_vendita(sender);
end;

procedure TGESACQ.v_tsm_codice_artEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_tsm_codice_art.text;
end;

procedure TGESACQ.v_cms_codiceEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_cms_codice.text;
end;

procedure TGESACQ.tool_documenti_allegatiClick(Sender: TObject);
var
  pr: tgesdaa;
begin
  inherited;

  if v_progressivo.value <> 0 then
  begin
    pr := tgesdaa.create(nil);
    if pr.esegui_form then
    begin
      pr.progressivo := trunc(v_progressivo.value);
      pr.tipo_documento := tipo_documento;
      if screen.activecontrol = v_griglia_righe then
      begin
        pr.art_codice := tabella_righe.fieldbyname('art_codice').asstring;
      end;
      pr.showmodal;
    end;
    pr.free;
  end;
end;

procedure TGESACQ.totalizza_colli;
var
  totale_colli: tmyquery_go;
begin
  totale_colli := tmyquery_go.create(nil);
  totale_colli.connection := arc.arcdit;

  totale_colli.sql.clear;
  totale_colli.sql.add('select sum(numero_colli) totale_colli, sum(numero_confezioni) totale_confezioni,');
  totale_colli.sql.add('round(sum(tum_quantita_base * volume), 4) volume,');
  totale_colli.sql.add('round(sum(tum_quantita_base * peso_lordo), 4) peso_lordo,');
  totale_colli.sql.add('case when peso_netto_riga <> 0 then peso_netto_riga');
  totale_colli.sql.add('else round(sum(tum_quantita_base * peso_netto), 4) end peso_netto');
  if tipo_documento = 'preventivo' then
  begin
    totale_colli.sql.add('from rar');
  end
  else if tipo_documento = 'ordine' then
  begin
    totale_colli.sql.add('from oar');
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt clienti') then
  begin
    totale_colli.sql.add('from dar');
  end
  else
  begin
    totale_colli.sql.add('from far');
  end;
  totale_colli.sql.add('left outer join art on (art.codice = art_codice)');
  totale_colli.sql.add('where progressivo = :progressivo');
  totale_colli.parambyname('progressivo').asinteger := trunc(v_progressivo.value);
  totale_colli.open;

  if tabella_edit(tabella) then
  begin
    tabella.fieldbyname('numero_colli').asinteger := totale_colli.fieldbyname('totale_colli').asinteger;
    tabella.fieldbyname('numero_confezioni').asinteger := totale_colli.fieldbyname('totale_confezioni').asinteger;
    tabella.fieldbyname('volume').asfloat := totale_colli.fieldbyname('volume').asfloat;
    tabella.fieldbyname('peso_lordo').asfloat := totale_colli.fieldbyname('peso_lordo').asfloat;
    tabella.fieldbyname('peso_netto').asfloat := totale_colli.fieldbyname('peso_netto').asfloat;
  end;

  totale_colli.free;
end;

procedure TGESACQ.controllo_numero_colli_evasi;
begin
  if tabella_righe.fieldbyname('numero_colli').asinteger < tabella_righe.fieldbyname('numero_colli_evasi').asinteger then
  begin
    messaggio(000, 'il numero colli digitato [' + inttostr(tabella_righe.fieldbyname('numero_colli').asinteger) +
      '] è inferiore al numero_colli già evaso della riga [' +
      inttostr(tabella_righe.fieldbyname('numero_colli_evasi').asinteger) + ']');
  end
end;

procedure TGESACQ.controllo_numero_confezioni_evase;
begin
  if tabella_righe.fieldbyname('numero_confezioni').asinteger < tabella_righe.fieldbyname('numero_confezioni_evase').asinteger then
  begin
    messaggio(000, 'il numero confezioni digitato [' + inttostr(tabella_righe.fieldbyname('numero_confezioni').asinteger) +
      '] è inferiore al numero_confezioni già evaso della riga [' +
      inttostr(tabella_righe.fieldbyname('numero_confezioni_evase').asinteger) + ']');
  end
end;

procedure TGESACQ.calcola_quantita_confezioni;
var
  decimali: word;
begin
  if not art.eof then
  begin
    assegna_quantita_confezioni(tabella_righe, art, tda, decimali_quantita_art(v_art_codice.text),
      'numero_colli', 'numero_confezioni', 'quantita');

    assegna_tum_quantita_base;
    controllo_quantita_evasa;
    assegna_valore_prezzo;
    calcola_importo;
  end;
end;

procedure TGESACQ.cerca_prezzo(tipo: string);
begin
  cerca_prezzi.cerca_prezzo('F', tabella.fieldbyname('frn_codice').asstring, '', tipo,
    tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('tma_codice').asstring,
    tabella_righe.fieldbyname('quantita').asfloat, prezzo, tsm_codice, tsm_codice_art,
    tabella.fieldbyname('data_documento').asdatetime, tabella.fieldbyname('tva_codice').asstring,
    tabella.fieldbyname('cambio').asfloat,
    cifre_decimali_prezzo_acq, tabella.fieldbyname('tla_codice').asstring,
    (tabella_righe.fieldbyname('tum_quantita_base').asfloat / tabella_righe.fieldbyname('quantita').asfloat),
    tabella_righe.fieldbyname('tum_codice').asstring, '');
end;

procedure TGESACQ.crea_record_ncr;
begin
  nca.progressivo := progressivo_nca;
  nca.data_registrazione := tabella.fieldbyname('data_registrazione').asdatetime;
  nca.tac_codice := tac_codice_nca;
  nca.modulo_origine := 'acq';
  nca.documento_origine := tipo_documento;
  nca.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
  nca.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;

  nca.crea_ncr;
  progressivo_nca := 0;
end;

procedure TGESACQ.date_competenza_controllo;
var
  anno, mese, giorno, anno_i: word;
begin
  if controllo then
  begin
    if (v_data_documento.date <> 0) and (v_data_competenza_plafond.date <> 0) then
    begin
      decodedate(v_data_competenza_plafond.date, anno, mese, giorno);
      decodedate(v_data_documento.date, anno_i, mese, giorno);
      if anno <> anno_i then
      begin
        messaggio(200, 'anno documento diverso da anno competenza plafond');
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_query_navigazione;
begin
  inherited;

  if not utntda.isempty then
  begin
    tabella_primo.sql.text := copy(tabella_primo.sql.text, 1, pos('where ', tabella_primo.sql.text) - 1) +
      'left join utntda on utntda.utn_codice = ' + quotedstr(utente) + ' and utntda.tda_codice = ' +
      tabella_tablename + '.tda_codice ' +
      copy(tabella_primo.sql.text, pos('where ', tabella_primo.sql.text),
      pos('order by', tabella_primo.sql.text) - pos('where ', tabella_primo.sql.text)) + ' ' +
      'and utntda.tda_codice is not null ' +
      copy(tabella_primo.sql.text, pos('order by ', tabella_primo.sql.text) - 1, length(tabella_primo.sql.text));

    tabella_ultimo.sql.text := copy(tabella_ultimo.sql.text, 1, pos('where ', tabella_ultimo.sql.text) - 1) +
      'left join utntda on utntda.utn_codice = ' + quotedstr(utente) + ' and utntda.tda_codice = ' +
      tabella_tablename + '.tda_codice ' +
      copy(tabella_ultimo.sql.text, pos('where ', tabella_ultimo.sql.text),
      pos('order by', tabella_ultimo.sql.text) - pos('where ', tabella_ultimo.sql.text)) + ' ' +
      'and utntda.tda_codice is not null ' +
      copy(tabella_ultimo.sql.text, pos('order by ', tabella_ultimo.sql.text) - 1, length(tabella_ultimo.sql.text));

    tabella_successivo.sql.text := copy(tabella_successivo.sql.text, 1, pos('where ', tabella_successivo.sql.text) - 1) +
      'left join utntda on utntda.utn_codice = ' + quotedstr(utente) + ' and utntda.tda_codice = ' +
      tabella_tablename + '.tda_codice ' +
      copy(tabella_successivo.sql.text, pos('where ', tabella_successivo.sql.text),
      pos('order by', tabella_successivo.sql.text) - pos('where ', tabella_successivo.sql.text)) + ' ' +
      'and utntda.tda_codice is not null ' +
      copy(tabella_successivo.sql.text, pos('order by ', tabella_successivo.sql.text) - 1, length(tabella_successivo.sql.text));

    tabella_precedente.sql.text := copy(tabella_precedente.sql.text, 1, pos('where ', tabella_precedente.sql.text) - 1) +
      'left join utntda on utntda.utn_codice = ' + quotedstr(utente) + ' and utntda.tda_codice = ' +
      tabella_tablename + '.tda_codice ' +
      copy(tabella_precedente.sql.text, pos('where ', tabella_precedente.sql.text),
      pos('order by', tabella_precedente.sql.text) - pos('where ', tabella_precedente.sql.text)) + ' ' +
      'and utntda.tda_codice is not null ' +
      copy(tabella_precedente.sql.text, pos('order by ', tabella_precedente.sql.text) - 1, length(tabella_precedente.sql.text));
  end;
end;

procedure TGESACQ.esegui_ubicazioni;
var
  ubicazione: string;
  forzatura_creazione: boolean;
begin
  inherited;

  if (arc.dit.fieldbyname('ubicazione_multipla').asstring = 'si') and (tabella.fieldbyname('tmo_codice').asstring <> '') and
    (art.fieldbyname('tipo_articolo').asstring = 'fiscale') and (tabella_righe.fieldbyname('situazione').asstring = 'inserito') then
  begin
    if tabella_righe.fieldbyname('tum_quantita_base').asfloat <> 0 then
    begin
      codice_passato := vararrayof([tabella.fieldbyname('tipo_documento').asstring + ' acq',
        tabella_righe.fieldbyname('progressivo').asinteger, tabella_righe.fieldbyname('riga').asinteger]);

      if tub_codice_globale = '' then
      begin
        forzatura_creazione := false;
        ubicazione := art.fieldbyname('tub_codice').asstring;
      end
      else
      begin
        forzatura_creazione := true;
        ubicazione := tub_codice_globale;
      end;
      tub_codice_globale := '';

      esegui_carubm(codice_passato, tabella_righe.fieldbyname('art_codice').asstring, ubicazione, 'ordinato',
        tabella.fieldbyname('tmo_codice').asstring, tabella_righe.fieldbyname('tma_codice').asstring,
        tabella.fieldbyname('data_documento').asdatetime, tabella_righe.fieldbyname('tum_quantita_base').asfloat,
        forzatura_creazione);
    end;
  end;
end;

procedure TGESACQ.esegui_ubicazioni_magazzino(tmo_codice, tma_codice: string);
var
  tipo_movimento: string;
  riga: integer;
begin
  inherited;

  tipo_movimento := '';

  read_tabella(arc.arcdit, 'tmo', 'codice', tmo_codice, 'esistenza');
  if archivio.fieldbyname('esistenza').asstring = 'incrementa' then
  begin
    tipo_movimento := 'carico';
  end;
  if archivio.fieldbyname('esistenza').asstring = 'decrementa' then
  begin
    tipo_movimento := 'scarico';
  end;

  read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring, 'tub_codice');
  if tabella_righe.fieldbyname('tum_quantita_base').asfloat <> 0 then
  begin
    if movmag.riga <> 0 then
    begin
      riga := movmag.riga;
    end
    else
    begin
      riga := movmag.riga_mmr;
    end;
    codice_passato := vararrayof(['movimenti magazzino', movmag.progressivo, riga]);

    esegui_carubm(codice_passato, tabella_righe.fieldbyname('art_codice').asstring, archivio.fieldbyname('tub_codice').asstring,
      tipo_movimento, tmo_codice, tma_codice,
      tabella.fieldbyname('data_documento').asdatetime, tabella_righe.fieldbyname('tum_quantita_base').asfloat);
  end;
end;

procedure TGESACQ.v_lti_progressivoEnter(Sender: TObject);
begin
  inherited;

  visarc_filtro_01 := 'F';
  visarc_filtro_02 := v_frn_codice.text;
  visarc_filtro_03 := yearof(tabella.fieldbyname('data_documento').asdatetime);

  variato_importo := v_lti_progressivo.value;
end;

procedure TGESACQ.v_lti_progressivoExit(Sender: TObject);
begin
  inherited;

  if variato_importo <> v_lti_progressivo.value then
  begin
    if v_lti_progressivo.intvalue = 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tiv_codice').asstring := '';
        assegna_valore_tiv_codice;
        tiv_codice_controllo(false);
      end;
    end
    else
    begin
      v_lti_progressivo_controllo(true);
      dicint.assegna_tiv_codice(v_lti_progressivo.intvalue, tabella);
      assegna_valore_tiv_codice;
      tiv_codice_controllo(false);
    end;
  end;
end;

procedure TGESACQ.v_lti_progressivo_controllo(blocco: boolean);
var
  lti: tmyquery_go;
begin
  inherited;

  lti := tmyquery_go.create(nil);
  lti.connection := arc.arcdit;
  try
    lti.sql.add('select lti.tiv_codice');
    lti.sql.add('from lti');
    lti.sql.add('where lti.chiusa = ''no'' and lti.progressivo = :progressivo');
    lti.sql.add('and lti.cfg_tipo = :cfg_tipo and lti.cfg_codice = :cfg_codice');

    tabella_controllo(true, lti, v_lti_progressivo, v_cfg_tipo, v_frn_codice, blocco, tab_control, tab_testata_riferimento, tabella);
  finally
    lti.free;
  end;
end;

procedure TGESACQ.v_data_competenza_bilancioExit(Sender: TObject);
begin
  inherited;
  v_data_competenza_bilancio_controllo;
end;

procedure TGESACQ.v_data_competenza_bilancio_controllo;
begin
  if controllo then
  begin
    if (v_data_competenza_bilancio.date <> 0) and
      ((v_data_competenza_bilancio.date < data_inizio) or (v_data_competenza_bilancio.date > data_fine)) then
    begin
      messaggio(000, 'data fuori dai limiti dell''esercizio fiscale');
      tab_control.activepage := tab_testata_magazzino;
      fuoco(v_data_competenza_bilancio);
      abort;
    end;
  end;
end;

procedure TGESACQ.v_data_competenza_ivaExit(Sender: TObject);
var
  anno, anno_i, mese, giorno: word;
begin
  inherited;

  if (tabella.fieldbyname('data_competenza_iva').value <> null) and
    (tabella.fieldbyname('data_registrazione').value <> null) then
  begin
    decodedate(tabella.fieldbyname('data_registrazione').asdatetime, anno, mese, giorno);
    decodedate(tabella.fieldbyname('data_competenza_iva').asdatetime, anno_i, mese, giorno);
    if anno <> anno_i then
    begin
      messaggio(200, 'anno competenza iva diverso da anno registrazione');
    end;
  end;
end;

procedure TGESACQ.assegna_data_competenza_bilancio;
begin
  if (arc.dit.fieldbyname('data_competenza_automatica').asstring = 'si') and
    (copy(tipo_documento, 1, 7) = 'fattura') then
  begin
    if (yearof(tabella.fieldbyname('data_registrazione').asdatetime) =
      yearof(tabella.fieldbyname('data_documento').asdatetime)) then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('data_competenza_bilancio').asdatetime :=
          tabella.fieldbyname('data_documento').asdatetime;
        v_data_competenza_bilancio_controllo;
      end;
    end
    else
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('data_competenza_bilancio').value := null;
      end;
    end;
  end;
end;

procedure TGESACQ.controllo_blocco_modifica_prezzi_vendita(sender: tobject);
var
  errore: boolean;
begin
  errore := false;

  if screen.activecontrol = sender then
  begin
    if ((tipo_documento = 'preventivo') or (tipo_documento = 'ordine')) and
      (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') then
    begin
      messaggio(000, 'la riga del documento in situazione "evaso parziale" non è modificabile');
      errore := true;
    end;
  end;

  if errore then
  begin
    if tabella_edit(tabella_righe) then
    begin
      if screen.activecontrol = v_prezzo then
      begin
        tabella_righe.fieldbyname('prezzo').asfloat := variato_importo;
      end;
      if screen.activecontrol = v_tsm_codice_righe then
      begin
        tabella_righe.fieldbyname('tsm_codice').asstring := variato_stringa;
      end;
      if screen.activecontrol = v_tsm_codice_art then
      begin
        tabella_righe.fieldbyname('tsm_codice_art').asstring := vecchio_tsm_codice_art;
      end;
      if screen.activecontrol = v_importo_sconto_righe then
      begin
        tabella_righe.fieldbyname('importo_sconto').asfloat := variato_importo;
      end;
      if screen.activecontrol = v_tipo_movimento then
      begin
        tabella_righe.fieldbyname('tipo_movimento').asstring := variato_stringa;
        v_tipo_movimento.itemindex := v_tipo_movimento.indexof(variato_stringa);
      end;
      if screen.activecontrol = v_importo then
      begin
        tabella_righe.fieldbyname('importo').asfloat := variato_importo;
      end;
    end;

    if sender is trzdbnumericedit_go then
    begin
      if trzdbnumericedit_go(sender).canfocus then
      begin
        trzdbnumericedit_go(sender).setfocus;
      end;
    end
    else if sender is trzdbedit_go then
    begin
      if trzdbedit_go(sender).canfocus then
      begin
        trzdbedit_go(sender).setfocus;
      end;
    end
    else if sender is trzdbcombobox_go then
    begin
      if trzdbcombobox_go(sender).canfocus then
      begin
        trzdbcombobox_go(sender).setfocus;
      end;
    end;
  end;
end;

procedure TGESACQ.assegna_tum_quantita_base;
var
  decimali: word;
begin
  if tabella_righe.fieldbyname('tum_codice').asstring = art.fieldbyname('tum_codice').asstring then
  begin
    tabella_righe.fieldbyname('tum_quantita_base').asfloat := tabella_righe.fieldbyname('quantita').asfloat;
  end
  else if tda.fieldbyname('input_quantita_base').asstring = 'no' then
  begin
    decimali := decimali_quantita_art(tabella_righe.fieldbyname('art_codice').asstring);
    if tda.fieldbyname('imputazione_quantita_base').asstring = 'no' then
    begin
      if tabella_righe.fieldbyname('tum_codice').asstring = art.fieldbyname('tum_codice_acquisti').asstring then
      begin
        if art.fieldbyname('operazione_coefficiente_acq').asstring = '*' then
        begin
          tabella_righe.fieldbyname('tum_quantita_base').asfloat := arrotonda(tabella_righe.fieldbyname('quantita').asfloat *
            art.fieldbyname('tum_coefficiente_acquisti').asfloat, decimali);
        end
        else
        begin
          tabella_righe.fieldbyname('tum_quantita_base').asfloat := arrotonda(tabella_righe.fieldbyname('quantita').asfloat /
            art.fieldbyname('tum_coefficiente_acquisti').asfloat, decimali);
        end;
      end
      else if tabella_righe.fieldbyname('tum_codice').asstring = art.fieldbyname('tum_codice_vendite').asstring then
      begin
        if art.fieldbyname('operazione_coefficiente_ven').asstring = '*' then
        begin
          tabella_righe.fieldbyname('tum_quantita_base').asfloat := arrotonda(tabella_righe.fieldbyname('quantita').asfloat *
            art.fieldbyname('tum_coefficiente_vendite').asfloat, decimali);
        end
        else
        begin
          tabella_righe.fieldbyname('tum_quantita_base').asfloat := arrotonda(tabella_righe.fieldbyname('quantita').asfloat /
            art.fieldbyname('tum_coefficiente_vendite').asfloat, decimali);
        end;
      end
      else
      begin
        assegna_cum;
      end;

      if esiste_righe then
      begin
        messaggio(200, 'è stata variata automaticamente la quantità riferita all''unità di misura principale' + #13 +
          'per correggere la quantità calcolata automaticamente utilizzare il bottone "dati riga"');
      end;
    end;
  end;
end;

end.
