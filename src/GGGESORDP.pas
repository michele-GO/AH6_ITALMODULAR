unit GGGESORDP;

interface

uses 
  winapi.windows, winapi.messages, system.sysutils, system.variants, system.classes, vcl.graphics, vcl.controls, vcl.forms, ZZCALFAS, 
  vcl.dialogs, GGGESDOC, data.db, query_go, MyAccess, vcl.menus, vcl.grids, vcl.dbgrids, RzDBGrid, vcl.stdctrls, vcl.mask, vcl.comctrls, RzTabs, 
  vcl.toolwin, vcl.extctrls, vcl.dbctrls, vcl.buttons, RzSpnEdt, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk, 
  ZZCERCA_PREZZO, ZZNCA, ZZTOTACQ, ZZTOTVEN, ZZTIPINV, ZZVALDSB, ZZPRZINV, ZZCREA_ORDA_CL, ZZFABBISOGNO_DINAMICO, 
  RzRadChk, RzButton, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go, ZZRMA, 
  ZZDICINT, DBAccess, MemDS, RzEdit, VirtualTable, Vcl.WinXCtrls, RzGroupBar;

type

  TGESORDP = class(TGESDOC)
    Label2: TRzlabel;
    v_art_codice_materie_prime: TRzDBEdit_go;
    v_quantita_materie_prime: TRzDBNumericEdit_go;
    Label3: TRzlabel;
    Label8: TRzlabel;
    v_data_documento: TRzDBDateTimeEdit_go;
    Label10: TRzlabel;
    v_numero_documento: TRzDBNumericEdit_go;
    Label23: TRzlabel;
    esistenza_deposito_materie_prime: tmyquery_go;
    esistenza_deposito_materie_prime_ds: tmydatasource;
    esistenza_totale_materie_prime: tmyquery_go;
    esistenza_totale_materie_prime_ds: tmydatasource;
    Panel2: TRzpanel;
    GroupBox1: TGroupBox;
    Label18: TRzlabel;
    Label19: TRzlabel;
    v_esistenza_deposito_finiti: TRzDBNumericEdit_go;
    v_esistenza_totale_finiti: TRzDBNumericEdit_go;
    Panel5: TRzpanel;
    GroupBox2: TGroupBox;
    Panel6: TRzpanel;
    Label17: TRzlabel;
    v_quantita_evasa_righe: TRzDBNumericEdit_go;
    Label4: TRzlabel;
    v_esistenza_deposito_materie_prime: TRzDBNumericEdit_go;
    Label5: TRzlabel;
    v_esistenza_totale_materie_prime: TRzDBNumericEdit_go;
    esistenza_deposito_finiti: tmyquery_go;
    esistenza_deposito_finiti_ds: tmydatasource;
    esistenza_totale_finiti: tmyquery_go;
    esistenza_totale_finiti_ds: tmydatasource;
    query_figlio: tmyquery_go;
    dsb: tmyquery_go;
    Label53: TRzlabel;
    v_tipo_esplosione: TRzDBComboBox_go;
    riga_padre: tmyquery_go;
    v_semilavorato: TRzDbcheckbox;
    Label6: TRzlabel;
    v_costo_unitario: TRzDBNumericEdit_go;
    tool_lavorazione: TToolButton;
    esiste_oat: tmyquery_go;
    frn: tmyquery_go;
    esiste_dvt: tmyquery_go;
    oat_esistente: tmyquery_go;
    dvt_esistente: tmyquery_go;
    query_mmt: tmyquery_go;
    query_ddt: tmyquery_go;
    query_oat: tmyquery_go;
    query_rda: tmyquery_go;
    msg: tmyquery_go;
    lsa: tmyquery_go;
    varia_dsb: tmyquery_go;
    varia_dsb_last: tmyquery_go;
    Label25: TRzlabel;
    v_quantita_spedita: TRzDBNumericEdit_go;
    cpa: tmyquery_go;
    rda_delete: tmyquery_go;
    dvt: tmyquery_go;
    dvr: tmyquery_go;
    dvr_ultimo: tmyquery_go;
    oat: tmyquery_go;
    oar: tmyquery_go;
    oar_ultimo: tmyquery_go;
    lavorazioni: tmyquery_go;
    Label21: TRzlabel;
    v_tmo_codice_finiti: TRzDBEdit_go;
    Label1: TRzlabel;
    v_tma_codice_finiti: TRzDBEdit_go;
    Label7: TRzlabel;
    v_tmo_codice_materie_prime: TRzDBEdit_go;
    Label9: TRzlabel;
    v_tma_codice_materie_prime: TRzDBEdit_go;
    Label14: TRzlabel;
    v_art_codice_finiti: TRzDBEdit_go;
    Label24: TRzlabel;
    Label11: TRzlabel;
    v_quantita_finiti: TRzDBNumericEdit_go;
    Label13: TRzlabel;
    v_data_consegna: TRzDBDateTimeEdit_go;
    v_l_frn_codice: TRzlabel;
    v_frn_codice: TRzDBEdit_go;
    tab_pagina2: TRztabsheet;
    v_cms_codice: TRzDBEdit_go;
    v_tipologia: TRzDBEdit_go;
    Label20: TRzlabel;
    Label22: TRzlabel;
    tmo: tmyquery_go;
    tmo_ds: tmydatasource;
    tma: tmyquery_go;
    tma_ds: tmydatasource;
    RzDBEditDescrizione_go1: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go2: TRzDBEditDescrizione_go;
    tmo_codice_mp: tmyquery_go;
    tmo_codice_mp_ds: tmydatasource;
    tma_codice_mp: tmyquery_go;
    tma_codice_mp_ds: tmydatasource;
    RzDBEditDescrizione_go3: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go4: TRzDBEditDescrizione_go;
    Panel1: TRzpanel;
    Label15: TRzlabel;
    v_quantita_evasa: TRzDBNumericEdit_go;
    v_art_descrizione1: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go7: TRzDBEditDescrizione_go;
    art_finiti: tmyquery_go;
    art_finiti_ds: tmydatasource;
    frn_ds: tmydatasource;
    RzDBEditDescrizione_go8: TRzDBEditDescrizione_go;
    cms: tmyquery_go;
    cms_ds: tmydatasource;
    cmt: tmyquery_go;
    cmt_ds: tmydatasource;
    RzDBEditDescrizione_go10: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go11: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go12: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go14: TRzDBEditDescrizione_go;
    art_materie_prime: tmyquery_go;
    art_materie_prime_ds: tmydatasource;
    opr: tmyquery_go;
    Label27: TRzlabel;
    v_tma_codice: TRzDBEdit_go;
    RzDBEditDescrizione_go15: TRzDBEditDescrizione_go;
    tma_righe: tmyquery_go;
    tma_righe_ds: tmydatasource;
    dsb_tma: tmyquery_go;
    cambia_deposito: tmyquery_go;
    v_ovr_progressivo: TRzDBEdit_go;
    v_ovr_riga: TRzDBEdit_go;
    tool_distinta_print: TToolButton;
    evasione_saldo: tmyquery_go;
    Label28: TRzlabel;
    v_esistenza_principale_finiti: TRzDBNumericEdit_go;
    esistenza_principale_finiti: tmyquery_go;
    esistenza_principale_finiti_ds: tmydatasource;
    v_esistenza_principale_materie_prime: TRzDBNumericEdit_go;
    Label29: TRzlabel;
    esistenza_principale_materie_prime: tmyquery_go;
    esistenza_principale_materie_prime_ds: tmydatasource;
    esiste_opt: tmyquery_go;
    GroupBox3: TGroupBox;
    Label30: TRzlabel;
    Label31: TRzlabel;
    Label32: TRzlabel;
    v_documento_origine: TRzDBEdit_go;
    v_doc_progressivo_origine: TRzDBNumericEdit_go;
    v_doc_riga_origine: TRzDBNumericEdit_go;
    v_gestione_collegato: TRzRapidFireButton;
    tool_rda_acquisto: TToolButton;
    rda: tmyquery_go;
    query_abilita_rda: tmyquery_go;
    cla: tmyquery_go;
    opc: tmyquery_go;
    opc_totalizza: tmyquery_go;
    frn_rda: tmyquery_go;
    opc_costo: tmyquery_go;
    art: tmyquery_go;
    opr_esplosione: tmyquery_go;
    v_quantita_approntata: TRzDBNumericEdit_go;
    Label33: TRzlabel;
    Label34: TRzlabel;
    v_lot_codice: TRzDBEdit_go;
    ltm: tmyquery_go;
    v_data_consegna_ovr: TRzRapidFireButton;
    mag_approntato: tmyquery_go;
    opc_gesorda: tmyquery_go;
    art_costo: tmyquery_go;
    v_assistenza_tecnica: TRzDbcheckbox;
    rda_oar: tmyquery_go;
    esiste_oat_mp: tmyquery_go;
    Label35: TRzlabel;
    v_quantita_ordinata: TRzDBNumericEdit_go;
    ovr: tmyquery_go;
    cnf: tmyquery_go;
    ltm_approntato: tmyquery_go;
    tda: tmyquery_go;
    tdo: tmyquery_go;
    esistenza_deposito: tmyquery_go;
    art_quantita: tmyquery_go;
    dvr_art: TMyQuery_go;
    RzLabel1: TRzLabel;
    cli: TMyQuery_go;
    ordini_collegati: TVirtualTable;
    query_ordini_collegati: TMyQuery_go;
    ordini_collegatiprogressivo: TIntegerField;
    ordini_collegatiquantita: TFloatField;
    ordini_collegatifrn_codice: TStringField;
    opc_chiuso: TMyQuery_go;
    opc_quantita: TMyQuery_go;
    tool_movmag: TToolButton;
    arf: TMyQuery_go;
    v_avanzamento_fasi: TRzDBCheckBox;
    v_esiste_oat: TRzDBCheckBox;
    RzLabel3: TRzLabel;
    v_top_codice: TRzDBEdit_go;
    v_tdo_descrizione: TRzDBEditDescrizione_go;
    RzLabel4: TRzLabel;
    v_serie_documento: TRzDBEdit_go;
    top: TMyQuery_go;
    top_ds: TMyDataSource;
    mmr_costo: TMyQuery_go;
    RzDBEditDescrizione_go5: TRzDBEditDescrizione_go;
    tab_pannello_bottoni_nuovi_storno: TRzTabSheet;
    opc_quantita_iniziata: TMyQuery_go;
    lot: TMyQuery_go;
    materie_prime: TVirtualTable;
    materie_primeart_codice: TStringField;
    materie_primeart_descrizione: TStringField;
    materie_primequantita: TFloatField;
    materie_primeart_codice_finito: TStringField;
    materie_primequantita_calcolata: TFloatField;
    materie_primequantita_evasa: TFloatField;
    materie_primetma_codice: TStringField;
    materie_primeprogressivo: TIntegerField;
    materie_primeriga: TIntegerField;
    v_fasi_non_sequenziali: TRzDBCheckBox;
    tool_documenti_allegati: TToolButton;
    materie_primeignora_articoli_produzione: TStringField;
    opc_fasi: TMyQuery_go;
    v_abilita_evasione: TRzDBCheckBox;
    mmt_ordp: TMyQuery_go;
    RzLabel10: TRzLabel;
    v_priorita: trzdbcombobox_go;
    equ: TMyQuery_go;
    RzLabel5: TRzLabel;
    trzdbnumericedit_go1: trzdbnumericedit_go;
    RzLabel8: TRzLabel;
    trzdbnumericedit_go2: trzdbnumericedit_go;
    RzLabel11: TRzLabel;
    v_sequenza: trzdbnumericedit_go;
    art_opt: TMyQuery_go;
    utntop: TMyQuery_go;
    fls: TMyQuery_go;
    aggiorna_dsb: TMyQuery_go;
    dsb_update: TMyQuery_go;
    cla_update: TMyQuery_go;
    opc_dsb: TMyQuery_go;
    opc_data: TMyQuery_go;
    RzLabel12: TRzLabel;
    v_data_inizio_lavorazione: trzdbdatetimeedit_go;
    ltm_riga: TMyQuery_go;
    fas: TMyQuery_go;
    v_formula: TRzRapidFireButton;
    v_visequ: TRzRapidFireButton;
    v_cancella_collegati: TRzRapidFireButton;
    pannello_destra_02: TCategoryPanel;
    v_equivalenti: TRzRapidFireButton;
    v_equivalenti_filtro: TRzRapidFireButton;
    v_non_conformita: TRzRapidFireButton;
    CategoryPanel1: TCategoryPanel;
    v_storno_evasione: TRzRapidFireButton;
    v_storno_movimenti: TRzRapidFireButton;
    CategoryPanel2: TCategoryPanel;
    CategoryPanel3: TCategoryPanel;
    meno_presso_terzi: TPopupMenu;
    tool_lavorazione_presso_terzi: TMenuItem;
    tool_ddt_lavorazione_presso_terzi: TMenuItem;
    menu_rda: TPopupMenu;
    tool_rda: TMenuItem;
    tool_rda_totale: TMenuItem;
    RzPanel17: TRzPanel;
    RzPanel18: TRzPanel;
    RzPanel19: TRzPanel;
    Label16: TRzLabel;
    v_situazione: trzdbedit_go;
    RzLabel13: TRzLabel;
    trzdbedit_go2: trzdbedit_go;
    RzLabel2: TRzLabel;
    v_fas_codice: trzdbedit_go;
    mnu_distinta: TPopupMenu;
    tool_distinta: TMenuItem;
    tool_staordfas: TMenuItem;
    v_totalizza: TToolButton;
    N1: TMenuItem;
    tool_etiart: TMenuItem;
    v_lettore: TRzRapidFireButton;
    v_modula: TRzRapidFireButton;
    v_opc: TRzRapidFireButton;
    v_evasione: TRzRapidFireButton;
    v_evasione_fasi: TRzRapidFireButton;
    v_genera_ordine_produzione: TRzRapidFireButton;
    v_cruscotto: TRzRapidFireButton;
    v_ordine_cliente: TRzRapidFireButton;
    v_stampa_etichetta: TRzRapidFireButton;
    v_gestione_movimenti_carico: TRzRapidFireButton;
    v_gestione_movimenti_scarico: TRzRapidFireButton;
    CategoryPanel4: TCategoryPanel;
    v_ordine: TRzRapidFireButton;
    v_ddt_fornitore: TRzRapidFireButton;
    CategoryPanel5: TCategoryPanel;
    v_datconfas: TRzRapidFireButton;
    v_aggiorna_dsb: TRzRapidFireButton;
    v_annulla_rda: TRzRapidFireButton;
    v_documento_originale: TRzRapidFireButton;
    v_evasione_saldo: TRzRapidFireButton;
    v_lotti_globali: TRzRapidFireButton;
    v_cambia_deposito: TRzRapidFireButton;
    v_lotti: TRzRapidFireButton;
    RzRapidFireButton1: TRzRapidFireButton;
    v_storno_scarico_diretto: TRzRapidFireButton;
    v_scarichi_extra: TRzRapidFireButton;
    v_scarico_diretto: TRzRapidFireButton;
    v_analisi: TRzRapidFireButton;
    procedure FormCreate(Sender: TObject);
    procedure v_tmo_codice_finitiExit(Sender: TObject);
    procedure pannello_campiEnter(Sender: TObject);
    procedure v_griglia_righeEnter(Sender: TObject);
    procedure v_tma_codice_finitiExit(Sender: TObject);
    procedure v_tmo_codice_materie_primeExit(Sender: TObject);
    procedure v_tma_codice_materie_primeExit(Sender: TObject);
    procedure v_data_documentoExit(Sender: TObject);
    procedure v_numero_documentoEnter(Sender: TObject);
    procedure v_numero_documentoExit(Sender: TObject);
    procedure v_art_codice_materie_primeExit(Sender: TObject);
    procedure pannello_righeEnter(Sender: TObject);
    procedure v_quantita_materie_primeExit(Sender: TObject);
    procedure v_esistenza_deposito_finitiChange(Sender: TObject);
    procedure v_esistenza_totale_finitiChange(Sender: TObject);

    procedure pannello_codiceEnter(Sender: TObject);
    procedure pannello_codiceExit(Sender: TObject);
    procedure v_art_codice_finitiExit(Sender: TObject);
    procedure v_quantita_finitiExit(Sender: TObject);
    procedure pannello_campiExit(Sender: TObject);
    procedure tabella_dsStateChange(Sender: TObject);
    procedure v_cms_codiceExit(Sender: TObject);
    procedure v_tipologiaEnter(Sender: TObject);
    procedure v_tipologiaExit(Sender: TObject);

    procedure v_griglia_righeExit(Sender: TObject);
    procedure v_frn_codiceExit(Sender: TObject);
    procedure v_quantita_materie_primeKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure v_semilavoratoClick(Sender: TObject);
    procedure tool_ddt_lavorazione_presso_terziClick(Sender: TObject);
    procedure v_gestione_movimenti_scaricoClick(Sender: TObject);
    procedure v_ddt_fornitoreClick(Sender: TObject);
    procedure v_gestione_movimenti_caricoClick(Sender: TObject);
    procedure v_ordineClick(Sender: TObject);
    procedure v_evasioneClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_progressivoEnter(Sender: TObject);
    procedure v_ordine_clienteClick(Sender: TObject);
    procedure v_art_codice_materie_primeEnter(Sender: TObject);
    procedure v_art_codice_finitiEnter(Sender: TObject);
    procedure v_frn_codiceEnter(Sender: TObject);
    procedure v_tma_codiceExit(Sender: TObject);
    procedure tool_distintaClick(Sender: TObject);
    procedure tabellaAfterScroll(DataSet: TDataSet);
    procedure v_totalizzaClick(Sender: TObject);
    procedure v_cambia_depositoClick(Sender: TObject);
    procedure v_evasione_saldoClick(Sender: TObject);
    procedure v_quantita_finitiEnter(Sender: TObject);
    procedure v_formulaClick(Sender: TObject);
    procedure pannello_righeExit(Sender: TObject);
    procedure v_equivalentiClick(Sender: TObject);
    procedure v_equivalenti_filtroClick(Sender: TObject);
    procedure v_esistenza_principale_finitiChange(Sender: TObject);
    procedure v_esistenza_deposito_materie_primeChange(Sender: TObject);
    procedure v_esistenza_totale_materie_primeChange(Sender: TObject);
    procedure v_esistenza_principale_materie_primeChange(Sender: TObject);
    procedure v_griglia_righeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
    procedure v_genera_ordine_produzioneClick(Sender: TObject);
    procedure v_documento_origineChange(Sender: TObject);
    procedure v_gestione_collegatoClick(Sender: TObject);
    procedure v_documento_originaleClick(Sender: TObject);
    procedure tool_rdaClick(Sender: TObject);
    procedure v_annulla_rdaClick(Sender: TObject);
    procedure v_lettoreClick(Sender: TObject);
    procedure v_opcClick(Sender: TObject);
    procedure v_visequClick(Sender: TObject);
    procedure v_art_codice_finitiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v_analisiClick(Sender: TObject);
    procedure v_cruscottoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v_quantita_approntataExit(Sender: TObject);
    procedure v_lot_codiceEnter(Sender: TObject);
    procedure v_cms_codiceEnter(Sender: TObject);
    procedure v_data_consegna_ovrClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure v_non_conformitaClick(Sender: TObject);
    procedure v_art_codice_materie_primeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tool_rda_totaleClick(Sender: TObject);
    procedure v_lottiClick(Sender: TObject);
    procedure v_bottone_nuovoClick(Sender: TObject);
    procedure v_evasione_fasiClick(Sender: TObject);
    procedure v_fas_codiceChange(Sender: TObject);
    procedure tool_movmagClick(Sender: TObject);
    procedure v_top_codiceExit(Sender: TObject);
    procedure v_top_codiceEnter(Sender: TObject);
    procedure v_storno_evasioneClick(Sender: TObject);
    procedure tabella_righeAfterScroll(DataSet: TDataSet);
    procedure modifica_quantita(progressivo, riga: integer; rapporto: double);
    procedure v_stampa_etichettaClick(Sender: TObject);
    procedure materie_primeBeforeInsert(DataSet: TDataSet);
    procedure materie_primeBeforeDelete(DataSet: TDataSet);
    procedure tool_documenti_allegatiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tool_staordfasClick(Sender: TObject);
    procedure v_datconfasClick(Sender: TObject);
    procedure tool_etiartClick(Sender: TObject);
    procedure tool_invio_messaggioClick(Sender: TObject);
    procedure v_storno_movimentiClick(Sender: TObject);
    procedure v_cancella_collegatiClick(Sender: TObject);
    procedure v_lotti_globaliClick(Sender: TObject);
    procedure v_griglia_righeDblClick(Sender: TObject);
    procedure v_aggiorna_dsbClick(Sender: TObject);
    procedure v_scarichi_extraClick(Sender: TObject);
    procedure v_scarico_direttoClick(Sender: TObject);
    procedure v_storno_scarico_direttoClick(Sender: TObject);
    procedure v_modulaClick(Sender: TObject);
    procedure v_lot_codiceExit(Sender: TObject);
    procedure tool_lavorazione_presso_terziClick(Sender: TObject);
  protected
    dicint: tdicint;

    calfas: tcalfas;

    cerca_prezzi: tcerca_prezzo;
    nca: tnca;
    totacq: ttotacq;
    totven: ttotven;
    tipinv: ttipinv;
    valdsb: tvaldsb;
    przinv: tprzinv;
    //cicli: tcicli;
    fabdin: tfabdin;
    rma: trma;

    sconto_massimo_art: double;
    data_documento, data_precedente: tdatetime;
    progressivo_padre: double;
    numero_riga_padre: integer;
    top_codice, top_codice_precedente: string;

    vecchio_data_documento: tdate;
    vecchio_numero_documento, numero_documento, numero_documento_precedente: double;
    tmo_codice_finiti, tma_codice_finiti, tmo_codice_materie_prime, tma_codice_materie_prime,
      vecchio_art_codice_finiti, vecchio_art_codice_materie_prime, vecchio_tma_codice: string;
    vecchio_quantita_finiti, vecchio_quantita_materie_prime: double;
    cifre_decimali_quantita_finiti, cifre_decimali_quantita_materie_prime: word;

    creazione_automatica: boolean;
    tasto_ins_numero_documento: boolean;

    art_codice, art_codice_finito, tipo_esplosione: string;
    quantita: double;

    vecchio_tmo_codice_finiti, vecchio_tma_codice_finiti, vecchio_tmo_codice_materie_prime,
      vecchio_tma_codice_materie_prime, vecchio_frn_codice: string;
    tda_codice_produzione_presso_terzi: string;

    gen_codice_sconti_fattura, gen_codice_sconto_cassa: string;
    tiv_codice_omaggi: string;

    esplosione: boolean;
    costo_produzione: string;
    varia_dsb_ordp: string;

    art_codice_sconto_cassa_acq, art_codice_sconti_fattura_acq: string;
    taq_codice_sconto_cassa, taq_codice_sconti_fattura: string;

    sconto_imponibile_lordo: string;
    progressivo_dvt: integer;

    art_codice_gesven, note_gesven, note_interne_gesven, formula_gesven, cms_gesven, cmt_gesven,
      documento_origine_gesven, art_codice_semilavorato_gesven, tipo_esplosione_gesven: string;
    quantita_gesven: double;
    progressivo_gesven, doc_progressivo_origine_gesven, doc_riga_origine_gesven, riga_gesven: integer;
    data_consegna_gesven: tdatetime;
    codice_finito, lot_codice_finito: string;
    progressivo_finito: integer;

    azzeramento_lettore: boolean;
    data_registrazione_evasione: tdate;

    progressivo_nca: integer;
    tac_codice_nca: string;

    tda_codice: string;

    lettore: boolean;
    inserisci: boolean;

    progressivo_allegati, primo_progressivo: integer;
    formula_visualizza: boolean;

    tvr_codice, tvr_codice_passato, art_codice_variante, art_codice_variante_passato: string;

    data_inizio_lavorazione_passato: variant;

    progressivo_rma: integer;

    procedure v_top_codice_controllo(blocco: boolean);
    procedure tmo_codice_finiti_controllo(blocco: boolean);
    procedure tma_codice_finiti_controllo(blocco: boolean);
    procedure tmo_codice_materie_prime_controllo(blocco: boolean);
    procedure tma_codice_materie_prime_controllo(blocco: boolean);
    procedure data_documento_controllo;
    procedure quantita_finiti_controllo;
    procedure quantita_materie_prime_controllo;
    procedure art_codice_finiti_controllo(blocco: boolean);
    procedure frn_codice_controllo(blocco: boolean);
    procedure art_codice_materie_prime_controllo(blocco: boolean);
    procedure tma_codice_controllo(blocco: boolean);
    procedure attiva_esiste(flag: boolean);
    procedure numero_documento_controllo;
    procedure assegna_vecchio_testata; override;
    procedure azzera_vecchio_testata; override;
    procedure assegna_vecchio_righe; override;
    procedure azzera_vecchio_righe; override;
    procedure esistenza_finiti;
    procedure esistenza_materie_prime;
    procedure esplosione_distinta;
    procedure abilita_storno(flag: boolean);
    procedure cms_codice_controllo(blocco: boolean);
    procedure tipologia_controllo(blocco: boolean);
    procedure abilita_lavorazioni_presso_terzi(flag: boolean);
    procedure crea_ordine_lavorazione_presso_terzi(quantita: double);
    procedure crea_ddt_lavorazione_presso_terzi;
    procedure assegna_top_codice;
    procedure assegna_indirizzo;
    procedure calcola_importo;
    procedure attiva_movimenti_scarico(flag: boolean);
    procedure controllo_rda_oar(operazione: string);
    procedure riga_ordine_modificata(operazione, tipo_file: string);
    procedure esegui_bottone_dati_extra_testata; override;
    procedure esegui_bottone_dati_extra_righe; override;
    procedure esegui_query_righe; override;
    procedure abilita_evasione_saldo(flag: boolean);
    procedure esegui_formula;
    procedure articoli_equivalenti(art_codice_finito: string);
    procedure esegui_collegato;
    procedure memorizza_rda(data_consegna: tdate; descrizione: string; quantita: double);
    procedure abilita_annulla_rda;
    procedure creazione_ciclo(art_codice: string; quantita_finito: double; livello_distinta: boolean);
    procedure esegui_commesse(mmt, mmr: tmyquery_go);
    procedure esegui_lotti(mmt, mmr: tmyquery_go; lot_codice: string);
    procedure esegui_ubicazioni(mmt, mmr: tmyquery_go);
    //procedure evasione_ordine(quantita_evasa: double; saldo_acconto: string; saldo_materie_prime, scarti,
    //evasione_collegati: boolean; progressivo: integer);
    procedure assegna_livello_distinta(art_codice: string;
      quantita: double);
    procedure genera_sottolivelli(asemilavorato, atop_codice, aart_codice, anote: string;
      aquantita: double; ariga: integer; atma_codice_materie_prime: string);

    procedure abilita_fasi_non_sequenziali;
    procedure abilita_evasione;
    procedure assegna_valore_fasi_non_sequenziali;
    procedure abilita_lot_codice;
    procedure assegna_valore_lot_codice;
    procedure cerca_prezzo(tipo: string; var prezzo: double; var tsm_codice, tsm_codice_art: string);
    procedure crea_record_ncr;
    procedure esegui_lotti_approntato;
    procedure note_testata(esiste: boolean);
    //procedure esplosione_collegato(progressivo: integer; quantita: double);
    procedure aggiorna_quantita_ciclo(progressivo: integer;
      rapporto: double);
    procedure controllo_deposito_commessa;
    procedure cancella_collegati(progressivo: integer);
    procedure crea_record_rma;
    procedure controllo_movordp;

    function figlio(art_codice: string): boolean;
    function esiste_ordine_produzione_derivato: boolean;
    function esiste_rda: boolean;
    function esiste_opr: boolean;
    function costo_unitario(art_codice: string): double;
    function esegui_controllo_esistenza(progressivo: integer;
      quantita: double;
      tmo_codice, tma_codice: string): boolean;
    function prima_fase: boolean;

    procedure scarico_componenti(tipo: string);
    procedure esegui_commesse_extra(mmt, mmr: tmyquery_go);
    procedure esegui_lotti_extra(mmt, mmr: tmyquery_go);
    procedure esegui_ubicazioni_extra(mmt, mmr: tmyquery_go);
  public
    procedure visualizza_descrizioni; override;
    procedure abilitazioni; override;
    procedure abilitazioni_righe; override;
    procedure visualizza_descrizioni_righe; override;
    procedure controllo_cancella; override;
    procedure controllo_edit; override;
    procedure controllo_campi; override;
    procedure before_post; override;
    procedure after_post; override;
    procedure before_post_righe; override;

    procedure controllo_cancella_righe; override;
    procedure controllo_edit_righe; override;
    procedure controllo_campi_righe; override;
    procedure before_delete; override;
    procedure after_post_righe; override;
    procedure before_delete_righe; override;
    procedure after_delete_righe; override;
    procedure refresh; override;
    procedure set_codice_archivio; override;
    procedure get_codice_archivio; override;
    procedure stampa; override;

    function controllo_situazione(testata, righe: tmyquery_go): boolean;

    procedure assegna_dataset; override;
    procedure annulla_dataset; override;
  end;

var
  GESORDP: TGESORDP;

implementation

{$r *.dfm}


uses 
  DMARC, GGGESORDP1, GGGESORDP2, GGGESMOV, GGDDTCLAV, ZZLIBRERIE, GGFORMULADSB, ZZCREA_DDT_CL, 
  ZZPARSING, GGANAEQU, GGNTVENACQ, GGLTTERLASINH, GGGESORDPCINH, GGDISORDP, GGVISEQU, GGGESORDPEV, 
  GGDIFFORDP, GGIMPALF, GGEVAFAS, GGEVAORDP, GGMOVORDP, GGSTAORDPETI, GGEVAORDPINT, GGGESDAV, ZZTOTORDP, 
  GGSTOORDP01, GGDATCONFAS, GGDELORDP, GGSTOMOVORDP, GGCARLTMEVAPP, ZZVARIANTI_DSB, GGEVARMA, ZZPRELPROD, 
  ZZLOTTO_NUMERICO, ZZEVAODP, ZZHELPER;

//******************************************************************************
// procedure e funzioni da personalizzare (verranno mantenute da inheritare)
//******************************************************************************

procedure TGESORDP.controllo_cancella;
begin
  inherited;

  if tabella.fieldbyname('avanzamento_fasi').asstring = 'si' then
  begin
    read_tabella(opc_fasi, tabella.fieldbyname('progressivo').asinteger)
  end
  else
  begin
    opc_fasi.close;
  end;

  if not opc_fasi.isempty then
  begin
    messaggio(000, 'ordine non cancellabile perché già in lavorazione');
    controllo_cancella_edit := false;
  end
  else if controllo_situazione(tabella, nil) then
  begin
    controllo_cancella_edit := false;
  end;

  if tabella.fieldbyname('esiste_oat').asstring = 'si' then
  begin
    messaggio(000, 'ordine non cancellabile perché é stato emesso un ordine a terzista');
    controllo_cancella_edit := false;
  end;
end;

procedure TGESORDP.controllo_edit;
begin
  inherited;

  if controllo_situazione(tabella, nil) then
  begin
    controllo_cancella_edit := false;
  end;
end;

procedure TGESORDP.controllo_campi;
begin
  v_top_codice_controllo(true);
  data_documento_controllo;
  numero_documento_controllo;
  tmo_codice_finiti_controllo(true);
  tma_codice_finiti_controllo(true);
  tmo_codice_materie_prime_controllo(true);
  tma_codice_materie_prime_controllo(true);
  art_codice_finiti_controllo(true);
  frn_codice_controllo(true);
  quantita_finiti_controllo;
  cms_codice_controllo(true);
  tipologia_controllo(true);
end;

procedure TGESORDP.controllo_cancella_righe;
begin
  inherited;

  if controllo_situazione(tabella, tabella_righe) then
  begin
    controllo_cancella_edit := false;
  end;
end;

procedure TGESORDP.controllo_edit_righe;
begin
  inherited;

  if controllo_situazione(tabella, tabella_righe) then
  begin
    controllo_cancella_edit := false;
  end;
end;

procedure TGESORDP.controllo_campi_righe;
begin
  art_codice_materie_prime_controllo(true);
  quantita_materie_prime_controllo;
  tma_codice_controllo(true);
end;

//******************************************************************************
// procedure e funzioni da personalizzare specifiche di GESDOC
//******************************************************************************

procedure TGESORDP.FormClose(Sender: TObject;

  var
  Action: TCloseAction);
begin
  inherited;

  if primo_progressivo <> 0 then
  begin
    parametri_extra_programma_chiamato[0] := primo_progressivo;
  end;
end;

procedure TGESORDP.FormCreate(Sender: TObject);
var
  esistenza_checked, scorta_minima_checked, scorta_massima_checked, impegnato_checked, ordinato_checked: boolean;
begin
  // filtro codici documento per utente
  read_tabella(utntop, utente);

  dicint := tdicint.create('C');

  calfas := tcalfas.create;

  cerca_prezzi := tcerca_prezzo.create(arc.arc, arc.arcdit);
  nca := tnca.create;
  totacq := ttotacq.create;
  totven := ttotven.create;
  tipinv := ttipinv.create;
  valdsb := tvaldsb.create;
  przinv := tprzinv.create;
  rma := trma.create;
  //cicli := tcicli.create;

  if arc.dit.fieldbyname('rda_esistenza_op').asstring = 'si' then
  begin
    esistenza_checked := true;
  end
  else
  begin
    esistenza_checked := false;
  end;
  if arc.dit.fieldbyname('rda_scorta_minima_op').asstring = 'si' then
  begin
    scorta_minima_checked := true;
  end
  else
  begin
    scorta_minima_checked := false;
  end;
  if arc.dit.fieldbyname('rda_scorta_massima_op').asstring = 'si' then
  begin
    scorta_massima_checked := true;
  end
  else
  begin
    scorta_massima_checked := false;
  end;
  if arc.dit.fieldbyname('rda_impegnato_op').asstring = 'si' then
  begin
    impegnato_checked := true;
  end
  else
  begin
    impegnato_checked := false;
  end;
  if arc.dit.fieldbyname('rda_ordinato_op').asstring = 'si' then
  begin
    ordinato_checked := true;
  end
  else
  begin
    ordinato_checked := false;
  end;
  fabdin := tfabdin.create(esistenza_checked, scorta_minima_checked, scorta_massima_checked, impegnato_checked, ordinato_checked);

  inherited;

  //  filtro documento per utente
  if not utntop.isempty then
  begin
    tabella.close;
    tabella.sql.text := copy(tabella.sql.text, 1, pos('where opt.progressivo = :progressivo', tabella.sql.text) - 1) +
      ' left join utntop on utntop.utn_codice = ' + quotedstr(utente) + ' and utntop.top_codice = opt.top_codice' +
      ' where opt.progressivo = :progressivo and utntop.top_codice = opt.top_codice ' +
      ' and utntop.top_codice is not null';
    tabella.open;

    tabella_primo.sql.text := copy(tabella_primo.sql.text, 1, pos('where progressivo', tabella_primo.sql.text) - 1) +
      'left join utntop on utntop.utn_codice = ' + quotedstr(utente) + ' and utntop.top_codice = ' +
      tabella_tablename + '.top_codice ' +
      copy(tabella_primo.sql.text, pos('where ', tabella_primo.sql.text),
      pos('order by', tabella_primo.sql.text) - pos('where ', tabella_primo.sql.text)) + ' ' +
      'and utntop.top_codice is not null ' +
      copy(tabella_primo.sql.text, pos('order by ', tabella_primo.sql.text) - 1, length(tabella_primo.sql.text));

    tabella_ultimo.sql.text := copy(tabella_ultimo.sql.text, 1, pos('where progressivo', tabella_ultimo.sql.text) - 1) +
      'left join utntop on utntop.utn_codice = ' + quotedstr(utente) + ' and utntop.top_codice = ' +
      tabella_tablename + '.top_codice ' +
      copy(tabella_ultimo.sql.text, pos('where ', tabella_ultimo.sql.text),
      pos('order by', tabella_ultimo.sql.text) - pos('where ', tabella_ultimo.sql.text)) + ' ' +
      'and utntop.top_codice is not null ' +
      copy(tabella_ultimo.sql.text, pos('order by ', tabella_ultimo.sql.text) - 1, length(tabella_ultimo.sql.text));

    tabella_successivo.sql.text := copy(tabella_successivo.sql.text, 1, pos('where progressivo', tabella_successivo.sql.text) - 1) +
      'left join utntop on utntop.utn_codice = ' + quotedstr(utente) + ' and utntop.top_codice = ' +
      tabella_tablename + '.top_codice ' +
      copy(tabella_successivo.sql.text, pos('where ', tabella_successivo.sql.text),
      pos('order by', tabella_successivo.sql.text) - pos('where ', tabella_successivo.sql.text)) + ' ' +
      'and utntop.top_codice is not null ' +
      copy(tabella_successivo.sql.text, pos('order by ', tabella_successivo.sql.text) - 1, length(tabella_successivo.sql.text));

    tabella_precedente.sql.text := copy(tabella_precedente.sql.text, 1, pos('where progressivo', tabella_precedente.sql.text) - 1) +
      'left join utntop on utntop.utn_codice = ' + quotedstr(utente) + ' and utntop.top_codice = ' +
      tabella_tablename + '.top_codice ' +
      copy(tabella_precedente.sql.text, pos('where ', tabella_precedente.sql.text),
      pos('order by', tabella_precedente.sql.text) - pos('where ', tabella_precedente.sql.text)) + ' ' +
      'and utntop.top_codice is not null ' +
      copy(tabella_precedente.sql.text, pos('order by ', tabella_precedente.sql.text) - 1, length(tabella_precedente.sql.text));
  end;

  data_documento := date;
  progressivo_padre := 0;
  numero_riga_padre := 0;

  creazione_automatica := false;

  tmo_codice_finiti := arc.dit.fieldbyname('tmo_codice_finiti').asstring;
  tma_codice_finiti := arc.dit.fieldbyname('tma_codice_finiti').asstring;
  tmo_codice_materie_prime := arc.dit.fieldbyname('tmo_codice_materie_prime').asstring;
  tma_codice_materie_prime := arc.dit.fieldbyname('tma_codice_materie_prime').asstring;
  tda_codice_produzione_presso_terzi := arc.dit.fieldbyname('tda_codice_produzione_presso_te').asstring;
  art_codice_sconti_fattura_acq := arc.dit.fieldbyname('art_codice_sconti_fattura_acq').asstring;
  art_codice_sconto_cassa_acq := arc.dit.fieldbyname('art_codice_sconto_cassa_acq').asstring;
  tiv_codice_omaggi := arc.dit.fieldbyname('tiv_codice_omaggi_acquisto').asstring;
  costo_produzione := arc.dit.fieldbyname('costo_produzione').asstring;
  varia_dsb_ordp := arc.dit.fieldbyname('varia_dsb_ordp').asstring;
  tipo_esplosione := arc.dit.fieldbyname('tipo_esplosione').asstring;
  if costo_produzione = 'ultimo costo' then
  begin
    costo_produzione := 'ultimo prezzo acquisto';
  end;

  tda_codice := arc.dit.fieldbyname('tda_codice_produzione_presso_te').asstring;

  if read_tabella(arc.arcdit, 'art', 'codice', art_codice_sconto_cassa_acq, 'taq_codice') then
  begin
    taq_codice_sconto_cassa := archivio.fieldbyname('taq_codice').asstring;
  end;
  if read_tabella(arc.arcdit, 'art', 'codice', art_codice_sconti_fattura_acq, 'taq_codice') then
  begin
    taq_codice_sconti_fattura := archivio.fieldbyname('taq_codice').asstring;
  end;

  nome_tabella := 'gesordp_semilavorati';
  azzera_tabella(nome_tabella, sor);
  sor.indexfieldnames := 'utn_codice,art_codice';

  v_quantita_finiti.decimalplaces := decimali_max_quantita;
  v_quantita_finiti.displayformat := formato_display_quantita_zero;
  v_quantita_materie_prime.decimalplaces := decimali_max_quantita;
  v_quantita_materie_prime.displayformat := formato_display_quantita_zero;
  v_quantita_approntata.decimalplaces := decimali_max_quantita;
  v_quantita_approntata.displayformat := formato_display_quantita_zero;

  v_quantita_ordinata.displayformat := formato_display_quantita_zero;
  v_quantita_evasa.displayformat := formato_display_quantita_zero;
  v_quantita_evasa_righe.displayformat := formato_display_quantita_zero;
  v_quantita_spedita.displayformat := formato_display_quantita_zero;

  v_costo_unitario.decimalplaces := decimali_max_prezzo_acq;
  v_costo_unitario.displayformat := formato_display_prezzo_acq_zero;

  v_esistenza_deposito_finiti.displayformat := formato_display_quantita_zero;
  v_esistenza_totale_finiti.displayformat := formato_display_quantita_zero;
  v_esistenza_principale_finiti.displayformat := formato_display_quantita_zero;
  v_esistenza_deposito_materie_prime.displayformat := formato_display_quantita_zero;
  v_esistenza_totale_materie_prime.displayformat := formato_display_quantita_zero;
  v_esistenza_principale_materie_prime.displayformat := formato_display_quantita_zero;

  if importi_magazzino = 'nascondi' then
  begin
    label6.visible := false;
    v_costo_unitario.visible := false;
    v_griglia_righe.columns[9].visible := false;
  end
  else if importi_magazzino = 'visualizza' then
  begin
    disabilita_campo(v_costo_unitario);
  end;
end;

procedure TGESORDP.FormDestroy(Sender: TObject);
begin
  inherited;

  freeandnil(dicint);

  freeandnil(calfas);

  freeandnil(cerca_prezzi);
  freeandnil(nca);
  freeandnil(totacq);
  freeandnil(totven);
  freeandnil(tipinv);
  freeandnil(valdsb);
  freeandnil(przinv);
  freeandnil(fabdin);
  freeandnil(rma);
end;

procedure TGESORDP.FormKeyDown(Sender: TObject;

  var
  Key: Word;
  Shift:
  TShiftState);
begin
  if ((key = vk_insert) and (shift = [])) or
    ((key = vk_return) and (shift = [])) then
  begin
    codice_finito := '';
    progressivo_finito := 0;
  end;

  if (screen.activecontrol = v_griglia_righe) and (key = vk_f6) and (shift = []) then
  begin
    esegui_programma('CRUART', tabella_righe.fieldbyname('art_codice').asstring, true);
  end
  else
  begin
    inherited;
  end;
end;

//******************************************************************************
// gestione campi da inserire programma per programma ex novo
//******************************************************************************

procedure TGESORDP.before_post;
begin
  inherited;

  controllo_deposito_commessa;
  assegna_valore_fasi_non_sequenziali;
  assegna_valore_lot_codice;
  if not esiste then
  begin
    //  controllo esistenza ordini per lo stesso artiolo
    if not top.isempty and (top.fieldbyname('controllo_articoli').asstring = 'si') then
    begin
      art_opt.close;
      art_opt.parambyname('art_codice').asstring := v_art_codice_finiti.text;
      art_opt.parambyname('ovr_progressivo').asinteger := progressivo_gesven;
      art_opt.open;
      if (not art_opt.isempty) and (art_opt.fieldbyname('progressivo').asstring <> '') then
      begin
        if messaggio(300, 'esistono già uno o più ordini di produzione per l''articolo ' + v_art_codice_finiti.text + slinebreak +
          'ai progressivi ' + art_opt.fieldbyname('progressivo').asstring + slinebreak + 'conferma per creare l''ordine') <> 1 then
        begin
          tabella.cancel;
          abilita_codice;
          abort;
        end;
      end;
    end;

    if codice_finito <> '' then
    begin
      tabella.fieldbyname('progressivo_finito').asinteger := progressivo_finito;
      tabella.fieldbyname('art_codice_finito').asstring := codice_finito;
    end
    else
    begin
      tabella.fieldbyname('priorita').asinteger := 0;
      tabella.fieldbyname('data_inizio_lavorazione').value := null;
    end;

    if progressivo_finito = 0 then
    begin
      tabella.fieldbyname('progressivo_semilavorato').asinteger := 0;
      tabella.fieldbyname('art_codice_semilavorato').asstring := '';
    end;

    top_codice_precedente := tabella.fieldbyname('top_codice').asstring;
    data_documento := tabella.fieldbyname('data_documento').asdatetime;
    if art_finiti.fieldbyname('arv_id').asinteger <> 0 then
    begin
      esegui_formula;
    end;
  end;

  //  assegna lotto
  if not esiste and (tabella.fieldbyname('lot_codice').asstring = '') then
  begin
    if (art_finiti.fieldbyname('lotti').asstring = 'si') and (tmo.fieldbyname('lotti').asstring = 'si') then
    begin
      tabella.fieldbyname('lot_codice').asstring :=
        arc.assegna_codice_lotto_automatico(date, 'FORN', 1, date, tabella.fieldbyname('art_codice').asstring);
    end;
  end;

  //  priorita
  if tabella.fieldbyname('progressivo').asinteger <> tabella.fieldbyname('progressivo_finito').asinteger then
  begin
    tabella.fieldbyname('priorita').asinteger := 0;
  end;
end;

procedure TGESORDP.before_post_righe;
begin
  inherited;
end;

procedure TGESORDP.after_post;
var
  tma_codice_controllo, art_codice: string;
  decimali: word;
  rapporto: double;
  prosegui: boolean;
  pr: timpalf;
begin
  esistenza_finiti;

  if not esiste then
  begin
    //  varianti
    if arc.dit.fieldbyname('utilizzo_varianti').asstring = 'si' then
    begin
      if art_codice_variante = '' then
      begin
        if tabella.fieldbyname('art_codice_finito').asstring = '' then
        begin
          art_codice := tabella.fieldbyname('art_codice').asstring;
        end
        else
        begin
          art_codice := tabella.fieldbyname('art_codice_finito').asstring;
        end;

        if read_tabella(arc.arcdit, 'artv', 'art_codice', art_codice) then
        begin
          prosegui := false;
          while not prosegui do
          begin
            pr := timpalf.create(nil);
            try
              pr.v_form_caption := 'Variante distinta base';
              pr.v_descrizione_caption := 'variante';
              pr.v_width_campo := 08;
              pr.valore_passato := '';
              pr.tipo_campo := 'alfa';
              pr.visarc_table := 'TVR';
              pr.visarc_visname := 'TVR';
              pr.visarc_table := 'TVR';
              pr.visarc_campo := 'codice';
              pr.visarc_codice := 'codice';
              pr.showmodal;

              tvr_codice := pr.valore_passato;

              if tvr_codice = '' then
              begin
                prosegui := true;
                art_codice_variante := art_codice;
              end
              else
              begin
                if read_tabella(arc.arcdit, 'artv', 'art_codice;tvr_codice', vararrayof([art_codice, tvr_codice])) then
                begin
                  prosegui := true;
                  art_codice_variante := art_codice;
                end
                else
                begin
                  messaggio(200, 'la variante [' + tvr_codice + '] non è prevista per il finito [' + art_codice + ']');

                  prosegui := false;
                  art_codice_variante := '';
                  tvr_codice := '';
                end;
              end;
            finally
              pr.free;
            end;
          end;
        end;
      end;
    end;
    //  varianti

    if (primo_progressivo = 0) and (progressivo_allegati <> 0) then
    begin
      primo_progressivo := tabella.fieldbyname('progressivo').asinteger;
    end;

    creazione_ciclo(tabella.fieldbyname('art_codice').asstring, tabella.fieldbyname('quantita').asfloat, false);

    if (figlio(v_art_codice_finiti.text)) and (tabella.fieldbyname('tipo_esplosione').asstring <> 'nessuno') then
    begin
      if codice_finito = '' then
      begin
        codice_finito := v_art_codice_finiti.text;
      end;
      if progressivo_finito = 0 then
      begin
        progressivo_finito := trunc(v_progressivo.value);
      end;

      creazione_automatica := true;

      esplosione_distinta;
      visualizza_descrizioni_righe;

      creazione_automatica := false;
      tabella_righe.first;
    end;

    if tabella.fieldbyname('documento_origine').asstring = 'ordine produzione' then
    begin
      close;
    end
    else
    begin
      codice_passato := '';
    end;

    if progressivo_rma <> 0 then
    begin
      crea_record_rma;
    end;
  end
  else
  begin
    if (vecchio_frn_codice <> tabella.fieldbyname('frn_codice').asstring) and (tabella.fieldbyname('frn_codice').asstring <> '') then
    begin
      messaggio(200, 'verifica articoli non fiscali');

      tabella_righe.first;
      while not tabella_righe.eof do
      begin
        read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring, 'tipo_articolo');
        if archivio.fieldbyname('tipo_articolo').asstring <> 'fiscale' then
        begin
          tabella_righe.delete;
        end
        else
        begin
          tabella_righe.next;
        end;
      end;
    end;

    if (vecchio_tma_codice_materie_prime <> tabella.fieldbyname('tma_codice_materie_prime').asstring) then
    begin
      messaggio(200, 'essendo cambiato il codice deposito' + #13 +
        'viene riaggiornato l''impegno di tutte le righe');

      apri_transazione;
      try
        try
          tma_codice_controllo := vecchio_tma_codice_materie_prime;
          tabella_righe.first;
          while not tabella_righe.eof do
          begin
            if frn.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
            begin
              if tabella_edit(tabella_righe) then
              begin
                tabella_righe.fieldbyname('tma_codice').asstring := frn.fieldbyname('tma_codice_conto_terzi').asstring;
                esiste_righe := true;
                tabella_righe.post;
              end;
            end
            else
            begin
              if (tabella.fieldbyname('tma_codice_materie_prime').asstring = '') or (tabella_righe.fieldbyname('tma_codice').asstring = tma_codice_controllo) then
              begin
                assegna_vecchio_righe;
                if tabella_edit(tabella_righe) then
                begin
                  tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice_materie_prime').asstring;
                  esiste_righe := true;
                  tabella_righe.post;
                end;
              end;
            end;

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
        chiudi_transazione;
      end;
      tabella_righe.first;
    end;

    if (vecchio_quantita_finiti <> tabella.fieldbyname('quantita').asfloat) then
    begin
      if messaggio(300, 'conferma per modificare le quantità dei componenti e dei livelli successivi' + #13 +
        'proporzionalmente alla nuova quantità da produrre (solo per le fasi singole)') = 1 then
      begin
        apri_transazione;
        try
          try
            try
              rapporto := tabella.fieldbyname('quantita').asfloat / vecchio_quantita_finiti;
            except
              rapporto := 1;
            end;

            modifica_quantita(tabella.fieldbyname('progressivo').asinteger, 0, rapporto);

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

        tabella_righe.refresh;
      end;
    end;
  end;

  inherited;

  if tabella.fieldbyname('lot_codice').asstring <> '' then
  begin
    if not read_tabella(lot, vararrayof([tabella.fieldbyname('art_codice').asstring, tabella.fieldbyname('lot_codice').asstring])) then
    begin
      ltm.close;
      ltm.open;
      ltm.append;

      ltm.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(ltm.connection), 'ltm_progressivo');
      ltm.fieldbyname('art_codice').asstring := tabella.fieldbyname('art_codice').asstring;
      ltm.fieldbyname('lotto').asstring := tabella.fieldbyname('lot_codice').asstring;
      ltm.fieldbyname('data_registrazione').asdatetime := date;
      ltm.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice_finiti').asstring;
      ltm.fieldbyname('esistenza').asstring := 'incrementa';

      ltm.post;
      ltm.delete;

      read_tabella(lot, vararrayof([tabella.fieldbyname('art_codice').asstring, tabella.fieldbyname('lot_codice').asstring]));
      lot.edit;
      lot.fieldbyname('chiuso').asstring := 'no';
      lot.post;
    end;
  end;
end;

procedure TGESORDP.modifica_quantita(progressivo, riga: integer;
  rapporto:
  double);
var
  opt, opr: tmyquery_go;
  decimali: integer;
begin
  opt := tmyquery_go.create(nil);
  opt.connection := arc.arcdit;
  if riga <> 0 then
  begin
    opt.sql.text := 'select * from opt where situazione <> ''evaso'' and documento_origine = ''ordine produzione'' ' +
      'and doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';

    opt.parambyname('doc_progressivo_origine').asinteger := progressivo;
    opt.parambyname('doc_riga_origine').asinteger := riga;
  end
  else
  begin
    opt.sql.text := 'select * from opt where progressivo = :progressivo';

    opt.parambyname('progressivo').asinteger := progressivo;
  end;
  opt.open;
  if not opt.isempty then
  begin
    if riga <> 0 then
    begin
      decimali := decimali_quantita_art(opt.fieldbyname('art_codice').asstring);
      opt.edit;
      opt.fieldbyname('quantita').asfloat := arrotonda(opt.fieldbyname('quantita').asfloat * rapporto, decimali);
      opt.post;

      aggiorna_quantita_ciclo(opt.fieldbyname('progressivo').asinteger, rapporto);
    end;

    opr := tmyquery_go.create(nil);
    opr.connection := arc.arcdit;
    opr.sql.text := 'select * from opr where progressivo = :progressivo';
    opr.parambyname('progressivo').asinteger := opt.fieldbyname('progressivo').asinteger;
    opr.open;

    while not opr.eof do
    begin
      decimali := decimali_quantita_art(opr.fieldbyname('art_codice').asstring);
      opr.edit;
      opr.fieldbyname('quantita').asfloat := arrotonda(opr.fieldbyname('quantita').asfloat * rapporto, decimali);
      if opr.fieldbyname('quantita').asfloat < opr.fieldbyname('quantita_approntata').asfloat then
      begin
        messaggio(200, 'la quantità approntata del componente ' + opr.fieldbyname('art_codice').asstring + #13 +
          'è superiore alla quantità modificata' + #13 + #13 +
          'la quantità approntata verrà aggiornata a quella modificata');
        opr.fieldbyname('quantita_approntata').asfloat := opr.fieldbyname('quantita').asfloat;
      end;
      opr.post;

      modifica_quantita(opr.fieldbyname('progressivo').asinteger, opr.fieldbyname('riga').asinteger, rapporto);

      opr.next;
    end;

    freeandnil(opr);

    if riga = 0 then
    begin
      aggiorna_quantita_ciclo(progressivo, rapporto);
    end;
  end;

  freeandnil(opt);
end;

procedure TGESORDP.after_post_righe;
begin
  inherited;

  esistenza_materie_prime;

  //  creazione non conformità
  if progressivo_nca <> 0 then
  begin
    crea_record_ncr;
  end;

  genera_sottolivelli(tabella_righe.fieldbyname('semilavorato').asstring, tabella.fieldbyname('top_codice').asstring,
    tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('note').asstring,
    tabella_righe.fieldbyname('quantita').asfloat, tabella_righe.fieldbyname('riga').asinteger,
    tabella_righe.fieldbyname('tma_codice').asstring);

  if esiste_righe and (vecchio_art_codice_materie_prime <> tabella_righe.fieldbyname('art_codice').asstring) and
    (tabella.fieldbyname('documento_origine').asstring = 'ordine ven') then
  begin
    read_tabella(ovr, vararrayof([tabella.fieldbyname('doc_progressivo_origine').asinteger, tabella.fieldbyname('doc_riga_origine').asinteger]));
    if (ovr.fieldbyname('configurazione').asinteger <> 0) and
      read_tabella(cnf, vararrayof([ovr.fieldbyname('configurazione').asinteger, vecchio_art_codice_materie_prime])) then
    begin
      if messaggio(304, 'conferma per modificare l''articolo anche nella configurazione dell''ordine di vendita di origine') = 1 then
      begin
        cnf.edit;
        cnf.fieldbyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
        cnf.post;
      end;
    end;
  end;

  if esiste_righe then
  begin
    //  lotti approntati
    ltm_approntato.close;
    ltm_approntato.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
    ltm_approntato.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
    ltm_approntato.open;
    if not ltm_approntato.isempty then
    begin
      if vecchio_art_codice_materie_prime <> tabella_righe.fieldbyname('art_codice').asstring then
      begin
        messaggio(100, 'essendo cambiato il codice articolo i lotti approntati verranno cancellati');
        while not ltm_approntato.eof do
        begin
          ltm_approntato.delete;
        end;
      end
      else if vecchio_quantita_materie_prime <> tabella_righe.fieldbyname('quantita').asfloat then
      begin
        messaggio(100, 'essendo cambiata la quantità del componente i lotti approntati vanno allineati');
        esegui_lotti_approntato;
      end;

      if vecchio_tma_codice <> tabella_righe.fieldbyname('tma_codice').asstring then
      begin
        messaggio(100, 'essendo cambiato il codice deposito i lotti approntati vanno allineati');
        esegui_lotti_approntato;
      end;
    end;
  end;
end;

procedure TGESORDP.genera_sottolivelli(asemilavorato, atop_codice, aart_codice, anote: string;
  aquantita: double; ariga: integer; atma_codice_materie_prime: string);
var
  stringa: string;
begin
  //  genera sottolivelli
  if creazione_automatica and (asemilavorato = 'si') and
    (tabella.fieldbyname('tipo_esplosione').asstring = 'generazione ordini per tutti i semilavorati') then
  begin
    stringa := 'creazione ordine di produzione per il semilavorato: ' + aart_codice;
    if tabella.fieldbyname('art_codice_semilavorato').asstring <> '' then
    begin
      stringa := stringa + #13 + 'derivante dall''articolo: ' + tabella.fieldbyname('art_codice_semilavorato').asstring;
    end;
    messaggio(100, stringa);

    read_tabella(opc_data, tabella.fieldbyname('progressivo').asinteger);

    parametri_extra_programma_chiamato[0] := aart_codice;
    parametri_extra_programma_chiamato[1] := aquantita;
    parametri_extra_programma_chiamato[2] := 0;
    parametri_extra_programma_chiamato[3] := 0;
    parametri_extra_programma_chiamato[4] := tabella.fieldbyname('data_consegna').asdatetime;
    parametri_extra_programma_chiamato[5] := anote;
    parametri_extra_programma_chiamato[6] := '';
    parametri_extra_programma_chiamato[7] := '';
    parametri_extra_programma_chiamato[8] := tabella.fieldbyname('cms_codice').asstring;
    parametri_extra_programma_chiamato[9] := tabella.fieldbyname('tipologia').asstring;
    parametri_extra_programma_chiamato[10] := 'ordine produzione';
    parametri_extra_programma_chiamato[11] := tabella.fieldbyname('progressivo').asinteger;
    parametri_extra_programma_chiamato[12] := ariga;
    parametri_extra_programma_chiamato[13] := tabella.fieldbyname('art_codice').asstring;
    parametri_extra_programma_chiamato[14] := tabella.fieldbyname('tipo_esplosione').asstring;
    parametri_extra_programma_chiamato[15] := '';
    parametri_extra_programma_chiamato[16] := codice_finito;

    if tabella.fieldbyname('frn_codice').asstring = '' then
    begin
      parametri_extra_programma_chiamato[17] := atma_codice_materie_prime;
    end
    else
    begin
      if top.active and (top.fieldbyname('tma_codice_materie_prime').asstring <> '') then
      begin
        parametri_extra_programma_chiamato[17] := top.fieldbyname('tma_codice_materie_prime').asstring;
      end
      else
      begin
        parametri_extra_programma_chiamato[17] := tma_codice_materie_prime;
      end;
    end;

    parametri_extra_programma_chiamato[18] := progressivo_finito;
    parametri_extra_programma_chiamato[19] := atop_codice;
    parametri_extra_programma_chiamato[20] := tvr_codice;
    parametri_extra_programma_chiamato[21] := art_codice_variante;

    esegui_programma('GESORDP', 0, true);
  end;
end;

procedure TGESORDP.before_delete_righe;
begin
  inherited;
  controllo_rda_oar('cancellata');

  controllo_movordp;

  //  non conformità
  nca.modulo_origine := '';
  nca.documento_origine := 'produzione';
  nca.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
  nca.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
  nca.cancella_ncr;
end;

procedure TGESORDP.controllo_movordp;
var
  mmr: tmyquery_go;
begin
  mmr := tmyquery_go.create(nil);
  mmr.connection := arc.arcdit;
  mmr.sql.add('select mmr.progressivo, mmr.riga, mmr.quantita');
  mmr.sql.add('from mmr');
  mmr.sql.add('inner join mmt on mmt.progressivo = mmr.progressivo');
  mmr.sql.add('where mmt.documento_origine = ''ordini produzione giro m.p.''');
  mmr.sql.add('and mmt.doc_progressivo_origine = :progressivo');
  mmr.sql.add('and mmr.doc_riga_origine = :riga');
  mmr.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  mmr.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  mmr.open;
  if not mmr.isempty then
  begin
    messaggio(200, 'l''articolo è stato caricato sul deposito di produzione' + slinebreak +
      'con il movimento di magazzino' + slinebreak +
      'progressivo: [' + mmr.fieldbyname('progressivo').asstring +
      ']  riga: [' + mmr.fieldbyname('riga').asstring +
      ']  quantità: [' + mmr.fieldbyname('quantita').asstring + ']' + slinebreak + slinebreak +
      'l''eventuale storno è eseguibile dai movimenti di magazzino');
  end;
  freeandnil(mmr);
end;

procedure TGESORDP.after_delete_righe;
begin
  inherited;
end;

procedure TGESORDP.before_delete;
begin
  inherited;
  if tabella.fieldbyname('numero_documento').asfloat <> 0 then
  begin
    arc.storna_numerazione(arc.arcdit, 'ORDINI PRODUZIONE', tabella.fieldbyname('serie_documento').asstring,
      tabella.fieldbyname('data_documento').asdatetime, tabella.fieldbyname('numero_documento').asfloat);
  end;
end;

procedure TGESORDP.pannello_campiEnter(Sender: TObject);
begin
  inherited;

  progressivo_rma := 0;

  if esiste then
  begin
    abilita_campo(tool_documenti_allegati);
  end
  else
  begin
    disabilita_campo(tool_documenti_allegati);
  end;

  if modula and esiste and (v_tma_codice_materie_prime.text <> '') then
  begin
    abilita_campo(v_modula);
  end
  else
  begin
    disabilita_campo(v_modula);
  end;

  if prima_fase and
    (tabella.fieldbyname('situazione').asstring = 'inserito') and
    (top.fieldbyname('scarico_prima_fase').asstring = 'si') or (arc.dit.fieldbyname('scarico_prima_fase').asstring = 'si') then
  begin
    abilita_campo(v_scarichi_extra);
  end
  else
  begin
    disabilita_campo(v_scarichi_extra);
  end;

  if (top.fieldbyname('scarico_diretto').asstring = 'si') and
    (tabella.fieldbyname('situazione').asstring <> 'evaso') then
  begin
    abilita_campo(v_scarico_diretto);
    abilita_campo(v_storno_scarico_diretto);
  end
  else
  begin
    disabilita_campo(v_scarico_diretto);
    disabilita_campo(v_storno_scarico_diretto);
  end;

  if tabella.fieldbyname('art_codice').asstring <> '' then
  begin
    abilita_campo(v_aggiorna_dsb);
  end
  else
  begin
    disabilita_campo(v_aggiorna_dsb);
  end;

  if not esiste then
  begin
    tvr_codice := tvr_codice_passato;
    art_codice_variante := art_codice_variante_passato;
  end;

  assegna_vecchio_testata;

  if arc.utn.fieldbyname('accettazione_ordini_produzione').asstring = 'si' then
  begin
    abilita_campo(v_abilita_evasione);
  end
  else
  begin
    disabilita_campo(v_abilita_evasione);
  end;

  if esiste and (tabella.fieldbyname('situazione').asstring = 'inserito') then
  begin
    abilita_campo(v_cancella_collegati);
  end
  else
  begin
    disabilita_campo(v_cancella_collegati);
  end;

  if esiste and
    ((tabella.fieldbyname('situazione').asstring = 'inserito') or (tabella.fieldbyname('situazione').asstring = 'evaso parziale')) then
  begin
    abilita_campo(tool_movmag);
    abilita_campo(v_storno_movimenti);
  end
  else
  begin
    disabilita_campo(tool_movmag);
    disabilita_campo(v_storno_movimenti);
  end;
  attiva_esiste(false);
  abilita_storno(true);

  if esiste and (tabella.fieldbyname('avanzamento_fasi').asstring = 'si') then
  begin
    tool_staordfas.enabled := true;
  end
  else
  begin
    tool_staordfas.enabled := false;
  end;

  numero_documento := 0;
  numero_documento_precedente := 0;
  data_precedente := 0;

  if esiste then
  begin
    tool_etiart.enabled := true;
    disabilita_campo(v_art_codice_finiti);
    abilita_lavorazioni_presso_terzi(true);
    abilita_campo(v_stampa_etichetta);
    if tabella.fieldbyname('situazione').asstring <> 'evaso' then
    begin
      abilita_campo(v_datconfas);
    end
    else
    begin
      disabilita_campo(v_datconfas);
    end;
    v_cambia_deposito.enabled := true;
    v_opc.enabled := true;
    if tabella.fieldbyname('documento_origine').asstring = 'ordine ven' then
    begin
      v_data_consegna_ovr.enabled := true;
    end
    else
    begin
      v_data_consegna_ovr.enabled := false;
    end;

    if (v_situazione.text <> 'evaso') and (v_frn_codice.text = '') then
    begin
      v_evasione.enabled := true;
      if tabella.fieldbyname('avanzamento_fasi').asstring = 'no' then
      begin
        v_evasione_fasi.enabled := false;
      end
      else
      begin
        v_evasione_fasi.enabled := true;
      end;
    end
    else
    begin
      v_evasione.enabled := false;
      v_evasione_fasi.enabled := false;
    end;
  end
  else
  begin
    tool_etiart.enabled := false;
    abilita_campo(v_art_codice_finiti);
    abilita_campo(v_top_codice);
    abilita_lavorazioni_presso_terzi(false);

    v_cambia_deposito.enabled := false;
    v_opc.enabled := false;
    v_data_consegna_ovr.enabled := false;

    if tabella_edit(tabella) then
    begin
      if top_codice <> '' then
      begin
        tabella.fieldbyname('top_codice').asstring := top_codice;
      end
      else
      begin
        tabella.fieldbyname('top_codice').asstring := arc.dit.fieldbyname('top_codice').asstring;
      end;
      v_top_codice_controllo(false);
      assegna_top_codice;
    end;
  end;

  if esiste and (art_finiti.fieldbyname('arv_id').asinteger <> 0) then
  begin
    v_formula.enabled := true;
  end
  else
  begin
    v_formula.enabled := false;
  end;

  if esiste and (tabella.fieldbyname('frn_codice').asstring = '') and
    (tabella.fieldbyname('situazione').asstring = 'inserito') then
  begin
    abilita_campo(v_lotti_globali);
  end
  else
  begin
    disabilita_campo(v_lotti_globali);
  end;
end;

procedure TGESORDP.attiva_esiste(flag: boolean);
begin
  if esiste or flag then
  begin
    v_tipo_esplosione.enabled := false;
    v_art_codice_finiti.tabstop := false;

    if (tabella.fieldbyname('situazione').asstring = 'evaso') or
      ((tabella.fieldbyname('avanzamento_fasi').asstring = 'si') and (tabella.fieldbyname('fas_codice').asstring <> '')) then
    begin
      disabilita_campo(v_quantita_finiti);
    end
    else
    begin
      abilita_campo(v_quantita_finiti);
    end;

    v_tipo_esplosione.color := clbtnface;

    if tabella.fieldbyname('situazione').asstring <> 'inserito' then
    begin
      v_tmo_codice_finiti.Enabled := false;
      v_tma_codice_finiti.Enabled := false;
      v_tmo_codice_materie_prime.Enabled := false;
      v_tma_codice_materie_prime.Enabled := false;
      disabilita_campo(v_frn_codice);
      v_lettore.enabled := false;

      v_tmo_codice_finiti.color := clbtnface;
      v_tma_codice_finiti.color := clbtnface;
      v_tmo_codice_materie_prime.color := clbtnface;
      v_tma_codice_materie_prime.color := clbtnface;
    end
    else
    begin
      v_tmo_codice_finiti.Enabled := true;
      v_tma_codice_finiti.Enabled := true;
      v_tmo_codice_materie_prime.Enabled := true;
      v_tma_codice_materie_prime.Enabled := true;
      if tabella.fieldbyname('avanzamento_fasi').asstring = 'no' then
      begin
        abilita_campo(v_frn_codice);
      end;
      v_lettore.enabled := true;

      v_tmo_codice_finiti.color := clwindow;
      v_tma_codice_finiti.color := clwindow;
      v_tmo_codice_materie_prime.color := clwindow;
      v_tma_codice_materie_prime.color := clwindow;
    end;
  end
  else
  begin
    v_tipo_esplosione.enabled := true;
    v_art_codice_finiti.tabstop := true;
    abilita_campo(v_quantita_finiti);
    v_tmo_codice_finiti.Enabled := true;
    v_tma_codice_finiti.Enabled := true;
    v_tmo_codice_materie_prime.Enabled := true;
    v_tma_codice_materie_prime.Enabled := true;
    v_art_codice_finiti.Enabled := true;
    if tabella.fieldbyname('avanzamento_fasi').asstring = 'si' then
    begin
      abilita_campo(v_frn_codice);
    end;
    v_lettore.enabled := false;

    v_tipo_esplosione.color := clwindow;
    v_tmo_codice_finiti.color := clwindow;
    v_tma_codice_finiti.color := clwindow;
    v_tmo_codice_materie_prime.color := clwindow;
    v_tma_codice_materie_prime.color := clwindow;
  end;
end;

function TGESORDP.prima_fase: boolean;
begin
  result := read_tabella(fas, tabella.fieldbyname('progressivo').asinteger);
end;

procedure TGESORDP.v_griglia_righeDblClick(Sender: TObject);
var
  query: tmyquery_go;
begin
  inherited;

  if not tabella_righe.isempty then
  begin
    query := tmyquery_go.create(nil);
    query.connection := arc.arcdit;
    query.sql.add('select progressivo from opt');
    query.sql.add('where documento_origine = ''ordine produzione''');
    query.sql.add('and doc_progressivo_origine = ' + tabella_righe.fieldbyname('progressivo').asstring);
    query.sql.add('and doc_riga_origine = ' + tabella_righe.fieldbyname('riga').asstring);

    if read_tabella(query) then
    begin
      esegui_programma('GESORDP', query.fieldbyname('progressivo').asinteger, true);
    end
    else
    begin
      if tabella_righe.fieldbyname('semilavorato').asstring = 'no' then
      begin
        messaggio(200, 'l''articolo non è un semilavorato');
      end
      else
      begin
        messaggio(200, 'non esiste l''ordine di produzione del semilavorato');
      end;
    end;

    freeandnil(query);
  end;
end;

procedure TGESORDP.v_griglia_righeDrawColumnCell(Sender: TObject;

  const
  Rect: TRect;
  DataCol: Integer;
  Column: TColumn;
  State:
  TGridDrawState);
begin
  if (lowercase(column.fieldname) = 'tma_codice') and (tabella_righe.state <> dsinsert) and
    ((tabella_righe.fieldbyname('situazione').asstring = 'inserito') or (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale')) then
  begin
    if tabella_righe.fieldbyname('oar').value = 'si' then
    begin
      v_griglia_righe.canvas.brush.color := claqua;
      v_griglia_righe.canvas.font.color := clblack;
    end
    else if tabella_righe.fieldbyname('rda').value = 'si' then
    begin
      v_griglia_righe.canvas.brush.color := cllime;
      v_griglia_righe.canvas.font.color := clblack;
    end
    else if tabella_righe.fieldbyname('rda').value = 'autorizzata' then
    begin
      v_griglia_righe.canvas.brush.color := clfuchsia;
      v_griglia_righe.canvas.font.color := clblack;
    end;
  end;
  if (lowercase(column.fieldname) = 'art_codice') then
  begin
    if tabella_righe.fieldbyname('art_codice_prelevato').asstring <> '' then
    begin
      v_griglia_righe.canvas.brush.color := clred;
      v_griglia_righe.canvas.font.color := clblack;
    end
    else if tabella_righe.fieldbyname('nca').value = 'si' then
    begin
      v_griglia_righe.canvas.brush.color := claqua;
      v_griglia_righe.canvas.font.color := clblack;
    end
    else if tabella_righe.fieldbyname('art_codice_standard').asstring <> '' then
    begin
      v_griglia_righe.canvas.brush.color := clfuchsia;
      v_griglia_righe.canvas.font.color := clblack;
    end
    else if tabella_righe.fieldbyname('esiste_dsb').asinteger = 0 then
    begin
      v_griglia_righe.canvas.brush.color := clyellow;
      v_griglia_righe.canvas.font.color := clblack;
    end;
  end;
  if (lowercase(column.fieldname) = 'quantita_evasa') then
  begin
    if tabella_righe.fieldbyname('quantita_prelevata').asfloat <> 0 then
    begin
      v_griglia_righe.canvas.brush.color := clred;
      v_griglia_righe.canvas.font.color := clblack;
    end
  end;
  if (lowercase(column.fieldname) = 'sequenza') then
  begin
    if tabella_righe.fieldbyname('id_semilavorato').asinteger <> 0 then
    begin
      v_griglia_righe.canvas.brush.color := claqua;
      v_griglia_righe.canvas.font.color := clblack;
    end
  end;
  inherited;
end;

procedure TGESORDP.v_griglia_righeEnter(Sender: TObject);
begin
  inherited;
  tool_rda_totale.enabled := true;
  v_non_conformita.enabled := true;
  v_cruscotto.enabled := true;
  attiva_esiste(false);
  attiva_movimenti_scarico(true);

  if esiste_righe and (tabella.fieldbyname('frn_codice').asstring = '') and
    (tabella.fieldbyname('situazione').asstring = 'inserito') then
  begin
    abilita_campo(v_lotti);
  end
  else
  begin
    disabilita_campo(v_lotti);
  end;
end;

function TGESORDP.controllo_situazione(testata, righe: tmyquery_go): boolean;
var
  stringa: string;
  padre: tmyquery_go;
begin
  result := false;
  if esiste then
  begin
    if (testata.fieldbyname('situazione').asstring <> 'inserito') and (screen.activecontrol <> v_frn_codice) then
    begin
      if not esplosione then
      begin
        messaggio(000, 'ordine non modificabile perché è già stato movimentato');
        result := true;
      end;
    end
    else if screen.activecontrol = v_frn_codice then
    begin
      //  controllo se emessi ordini fornitore o ddt c/lavoro
      esiste_oat.close;
      esiste_oat.params[0].asinteger := testata.fieldbyname('progressivo').asinteger;
      esiste_oat.open;
      if not esiste_oat.eof then
      begin
        stringa := 'è stato emesso un ordine a fornitore';
        if esiste_oat.fieldbyname('doc_riga_origine').asinteger <> 0 then
        begin
          stringa := stringa + ' per i componenti';
        end;
        stringa := stringa + #13 + 'progressivo: ' + inttostr(esiste_oat.fieldbyname('progressivo').asinteger) + #13 + #13 +
          'verificare la presenza anche di eventuali DDT di conto lavoro ' + #13 + #13 +
          'conferma per modificare l''ordine di produzione';
        if messaggio(304, stringa) <> 1 then
        begin
          result := true;
        end;
      end;
    end
    else if assigned(righe) then
    begin
      padre := tmyquery_go.create(nil);
      padre.connection := arc.arcdit;
      padre.sql.text := 'select id from opt where documento_origine = ''ordine produzione'' ' +
        'and doc_progressivo_origine = :progressivo and doc_riga_origine = :riga';
      padre.parambyname('progressivo').asinteger := righe.fieldbyname('progressivo').asinteger;
      padre.parambyname('riga').asinteger := righe.fieldbyname('riga').asinteger;
      padre.open;
      if not padre.isempty then
      begin
        messaggio(000, 'esiste un ordine di produzione a livello successivo per la riga' + #13#10 +
          'l''operazione potrebbe causare la perdita dei riferimenti necessari alla gestione');
      end;
      padre.free;
    end;
  end;
end;

//******************************************************************************
// gestione campi
//******************************************************************************

procedure TGESORDP.v_tmo_codice_finitiExit(Sender: TObject);
begin
  inherited;
  tmo_codice_finiti_controllo(true);
end;

procedure TGESORDP.tmo_codice_finiti_controllo(blocco: boolean);
begin
  tabella_controllo(false, tmo, v_tmo_codice_finiti, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESORDP.v_tma_codice_finitiExit(Sender: TObject);
begin
  inherited;
  tma_codice_finiti_controllo(true);
end;

procedure TGESORDP.tma_codice_finiti_controllo(blocco: boolean);
begin
  tabella_controllo(false, tma, v_tma_codice_finiti, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESORDP.v_tmo_codice_materie_primeExit(Sender: TObject);
begin
  inherited;
  tmo_codice_materie_prime_controllo(true);
end;

procedure TGESORDP.tmo_codice_materie_prime_controllo(blocco: boolean);
begin
  tabella_controllo(false, tmo_codice_mp, v_tmo_codice_materie_prime, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESORDP.v_tma_codice_materie_primeExit(Sender: TObject);
begin
  inherited;
  tma_codice_materie_prime_controllo(true);
end;

procedure TGESORDP.tma_codice_materie_prime_controllo(blocco: boolean);
begin
  tabella_controllo(false, tma_codice_mp, v_tma_codice_materie_prime, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESORDP.v_data_consegna_ovrClick(Sender: TObject);
var
  ovr, aggiorna_ovr: tmyquery_go;
begin
  inherited;
  ovr := tmyquery_go.create(nil);
  ovr.connection := arc.arcdit;
  ovr.sql.text := 'select data_consegna from ovr ' +
    'where progressivo = :progressivo and riga = :riga';
  ovr.parambyname('progressivo').asinteger := tabella.fieldbyname('doc_progressivo_origine').asinteger;
  ovr.parambyname('riga').asinteger := tabella.fieldbyname('doc_riga_origine').asinteger;
  ovr.open;

  if messaggio(300, 'data consegna ordine cliente attuale ' + datetostr(ovr.fieldbyname('data_consegna').asdatetime) + #13 +
    'conferma aggiornamento data consegna') = 1 then
  begin
    aggiorna_ovr := tmyquery_go.create(nil);
    aggiorna_ovr.connection := arc.arcdit;
    aggiorna_ovr.sql.text := 'update ovr set data_consegna = :data_consegna ' +
      'where progressivo = :progressivo and riga = :riga';
    aggiorna_ovr.parambyname('data_consegna').asdate := tabella.fieldbyname('data_consegna').asdatetime;
    aggiorna_ovr.parambyname('progressivo').asinteger := tabella.fieldbyname('doc_progressivo_origine').asinteger;
    aggiorna_ovr.parambyname('riga').asinteger := tabella.fieldbyname('doc_riga_origine').asinteger;
    aggiorna_ovr.execsql;
    aggiorna_ovr.free;
  end;
  ovr.free;
end;

procedure TGESORDP.v_data_documentoExit(Sender: TObject);
begin
  inherited;
  data_documento_controllo;
  if controllo then
  begin
    if tabella_ds.state <> dsbrowse then
    begin
      if v_data_documento.date > date then
      begin
        messaggio(000, 'data superiore a quella attuale');
      end;
    end;
  end;
end;

procedure TGESORDP.v_datconfasClick(Sender: TObject);
var
  pr: tdatconfas;
begin
  inherited;

  pr := tdatconfas.create(nil);
  pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
  pr.showmodal;
  freeandnil(pr);
end;

procedure TGESORDP.data_documento_controllo;
begin
  if controllo then
  begin
    if v_data_documento.date = 0 then
    begin
      messaggio(002, label8.caption);
      tab_control.activepage := tab_pagina1;
      fuoco(v_data_documento);
      abort;
    end;
  end;
end;

procedure TGESORDP.v_numero_documentoEnter(Sender: TObject);
var
  tipo_numerazione: string;
  progressivo: integer;
begin
  inherited;

  assegna_numerazione_enter(arc.arcdit, tabella, v_data_documento.date, 'ORDINI PRODUZIONE', v_serie_documento.text,
    v_numero_documento, 'numero_documento');
end;

procedure TGESORDP.v_numero_documentoExit(Sender: TObject);
begin
  inherited;

  if controllo then
  begin
    numero_documento_controllo;

    if arc.esistenza_documento('opt', v_serie_documento.text, '', v_data_documento.date, v_numero_documento.value, v_progressivo.intvalue) then
    begin
      fuoco(v_numero_documento);
      abort;
    end
    else
    begin
      assegna_numerazione_exit(arc.arcdit, tabella, v_data_documento.date, 'ORDINI PRODUZIONE', v_serie_documento.text,
        v_numero_documento, 'numero_documento');
    end;
  end;
end;

procedure TGESORDP.numero_documento_controllo;
begin
  if controllo then
  begin
    if v_numero_documento.value = 0 then
    begin
      messaggio(002, label10.caption);
      tab_control.activepage := tab_pagina1;
      fuoco(v_numero_documento);
      abort;
    end;
  end;
end;

procedure TGESORDP.v_art_codice_materie_primeExit(Sender: TObject);
begin
  inherited;
  art_codice_materie_prime_controllo(true);
  if controllo and (variato_stringa <> trim(v_art_codice_materie_prime.text)) then
  begin
    if art_materie_prime.fieldbyname('tcn_codice').asstring <> '' then
    begin
      tabella_righe.fieldbyname('assistenza_tecnica').asstring := 'si';
    end
    else
    begin
      tabella_righe.fieldbyname('assistenza_tecnica').asstring := 'no';
    end;

    if tabella_righe.fieldbyname('quantita_approntata').asfloat <> 0 then
    begin
      messaggio(200, 'non è possibile variare il codice articolo perché è stato approntato');
      tabella_righe.cancel;
      if v_art_codice_materie_prime.canfocus then
      begin
        v_art_codice_materie_prime.setfocus;
      end;
    end
    else
    begin
      if (read_tabella(dsb_tma, vararrayof([v_art_codice_finiti.text, v_art_codice_materie_prime.text,
        v_data_documento.date, v_data_documento.date]))) and
        (dsb_tma.fieldbyname('tma_codice').asstring <> '') then
      begin
        tabella_righe.fieldbyname('tma_codice').asstring := dsb_tma.fieldbyname('tma_codice').asstring;
        tma_codice_controllo(false);
      end;

      if figlio(trim(v_art_codice_materie_prime.text)) then
      begin
        tabella_righe.fieldbyname('semilavorato').asstring := 'si';
      end
      else
      begin
        tabella_righe.fieldbyname('semilavorato').asstring := 'no';
      end;

      cifre_decimali_quantita_materie_prime := decimali_quantita_art(v_art_codice_materie_prime.text);

      read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring, 'tipo_articolo');
      if (tabella.fieldbyname('frn_codice').asstring <> '') and (archivio.fieldbyname('tipo_articolo').asstring <> 'fiscale') then
      begin
        messaggio(000, 'il tipo articolo deve assere "fiscale" per ordini in conto lavorazione');
        if not creazione_automatica then
        begin
          if v_art_codice_materie_prime.canfocus then
          begin
            v_art_codice_materie_prime.setfocus;
          end;
          abort;
        end;
      end;

      if (arc.dit.fieldbyname('assegna_costo_gesordp').asstring = 'si') and
        (tabella.fieldbyname('frn_codice').asstring = '') then
      begin
        tabella_righe.fieldbyname('costo_unitario').asfloat := costo_unitario(tabella_righe.fieldbyname('art_codice').asstring);
      end;
    end;
  end;
end;

procedure TGESORDP.v_art_codice_materie_primeKeyDown(Sender: TObject;

  var
  Key: Word;
  Shift:
  TShiftState);
begin
  inherited;
  if (key = vk_f8) and (shift = [ssalt]) then
  begin
    if esiste_righe then
    begin
      nca.art_codice := v_art_codice_materie_prime.text;
      nca.tnc_codice := '';

      if esiste_righe then
      begin
        nca.modulo_origine := '';
        nca.documento_origine := 'produzione';
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
        end;
      end
      else
      begin
        progressivo_nca := 0;
        tac_codice_nca := '';
      end;
    end
    else
    begin
      messaggio(200, 'la funzione è attiva solamente per le righe già esistenti');
    end;
  end;
end;

procedure TGESORDP.abilita_fasi_non_sequenziali;
begin
  inherited;
end;

procedure TGESORDP.abilita_evasione;
begin
  inherited;

  if top.fieldbyname('conferma_evasione').asstring = 'si' then
  begin
    v_abilita_evasione.visible := true;
  end
  else
  begin
    v_abilita_evasione.visible := false;
  end;
end;

procedure TGESORDP.v_bottone_nuovoClick(Sender: TObject);
begin
  codice_finito := '';
  progressivo_finito := 0;

  inherited;
end;

function TGESORDP.costo_unitario(art_codice: string): double;
var
  prezzo: double;
  tsm_codice, tsm_codice_art, valorizzazione: string;
begin
  art_costo.close;
  art_costo.parambyname('codice').asstring := art_codice;
  art_costo.open;

  frn_rda.close;
  frn_rda.parambyname('codice').asstring := art_costo.fieldbyname('frn_codice').asstring;
  frn_rda.open;

  cerca_prezzo('costo', prezzo, tsm_codice, tsm_codice_art);

  if prezzo = 0 then
  begin
    valorizzazione := tipinv.tipo_inventario('produzione', art_codice);
    przinv.przinv(art_codice, tabella.fieldbyname('tma_codice_materie_prime').asstring, valorizzazione, esercizio, now, 0, prezzo,
      'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');

    result := prezzo;
    if art_costo.fieldbyname('tum_codice_acquisti').asstring <> '' then
    begin
      if art_costo.fieldbyname('operazione_coefficiente_acq').asstring = '*' then
      begin
        result := arrotonda(result / art_costo.fieldbyname('tum_coefficiente_acquisti').asfloat, decimali_max_prezzo_acq);
      end
      else
      begin
        result := arrotonda(result * art_costo.fieldbyname('tum_coefficiente_acquisti').asfloat, decimali_max_prezzo_acq);
      end;
    end;
  end
  else
  begin
    result := arrotonda(prezzo * sconto(tsm_codice) * sconto(tsm_codice_art) / 10000, decimali_max_prezzo_acq);
  end;
end;

procedure TGESORDP.art_codice_finiti_controllo(blocco: boolean);
begin
  tabella_controllo(false, art_finiti, v_art_codice_finiti, blocco, tab_control, tab_pagina1, tabella);

  esistenza_finiti;
  if controllo then
  begin
    if blocco then
    begin
      if art_finiti.fieldbyname('tipo_articolo').asstring <> 'fiscale' then
      begin
        messaggio(200, 'il tipo articolo non è [fiscale]');
      end;
    end;
    cifre_decimali_quantita_finiti := decimali_quantita_art(v_art_codice_finiti.text);
  end;
end;

procedure TGESORDP.art_codice_materie_prime_controllo(blocco: boolean);
begin
  tabella_controllo(false, art_materie_prime, v_art_codice_materie_prime, blocco, tab_control, tab_pagina1, tabella_righe);

  esistenza_materie_prime;

  cifre_decimali_quantita_materie_prime := decimali_quantita_art(v_art_codice_materie_prime.text);
end;

procedure TGESORDP.pannello_righeEnter(Sender: TObject);
begin
  inherited;

  if esiste_righe then
  begin
    v_equivalenti.enabled := true;
    v_equivalenti_filtro.enabled := true;
  end
  else
  begin
    tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice_materie_prime').asstring;
    tma_codice_controllo(false);
    v_equivalenti.enabled := false;
    v_equivalenti_filtro.enabled := false;
  end;
end;

procedure TGESORDP.pannello_righeExit(Sender: TObject);
begin
  inherited;
  v_equivalenti.enabled := false;
  v_equivalenti_filtro.enabled := false;
end;

procedure TGESORDP.v_quantita_materie_primeExit(Sender: TObject);
var
  quantita_uno, quantita_due: double;
begin
  inherited;
  quantita_materie_prime_controllo;
  if controllo then
  begin
    if arrotonda(v_quantita_materie_prime.value, 4) <> arrotonda(v_quantita_materie_prime.value, cifre_decimali_quantita_materie_prime) then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('quantita').asfloat :=
          arrotonda(tabella_righe.fieldbyname('quantita').asfloat, cifre_decimali_quantita_materie_prime);
      end;
    end;

    if tabella_righe.fieldbyname('quantita').asfloat < tabella_righe.fieldbyname('quantita_evasa').asfloat then
    begin
      messaggio(000, 'la quantità non può essere inferiore alla quantità utilizzata');
      if v_quantita_materie_prime.canfocus then
      begin
        v_quantita_materie_prime.setfocus;
      end;
      abort;
    end;

    quantita_uno := arrotonda(v_quantita_materie_prime.value / v_quantita_finiti.value, 6);
    quantita_due := arrotonda(v_quantita_materie_prime.value / v_quantita_finiti.value, cifre_decimali_quantita_materie_prime);
    quantita_due := arrotonda(quantita_due, 6);
    if quantita_uno <> quantita_due then
    begin
      messaggio(000, 'la quantità inserita non è un multiplo della quantità dell''articolo da produrre');
    end;
  end;
end;

procedure TGESORDP.v_equivalentiClick(Sender: TObject);
begin
  inherited;
  articoli_equivalenti('');
end;

procedure TGESORDP.v_equivalenti_filtroClick(Sender: TObject);
begin
  inherited;
  articoli_equivalenti(v_art_codice_finiti.text);
end;

procedure TGESORDP.v_esistenza_deposito_finitiChange(Sender: TObject);
begin
  inherited;
  if v_esistenza_deposito_finiti.value < 0 then
  begin
    v_esistenza_deposito_finiti.color := clred;
  end
  else if v_esistenza_deposito_finiti.value > 0 then
  begin
    v_esistenza_deposito_finiti.color := cllime;
  end
  else
  begin
    v_esistenza_deposito_finiti.color := clyellow;
  end;
end;

procedure TGESORDP.v_esistenza_deposito_materie_primeChange(Sender: TObject);
begin
  inherited;
  if v_esistenza_deposito_materie_prime.value < 0 then
  begin
    v_esistenza_deposito_materie_prime.color := clred;
  end
  else if v_esistenza_deposito_materie_prime.value > 0 then
  begin
    v_esistenza_deposito_materie_prime.color := cllime;
  end
  else
  begin
    v_esistenza_deposito_materie_prime.color := clyellow;
  end;
end;

procedure TGESORDP.v_esistenza_totale_finitiChange(Sender: TObject);
begin
  inherited;
  if v_esistenza_totale_finiti.value < 0 then
  begin
    v_esistenza_totale_finiti.color := clred;
  end
  else if v_esistenza_totale_finiti.value > 0 then
  begin
    v_esistenza_totale_finiti.color := cllime;
  end
  else
  begin
    v_esistenza_totale_finiti.color := clyellow;
  end;
end;

procedure TGESORDP.v_esistenza_totale_materie_primeChange(Sender: TObject);
begin
  inherited;
  if v_esistenza_totale_materie_prime.value < 0 then
  begin
    v_esistenza_totale_materie_prime.color := clred;
  end
  else if v_esistenza_totale_materie_prime.value > 0 then
  begin
    v_esistenza_totale_materie_prime.color := cllime;
  end
  else
  begin
    v_esistenza_totale_materie_prime.color := clyellow;
  end;
end;

procedure TGESORDP.visualizza_descrizioni_righe;
begin
  art_codice_materie_prime_controllo(false);
  tma_codice_controllo(false);
end;

procedure TGESORDP.visualizza_descrizioni;
begin
  v_top_codice_controllo(false);
  tmo_codice_finiti_controllo(false);
  tma_codice_finiti_controllo(false);
  tmo_codice_materie_prime_controllo(false);
  tma_codice_materie_prime_controllo(false);
  art_codice_finiti_controllo(false);
  frn_codice_controllo(false);
  cms_codice_controllo(false);
  tipologia_controllo(false);

  if visarc_stampa then
  begin
    visarc_stampa := false;
    stampa;
  end;
end;

procedure TGESORDP.pannello_codiceEnter(Sender: TObject);
begin
  abilita_campo(v_top_codice);

  if v_progressivo.value <> 0 then
  begin
    attiva_esiste(true);

    abilita_evasione_saldo(true);
  end;

  inherited;
end;

procedure TGESORDP.pannello_codiceExit(Sender: TObject);
begin
  inherited;

  if torna_progressivo then
  begin
    abilita_codice;
  end
  else
  begin
    abilita_evasione_saldo(false);
    tool_distinta.enabled := false;

    if not esiste then
    begin
      abilita_campo(v_top_codice);

      if tabella_edit(tabella) then
      begin
        if top_codice <> '' then
        begin
          tabella.fieldbyname('top_codice').asstring := top_codice;
        end
        else
        begin
          tabella.fieldbyname('top_codice').asstring := top_codice_precedente;
        end;
        v_top_codice_controllo(false);
        assegna_top_codice;

        tabella.fieldbyname('data_documento').asdatetime := data_documento;
        tabella.fieldbyname('art_codice').asstring := art_codice_gesven;
        tabella.fieldbyname('progressivo_semilavorato').asinteger := doc_progressivo_origine_gesven;
        tabella.fieldbyname('art_codice_semilavorato').asstring := art_codice_semilavorato_gesven;
        tabella.fieldbyname('formula').asstring := formula_gesven;
        tabella.fieldbyname('lot_codice').asstring := lot_codice_finito;

        art_codice_finiti_controllo(false);
        if tabella.fieldbyname('avanzamento_fasi').asstring = 'no' then
        begin
          if not art_finiti.isempty then
          begin
            tabella.fieldbyname('frn_codice').asstring := art_finiti.fieldbyname('frn_codice').asstring;
            frn_codice_controllo(false);
            if art_finiti.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
            begin
              tabella.fieldbyname('tma_codice_materie_prime').asstring := art_finiti.fieldbyname('tma_codice_conto_terzi').asstring;
              tma_codice_materie_prime_controllo(false);
            end;
          end;
        end;
        tabella.fieldbyname('quantita').asfloat := quantita_gesven;
        tabella.fieldbyname('ovr_progressivo').asinteger := progressivo_gesven;
        tabella.fieldbyname('ovr_riga').asinteger := riga_gesven;
        if data_consegna_gesven <> 0 then
        begin
          tabella.fieldbyname('data_consegna').asdatetime := data_consegna_gesven;
        end;
        if note_gesven <> '' then
        begin
          tabella.fieldbyname('descrizione').asstring := note_gesven + #13 + #13;
        end;
        if note_interne_gesven <> '' then
        begin
          tabella.fieldbyname('descrizione').asstring := tabella.fieldbyname('descrizione').asstring + note_interne_gesven;
        end;
        tabella.fieldbyname('cms_codice').asstring := cms_gesven;
        tabella.fieldbyname('tipologia').asstring := cmt_gesven;
        tabella.fieldbyname('documento_origine').asstring := documento_origine_gesven;
        tabella.fieldbyname('doc_progressivo_origine').asinteger := doc_progressivo_origine_gesven;
        tabella.fieldbyname('doc_riga_origine').asinteger := doc_riga_origine_gesven;
        tabella.fieldbyname('data_inizio_lavorazione').value := data_inizio_lavorazione_passato;
      end;

      art_codice_gesven := '';
      quantita_gesven := 0;
      progressivo_gesven := 0;
      riga_gesven := 0;
      data_consegna_gesven := 0;
      note_gesven := '';
      note_interne_gesven := '';
      formula_gesven := '';
      cms_gesven := '';
      cmt_gesven := '';
      documento_origine_gesven := '';
      doc_progressivo_origine_gesven := 0;
      doc_riga_origine_gesven := 0;
      art_codice_semilavorato_gesven := '';
      tipo_esplosione_gesven := '';
      lot_codice_finito := '';
      data_inizio_lavorazione_passato := null;
    end
    else
    begin
      disabilita_campo(v_top_codice);
    end;
  end;
end;

procedure TGESORDP.assegna_vecchio_testata;
begin
  vecchio_data_documento := v_data_documento.date;
  vecchio_numero_documento := v_numero_documento.value;
  vecchio_tma_codice_finiti := v_tma_codice_finiti.text;
  vecchio_tmo_codice_finiti := v_tmo_codice_finiti.text;
  vecchio_art_codice_finiti := v_art_codice_finiti.text;
  vecchio_frn_codice := v_frn_codice.text;
  vecchio_quantita_finiti := v_quantita_finiti.value;
  vecchio_tmo_codice_materie_prime := v_tmo_codice_materie_prime.text;
  vecchio_tma_codice_materie_prime := v_tma_codice_materie_prime.text;
end;

procedure TGESORDP.azzera_vecchio_testata;
begin
  vecchio_data_documento := 0;
  vecchio_numero_documento := 0;
  vecchio_tma_codice_finiti := '';
  vecchio_tmo_codice_finiti := '';
  vecchio_art_codice_finiti := '';
  vecchio_tmo_codice_materie_prime := '';
  vecchio_tma_codice_materie_prime := '';
  vecchio_frn_codice := '';
  vecchio_quantita_finiti := 0;
end;

procedure TGESORDP.assegna_vecchio_righe;
begin
  vecchio_art_codice_materie_prime := tabella_righe.fieldbyname('art_codice').asstring;
  vecchio_quantita_materie_prime := tabella_righe.fieldbyname('quantita').asfloat;
  vecchio_tma_codice := tabella_righe.fieldbyname('tma_codice').asstring;
end;

procedure TGESORDP.azzera_vecchio_righe;
begin
  vecchio_art_codice_materie_prime := '';
  vecchio_quantita_materie_prime := 0;
  vecchio_tma_codice := '';
end;

procedure TGESORDP.v_art_codice_finitiExit(Sender: TObject);
var
  stringa: string;
begin
  inherited;
  v_visequ.enabled := false;
  art_codice_finiti_controllo(true);
  if controllo then
  begin
    if variato_stringa <> trim(v_art_codice_finiti.text) then
    begin
      abilita_lot_codice;
      if (art_finiti.fieldbyname('lotti').asstring = 'si') and (tmo.fieldbyname('lotti').asstring = 'si') then
      begin
        tabella.fieldbyname('lot_codice').asstring := arc.assegna_codice_lotto_automatico(v_data_documento.date, 'FORN', 1,
          v_data_documento.date, v_art_codice_finiti.text);
      end
      else
      begin
        tabella.fieldbyname('lot_codice').asstring := '';
      end;

      if tabella.fieldbyname('avanzamento_fasi').asstring = 'no' then
      begin
        tabella.fieldbyname('frn_codice').asstring := art_finiti.fieldbyname('frn_codice').asstring;
      end;
      frn_codice_controllo(false);
      if not frn.isempty then
      begin
        if frn.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
        begin
          tabella.fieldbyname('tma_codice_materie_prime').asstring := frn.fieldbyname('tma_codice_conto_terzi').asstring;
          tma_codice_materie_prime_controllo(false);
        end;
      end;
    end;
    if not figlio(v_art_codice_finiti.text) then
    begin
      messaggio(000, 'l''articolo è privo di distinta base oppure fuori validità');
    end;
  end;
end;

procedure TGESORDP.v_art_codice_finitiKeyDown(Sender: TObject;

  var
  Key: Word;
  Shift:
  TShiftState);
var
  pr: tevarma;
begin
  inherited;

  if (key = vk_f9) and (shift = []) then
  begin
    v_visequClick(v_visequ);
  end;

  if (key = vk_f9) and (shift = [ssalt]) and not esiste then
  begin
    pr := tevarma.create(nil);
    pr.modulo := 'produzione';
    pr.art_codice := v_art_codice_finiti.text;
    pr.showmodal;
    if pr.progressivo <> 0 then
    begin
      progressivo_rma := pr.progressivo;
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('art_codice').asstring := pr.art_codice;
        art_codice_finiti_controllo(false);

        tabella.fieldbyname('lot_codice').asstring := pr.lot_codice;

        if tabella.fieldbyname('descrizione').asstring = '' then
        begin
          tabella.fieldbyname('descrizione').asstring := pr.note_documento;
        end
        else
        begin
          tabella.fieldbyname('descrizione').asstring := tabella.fieldbyname('descrizione').asstring +
            slinebreak + slinebreak + pr.note_documento;
        end;
      end;
    end;
    pr.free;
  end;
end;

procedure TGESORDP.v_quantita_approntataExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    if v_quantita_approntata.value > tabella_righe.fieldbyname('quantita').asfloat - tabella_righe.fieldbyname('quantita_evasa').asfloat then
    begin
      messaggio(000, 'quantità superiore al residuo da utilizzare per la produzione');
      if v_quantita_approntata.canfocus then
      begin
        v_quantita_approntata.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESORDP.v_quantita_finitiEnter(Sender: TObject);
var
  vd3_codice: string;
begin
  inherited;
  vd3_codice := '';
  variato_importo := arrotonda(v_quantita_finiti.value, 4);
end;

procedure TGESORDP.v_quantita_finitiExit(Sender: TObject);
var
  prosegui: boolean;
begin
  inherited;
  quantita_finiti_controllo;
  if controllo then
  begin
    prosegui := true;

    if esiste and (v_quantita_finiti.value <> variato_importo) then
    begin
      if (tabella.fieldbyname('situazione').asstring = 'evaso') or
        ((tabella.fieldbyname('avanzamento_fasi').asstring = 'si') and (tabella.fieldbyname('fas_codice').asstring <> '')) then
      begin
        messaggio(000, 'non è possibile modificare la quantità perché l''ordine è già stato movimentato');
        prosegui := false;
      end;
    end;

    if prosegui then
    begin
      if arrotonda(v_quantita_finiti.value, 4) <> arrotonda(v_quantita_finiti.value, cifre_decimali_quantita_finiti) then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('quantita').asfloat := arrotonda
            (tabella.fieldbyname('quantita').asfloat, cifre_decimali_quantita_finiti);
        end;
      end;

      if tabella.fieldbyname('quantita').asfloat < tabella.fieldbyname('quantita_evasa').asfloat then
      begin
        messaggio(000, 'la quantità non può essere inferiore alla quantità evasa');
        fuoco(v_quantita_finiti);
        abort;
      end
      else
      begin
        if esiste then
        begin
          read_tabella(opc_quantita_iniziata, tabella.fieldbyname('progressivo').asinteger);
          if opc_quantita_iniziata.fieldbyname('quantita_iniziata').asfloat > tabella.fieldbyname('quantita').asfloat then
          begin
            messaggio(000, 'la quantità non può essere inferiore alla quantità iniziata della fase aperta');
            fuoco(v_quantita_finiti);
            abort;
          end;
        end;
      end;
    end;
  end;
end;

procedure TGESORDP.quantita_finiti_controllo;
begin
  if controllo then
  begin
    if v_quantita_finiti.value = 0 then
    begin
      messaggio(002, label11.caption);
      tab_control.activepage := tab_pagina1;
      fuoco(v_quantita_finiti);
      abort;
    end;
  end;
end;

procedure TGESORDP.quantita_materie_prime_controllo;
begin
  if controllo then
  begin
    if v_quantita_materie_prime.value = 0 then
    begin
      if messaggio(304, 'la quantità della materia prima è zero') <> 1 then
      begin
        tab_control.activepage := tab_pagina1;
        fuoco(v_quantita_materie_prime);
        abort;
      end;
    end;
  end;
end;

function TGESORDP.figlio(art_codice: string): boolean;
begin
  query_figlio.close;
  query_figlio.parambyname('art_codice_padre').asstring := art_codice;
  query_figlio.parambyname('data').asdate := tabella.fieldbyname('data_documento').asdatetime;
  query_figlio.open;
  result := not query_figlio.eof;
end;

procedure TGESORDP.esistenza_finiti;
begin
  esistenza_deposito_finiti.close;
  esistenza_deposito_finiti.params[0].asstring := v_art_codice_finiti.text;
  esistenza_deposito_finiti.params[1].asstring := v_tma_codice_finiti.text;
  esistenza_deposito_finiti.open;

  esistenza_totale_finiti.close;
  esistenza_totale_finiti.params[0].asstring := v_art_codice_finiti.text;
  esistenza_totale_finiti.open;

  esistenza_principale_finiti.close;
  esistenza_principale_finiti.params[0].asstring := v_art_codice_finiti.text;
  if top.active and (top.fieldbyname('tma_codice_principale').asstring <> '') then
  begin
    esistenza_principale_finiti.params[1].asstring := top.fieldbyname('tma_codice_principale').asstring;
  end
  else
  begin
    esistenza_principale_finiti.params[1].asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
  end;
  esistenza_principale_finiti.open;
end;

procedure TGESORDP.esistenza_materie_prime;
begin
  esistenza_deposito_materie_prime.close;
  esistenza_deposito_materie_prime.params[0].asstring := v_art_codice_materie_prime.text;
  esistenza_deposito_materie_prime.params[1].asstring := v_tma_codice.text;
  esistenza_deposito_materie_prime.open;

  esistenza_totale_materie_prime.close;
  esistenza_totale_materie_prime.params[0].asstring := v_art_codice_materie_prime.text;
  esistenza_totale_materie_prime.open;

  esistenza_principale_materie_prime.close;
  esistenza_principale_materie_prime.params[0].asstring := v_art_codice_materie_prime.text;

  if top.active and (top.fieldbyname('tma_codice_principale').asstring <> '') then
  begin
    esistenza_principale_materie_prime.params[1].asstring := top.fieldbyname('tma_codice_principale').asstring;
  end
  else
  begin
    esistenza_principale_materie_prime.params[1].asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
  end;

  esistenza_principale_materie_prime.open;
end;

procedure TGESORDP.refresh;
begin
  if parte_attiva = 'pannello_campi' then
  begin
    arc.storna_numerazione(arc.arcdit, 'ORDINI PRODUZIONE', v_serie_documento.text, v_data_documento.date, progressivo_cnt);
  end;

  inherited;
end;

procedure TGESORDP.esplosione_distinta;
var
  stringa, valore: string;
  prosegui, solo_materie_prime, salta_articolo: boolean;
  quantita, quantita_livello, valore_formula: double;
  j, riga, sequenza: integer;
  salva_puntatore: TBookmark;
  lista_variabili, lista_valori: tstringlist;

  pr: tvisequ;
  art_codice, art_descrizione: string;
  i: integer;
  lista_art_codice, lista_art_descrizione, lista_quantita: tstringlist;
begin
  lista_art_codice := tstringlist.create;
  lista_art_descrizione := tstringlist.create;
  lista_quantita := tstringlist.create;

  nome_tabella := 'gesordp';
  azzera_tabella(nome_tabella, sor1);
  sor1.indexfieldnames := 'utn_codice,sequenza,art_codice';

  //  carico il finito
  sor1.append;
  sor1.fieldbyname('art_codice').asstring := tabella.fieldbyname('art_codice').asstring;
  sor1.fieldbyname('quantita').asfloat := tabella.fieldbyname('quantita').asfloat;
  sor1.fieldbyname('utn_codice').asstring := utente;
  sor1.post;

  lista_variabili := tstringlist.create;
  lista_valori := tstringlist.create;

  if tabella.fieldbyname('formula').asstring <> '' then
  begin
    stringa := tabella.fieldbyname('formula').asstring;
    while pos(';', stringa) > 0 do
    begin
      valore := trim(copy(stringa, 1, pos(';', stringa) - 1));
      valore := stringreplace(valore, ',', '.', [rfreplaceall]);
      lista_variabili.add(trim(copy(valore, 1, pos('=', valore) - 1)));
      lista_valori.add(trim(copy(valore, pos('=', valore) + 1, length(valore))));

      stringa := copy(stringa, pos(';', stringa) + 1, length(stringa));
    end;
  end;

  //  esplosione
  solo_materie_prime := false;

  while not solo_materie_prime do
  begin

    sor1.close;
    sor1.open;
    while not sor1.eof do
    begin
      solo_materie_prime := true;

      if ((figlio(sor1.fieldbyname('art_codice').asstring)) and
        (tabella.fieldbyname('tipo_esplosione').asstring = 'tutti i livelli fino alle materie prime')) or
        (sor1.fieldbyname('art_codice').asstring = tabella.fieldbyname('art_codice').asstring) then
      begin
        read_tabella(arc.arcdit, 'art', 'codice', sor1.fieldbyname('art_codice').asstring, 'materia_prima');
        if (archivio.fieldbyname('materia_prima').asstring = 'si') and
          (tabella.fieldbyname('tipo_esplosione').asstring = 'tutti i livelli fino alle materie prime') then
        begin
          sor1.next;
        end
        else
        begin
          solo_materie_prime := false;
          salva_puntatore := sor1.getbookmark;
          quantita := sor1.fieldbyname('quantita').asfloat;

          dsb.close;
          dsb.params[0].asstring := sor1.fieldbyname('art_codice').asstring;
          dsb.params[1].asdate := v_data_documento.date;
          dsb.params[2].asdate := v_data_documento.date;
          dsb.open;
          while not dsb.eof do
          begin
            if tabella.fieldbyname('tipo_esplosione').asstring = 'tutti i livelli fino alle materie prime' then
            begin
              sequenza := 0;
            end
            else
            begin
              sequenza := dsb.fieldbyname('sequenza').asinteger;
            end;

            art_codice := dsb.fieldbyname('art_codice_figlio').asstring;
            read_tabella(arc.arcdit, 'art', 'codice', dsb.fieldbyname('art_codice_figlio').asstring, 'descrizione1, descrizione2');
            art_descrizione := archivio.fieldbyname('descrizione1').asstring + ' ' + archivio.fieldbyname('descrizione2').asstring;

            lista_art_codice.clear;
            lista_art_descrizione.clear;
            lista_quantita.clear;

            //  varianti
            if not assegna_variante(tvr_codice, dsb.fieldbyname('art_codice_padre').asstring,
              dsb.fieldbyname('art_codice_figlio').asstring, dsb.fieldbyname('sequenza').asinteger,
              lista_art_codice, lista_art_descrizione, lista_quantita) then
            begin
              lista_art_codice.add(art_codice);
              lista_art_descrizione.add(art_descrizione);
              lista_quantita.add(dsb.fieldbyname('quantita').asstring);
            end;
            //  varianti fine

            for i := 0 to lista_art_codice.count - 1 do
            begin
              if strtofloat(lista_quantita[i]) <> 0 then
              begin
                if not sor1.locate('utn_codice;sequenza;art_codice', vararrayof([utente, sequenza, lista_art_codice[i]]), []) then
                begin
                  sor1.append;

                  if arc.dit.fieldbyname('utilizzo_equivalenti').asstring = 'si' then
                  begin
                    if read_tabella(equ, lista_art_codice[i]) then
                    begin
                      pr := tvisequ.create(nil);
                      try
                        if pr.esegui_form then
                        begin
                          pr.codice := lista_art_codice[i];
                          pr.showmodal;
                          if pr.codice <> lista_art_codice[i] then
                          begin
                            lista_art_codice[i] := pr.codice;
                          end;
                        end;
                      finally
                        freeandnil(pr);
                      end;
                    end;
                  end;

                  sor1.fieldbyname('art_codice').asstring := lista_art_codice[i];
                  sor1.fieldbyname('sequenza').asinteger := sequenza;
                  sor1.fieldbyname('quantita').asfloat := 0;

                  sor1.fieldbyname('utn_codice').asstring := utente;
                  sor1.post;
                end;
                sor1.edit;

                if (dsb.params[0].asstring = tabella.fieldbyname('art_codice').asstring) and
                  (tabella.fieldbyname('formula').asstring <> '') and (dsb.fieldbyname('formula').asstring <> '') then
                begin
                  stringa := dsb.fieldbyname('formula').asstring;
                  for j := 0 to lista_variabili.count - 1 do
                  begin
                    stringa := stringreplace(stringa, lista_variabili[j], lista_valori[j], [rfreplaceall]);
                  end;
                  valore_formula := getformulavalue(stringa);
                end
                else
                begin
                  valore_formula := 1;
                end;

                if dsb.fieldbyname('formula').asstring <> '' then
                begin
                  sor1.fieldbyname('formula').asstring := lista_quantita[i] + ' * ' + dsb.fieldbyname('formula').asstring;
                end;

                sor1.fieldbyname('quantita').asfloat := arrotonda
                  (sor1.fieldbyname('quantita').asfloat +
                  quantita * strtofloat(lista_quantita[i]) * valore_formula, 4);

                sor1.fieldbyname('costo_unitario').asfloat := dsb.fieldbyname('prezzo').asfloat;
                if (arc.dit.fieldbyname('assegna_costo_gesordp').asstring = 'si') and
                  (dsb.fieldbyname('prezzo').asfloat = 0) and (tabella.fieldbyname('frn_codice').asstring = '') then
                begin
                  sor1.fieldbyname('costo_unitario').asfloat := costo_unitario(sor1.fieldbyname('art_codice').asstring);
                end;

                sor1.fieldbyname('note').asstring := dsb.fieldbyname('descrizione').asstring;

                sor1.fieldbyname('utn_codice').asstring := utente;

                if dsb.fieldbyname('tipo_articolo').asstring <> 'livello distinta' then
                begin
                  sor1.post;
                end
                else
                begin
                  quantita_livello := arrotonda
                    (quantita * strtofloat(lista_quantita[i]) * valore_formula, 4);
                  sor1.cancel;
                  assegna_livello_distinta(lista_art_codice[i], quantita_livello);
                end;
              end;
            end;

            dsb.next;
          end;

          sor1.gotobookmark(salva_puntatore);
          sor1.freebookmark(salva_puntatore);
          sor1.delete;

          sor1.close;
          sor1.open;
        end;
      end
      else
      begin
        if (figlio(sor1.fieldbyname('art_codice').asstring)) and
          (tabella.fieldbyname('tipo_esplosione').asstring = 'generazione ordini per tutti i semilavorati') then
        begin
          sor.append;

          sor.fieldbyname('art_codice').asstring := sor1.fieldbyname('art_codice').asstring;
          sor.fieldbyname('quantita').asfloat := sor1.fieldbyname('quantita').asfloat;
          sor.fieldbyname('progressivo_finito').asinteger := tabella.fieldbyname('progressivo').asinteger;
          sor.fieldbyname('art_codice_finito').asstring := tabella.fieldbyname('art_codice').asstring;

          sor.fieldbyname('utn_codice').asstring := utente;
          sor.post;
        end;
        sor1.next;
      end;
    end;
  end;

  //  creo righe ordine
  esplosione := true;
  riga := 0;
  sor1.close;
  sor1.open;
  while not sor1.eof do
  begin
    salta_articolo := false;
    read_tabella(art, sor1.fieldbyname('art_codice').asstring);
    if ((tabella.fieldbyname('frn_codice').asstring <> '') and (art.fieldbyname('tipo_articolo').asstring <> 'fiscale')) or
      (sor1.fieldbyname('quantita').asfloat = 0) then
    begin
      salta_articolo := true;
    end;

    if not salta_articolo then
    begin
      opr_esplosione.close;

      opr_esplosione.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
      riga := riga + 1;
      opr_esplosione.parambyname('riga').asinteger := riga;
      opr_esplosione.parambyname('art_codice').asstring := sor1.fieldbyname('art_codice').asstring;
      opr_esplosione.parambyname('tma_codice').asstring := tabella.fieldbyname('tma_codice_materie_prime').asstring;

      if (read_tabella(dsb_tma, vararrayof([tabella.fieldbyname('art_codice').asstring, opr_esplosione.parambyname('art_codice').asstring,
        tabella.fieldbyname('data_documento').asdatetime, tabella.fieldbyname('data_documento').asdatetime]))) and
        (dsb_tma.fieldbyname('tma_codice').asstring <> '') then
      begin
        opr_esplosione.parambyname('tma_codice').asstring := dsb_tma.fieldbyname('tma_codice').asstring;
      end;

      if art.fieldbyname('tum_codice_dsb').asstring = '' then
      begin
        opr_esplosione.parambyname('quantita').asfloat := sor1.fieldbyname('quantita').asfloat;
      end
      else
      begin
        if art.fieldbyname('operazione_coefficiente_dsb').asstring = '*' then
        begin
          opr_esplosione.parambyname('quantita').asfloat := arrotonda
            (sor1.fieldbyname('quantita').asfloat * art.fieldbyname('tum_coefficiente_dsb').asfloat,
            decimali_quantita(art.fieldbyname('tum_codice').asstring));
        end
        else
        begin
          opr_esplosione.parambyname('quantita').asfloat := arrotonda
            (sor1.fieldbyname('quantita').asfloat / art.fieldbyname('tum_coefficiente_dsb').asfloat,
            decimali_quantita(art.fieldbyname('tum_codice').asstring));
        end;
      end;

      //  se conto lavoro uso il deposito del fornitore
      if frn.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
      begin
        read_tabella(arc.arcdit, 'tma', 'codice', opr_esplosione.parambyname('tma_codice').asstring, 'ignora_articoli_produzione');
        if archivio.fieldbyname('ignora_articoli_produzione').asstring <> 'si' then
        begin
          opr_esplosione.parambyname('tma_codice').asstring := frn.fieldbyname('tma_codice_conto_terzi').asstring;
        end;
      end;

      opr_esplosione.parambyname('formula').asstring := sor1.fieldbyname('formula').asstring;

      opr_esplosione.parambyname('costo_unitario').asfloat := sor1.fieldbyname('costo_unitario').asfloat;

      if art.fieldbyname('tcn_codice').asstring <> '' then
      begin
        opr_esplosione.parambyname('assistenza_tecnica').asstring := 'si';
      end
      else
      begin
        opr_esplosione.parambyname('assistenza_tecnica').asstring := 'no';
      end;

      opr_esplosione.parambyname('note').asstring := sor1.fieldbyname('note').asstring;

      progressivo_padre := 0;
      numero_riga_padre := 0;

      read_tabella(arc.arcdit, 'art', 'codice', sor1.fieldbyname('art_codice').asstring, 'materia_prima');
      if not figlio(sor1.fieldbyname('art_codice').asstring) or
        (archivio.fieldbyname('materia_prima').asstring = 'si') then
      begin
        opr_esplosione.parambyname('semilavorato').asstring := 'no';
      end
      else
      begin
        opr_esplosione.parambyname('semilavorato').asstring := 'si';
      end;

      if tabella.fieldbyname('tipo_esplosione').asstring = 'tutti i livelli fino alle materie prime' then
      begin
        opr_esplosione.parambyname('semilavorato').asstring := 'no';
      end;

      if arc.dit.fieldbyname('assegnazione_produzione').asstring = 'si' then
      begin
        mag_approntato.close;
        mag_approntato.parambyname('art_codice').asstring := opr_esplosione.parambyname('art_codice').asstring;
        mag_approntato.parambyname('tma_codice').asstring := opr_esplosione.parambyname('tma_codice').asstring;
        mag_approntato.open;

        if (mag_approntato.fieldbyname('esistenza').asfloat - mag_approntato.fieldbyname('approntato').asfloat) >=
          opr_esplosione.parambyname('quantita').asfloat then
        begin
          opr_esplosione.parambyname('quantita_approntata').asfloat := opr_esplosione.parambyname('quantita').asfloat;
        end
        else
        begin
          opr_esplosione.parambyname('quantita_approntata').asfloat := mag_approntato.fieldbyname('esistenza').asfloat -
            mag_approntato.fieldbyname('approntato').asfloat;
        end;
      end
      else
      begin
        opr_esplosione.parambyname('quantita_approntata').asfloat := 0;
      end;

      opr_esplosione.parambyname('sequenza_dsb').asinteger := sor1.fieldbyname('sequenza').asinteger;

      opr_esplosione.execsql;

      genera_sottolivelli(opr_esplosione.parambyname('semilavorato').asstring, tabella.fieldbyname('top_codice').asstring,
        opr_esplosione.parambyname('art_codice').asstring, opr_esplosione.parambyname('note').asstring,
        opr_esplosione.parambyname('quantita').asfloat, opr_esplosione.parambyname('riga').asinteger,
        opr_esplosione.parambyname('tma_codice').asstring);
    end;

    sor1.next;
  end;

  tabella_righe.refresh;

  ///////////////////

  esplosione := false;

  blocco_setfocus := true;
  tool_f8.enabled := false;
  sor1.close;

  freeandnil(lista_variabili);
  freeandnil(lista_valori);

  freeandnil(lista_art_codice);
  freeandnil(lista_art_descrizione);
  freeandnil(lista_quantita);
end;

procedure TGESORDP.assegna_livello_distinta(art_codice: string;
  quantita:
  double);
var
  dsb_livello: tmyquery_go;
  quantita_livello, valore_formula: double;
begin
  dsb_livello := tmyquery_go.create(nil);
  dsb_livello.connection := arc.arcdit;
  dsb_livello.sql.text := 'select dsb.*, art.tipo_articolo from dsb ' +
    'inner join art on art.codice = dsb.art_codice_figlio ' +
    'where art_codice_padre = :art_codice_padre ' +
    'and (data_inizio <= :data_inizio or data_inizio is null) and data_fine >= :data_fine';
  dsb_livello.params[0].asstring := art_codice;
  dsb_livello.params[1].asdate := v_data_documento.date;
  dsb_livello.params[2].asdate := v_data_documento.date;
  dsb_livello.open;
  while not dsb_livello.eof do
  begin
    if not sor1.locate('utn_codice;art_codice', vararrayof([utente, dsb_livello.fieldbyname('art_codice_figlio').asstring]), []) then
    begin
      sor1.append;

      sor1.fieldbyname('art_codice').asstring := dsb_livello.fieldbyname('art_codice_figlio').asstring;
      sor1.fieldbyname('quantita').asfloat := 0;

      sor1.fieldbyname('utn_codice').asstring := utente;
      sor1.post;
    end;
    sor1.edit;

    valore_formula := 1;

    if dsb_livello.fieldbyname('formula').asstring <> '' then
    begin
      sor1.fieldbyname('formula').asstring := dsb_livello.fieldbyname('quantita').asstring + ' * ' + dsb_livello.fieldbyname('formula').asstring;
    end;

    sor1.fieldbyname('quantita').asfloat := arrotonda
      (sor1.fieldbyname('quantita').asfloat +
      quantita * dsb_livello.fieldbyname('quantita').asfloat * valore_formula, 4);

    sor1.fieldbyname('costo_unitario').asfloat := dsb_livello.fieldbyname('prezzo').asfloat;
    if (arc.dit.fieldbyname('assegna_costo_gesordp').asstring = 'si') and
      (dsb_livello.fieldbyname('prezzo').asfloat = 0) and (tabella.fieldbyname('frn_codice').asstring = '') then
    begin
      sor1.fieldbyname('costo_unitario').asfloat := costo_unitario(sor1.fieldbyname('art_codice').asstring);
    end;

    sor1.fieldbyname('note').asstring := dsb_livello.fieldbyname('descrizione').asstring;

    sor1.fieldbyname('utn_codice').asstring := utente;

    if dsb_livello.fieldbyname('art_codice_figlio').asstring <> 'livello distinta' then
    begin
      sor1.post;
    end
    else
    begin
      quantita_livello := arrotonda
        (quantita * dsb_livello.fieldbyname('quantita').asfloat * valore_formula, 4);
      sor1.cancel;
      assegna_livello_distinta(dsb_livello.fieldbyname('art_codice_figlio').asstring, quantita_livello);
    end;

    dsb_livello.next;
  end;

  dsb_livello.free;

  creazione_ciclo(art_codice, quantita, true);
end;

procedure TGESORDP.abilita_storno(flag: boolean);
begin
  if parte_attiva = 'pannello_campi' then
  begin
    if (flag) and (v_situazione.text <> 'inserito') and (v_frn_codice.text = '') then
    begin
      tab_pannello_bottoni_nuovi_storno.color := cllime;
      v_storno_evasione.enabled := true;
    end
    else
    begin
      tab_pannello_bottoni_nuovi_storno.color := clbtnface;
      v_storno_evasione.enabled := false;
    end;
  end;
end;

procedure TGESORDP.pannello_campiExit(Sender: TObject);
var
  i: word;
begin
  disabilita_campo(v_modula);
  disabilita_campo(v_aggiorna_dsb);
  disabilita_campo(v_scarichi_extra);
  disabilita_campo(v_scarico_diretto);
  disabilita_campo(v_storno_scarico_diretto);
  disabilita_campo(tool_documenti_allegati);

  if (not esiste_documento) and (tabella.fieldbyname('tipo_esplosione').asstring = 'generazione ordini per tutti i semilavorati') then
  begin
    setlength(tabella_copia, tabella.Fields.count);
    for i := 0 to tabella.Fields.count - 1 do
    begin
      tabella_copia[i] := tabella.fields[i].value;
    end;
  end;

  inherited;

  disabilita_campo(v_cancella_collegati);
  tool_etiart.enabled := false;
  disabilita_campo(v_abilita_evasione);
  tool_staordfas.enabled := false;
  disabilita_campo(v_stampa_etichetta);
  disabilita_campo(tool_movmag);
  abilita_storno(false);
  abilita_lavorazioni_presso_terzi(false);
  disabilita_campo(v_datconfas);
  disabilita_campo(v_storno_movimenti);

  v_evasione.enabled := false;
  v_evasione_fasi.enabled := false;
  v_cambia_deposito.enabled := false;
  v_formula.enabled := false;
  v_opc.enabled := false;
  v_data_consegna_ovr.enabled := false;

  disabilita_campo(v_lotti_globali);
end;

procedure TGESORDP.tabella_dsStateChange(Sender: TObject);
begin
  inherited;
  if tabella_ds.State = dsbrowse then
  begin
    abilita_storno(true);
  end
  else
  begin
    abilita_storno(false);
  end;
end;

procedure TGESORDP.tabella_righeAfterScroll(DataSet: TDataSet);
begin
  inherited;

  assegna_vecchio_righe;
  esistenza_materie_prime;
end;

procedure TGESORDP.v_cambia_depositoClick(Sender: TObject);
var
  tma_codice: variant;
begin
  tma_codice := '';
  esegui_visarc(arc.arcdit, 'TMA', 'TMA', tma_codice, '', '', '', '', '', 'gestma');
  if tma_codice <> '' then
  begin
    cambia_deposito.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
    cambia_deposito.parambyname('tma_codice').asstring := tma_codice;
    cambia_deposito.execsql;
  end;

  tabella_righe.refresh;
  abilita_codice;
end;

procedure TGESORDP.v_cancella_collegatiClick(Sender: TObject);
begin
  inherited;

  if messaggio(301, slinebreak + 'e degli ordini collegati' + slinebreak +
    'non verranno ripristinate le numerazioni degli ordini cancellati') = 1 then
  begin
    apri_transazione;
    try
      try
        cancella_collegati(tabella.fieldbyname('progressivo').asinteger);

        commit_transazione('cancellazione ordini collegati non eseguita');
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

procedure TGESORDP.cancella_collegati(progressivo: integer);
var
  opt, opr, ncr, rda, opt_collegato: tmyquery_go;
begin
  opt := tmyquery_go.create(nil);
  opt.connection := arc.arcdit;
  opt.sql.add('select * from opt where progressivo = ' + inttostr(progressivo));

  opt_collegato := tmyquery_go.create(nil);
  opt_collegato.connection := arc.arcdit;
  opt_collegato.sql.add('select opt.progressivo from opt');
  opt_collegato.sql.add('where opt.documento_origine = ''ordine produzione''');
  opt_collegato.sql.add('and opt.doc_progressivo_origine = :progressivo');
  opt_collegato.sql.add('and opt.doc_riga_origine = :riga');
  opt_collegato.sql.add('and opt.situazione = ''inserito''');

  opr := tmyquery_go.create(nil);
  opr.connection := arc.arcdit;
  opr.sql.add('select * from opr where progressivo = ' + inttostr(progressivo));

  ncr := tmyquery_go.create(nil);
  ncr.connection := arc.arcdit;
  ncr.sql.add('select ncr.id from ncr where ncr.documento_origine = ''produzione''');
  ncr.sql.add('and ncr.doc_progressivo_origine = :progressivo');
  ncr.parambyname('progressivo').asinteger := progressivo;
  ncr.open;

  rda := tmyquery_go.create(nil);
  rda.connection := arc.arcdit;
  rda.sql.add('select rda.id from rda');
  rda.sql.add('where rda.tipo_richiesta = ''ordini produzione'' and rda.ovr_progressivo = :progressivo');
  rda.sql.add('union all');
  rda.sql.add('select oar.id from oar');
  rda.sql.add('where oar.ovr_tipo = ''produzione'' and oar.ovr_progressivo = :progressivo');
  rda.parambyname('progressivo').asinteger := progressivo;
  rda.open;

  opt.open;

  //  controlli testata
  if opt.fieldbyname('situazione').asstring <> 'inserito' then
  begin
    messaggio(200, 'l''ordine con progressivo ' + opt.fieldbyname('progressivo').asstring + slinebreak +
      'articolo ' + opt.fieldbyname('art_codice').asstring + slinebreak +
      'è ' + opt.fieldbyname('situazione').asstring + '  e non si può cancellare');
  end
  else if (opt.fieldbyname('avanzamento_fasi').asstring = 'si') and read_tabella(opc_fasi, opt.fieldbyname('progressivo').asinteger) then
  begin
    messaggio(200, 'l''ordine con progressivo ' + opt.fieldbyname('progressivo').asstring + slinebreak +
      'articolo ' + opt.fieldbyname('art_codice').asstring + slinebreak +
      'non è cancellabile perché già in lavorazione');
  end
  else if controllo_situazione(tabella, nil) then
  begin
    messaggio(200, 'l''ordine con progressivo ' + opt.fieldbyname('progressivo').asstring + slinebreak +
      'articolo ' + opt.fieldbyname('art_codice').asstring + slinebreak +
      'non è cancellabile');
  end
  else if not ncr.isempty then
  begin
    messaggio(200, 'l''ordine con progressivo ' + opt.fieldbyname('progressivo').asstring + slinebreak +
      'articolo ' + opt.fieldbyname('art_codice').asstring + slinebreak +
      'non è cancellabile perché ha collegata una non conformità');
  end
  else if not rda.isempty then
  begin
    messaggio(200, 'l''ordine con progressivo ' + opt.fieldbyname('progressivo').asstring + slinebreak +
      'articolo ' + opt.fieldbyname('art_codice').asstring + slinebreak +
      'non è cancellabile perché ha collegata una richiesta d''acquisto o un ordine a fornitore');
  end
  else
  begin
    opr.open;
    while not opr.eof do
    begin
      opt_collegato.close;
      opt_collegato.parambyname('progressivo').asinteger := opr.fieldbyname('progressivo').asinteger;
      opt_collegato.parambyname('riga').asinteger := opr.fieldbyname('riga').asinteger;
      opt_collegato.open;
      if not opt_collegato.isempty then
      begin
        cancella_collegati(opt_collegato.fieldbyname('progressivo').asinteger);
      end;

      opr.delete;
    end;

    messaggio(100, 'cancellato l''ordine con progressivo ' + opt.fieldbyname('progressivo').asstring + slinebreak +
      'articolo ' + opt.fieldbyname('art_codice').asstring);

    opt.delete;
  end;

  freeandnil(opt);
  freeandnil(opr);
  freeandnil(ncr);
  freeandnil(rda);
  freeandnil(opt_collegato);
end;

procedure TGESORDP.v_cms_codiceEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_cms_codice.text;
end;

procedure TGESORDP.v_cms_codiceExit(Sender: TObject);
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

    controllo_deposito_commessa;
  end;
end;

procedure TGESORDP.controllo_deposito_commessa;
begin
  if (cms.fieldbyname('tma_codice').asstring <> '') and
    (cms.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice_finiti').asstring) and
    ((cmt.isempty) or (cmt.fieldbyname('tma_codice').asstring = '')) then
  begin
    if messaggio(300, 'aggiorna il deposito prodotti finiti per adeguarlo a quello della commessa') = 1 then
    begin
      tabella.fieldbyname('tma_codice_finiti').asstring := cms.fieldbyname('tma_codice').asstring;
      tma_codice_finiti_controllo(false);
    end;
  end
  else
  begin
    if (cmt.fieldbyname('tma_codice').asstring <> '') and
      (cmt.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice_finiti').asstring) then
    begin
      if messaggio(300, 'aggiorna il deposito prodotti finiti per adeguarlo a quello della sottocommessa') = 1 then
      begin
        tabella.fieldbyname('tma_codice_finiti').asstring := cmt.fieldbyname('tma_codice').asstring;
        tma_codice_controllo(false);
      end;
    end;
  end;

  if (cms.fieldbyname('tma_codice').asstring <> '') and
    (cms.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice_materie_prime').asstring) and
    ((cmt.isempty) or (cmt.fieldbyname('tma_codice').asstring = '')) then
  begin
    if messaggio(300, 'aggiorna il deposito materie prime per adeguarlo a quello della commessa') = 1 then
    begin
      tabella.fieldbyname('tma_codice_materie_prime').asstring := cms.fieldbyname('tma_codice').asstring;
      tma_codice_materie_prime_controllo(false);
    end;
  end
  else
  begin
    if (cmt.fieldbyname('tma_codice').asstring <> '') and
      (cmt.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice_materie_prime').asstring) then
    begin
      if messaggio(300, 'aggiorna il deposito materie prime per adeguarlo a quello della sottocommessa') = 1 then
      begin
        tabella.fieldbyname('tma_codice_materie_prime').asstring := cmt.fieldbyname('tma_codice').asstring;
        tma_codice_controllo(false);
      end;
    end;
  end;
end;

procedure TGESORDP.v_cruscottoClick(Sender: TObject);
begin
  inherited;
  esegui_programma('CRUART', tabella_righe.fieldbyname('art_codice').asstring, true);
end;

procedure TGESORDP.cms_codice_controllo(blocco: boolean);
begin
  //modifica
  //tabella_controllo(true, cms, v_cms_codice, blocco, tab_control, tab_pagina2, tabella);
  if top.fieldbyname('ah6_commessa_obbligatoria').asstring = 'si' then
  begin
    tabella_controllo(false, cms, v_cms_codice, blocco, tab_control, tab_pagina2, tabella);
  end
  else
  begin
    tabella_controllo(true, cms, v_cms_codice, blocco, tab_control, tab_pagina2, tabella);
  end;
  //modifica fine
end;

procedure TGESORDP.v_tipologiaEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_cms_codice.Text;
  variato_stringa := v_tipologia.text;
end;

procedure TGESORDP.v_tipologiaExit(Sender: TObject);
begin
  inherited;
  tipologia_controllo(true);

  if controllo and (variato_stringa <> v_tipologia.text) then
  begin
    if (cmt.fieldbyname('tma_codice').asstring <> '') and
      (cmt.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice_finiti').asstring) then
    begin
      if messaggio(300, 'aggiorna il deposito prodotti finiti per adeguarlo a quello della commessa') = 1 then
      begin
        tabella.fieldbyname('tma_codice_finiti').asstring := cmt.fieldbyname('tma_codice').asstring;
        tma_codice_finiti_controllo(false);
      end;
    end;

    if (cmt.fieldbyname('tma_codice').asstring <> '') and
      (cmt.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice_materie_prime').asstring) then
    begin
      if messaggio(300, 'aggiorna il deposito materie prime per adeguarlo a quello della commessa') = 1 then
      begin
        tabella.fieldbyname('tma_codice_materie_prime').asstring := cmt.fieldbyname('tma_codice').asstring;
        tma_codice_materie_prime_controllo(false);
      end;
    end;
  end;
end;

procedure TGESORDP.tipologia_controllo(blocco: boolean);
begin
  if (v_cms_codice.text = '') and (v_tipologia.text = '') then
  begin
    tabella_controllo(true, cmt, v_cms_codice, v_tipologia, blocco, tab_control, tab_pagina2, tabella);
  end
  else
  begin
    tabella_controllo(false, cmt, v_cms_codice, v_tipologia, blocco, tab_control, tab_pagina2, tabella);
  end;
end;

procedure TGESORDP.set_codice_archivio;
begin
  inherited;
  if screen.ActiveControl = v_tipologia then
  begin
    codice_archivio := vararrayof([v_cms_codice.text, v_tipologia.text]);
  end;
end;

procedure TGESORDP.v_opcClick(Sender: TObject);
var
  pr: tgesordpcinh;
begin
  inherited;

  pr := tgesordpcinh.create(nil);
  if pr.esegui_form then
  begin
    pr.codice := vararrayof([v_progressivo.text, '', '']);
    pr.showmodal;
  end;
  freeandnil(pr);
end;

procedure TGESORDP.get_codice_archivio;
begin
  inherited;
end;

procedure TGESORDP.abilitazioni;
begin
  inherited;

  if screen.activecontrol = v_progressivo then
  begin
    abilita_evasione_saldo(true);
  end
  else
  begin
    abilita_evasione_saldo(false);
  end;

  abilita_fasi_non_sequenziali;

  abilita_evasione;

  if tabella.fieldbyname('quantita_evasa').asfloat <> 0 then
  begin
    v_gestione_movimenti_carico.enabled := true;
  end
  else
  begin
    v_gestione_movimenti_carico.enabled := false;
  end;

  if tabella.fieldbyname('frn_codice').asstring <> '' then
  begin
    v_ordine.enabled := true;
    v_ddt_fornitore.enabled := true;
  end
  else
  begin
    v_ordine.enabled := false;
    v_ddt_fornitore.enabled := false;
  end;

  if tabella.fieldbyname('ovr_progressivo').asinteger <> 0 then
  begin
    v_ordine_cliente.enabled := true;
  end
  else
  begin
    v_ordine_cliente.enabled := false;
  end;

  if tabella.fieldbyname('documento_origine').asstring <> '' then
  begin
    v_documento_originale.enabled := true;
  end
  else
  begin
    v_documento_originale.enabled := false;
  end;
end;

procedure TGESORDP.abilita_lot_codice;
begin
  if art_finiti.active then
  begin
    if art_finiti.fieldbyname('lotti').asstring = 'si' then
    begin
      v_lot_codice.enabled := true;
      v_lot_codice.color := clwindow;
    end
    else
    begin
      v_lot_codice.enabled := false;
      v_lot_codice.color := clbtnface;
    end;
  end
  else
  begin
    v_lot_codice.enabled := false;
    v_lot_codice.color := clbtnface;
  end;
end;

procedure TGESORDP.abilitazioni_righe;
begin
  inherited;
  if screen.activecontrol = v_griglia_righe then
  begin
    tool_rda.enabled := true;
    if tabella_righe.fieldbyname('semilavorato').asstring = 'si' then
    begin
      v_genera_ordine_produzione.enabled := true;
    end
    else
    begin
      v_genera_ordine_produzione.enabled := false;
    end;

    abilita_annulla_rda;
  end;
end;

procedure TGESORDP.abilita_annulla_rda;
begin
  query_abilita_rda.parambyname('ovr_progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  query_abilita_rda.parambyname('ovr_riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  query_abilita_rda.close;
  query_abilita_rda.open;
  if query_abilita_rda.isempty then
  begin
    v_annulla_rda.enabled := false;
  end
  else
  begin
    v_annulla_rda.enabled := true;
  end;
end;

procedure TGESORDP.v_griglia_righeExit(Sender: TObject);
begin
  inherited;
  v_non_conformita.enabled := false;
  v_cruscotto.enabled := false;
  tool_rda.enabled := false;
  tool_rda_totale.enabled := false;
  attiva_movimenti_scarico(false);
  v_genera_ordine_produzione.enabled := false;

  disabilita_campo(v_lotti);
end;

procedure TGESORDP.v_lettoreClick(Sender: TObject);
var
  pr: tltterlasinh;
  pr1: tdiffordp;

  i, riga: word;
  lista_art_codice, lista_codice_originale, lista_quantita, lista_prezzo, lista_codice_lotto,
    lista_data_scadenza: tstringlist;
begin
  inherited;

  azzeramento_lettore := false;
  lettore := true;

  lista_art_codice := tstringlist.create;
  lista_codice_originale := tstringlist.create;
  lista_quantita := tstringlist.create;
  lista_prezzo := tstringlist.create;
  lista_codice_lotto := tstringlist.create;
  lista_data_scadenza := tstringlist.create;

  pr := Tltterlasinh.Create(nil);
  if pr.esegui_form then
  begin
    pr.lista_art_codice := lista_art_codice;
    pr.lista_codice_originale := lista_codice_originale;
    pr.lista_quantita := lista_quantita;
    pr.lista_prezzo := lista_prezzo;
    pr.lista_codice_lotto := lista_codice_lotto;
    pr.lista_data_scadenza := lista_data_scadenza;
    pr.showmodal;
    if (pr.conferma = true) and (pr.lista_art_codice.count > 0) then
    begin
      if messaggio(304, 'azzera il contenuto della tabella') = 1 then
      begin
        azzeramento_lettore := true;
        tabella_righe.first;
        while not tabella_righe.eof do
        begin
          tabella_righe.delete;
        end;
      end;

      tabella_righe.disablecontrols;

      lista_art_codice := pr.lista_art_codice;
      lista_codice_originale := pr.lista_codice_originale;
      lista_quantita := pr.lista_quantita;
      lista_prezzo := pr.lista_prezzo;

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

      riga := query_presenti_righe.fieldbyname('ultima_riga').asinteger;
      for i := 0 to lista_art_codice.count - 1 do
      begin
        if not read_tabella(arc.arcdit, 'art', 'codice', lista_art_codice[i]) then
        begin
          messaggio(000, 'il codice  ' + trim(lista_art_codice[i]) + '  non è presente nell''anagrafica articoli' + #13 +
            'la riga della quantità di  ' + trim(lista_quantita[i]) + '  non verrà generata ' + #13 +
            'la riga va caricata manualmente dopo aver creato il nuovo articolo');
        end
        else
        begin
          esiste_righe := false;
          tabella_righe.append;

          tabella_righe.fieldbyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asfloat;
          riga := riga + 1;
          tabella_righe.fieldbyname('riga').asinteger := riga;
          tabella_righe.fieldbyname('art_codice').asstring := lista_art_codice[i];
          tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice_materie_prime').asstring;
          tabella_righe.fieldbyname('quantita').asfloat := strtofloat(lista_quantita[i]);

          tabella_righe.post;
        end;
      end;
      esiste_righe := true;

      esegui_query_righe;
      tabella_righe.enablecontrols;

      parte_attiva := 'griglia_righe';
      tool_f8.enabled := false;

      pannello_righe.enabled := true;
      colore_control(pannello_righe, true);

      if azzeramento_lettore then
      begin
        pr1 := tdiffordp.create(nil);
        pr1.progressivo := tabella.fieldbyname('progressivo').asinteger;
        pr1.showmodal;
        pr1.free;
      end;
    end;

  end;

  lettore := false;

  freeandnil(lista_art_codice);
  freeandnil(lista_codice_originale);
  freeandnil(lista_quantita);
  freeandnil(lista_prezzo);
  freeandnil(lista_codice_lotto);
  freeandnil(lista_data_scadenza);
  pr.free;
end;

procedure TGESORDP.v_lottiClick(Sender: TObject);
begin
  inherited;
  esegui_lotti_approntato;
end;

procedure TGESORDP.v_lotti_globaliClick(Sender: TObject);
begin
  inherited;

  tabella_righe.first;
  while not tabella_righe.eof do
  begin
    esegui_lotti_approntato;

    tabella_righe.next;
  end;
  tabella_righe.first;

  messaggio(100, 'approntamento eseguito' + slinebreak + slinebreak +
    'l''eventuale storno dell''approntamento' + slinebreak +
    'va eseguito con il programma ASSAPPOP' + slinebreak +
    'settando a 0 (zero) la quantità approntata');
end;

procedure TGESORDP.esegui_lotti_approntato;
begin
  read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring, 'lotti');
  if archivio.fieldbyname('lotti').asstring = 'si' then
  begin
    codice_passato := vararrayof(['ordine produzione', tabella_righe.fieldbyname('progressivo').asfloat,
      tabella_righe.fieldbyname('riga').asinteger, 0]);

    esegui_carltm(codice_passato, tabella.fieldbyname('numero_documento').asfloat,
      '', '', tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('tma_codice').asstring, '',
      'approntato', '', tabella.fieldbyname('data_documento').asdatetime, tabella.fieldbyname('data_documento').asdatetime,
      'APPRONTATO', tabella_righe.fieldbyname('quantita').asfloat - tabella_righe.fieldbyname('quantita_evasa').asfloat, 0, 0, '');

    ltm_riga.close;
    ltm_riga.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
    ltm_riga.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
    ltm_riga.open;
    if tabella_edit(tabella_righe) then
    begin
      tabella_righe.fieldbyname('quantita_approntata').asfloat := ltm_riga.fieldbyname('quantita').asfloat;
      tabella_righe.post;
    end;
  end
  else if tabella_edit(tabella_righe) then
  begin
    tabella_righe.fieldbyname('quantita_approntata').asfloat := tabella_righe.fieldbyname('quantita').asfloat -
      tabella_righe.fieldbyname('quantita_evasa').asfloat;
    tabella_righe.post;
  end;
end;

procedure TGESORDP.v_lot_codiceEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_art_codice_finiti.text;
  //visarc_filtro_02 := 'si';
end;

procedure TGESORDP.v_lot_codiceExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    assegna_lotto_numerico(v_lot_codice);
  end;
end;

procedure TGESORDP.v_modulaClick(Sender: TObject);
begin
  inherited;

  esegui_effettivo('GO_MODULA',
    '<utente>' + utente + '</utente>' +
    '<password>' + password_utente_login + '</password>' +
    '<salta_login>si</salta_login>' +
    '<programma>DOCMODULA</programma>' +
    '<progressivo_gesven>' + tabella.fieldbyname('progressivo').asstring + '</progressivo_gesven>' +
    '<tipo_documento>produzione</tipo_documento>');

  parametro_utente := '';
  parametro_password := '';
  parametro_salta_login := '';
  parametro_programma := '';
  parametro_progressivo_gesven := '';
  parametro_tipo_documento := '';
end;

procedure TGESORDP.v_frn_codiceExit(Sender: TObject);
begin
  inherited;
  frn_codice_controllo(true);

  if (variato_stringa <> v_frn_codice.text) and (variato_stringa = '') then
  begin
    messaggio(200, 'essendo modificata la gestione lavorazione sono da rivedere i costi di fase sul ciclo');
  end;

  if (variato_stringa <> v_frn_codice.text) then
  begin
    if v_frn_codice.text = '' then
    begin
      if tabella_edit(tabella) then
      begin

      end;
    end
    else if not frn.isempty and (frn.fieldbyname('tma_codice_conto_terzi').asstring <> '') then
    begin
      if tabella.fieldbyname('tma_codice_materie_prime').asstring <> frn.fieldbyname('tma_codice_conto_terzi').asstring then
      begin
        esiste_oat.close;
        esiste_oat.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
        esiste_oat.open;
        if not esiste_oat.isempty then
        begin
          messaggio(000, 'sono già stati emessi ordini di lavorazione con deposito fornitore' + #13 +
            'diverso da quello utilizzato per il fornitore selezionato' + #13 +
            'non verrà modificato il deposito di scarico delle materie prime');
        end
        else
        begin
          tabella.fieldbyname('tma_codice_materie_prime').asstring := frn.fieldbyname('tma_codice_conto_terzi').asstring;
        end;
      end;
    end;
  end;
end;

procedure TGESORDP.frn_codice_controllo(blocco: boolean);
begin
  if controllo and v_avanzamento_fasi.checked and blocco and (v_frn_codice.text <> '') then
  begin
    messaggio(000, 'non è possibile gestire il conto lavoro globale per gli ordini con avanzamento fasi');
    if v_frn_codice.canfocus then
    begin
      v_frn_codice.setfocus;
    end;
    abort;
  end
  else
  begin
    tabella_controllo(true, frn, v_frn_codice, blocco, tab_control, tab_pagina1, tabella);
  end;
end;

procedure TGESORDP.v_quantita_materie_primeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_f9) and (shift = []) then
  begin
    if tabella_righe.state <> dsbrowse then
    begin
      tabella_righe.fieldbyname('quantita').asfloat := arrotonda
        (v_quantita_materie_prime.value * tabella.fieldbyname('quantita').asfloat, cifre_decimali_quantita_materie_prime);
    end;
  end;
end;

procedure TGESORDP.v_scarichi_extraClick(Sender: TObject);
begin
  inherited;

  scarico_componenti('prima_fase');
end;

procedure TGESORDP.v_scarico_direttoClick(Sender: TObject);
begin
  inherited;
  scarico_componenti('diretto');
end;

procedure TGESORDP.scarico_componenti(tipo: string);
var
  pr: timpalf;
  quantita_extra: double;
  progressivo_mmt: integer;

  //pr1: tcarltmevapp;

  ////////////////////
  opt, mmt, mmr, scaricata: tmyquery_go;
  valdsb: tvaldsb;

  riga, cifre_decimali_quantita: integer;
  esistenza, saldo_acconto: string;
  quantita, quantita_ltm, costo: double;
begin
  if tipo = 'prima_fase' then
  begin
    quantita_extra := 0;
  end
  else
  begin
    tabella_righe.first;
    scaricata := tmyquery_go.create(nil);
    scaricata.connection := arc.arcdit;
    scaricata.sql.add('select sum(mmr.quantita) quantita from mmr');
    scaricata.sql.add('inner join mmt on mmt.progressivo = mmr.progressivo');
    scaricata.sql.add('where mmt.documento_origine = ''ordini produzione''');
    scaricata.sql.add('and mmt.doc_progressivo_origine = ' + tabella_righe.fieldbyname('progressivo').asstring);
    scaricata.sql.add('and mmr.doc_riga_origine = ' + tabella_righe.fieldbyname('riga').asstring);
    scaricata.open;

    if scaricata.fieldbyname('quantita').asfloat = 0 then
    begin
      quantita_extra := tabella.fieldbyname('quantita').asfloat;
    end
    else
    begin
      quantita_extra := tabella.fieldbyname('quantita').asfloat / tabella_righe.fieldbyname('quantita').asfloat *
        (tabella_righe.fieldbyname('quantita').asfloat - scaricata.fieldbyname('quantita').asfloat);
    end;
    freeandnil(scaricata);

    if quantita_extra = 0 then
    begin
      messaggio(200, 'sembra che sia già stato effettuato lo scarico' + slinebreak +
        'di tutti i componenti');
    end;
  end;

  pr := timpalf.create(nil);
  try
    pr.v_form_caption := 'Quantità finito';
    pr.v_descrizione_caption := 'quantità';
    pr.v_width_campo := 16;
    pr.valore_passato := quantita_extra;
    pr.tipo_campo := 'numero';
    pr.formattare := true;
    pr.decimali := cifre_decimali_quantita_finiti;
    pr.campo_password := false;
    pr.showmodal;
    quantita_extra := pr.valore_passato;
    if pr.premuto_escape then
    begin
      quantita_extra := 0;
    end;
  finally;
    freeandnil(pr);
  end;

  if quantita_extra <> 0 then
  begin
    valdsb := tvaldsb.create;

    opt := tmyquery_go.create(nil);
    mmt := tmyquery_go.create(nil);
    mmr := tmyquery_go.create(nil);

    opt.connection := arc.arcdit;
    mmt.connection := arc.arcdit;
    mmr.connection := arc.arcdit;

    opt.sql.text := 'select * from opt where progressivo = :progressivo';
    opr.sql.text := 'select * from opr where progressivo = :progressivo order by riga';
    mmt.sql.text := 'select * from mmt where progressivo = :progressivo';
    mmr.sql.text := 'select * from mmr where progressivo = :progressivo';

    opt.close;
    opt.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
    opt.open;

    mmt.open;
    mmr.open;

    apri_transazione;
    try
      try
        mmt.append;

        mmt.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(mmt.connection), 'mmt_progressivo');
        mmt.fieldbyname('tmo_codice').asstring := opt.fieldbyname('tmo_codice_materie_prime').asstring;
        mmt.fieldbyname('tma_codice').asstring := opt.fieldbyname('tma_codice_materie_prime').asstring;
        mmt.fieldbyname('data_registrazione').asdatetime := date;
        mmt.fieldbyname('tipo_documento').asstring := 'produzione';
        mmt.fieldbyname('data_documento').asdatetime := opt.fieldbyname('data_documento').asdatetime;
        mmt.fieldbyname('numero_documento').asfloat := opt.fieldbyname('numero_documento').asfloat;
        mmt.fieldbyname('serie_documento').asstring := opt.fieldbyname('serie_documento').asstring;
        mmt.fieldbyname('tva_codice').asstring := divisa_di_conto;
        mmt.fieldbyname('cambio').asfloat := 1;
        mmt.fieldbyname('ese_codice').asstring := esercizio;
        mmt.fieldbyname('documento_origine').asstring := 'ordini produzione';
        mmt.fieldbyname('doc_progressivo_origine').asfloat := tabella.fieldbyname('progressivo').asinteger;
        mmt.fieldbyname('opt_progressivo').asfloat := tabella.fieldbyname('progressivo').asinteger;
        if read_tabella(arc.arcdit, 'ovt', 'progressivo', opt.fieldbyname('ovr_progressivo').asinteger, 'cli_codice') then
        begin
          mmt.fieldbyname('cfg_tipo').asstring := 'C';
          mmt.fieldbyname('cfg_codice').asstring := archivio.fieldbyname('cli_codice').asstring;
        end;
        mmt.fieldbyname('cms_codice').asstring := opt.fieldbyname('cms_codice').asstring;
        mmt.fieldbyname('tipologia').asstring := opt.fieldbyname('tipologia').asstring;

        mmt.post;

        riga := 0;
        esistenza := 'ignora';
        if read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring, 'esistenza') then
        begin
          esistenza := archivio.fieldbyname('esistenza').asstring;
        end;

        opr.close;
        opr.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
        opr.open;
        while not opr.eof do
        begin
          cifre_decimali_quantita := decimali_quantita_art(opr.fieldbyname('art_codice').asstring);

          quantita := opr.fieldbyname('quantita').asfloat;
          costo := valdsb.calcola_costo_produzione(opr.fieldbyname('progressivo').asinteger,
            opr.fieldbyname('riga').asinteger, false);

          read_tabella(arc.arcdit, 'art', 'codice', opr.fieldbyname('art_codice').asstring, 'tipo_articolo');
          if archivio.fieldbyname('tipo_articolo').asstring = 'fiscale' then
          begin
            if quantita <> 0 then
            begin
              mmr.append;

              riga := riga + 1;
              mmr.fieldbyname('progressivo').asfloat := mmt.fieldbyname('progressivo').asfloat;
              mmr.fieldbyname('riga').asinteger := riga;
              mmr.fieldbyname('art_codice').asstring := opr.fieldbyname('art_codice').asstring;
              mmr.fieldbyname('tma_codice').asstring := opr.fieldbyname('tma_codice').asstring;
              mmr.fieldbyname('quantita').asfloat := arrotonda(
                quantita_extra * opr.fieldbyname('quantita').asinteger / opt.fieldbyname('quantita').asinteger,
                cifre_decimali_quantita_materie_prime);
              mmr.fieldbyname('prezzo').asfloat := costo;
              mmr.fieldbyname('importo').asfloat := arrotonda(mmr.fieldbyname('quantita').asfloat * costo);
              mmr.fieldbyname('importo_euro').asfloat := mmr.fieldbyname('importo').asfloat;
              mmr.fieldbyname('tipo_movimento').asstring := 'normale';
              mmr.fieldbyname('doc_riga_origine').asinteger := opr.fieldbyname('riga').asinteger;

              if esistenza = 'incrementa' then
              begin
                mmr.fieldbyname('quantita_entrate').asfloat := mmr.fieldbyname('quantita').asfloat;
              end;
              if esistenza = 'decrementa' then
              begin
                mmr.fieldbyname('quantita_uscite').asfloat := mmr.fieldbyname('quantita').asfloat;
              end;

              mmr.post;

              esegui_commesse_extra(mmt, mmr);
              esegui_lotti_extra(mmt, mmr);
              esegui_ubicazioni_extra(mmt, mmr);
            end;
          end;

          opr.edit;
          opr.fieldbyname('quantita_evasa').asfloat := opr.fieldbyname('quantita_evasa').asfloat +
            mmr.fieldbyname('quantita').asfloat;
          opr.fieldbyname('quantita_approntata').asfloat := 0;
          opr.post;

          opr.next;
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
      chiudi_transazione;
    end;

    esegui_programma('GESMOV', mmt.fieldbyname('progressivo').asinteger, true);

    opt.free;
    mmt.free;
    mmr.free;

    valdsb.free;
  end;
end;

procedure TGESORDP.esegui_commesse_extra(mmt, mmr: tmyquery_go);
var
  segno: integer;
  importo: double;
  stringa, costo_ricavo: string;
begin
  inherited;
  read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring,
    'descrizione, esistenza, commesse, tipo_movimento_commesse');
  if archivio.fieldbyname('commesse').asstring = 'si' then
  begin
    codice_passato := vararrayof(['movimenti magazzino', mmr.fieldbyname('progressivo').asfloat,
      mmr.fieldbyname('riga').asinteger, 0]);

    stringa := archivio.fieldbyname('descrizione').asstring;
    if archivio.fieldbyname('esistenza').asstring = 'decrementa' then
    begin
      costo_ricavo := 'ricavo'
    end
    else
    begin
      costo_ricavo := 'costo'
    end;

    segno := 1;
    if (archivio.fieldbyname('tipo_movimento_commesse').asstring <> '') and
      (archivio.fieldbyname('tipo_movimento_commesse').asstring <> costo_ricavo) then
    begin
      costo_ricavo := archivio.fieldbyname('tipo_movimento_commesse').asstring;
      segno := -1;
    end;

    if arc.dit.fieldbyname('solo_spese_mov_commesse').asstring = 'si' then
    begin
      importo := mmr.fieldbyname('importo_spese').asfloat;
    end
    else if arc.dit.fieldbyname('solo_materiale_mov_commesse').asstring = 'si' then
    begin
      importo := mmr.fieldbyname('importo').asfloat;
    end
    else
    begin
      importo := mmr.fieldbyname('importo').asfloat + mmr.fieldbyname('importo_spese').asfloat;
    end;

    esegui_carcmm(codice_passato, '', '', mmr.fieldbyname('art_codice').asstring, '', stringa, '',
      costo_ricavo, mmt.fieldbyname('data_registrazione').asdatetime,
      mmt.fieldbyname('data_documento').asdatetime, importo,
      mmt.fieldbyname('numero_documento').asfloat,
      mmt.fieldbyname('cms_codice').asstring, mmt.fieldbyname('tipologia').asstring,
      mmr.fieldbyname('quantita').asfloat, false, segno);
  end;
end;

procedure TGESORDP.esegui_lotti_extra(mmt, mmr: tmyquery_go);
begin
  inherited;

  read_tabella(arc.arcdit, 'art', 'codice', mmr.fieldbyname('art_codice').asstring, 'lotti');
  if archivio.fieldbyname('lotti').asstring = 'si' then
  begin
    read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring);
    if archivio.fieldbyname('lotti').asstring = 'si' then
    begin
      codice_passato := vararrayof(['movimenti magazzino', mmr.fieldbyname('progressivo').asfloat,
        mmr.fieldbyname('riga').asinteger, 0]);

      esegui_carltm(codice_passato, mmt.fieldbyname('numero_documento').asfloat, '', '',
        mmr.fieldbyname('art_codice').asstring, mmr.fieldbyname('tma_codice').asstring,
        mmt.fieldbyname('tmo_codice').asstring, archivio.fieldbyname('esistenza').asstring, '',
        mmt.fieldbyname('data_registrazione').asdatetime, mmt.fieldbyname('data_documento').asdatetime,
        archivio.fieldbyname('descrizione').asstring, mmr.fieldbyname('quantita').asfloat, 0, 0);
    end;
  end;
end;

procedure TGESORDP.esegui_ubicazioni_extra(mmt, mmr: tmyquery_go);
var
  tipo_movimento, tub_codice: string;
begin
  inherited;

  read_tabella(arc.arcdit, 'art', 'codice', mmr.fieldbyname('art_codice').asstring, 'tipo_articolo, tub_codice');
  if archivio.fieldbyname('tipo_articolo').asstring = 'fiscale' then
  begin
    tub_codice := archivio.fieldbyname('tub_codice').asstring;
    tipo_movimento := '';

    read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring, 'esistenza');
    if archivio.fieldbyname('esistenza').asstring = 'incrementa' then
    begin
      tipo_movimento := 'carico';
    end;
    if archivio.fieldbyname('esistenza').asstring = 'decrementa' then
    begin
      tipo_movimento := 'scarico';
    end;

    if mmr.fieldbyname('quantita').asfloat <> 0 then
    begin
      codice_passato := vararrayof(['movimenti magazzino', mmr.fieldbyname('progressivo').asfloat,
        mmr.fieldbyname('riga').asinteger, 0]);

      esegui_carubm(codice_passato, mmr.fieldbyname('art_codice').asstring, tub_codice, tipo_movimento,
        mmt.fieldbyname('tmo_codice').asstring, mmr.fieldbyname('tma_codice').asstring,
        mmt.fieldbyname('data_registrazione').asdatetime, mmr.fieldbyname('quantita').asfloat);
    end;
  end;
end;

////////////////////////////////////////////////////////////////////////////////

procedure TGESORDP.v_semilavoratoClick(Sender: TObject);
begin
  inherited;
  if (screen.activecontrol = v_semilavorato) and not v_semilavorato.checked then
  begin
    if esiste_ordine_produzione_derivato then
    begin
      messaggio(200, 'sono presenti ordini di produzione derivati dalla riga in gestione');
    end;
  end;
end;

procedure TGESORDP.v_stampa_etichettaClick(Sender: TObject);
var
  pr: tstaordpeti;
begin
  inherited;

  pr := tstaordpeti.create(nil);
  pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
  pr.showmodal;

  freeandnil(pr);
end;

procedure TGESORDP.v_storno_evasioneClick(Sender: TObject);
var
  pr: tstoordp01;

  mmt_progressivo: integer;
begin
  inherited;

  mmt_ordp.close;
  mmt_ordp.parambyname('doc_progressivo_origine').asinteger := tabella.fieldbyname('progressivo').asinteger;
  mmt_ordp.parambyname('art_codice').asstring := tabella.fieldbyname('art_codice').asstring;
  //mmt_ordp.parambyname('ese_codice').asstring := esercizio;
  mmt_ordp.open;

  mmt_progressivo := -1;
  codice_passato := v_progressivo.value;
  if mmt_ordp.recordcount <> 1 then
  begin
    pr := tstoordp01.create(nil);

    pr.opt_situazione := tabella.fieldbyname('situazione').asstring;
    pr.query_ds.dataset := mmt_ordp;
    pr.showmodal;
    mmt_progressivo := pr.mmt_progressivo;

    if pr.mmt_progressivo > 0 then
    begin
      parametri_extra_programma_chiamato[01] := pr.mmt_progressivo;
    end;
    freeandnil(pr);
  end;
  if mmt_progressivo <> 0 then
  begin
    esegui_programma('STOORDP', codice_passato, true);
  end;

  tabella.refresh;
  tabella_righe.refresh;
  abilita_codice;
end;

procedure TGESORDP.v_storno_movimentiClick(Sender: TObject);
var
  pr: tstomovordp;
begin
  inherited;

  pr := tstomovordp.create(nil);
  pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
  pr.showmodal;
  freeandnil(pr);

  abilita_codice;
end;

procedure TGESORDP.v_storno_scarico_direttoClick(Sender: TObject);
var
  mmt, mmr, opr: tmyquery_go;
begin
  inherited;
  if messaggio(304, 'conferma storno scarichi diretti') = 1 then
  begin
    mmt := tmyquery_go.create(nil);
    mmt.connection := arc.arcdit;

    mmr := tmyquery_go.create(nil);
    mmr.connection := arc.arcdit;

    opr := tmyquery_go.create(nil);
    opr.connection := arc.arcdit;

    mmt.sql.add('select * from mmt where tmo_codice = :tmo_codice and tma_codice = :tma_codice');
    mmt.sql.add('and documento_origine = ''ordini produzione'' and doc_progressivo_origine = :progressivo');

    mmr.sql.add('delete from mmr where progressivo = :progressivo');

    opr.sql.add('update opr set quantita_evasa = 0 where progressivo = :progressivo');

    mmt.parambyname('tmo_codice').asstring := tabella.fieldbyname('tmo_codice_materie_prime').asstring;
    mmt.parambyname('tma_codice').asstring := tabella.fieldbyname('tma_codice_materie_prime').asstring;
    mmt.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
    mmt.open;

    opr.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;

    try
      try
        while not mmt.eof do
        begin
          mmr.close;
          mmr.parambyname('progressivo').asinteger := mmt.fieldbyname('progressivo').asinteger;
          mmr.execsql;

          mmt.delete;
        end;

        opr.execsql;

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

    freeandnil(mmr);
    freeandnil(mmt);
  end;
end;

procedure TGESORDP.abilita_lavorazioni_presso_terzi(flag: boolean);
begin
  if not flag then
  begin
    tool_lavorazione_presso_terzi.enabled := false;
    tool_ddt_lavorazione_presso_terzi.enabled := false;
  end
  else
  begin
    if tabella.fieldbyname('avanzamento_fasi').asstring = 'si' then
    begin
      tool_lavorazione_presso_terzi.enabled := false;
      tool_ddt_lavorazione_presso_terzi.enabled := false;
    end
    else
    begin
      if (trim(v_frn_codice.text) <> '') and (tabella.fieldbyname('situazione').asstring <> 'evaso') then
      begin
        tool_lavorazione_presso_terzi.enabled := true;
        tool_ddt_lavorazione_presso_terzi.enabled := true;
      end
      else
      begin
        tool_lavorazione_presso_terzi.enabled := false;
        tool_ddt_lavorazione_presso_terzi.enabled := false;
      end;
    end;
  end;
end;

procedure TGESORDP.tool_lavorazione_presso_terziClick(Sender: TObject);
var
  crea_orda_cl: tcrea_orda_cl;
begin
  inherited;

  crea_orda_cl := tcrea_orda_cl.create;

  crea_orda_cl.crea_ordine(tabella.fieldbyname('progressivo').asinteger, tabella.fieldbyname('quantita').asfloat);

  freeandnil(crea_orda_cl);

end;

procedure TGESORDP.tool_movmagClick(Sender: TObject);
var
  pr: tmovordp;
begin
  inherited;

  pr := tmovordp.create(nil);
  pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
  pr.showmodal;
  pr.free;

  tabella.refresh;
  tabella_righe.refresh;
  assegna_codice;
end;

procedure TGESORDP.tool_rdaClick(Sender: TObject);
var
  pr: tntvenacq;
  pr1: tdelordp;

  prosegui: boolean;
  quantita_rda: double;
begin
  inherited;

  prosegui := true;
  if (tabella_righe.fieldbyname('semilavorato').asstring = 'si') and esiste_opr then
  begin
    if messaggio(304, 'il componente è un semilavorato' + #13 + 'conferma per emettere la richiesta d''acquisto') <> 1 then
    begin
      prosegui := false;
    end;
  end;

  if prosegui then
  begin
    if not esiste_rda then
    begin
      prosegui := true;
      quantita_rda := fabdin.fabbisogno
        (tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('tma_codice').asstring,
        tabella_righe.fieldbyname('quantita').asfloat - tabella_righe.fieldbyname('quantita_evasa').asfloat -
        tabella_righe.fieldbyname('quantita_approntata').asfloat, 0, tabella_righe.fieldbyname('id').asinteger);
      if quantita_rda <= 0 then
      begin
        prosegui := false;
        if messaggio(304, 'in base ai parametri impostati non va generata nessuna richiesta d''acquisto' + #13 +
          'conferma per effettuare comunque la richiesta d''acquisto per il fabbisogno [' +
          floattostr(tabella_righe.fieldbyname('quantita').asfloat - tabella_righe.fieldbyname('quantita_evasa').asfloat -
          tabella_righe.fieldbyname('quantita_approntata').asfloat) + ']') = 1 then
        begin
          quantita_rda := tabella_righe.fieldbyname('quantita').asfloat - tabella_righe.fieldbyname('quantita_evasa').asfloat -
            tabella_righe.fieldbyname('quantita_approntata').asfloat;
          prosegui := true;
        end;
      end;

      if prosegui then
      begin
        pr := tntvenacq.create(nil);
        pr.data_consegna := tabella.fieldbyname('data_consegna').asdatetime;
        pr.showmodal;

        if not pr.premuto_escape then
        begin
          memorizza_rda(pr.data_consegna, pr.descrizione, quantita_rda);
          messaggio(100, 'la richiesta d''acquisto per la riga d''ordine di produzione è stata effettuata correttamente');
        end
        else
        begin
          messaggio(200, 'generazione della richiesta d''acquisto annullata');
        end;
        pr.free;

        if (tabella_righe.fieldbyname('semilavorato').asstring = 'si') and esiste_opr then
        begin
          if esiste_opr and (messaggio(300, 'conferma per cancellare l''ordine di produzione del semilavorato') = 1) then
          begin
            pr1 := tdelordp.create(nil);
            pr1.progressivo := tabella_righe.fieldbyname('progressivo').asinteger;
            pr1.riga := tabella_righe.fieldbyname('riga').asinteger;
            pr1.showmodal;
            freeandnil(pr1);
          end;
        end;
        esegui_query_righe;
      end;
    end;
  end;
end;

procedure TGESORDP.tool_rda_totaleClick(Sender: TObject);
var
  quantita_rda: double;
begin
  inherited;

  if messaggio(300, 'conferma generazione RDA per tutte le righe dell''ordine') = 1 then
  begin
    tabella_righe.first;
    while not tabella_righe.eof do
    begin
      if (tabella_righe.fieldbyname('oar').value = 'no') and (tabella_righe.fieldbyname('rda').value = 'no') and
        (tabella_righe.fieldbyname('semilavorato').asstring = 'no') then
      begin
        quantita_rda := fabdin.fabbisogno
          (tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('tma_codice').asstring,
          tabella_righe.fieldbyname('quantita').asfloat - tabella_righe.fieldbyname('quantita_evasa').asfloat -
          tabella_righe.fieldbyname('quantita_approntata').asfloat, 0, tabella_righe.fieldbyname('id').asinteger);
        if quantita_rda > 0 then
        begin
          memorizza_rda(tabella.fieldbyname('data_consegna').asdatetime, '', quantita_rda);
        end;
      end;
      tabella_righe.next;
    end;
    tabella_righe.first;
    messaggio(100, 'elaborazione terminata');

    tabella_righe.refresh;

    abilita_codice;
  end;
end;

procedure TGESORDP.tool_staordfasClick(Sender: TObject);
begin
  inherited;

  esegui_programma('STAORDFAS', tabella.fieldbyname('progressivo').asinteger, true);
end;

procedure TGESORDP.crea_ordine_lavorazione_presso_terzi(quantita: double);
var
  data_prezzo: tdate;
  prezzo, prezzo_lavorazioni, quantita_ordinata: double;
  tsm_codice, tsm_codice_art, nom_lingua: string;
  data_precedente: tdatetime;
  riga: integer;
  numero_documento, numero_documento_precedente: double;

  pr: timpalf;
begin
  if messaggio(304, 'conferma creazione ordine fornitori c/lavoro') = 1 then
  begin
    oat_esistente.close;
    oat_esistente.params[0].asstring := tabella.fieldbyname('frn_codice').asstring;
    oat_esistente.params[2].asstring := tda_codice;
    read_tabella(arc.arcdit, 'frn', 'codice', tabella.fieldbyname('frn_codice').asstring);
    oat_esistente.params[1].asstring := archivio.fieldbyname('tla_codice').asstring;
    oat_esistente.open;
    if oat_esistente.eof then
    begin
      //  crea testata ordine fornitore
      oat.close;
      oat.open;

      oat.append;
      oat.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(TMyConnection_go(oat.connection), 'oat_progressivo');
      oat.parambyname('progressivo').asinteger := oat.fieldbyname('progressivo').asinteger;
      oat.fieldbyname('ese_codice').asstring := esercizio;
      oat.fieldbyname('tipo_documento').asstring := 'ordine';
      oat.fieldbyname('situazione').asstring := 'inserito';
      oat.fieldbyname('tda_codice').asstring := tda_codice;
      oat.fieldbyname('data_registrazione').asdatetime := now;
      oat.fieldbyname('data_documento').asdatetime := now;
      read_tabella(tda, oat.fieldbyname('tda_codice').asstring);
      oat.fieldbyname('cen_codice').asstring := tda.fieldbyname('cen_codice').asstring;
      oat.fieldbyname('tvc_codice').asstring := tda.fieldbyname('tvc_codice').asstring;

      oat.fieldbyname('serie_documento').asstring := tda.fieldbyname('numerazione').asstring;
      oat.fieldbyname('tcd_codice_apertura').asstring := tda.fieldbyname('tcd_codice_inizio').asstring;
      oat.fieldbyname('tcd_codice_chiusura').asstring := tda.fieldbyname('tcd_codice_fine').asstring;

      progressivo_cnt := 0;
      esiste_numerazione_cnt := true;
      while esiste_numerazione_cnt do
      begin
        arc.assegna_numerazione(arc.arcdit, 'ORDINI FORNITORI', oat.fieldbyname('serie_documento').asstring,
          oat.fieldbyname('data_documento').asdatetime, progressivo_cnt);
        oat.fieldbyname('numero_documento').asfloat := progressivo_cnt;

        if arc.esistenza_documento('oat', oat.fieldbyname('serie_documento').asstring, '',
          oat.fieldbyname('data_documento').asdatetime, oat.fieldbyname('numero_documento').asfloat,
          oat.fieldbyname('progressivo').asinteger) then
        begin
          progressivo_cnt := 0;
        end
        else
        begin
          esiste_numerazione_cnt := false;
        end;
      end;

      oat.fieldbyname('tma_codice').asstring := '';
      oat.fieldbyname('frn_codice').asstring := tabella.fieldbyname('frn_codice').asstring;
      read_tabella(arc.arcdit, 'frn', 'codice', oat.fieldbyname('frn_codice').asstring);
      oat.fieldbyname('tla_codice').asstring := archivio.fieldbyname('tla_codice').asstring;
      oat.fieldbyname('tpa_codice').asstring := archivio.fieldbyname('tpa_codice').asstring;
      sconto_imponibile_lordo := archivio.fieldbyname('sconto_imponibile_lordo').asstring;

      cpa.params[0].asstring := archivio.fieldbyname('tcf_codice').asstring;
      cpa.params[1].asstring := taq_codice_sconti_fattura;
      cpa.close;
      cpa.open;
      oat.fieldbyname('gen_codice_sconti_fattura').asstring := cpa.fieldbyname('gen_codice').asstring;

      cpa.params[0].asstring := archivio.fieldbyname('tcf_codice').asstring;
      cpa.params[1].asstring := taq_codice_sconto_cassa;
      cpa.close;
      cpa.open;
      oat.fieldbyname('gen_codice_sconto_cassa').asstring := cpa.fieldbyname('gen_codice').asstring;

      dicint.assegna_tiv_codice(0, oat);

      oat.fieldbyname('tsp_codice').asstring := archivio.fieldbyname('tsp_codice').asstring;
      oat.fieldbyname('tpo_codice').asstring := archivio.fieldbyname('tpo_codice').asstring;

      if read_tabella(arc.arcdit, 'inf', 'frn_codice;indirizzo',
        vararrayof([oat.fieldbyname('frn_codice').asstring, archivio.fieldbyname('inf_codice').asstring])) then
      begin
        assegna_indirizzo;
      end
      else if read_tabella(arc.arcdit, 'inf', 'frn_codice;indirizzo',
        vararrayof([oat.fieldbyname('frn_codice').asstring, oat.fieldbyname('frn_codice').asstring])) then
      begin
        assegna_indirizzo;
      end;

      read_tabella(arc.arcdit, 'nom', 'codice', oat.fieldbyname('frn_codice').asstring);
      nom_lingua := archivio.fieldbyname('lingua').asstring;
      oat.fieldbyname('tva_codice').asstring := archivio.fieldbyname('tva_codice').asstring;
      oat.fieldbyname('cambio').asfloat := arrotonda(cambio(oat.fieldbyname('tva_codice').asstring, oat.fieldbyname('data_documento').asdatetime), 6);
      read_tabella(arc.arcdit, 'tva', 'codice', oat.fieldbyname('tva_codice').asstring);

      read_tabella(arc.arcdit, 'tpa', 'codice', oat.fieldbyname('tpa_codice').asstring);
      oat.fieldbyname('tsm_codice').asstring := archivio.fieldbyname('tsm_codice').asstring;

      read_tabella(arc.arcdit, 'tla', 'codice', oat.fieldbyname('tla_codice').asstring);
      oat.fieldbyname('listino_con_iva').asstring := archivio.fieldbyname('iva_inclusa').asstring;

      oat.fieldbyname('riferimento').asstring := 'Ordine produzione: ' + tabella.fieldbyname('numero_documento').asstring;
      oat.fieldbyname('data_riferimento').asdatetime := tabella.fieldbyname('data_documento').asdatetime;

      oat.fieldbyname('tiv_codice_omaggi').asstring := tiv_codice_omaggi;

      oat.fieldbyname('data_consegna').asstring := tabella.fieldbyname('data_consegna').asstring;

      oat.fieldbyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
      oat.fieldbyname('tipologia').asstring := tabella.fieldbyname('tipologia').asstring;

      oat.post;
      oat.refresh;

      riga := 0;
    end
    else
    begin
      oat.close;
      oat.parambyname('progressivo').asinteger := oat_esistente.fieldbyname('progressivo').asinteger;
      oat.open;

      oar_ultimo.close;
      oar_ultimo.parambyname('progressivo').asinteger := oat_esistente.fieldbyname('progressivo').asinteger;
      oar_ultimo.open;
      if oar_ultimo.isempty then
      begin
        riga := 0;
      end
      else
      begin
        riga := oar_ultimo.fieldbyname('riga').asinteger;
      end;
    end;

    //  crea riga articolo (con descrizioni)
    oar.close;
    oar.parambyname('progressivo').asinteger := 0;
    oar.parambyname('riga').asinteger := 0;
    oar.open;

    oar.append;

    oar.fieldbyname('progressivo').asfloat := oat.fieldbyname('progressivo').asfloat;
    riga := riga + 10;
    oar.fieldbyname('riga').asinteger := riga;
    oar.fieldbyname('situazione').asstring := 'inserito';

    oar.fieldbyname('art_codice').asstring := tabella.fieldbyname('art_codice').asstring;
    oar.fieldbyname('quantita').asfloat := quantita;
    oar.fieldbyname('tipo_movimento').asstring := 'normale';
    oar.fieldbyname('tma_codice').asstring := '';

    read_tabella(art, oar.fieldbyname('art_codice').asstring);
    read_tabella(arf, vararrayof([oat.fieldbyname('frn_codice').asstring, oar.fieldbyname('art_codice').asstring]));
    oar.fieldbyname('descrizione1').asstring := art.fieldbyname('descrizione1').asstring;
    oar.fieldbyname('descrizione2').asstring := art.fieldbyname('descrizione2').asstring;
    if tda.fieldbyname('note_art').asstring = 'si' then
    begin
      oar.fieldbyname('note').asstring := art.fieldbyname('note').asstring;
      if nom_lingua = arc.lin.fieldbyname('lingua_01').asstring then
      begin
        oar.fieldbyname('note').asstring := art.fieldbyname('note_lingua_01').asstring;
      end
      else if nom_lingua = arc.lin.fieldbyname('lingua_02').asstring then
      begin
        oar.fieldbyname('note').asstring := art.fieldbyname('note_lingua_02').asstring;
      end
      else if nom_lingua = arc.lin.fieldbyname('lingua_03').asstring then
      begin
        oar.fieldbyname('note').asstring := art.fieldbyname('note_lingua_03').asstring;
      end
      else if nom_lingua = arc.lin.fieldbyname('lingua_04').asstring then
      begin
        oar.fieldbyname('note').asstring := art.fieldbyname('note_lingua_04').asstring;
      end
      else if nom_lingua = arc.lin.fieldbyname('lingua_05').asstring then
      begin
        oar.fieldbyname('note').asstring := art.fieldbyname('note_lingua_05').asstring;
      end;
    end;
    oar.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice').asstring;

    oar.fieldbyname('tum_quantita_base').asfloat := oar.fieldbyname('quantita').asfloat;
    oar.fieldbyname('tiv_codice').asstring := art.fieldbyname('tiv_codice_acquisti').asstring;
    if oat.fieldbyname('tiv_codice').asstring <> '' then
    begin
      oar.fieldbyname('tiv_codice').asstring := oat.fieldbyname('tiv_codice').asstring;
    end;

    data_prezzo := date;
    frn.close;
    frn.params[0].asstring := oat.fieldbyname('frn_codice').asstring;
    frn.open;

    if arf.isempty then
    begin
      cerca_prezzo('ordine', prezzo, tsm_codice, tsm_codice_art);
    end
    else
    begin
      prezzo := 0;
      tsm_codice := '';
      tsm_codice_art := '';
    end;

    oar.fieldbyname('prezzo').asfloat := prezzo;
    oar.fieldbyname('tsm_codice').asstring := tsm_codice;
    oar.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
    if oar.fieldbyname('note').asstring <> '' then
    begin
      oar.fieldbyname('note').asstring := oar.fieldbyname('note').asstring + #13 + tabella.fieldbyname('descrizione').asstring;
    end
    else
    begin
      oar.fieldbyname('note').asstring := tabella.fieldbyname('descrizione').asstring;
    end;

    if tda.fieldbyname('proporre_contropartita').asstring = 'si' then
    begin
      cpa.close;
      cpa.params[0].asstring := frn.fieldbyname('tcf_codice').asstring;
      cpa.params[1].asstring := art.fieldbyname('taq_codice').asstring;
      cpa.open;
      if cpa.isempty then
      begin
        messaggio(200, 'non è stata assegnata la contropartita contabile');
      end
      else
      begin
        oar.fieldbyname('gen_codice').asstring := cpa.fieldbyname('gen_codice').asstring;
      end;
    end;

    if arf.isempty and (prezzo = 0) then
    begin
      prezzo_lavorazioni := 0;
      lavorazioni.close;
      lavorazioni.parambyname('art_codice_padre').asstring := tabella.fieldbyname('art_codice').asstring;
      lavorazioni.open;
      if not lavorazioni.isempty then
      begin
        if oar.fieldbyname('note').asstring <> '' then
        begin
          oar.fieldbyname('note').asstring := oar.fieldbyname('note').asstring + #13 + #13 + 'LAVORAZIONI';
        end
        else
        begin
          oar.fieldbyname('note').asstring := 'LAVORAZIONI:';
        end;
      end;

      while not lavorazioni.eof do
      begin
        cerca_prezzo('ordine lavorazione', prezzo, tsm_codice, tsm_codice_art);

        prezzo_lavorazioni := arrotonda(prezzo_lavorazioni + prezzo * lavorazioni.fieldbyname('quantita').asfloat, decimali_max_prezzo_acq);

        oar.fieldbyname('note').asstring := oar.fieldbyname('note').asstring + #13 +
          trim(lavorazioni.fieldbyname('descrizione1').asstring) + ' ' +
          trim(lavorazioni.fieldbyname('descrizione2').asstring);

        lavorazioni.next;
      end;
      prezzo := prezzo_lavorazioni;
      oar.fieldbyname('prezzo').asfloat := prezzo;
      oar.fieldbyname('tsm_codice').asstring := '';
      oar.fieldbyname('tsm_codice_art').asstring := '';
    end;

    if arc.dit.fieldbyname('genera_descrizione_cicli').asstring = 'si' then
    begin
      opc_gesorda.close;
      opc_gesorda.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
      opc_gesorda.open;
      if not opc_gesorda.isempty then
      begin
        if oar.fieldbyname('note').asstring <> '' then
        begin
          oar.fieldbyname('note').asstring := oar.fieldbyname('note').asstring + #13;
        end;

        while not opc_gesorda.eof do
        begin
          oar.fieldbyname('note').asstring := oar.fieldbyname('note').asstring + #13 +
            'tipo operazione: ' + opc_gesorda.fieldbyname('descrizione').asstring + #13;
          if opc_gesorda.fieldbyname('note').asstring <> '' then
          begin
            oar.fieldbyname('note').asstring := oar.fieldbyname('note').asstring + 'note' + #13 +
              opc_gesorda.fieldbyname('note').asstring + #13;
          end;

          opc_gesorda.next;
        end;
      end;
    end;

    calcola_importo;

    oar.fieldbyname('documento_origine').asstring := 'produzione';
    oar.fieldbyname('doc_progressivo_origine').asfloat := tabella.fieldbyname('progressivo').asfloat;

    oar.fieldbyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
    oar.fieldbyname('tipologia').asstring := tabella.fieldbyname('tipologia').asstring;

    oar.fieldbyname('data_consegna').value := tabella.fieldbyname('data_consegna').value;

    oar.fieldbyname('cen_codice').asstring := oat.fieldbyname('cen_codice').asstring;
    oar.fieldbyname('tvc_codice').asstring := oat.fieldbyname('tvc_codice').asstring;

    oar.post;

    //  genera articolo per codice di conto lavoro
    if not arf.isempty then
    begin
      quantita_ordinata := 0;
      pr := timpalf.create(nil);
      try
        pr.v_form_caption := 'Quantità articolo lavorazione';
        pr.v_descrizione_caption := 'quantità';
        pr.v_width_campo := 16;
        pr.valore_passato := 0;
        pr.tipo_campo := 'numero';
        pr.formattare := true;
        pr.decimali := decimali_quantita_art(arf.fieldbyname('art_codice_conto_lavoro').asstring);
        pr.campo_password := false;
        pr.showmodal;

        quantita_ordinata := pr.valore_passato;
        if pr.premuto_escape then
        begin
          quantita_ordinata := 0;
        end;
      finally
        pr.free;
      end;

      if quantita_ordinata <> 0 then
      begin
        oar.append;

        oar.fieldbyname('progressivo').asfloat := oat.fieldbyname('progressivo').asfloat;
        riga := riga + 10;
        oar.fieldbyname('riga').asinteger := riga;
        oar.fieldbyname('situazione').asstring := 'inserito';

        oar.fieldbyname('art_codice').asstring := arf.fieldbyname('art_codice_conto_lavoro').asstring;
        oar.fieldbyname('quantita').asfloat := quantita_ordinata;
        oar.fieldbyname('tipo_movimento').asstring := 'normale';
        oar.fieldbyname('tma_codice').asstring := '';
        read_tabella(art, oar.fieldbyname('art_codice').asstring);
        oar.fieldbyname('descrizione1').asstring := art.fieldbyname('descrizione1').asstring;
        oar.fieldbyname('descrizione2').asstring := art.fieldbyname('descrizione2').asstring;
        oar.fieldbyname('tum_codice').asstring := arf.fieldbyname('tum_codice').asstring;
        oar.fieldbyname('tum_quantita_base').asfloat := oar.fieldbyname('quantita').asfloat;
        oar.fieldbyname('tiv_codice').asstring := arf.fieldbyname('tiv_codice_acquisti').asstring;
        if oat.fieldbyname('tiv_codice').asstring <> '' then
        begin
          oar.fieldbyname('tiv_codice').asstring := oat.fieldbyname('tiv_codice').asstring;
        end;

        data_prezzo := now;
        frn.close;
        frn.params[0].asstring := oat.fieldbyname('frn_codice').asstring;
        frn.open;

        cerca_prezzo('ordine', prezzo, tsm_codice, tsm_codice_art);

        oar.fieldbyname('prezzo').asfloat := prezzo;
        oar.fieldbyname('tsm_codice').asstring := tsm_codice;
        oar.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
        oar.fieldbyname('note').asstring := tabella.fieldbyname('descrizione').asstring;

        if tda.fieldbyname('proporre_contropartita').asstring = 'si' then
        begin
          cpa.close;
          cpa.params[0].asstring := frn.fieldbyname('tcf_codice').asstring;
          cpa.params[1].asstring := art.fieldbyname('taq_codice').asstring;
          cpa.open;
          if cpa.isempty then
          begin
            messaggio(200, 'non è stata assegnata la contropartita contabile');
          end
          else
          begin
            oar.fieldbyname('gen_codice').asstring := cpa.fieldbyname('gen_codice').asstring;
          end;
        end;

        calcola_importo;

        oar.fieldbyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
        oar.fieldbyname('tipologia').asstring := tabella.fieldbyname('tipologia').asstring;

        oar.fieldbyname('data_consegna').value := tabella.fieldbyname('data_consegna').value;

        oar.fieldbyname('cen_codice').asstring := oat.fieldbyname('cen_codice').asstring;
        oar.fieldbyname('tvc_codice').asstring := oat.fieldbyname('tvc_codice').asstring;

        oar.post;
      end;
    end;

    totacq.movacq_testata(tmyconnection_go(oat.connection), 'ordine', oat.fieldbyname('progressivo').asinteger);

    parametri_extra_programma_chiamato[29] := oar.fieldbyname('riga').asinteger;
    esegui_programma('GESORDA', oat.fieldbyname('progressivo').asinteger, true);
  end;
  progressivo_cnt := 0;
end;

procedure TGESORDP.assegna_indirizzo;
begin
  oat.fieldbyname('indirizzo').asstring := archivio.fieldbyname('indirizzo').asstring;
  oat.fieldbyname('descrizione1').asstring := archivio.fieldbyname('descrizione1').asstring;
  oat.fieldbyname('descrizione2').asstring := archivio.fieldbyname('descrizione2').asstring;
  oat.fieldbyname('via').asstring := archivio.fieldbyname('via').asstring;
  oat.fieldbyname('cap').asstring := archivio.fieldbyname('cap').asstring;
  oat.fieldbyname('citta').asstring := archivio.fieldbyname('citta').asstring;
  oat.fieldbyname('provincia').asstring := archivio.fieldbyname('provincia').asstring;
  oat.fieldbyname('tna_codice').asstring := archivio.fieldbyname('tna_codice').asstring;

  oat.fieldbyname('tsp_codice').asstring := archivio.fieldbyname('tsp_codice').asstring;
  oat.fieldbyname('tpo_codice').asstring := archivio.fieldbyname('tpo_codice').asstring;
end;

procedure TGESORDP.v_formulaClick(Sender: TObject);
begin
  inherited;
  if tabella_edit(tabella) then
  begin
    formula_visualizza := true;
    esegui_formula;
    tabella.post;
    formula_visualizza := false;
  end;
  assegna_codice;
end;

procedure TGESORDP.esegui_formula;
var
  pr: tformuladsb;
begin
  pr := tformuladsb.create(nil);
  pr.art_codice := v_art_codice_finiti.text;
  pr.formula := tabella.fieldbyname('formula').asstring;
  pr.visualizza := formula_visualizza;
  pr.showmodal;
  tabella.fieldbyname('formula').asstring := pr.formula;
  pr.free;
end;

procedure TGESORDP.calcola_importo;
var
  importo, importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato: double;
begin
  importo := oar.fieldbyname('importo').asfloat;
  importo_euro := oar.fieldbyname('importo_euro').asfloat;
  importo_iva := oar.fieldbyname('importo_iva').asfloat;
  importo_iva_euro := oar.fieldbyname('importo_iva_euro').asfloat;

  calcola_importo_documento(oar.fieldbyname('quantita').asfloat, oar.fieldbyname('prezzo').asfloat,
    oat.fieldbyname('cambio').asfloat, oar.fieldbyname('importo_sconto').asfloat,
    sconto_imponibile_lordo, oat.fieldbyname('listino_con_iva').asstring, oar.fieldbyname('tum_codice').asstring,
    oar.fieldbyname('tiv_codice').asstring, oar.fieldbyname('tsm_codice').asstring,
    oar.fieldbyname('tsm_codice_art').asstring, importo, importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato);

  if tabella_edit(oar) then
  begin
    oar.fieldbyname('importo').asfloat := importo;
    oar.fieldbyname('importo_euro').asfloat := importo_euro;
    oar.fieldbyname('importo_iva').asfloat := importo_iva;
    oar.fieldbyname('importo_iva_euro').asfloat := importo_iva_euro;
  end;
end;

procedure TGESORDP.tool_ddt_lavorazione_presso_terziClick(Sender: TObject);
var
  crea_ddt_cl: tcrea_ddt_cl;
begin
  inherited;

  crea_ddt_cl := tcrea_ddt_cl.create;

  crea_ddt_cl.crea_ddt(tabella.fieldbyname('progressivo').asinteger);

  freeandnil(crea_ddt_cl);

  tabella_righe.refresh;

end;

procedure TGESORDP.attiva_movimenti_scarico(flag: boolean);
begin
  if (flag) and (tabella_righe.fieldbyname('quantita_evasa').asfloat <> 0) then
  begin
    v_gestione_movimenti_scarico.enabled := true;
  end
  else
  begin
    v_gestione_movimenti_scarico.enabled := false;
  end;
end;

procedure TGESORDP.crea_ddt_lavorazione_presso_terzi;
var
  pr: tddtclav;

  data_precedente: tdatetime;
  progressivo, riga, dvr_riga: integer;
  numero_documento, numero_documento_precedente: double;
  evasione: string;
  creato_testata, prosegui: boolean;

  tdo_codice, tmo_codice_collegato, tma_codice_collegato, tmo_codice_controllo, tma_codice_controllo, tcd_codice, lotti: string;
begin
  esiste_oat.close;
  esiste_oat.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
  esiste_oat.open;
  if esiste_oat.eof then
  begin
    messaggio(000, 'non è stato ancora emesso nessun ordine di lavorazione');
  end
  else if esiste_oat.fieldbyname('tdo_codice_presso_terzi').asstring = '' then
  begin
    messaggio(000, 'nel codice documento ordine a fornitore non è stato indicato il codice del ddt di conto/lavoro');
  end
  else
  begin
    if messaggio(304, 'conferma emissione ddt di conto lavoro') = 1 then
    begin
      //  seleziona gli articoli da spedire
      pr := tddtclav.create(nil);
      try
        if pr.esegui_form then
        begin
          oat.close;
          oat.parambyname('progressivo').asinteger := esiste_oat.fieldbyname('progressivo').asinteger;
          oat.open;

          pr.codice := vararrayof([0, 0]);
          pr.progressivo := trunc(v_progressivo.value);
          pr.showmodal;
          evasione := pr.evasione;

          if evasione <> 'nessuna' then
          begin
            tabella_righe.refresh;
            creato_testata := false;
            tabella_righe.first;
            while not tabella_righe.eof do
            begin
              tmo_codice_controllo := '';
              tma_codice_controllo := '';

              read_tabella(arc.arcdit, 'tda', 'codice', oat.fieldbyname('tda_codice').asstring);
              tdo_codice := archivio.fieldbyname('tdo_codice_presso_terzi').asstring;
              read_tabella(tdo, tdo_codice);
              read_tabella(arc.arcdit, 'tmo', 'codice', tdo.fieldbyname('tmo_codice').asstring, 'tmo_codice_collegato, tma_codice_collegato, esistenza');
              tmo_codice_collegato := archivio.fieldbyname('tmo_codice_collegato').asstring;
              tma_codice_collegato := archivio.fieldbyname('tma_codice_collegato').asstring;
              if tma_codice_collegato = '' then
              begin
                tma_codice_collegato := tabella.fieldbyname('tma_codice_finiti').asstring;
              end;

              if archivio.fieldbyname('esistenza').asstring = 'decrementa' then
              begin
                tmo_codice_controllo := tdo.fieldbyname('tmo_codice').asstring;
                tma_codice_controllo := tdo.fieldbyname('tma_codice').asstring;
              end
              else
              begin
                tmo_codice_controllo := tmo_codice_collegato;
                tma_codice_controllo := tma_codice_collegato;
              end;

              progressivo := arc.setta_valore_generatore(tmyconnection_go(dvt.connection), 'dvt_progressivo');

              if tabella_righe.fieldbyname('ddtclav_quantita').asfloat <> 0 then
              begin
                prosegui := true;
                if (tmo_codice_controllo <> '') and (tma_codice_controllo <> '') then
                begin
                  prosegui := esegui_controllo_esistenza(progressivo, tabella_righe.fieldbyname('ddtclav_quantita').asfloat, tmo_codice_controllo, tma_codice_controllo);
                end;
                if prosegui then
                begin
                  if not creato_testata then
                  begin
                    //  crea documento invio merce in conto lavorazione
                    read_tabella(arc.arcdit, 'tda', 'codice', oat.fieldbyname('tda_codice').asstring, 'tdo_codice_presso_terzi');
                    if archivio.fieldbyname('tdo_codice_presso_terzi').asstring <> '' then
                    begin
                      dvt_esistente.close;
                      dvt_esistente.params[0].asstring := tabella.fieldbyname('frn_codice').asstring;
                      dvt_esistente.params[1].asstring := archivio.fieldbyname('tdo_codice_presso_terzi').asstring;
                      dvt_esistente.params[2].asdate := date;
                      dvt_esistente.open;
                      if dvt_esistente.isempty then
                      begin
                        dvt.close;
                        dvt.open;

                        dvt.append;

                        dvt.fieldbyname('progressivo').asinteger := progressivo;
                        dvt.parambyname('progressivo').asinteger := progressivo;
                        progressivo_dvt := dvt.fieldbyname('progressivo').asinteger;

                        dvt.fieldbyname('tdo_codice').asstring := tdo_codice;
                        dvt.fieldbyname('data_documento').asdatetime := date;
                        dvt.fieldbyname('tipo_documento').asstring := tdo.fieldbyname('tipo_documento').asstring;
                        dvt.fieldbyname('tcd_codice_apertura').asstring := tdo.fieldbyname('tcd_codice_inizio').asstring;
                        dvt.fieldbyname('tcd_codice_chiusura').asstring := tdo.fieldbyname('tcd_codice_fine').asstring;
                        dvt.fieldbyname('serie_documento').asstring := tdo.fieldbyname('numerazione').asstring;
                        dvt.fieldbyname('tmo_codice').asstring := tdo.fieldbyname('tmo_codice').asstring;
                        dvt.fieldbyname('tma_codice').asstring := tdo.fieldbyname('tma_codice').asstring;

                        if tdo.fieldbyname('gestione_numero_documento').asstring = 'si' then
                        begin
                          progressivo_cnt := 0;
                          esiste_numerazione_cnt := true;
                          while esiste_numerazione_cnt do
                          begin
                            arc.assegna_numerazione(arc.arcdit, 'DDT CLIENTI', dvt.fieldbyname('serie_documento').asstring,
                              dvt.fieldbyname('data_documento').asdatetime, progressivo_cnt);
                            dvt.fieldbyname('numero_documento').asfloat := progressivo_cnt;

                            if arc.esistenza_documento('dvt', dvt.fieldbyname('serie_documento').asstring, '',
                              dvt.fieldbyname('data_documento').asdatetime, dvt.fieldbyname('numero_documento').asfloat,
                              dvt.fieldbyname('progressivo').asinteger) then
                            begin
                              progressivo_cnt := 0;
                            end
                            else
                            begin
                              esiste_numerazione_cnt := false;
                            end;
                          end;
                        end;

                        dvt.fieldbyname('tmo_codice_collegato').asstring := tmo_codice_collegato;
                        dvt.fieldbyname('tma_codice_collegato').asstring := tma_codice_collegato;
                        dvt.fieldbyname('cli_codice').asstring := tabella.fieldbyname('frn_codice').asstring;

                        dvt.fieldbyname('ese_codice').asstring := esercizio;
                        dvt.fieldbyname('situazione').asstring := 'inserito';

                        read_tabella(arc.arcdit, 'nom', 'codice', dvt.fieldbyname('cli_codice').asstring);
                        dvt.fieldbyname('tva_codice').asstring := archivio.fieldbyname('tva_codice').asstring;
                        dvt.fieldbyname('cambio').asfloat := cambio(dvt.fieldbyname('tva_codice').asstring, dvt.fieldbyname('data_documento').asdatetime);

                        read_tabella(arc.arcdit, 'frn', 'codice', dvt.fieldbyname('cli_codice').asstring);
                        dvt.fieldbyname('tsp_codice').asstring := archivio.fieldbyname('tsp_codice').asstring;
                        dvt.fieldbyname('tpo_codice').asstring := archivio.fieldbyname('tpo_codice').asstring;
                        if archivio.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
                        begin
                          dvt.fieldbyname('tma_codice').asstring := archivio.fieldbyname('tma_codice_conto_terzi').asstring;
                        end;

                        dvt.fieldbyname('indirizzo').asstring := oat.fieldbyname('indirizzo').asstring;
                        dvt.fieldbyname('descrizione1').asstring := oat.fieldbyname('descrizione1').asstring;
                        dvt.fieldbyname('descrizione2').asstring := oat.fieldbyname('descrizione2').asstring;
                        dvt.fieldbyname('via').asstring := oat.fieldbyname('via').asstring;
                        dvt.fieldbyname('cap').asstring := oat.fieldbyname('cap').asstring;
                        dvt.fieldbyname('citta').asstring := oat.fieldbyname('citta').asstring;
                        dvt.fieldbyname('provincia').asstring := oat.fieldbyname('provincia').asstring;
                        dvt.fieldbyname('tna_codice').asstring := oat.fieldbyname('tna_codice').asstring;

                        dvt.fieldbyname('tsp_codice').asstring := oat.fieldbyname('tsp_codice').asstring;
                        dvt.fieldbyname('tpo_codice').asstring := oat.fieldbyname('tpo_codice').asstring;

                        dvt.fieldbyname('riferimento').asstring := 'Nostro ordine: ' + oat.fieldbyname('numero_documento').asstring;
                        if oat.fieldbyname('serie_documento').asstring <> '' then
                        begin
                          dvt.fieldbyname('riferimento').asstring := dvt.fieldbyname('riferimento').asstring + '/' +
                            oat.fieldbyname('serie_documento').asstring;
                        end;
                        dvt.fieldbyname('data_riferimento').asdatetime := oat.fieldbyname('data_documento').asdatetime;

                        dvt.fieldbyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
                        dvt.fieldbyname('tipologia').asstring := tabella.fieldbyname('tipologia').asstring;

                        if arc.dit.fieldbyname('accorpa_ddt_conto_lavoro').asstring = 'si' then
                        begin
                          note_testata(false);
                        end;

                        dvt.post;

                        if (dvt.fieldbyname('tmo_codice').asstring = '') or (dvt.fieldbyname('tma_codice').asstring = '') or
                          (dvt.fieldbyname('tmo_codice_collegato').asstring = '') or (dvt.fieldbyname('tma_codice_collegato').asstring = '') then
                        begin
                          messaggio(100, 'verificare le causali di magazzino ed i codici deposito' + #13 +
                            'prima di stampare il documento di trasporto' + #13 + #13 +
                            'valori assegnati' + #13 +
                            'codice movimento principale: [' + dvt.fieldbyname('tmo_codice').asstring +
                            ']  codice deposito principale: [' + dvt.fieldbyname('tma_codice').asstring + ']' + #13 +
                            'codice movimento collegato: [' + dvt.fieldbyname('tmo_codice_collegato').asstring +
                            ']  codice deposito collegato: [' + dvt.fieldbyname('tma_codice_collegato').asstring + ']');
                        end;

                        riga := 0;

                        //  riga con descrizione apertura
                        read_tabella(arc.arcdit, 'tda', 'codice', tda_codice);
                        if archivio.fieldbyname('tcd_codice_apertura_presso_ter').asstring <> '' then
                        begin
                          tcd_codice := archivio.fieldbyname('tcd_codice_apertura_presso_ter').asstring;

                          dvr.close;
                          dvr.parambyname('progressivo').asinteger := 0;
                          dvr.parambyname('riga').asinteger := 0;
                          dvr.open;

                          dvr.append;

                          dvr.fieldbyname('progressivo').asinteger := progressivo_dvt;
                          dvr.fieldbyname('riga').asinteger := 10;
                          dvr.fieldbyname('situazione').asstring := 'inserito';

                          dvr.fieldbyname('tipo_movimento').asstring := 'normale';

                          read_tabella(arc.arcdit, 'tcd', 'codice', tcd_codice);
                          dvr.fieldbyname('note').asstring := archivio.fieldbyname('note').asstring + #13;

                          dvr.post;

                          riga := 10;
                        end;
                      end
                      else
                      begin
                        progressivo_dvt := dvt_esistente.fieldbyname('progressivo').asinteger;
                        dvt.close;
                        dvt.parambyname('progressivo').asinteger := dvt_esistente.fieldbyname('progressivo').asinteger;
                        dvt.open;

                        if arc.dit.fieldbyname('accorpa_ddt_conto_lavoro').asstring = 'si' then
                        begin
                          dvt.edit;
                          note_testata(true);
                          dvt.post;
                        end;
                        dvr_ultimo.close;
                        dvr_ultimo.parambyname('progressivo').asinteger := dvt_esistente.fieldbyname('progressivo').asinteger;
                        dvr_ultimo.open;
                        if dvr_ultimo.isempty then
                        begin
                          riga := 0;
                        end
                        else
                        begin
                          riga := dvr_ultimo.fieldbyname('riga').asinteger;
                        end;
                      end;

                      if arc.dit.fieldbyname('accorpa_ddt_conto_lavoro').asstring = 'no' then
                      begin
                        //  descrizione ordine e articolo di riferimento
                        dvr.close;
                        dvr.parambyname('progressivo').asinteger := 0;
                        dvr.parambyname('riga').asinteger := 0;
                        dvr.open;

                        dvr.append;

                        dvr.fieldbyname('progressivo').asfloat := dvt.fieldbyname('progressivo').asfloat;
                        riga := riga + 10;
                        dvr.fieldbyname('riga').asinteger := riga;
                        dvr.fieldbyname('situazione').asstring := 'inserito';

                        dvr.fieldbyname('tipo_movimento').asstring := 'normale';

                        dvr.fieldbyname('note').asstring := 'ordine n. ' + esiste_oat.fieldbyname('numero_documento').asstring;
                        if esiste_oat.fieldbyname('serie_documento').asstring <> '' then
                        begin
                          dvr.fieldbyname('note').asstring := dvr.fieldbyname('note').asstring +
                            '/' + esiste_oat.fieldbyname('serie_documento').asstring;
                        end;
                        dvr.fieldbyname('note').asstring := dvr.fieldbyname('note').asstring +
                          '  del ' + esiste_oat.fieldbyname('data_documento').asstring;

                        read_tabella(arc.arcdit, 'art', 'codice', tabella.fieldbyname('art_codice').asstring);
                        dvr.fieldbyname('note').asstring := dvr.fieldbyname('note').asstring + #13 + 'codice articolo: ' + archivio.fieldbyname('codice').asstring;
                        dvr.fieldbyname('note').asstring := dvr.fieldbyname('note').asstring + #13 + archivio.fieldbyname('descrizione1').asstring;
                        if archivio.fieldbyname('descrizione2').asstring <> '' then
                        begin
                          dvr.fieldbyname('note').asstring := dvr.fieldbyname('note').asstring + #13 +
                            archivio.fieldbyname('descrizione2').asstring;
                        end;

                        dvr.fieldbyname('riga_ddt').asstring := 'si';

                        dvr.post;
                      end;

                      creato_testata := true;
                    end;
                  end;

                  dvr_riga := 0;
                  if arc.dit.fieldbyname('accorpa_ddt_conto_lavoro').asstring = 'si' then
                  begin
                    if read_tabella(dvr_art,
                      vararrayof([dvt.fieldbyname('progressivo').asinteger, tabella_righe.fieldbyname('art_codice').asstring])) then
                    begin
                      dvr_riga := dvr_art.fieldbyname('riga').asinteger;
                    end;
                  end;

                  dvr.close;
                  dvr.parambyname('progressivo').asinteger := dvt.fieldbyname('progressivo').asinteger;
                  dvr.parambyname('riga').asinteger := dvr_riga;
                  dvr.open;

                  if dvr.isempty then
                  begin
                    dvr.append;

                    dvr.fieldbyname('progressivo').asinteger := dvt.fieldbyname('progressivo').asinteger;
                    riga := riga + 10;
                    dvr.fieldbyname('riga').asinteger := riga;
                  end
                  else
                  begin
                    dvr.edit;
                  end;

                  dvr.fieldbyname('situazione').asstring := 'inserito';

                  dvr.fieldbyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
                  read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring);
                  lotti := archivio.fieldbyname('lotti').asstring;
                  dvr.fieldbyname('descrizione1').asstring := archivio.fieldbyname('descrizione1').asstring;
                  dvr.fieldbyname('descrizione2').asstring := archivio.fieldbyname('descrizione2').asstring;
                  dvr.fieldbyname('tum_codice').asstring := archivio.fieldbyname('tum_codice').asstring;
                  dvr.fieldbyname('tiv_codice').asstring := archivio.fieldbyname('tiv_codice_vendite').asstring;
                  dvr.fieldbyname('quantita').asfloat := dvr.fieldbyname('quantita').asfloat + tabella_righe.fieldbyname('ddtclav_quantita').asfloat;
                  dvr.fieldbyname('tum_quantita_base').asfloat := dvr.fieldbyname('quantita').asfloat;
                  dvr.fieldbyname('tipo_movimento').asstring := 'normale';

                  dvr.fieldbyname('tma_codice').asstring := dvt.fieldbyname('tma_codice').asstring;
                  dvr.fieldbyname('tma_codice_collegato').asstring := dvt.fieldbyname('tma_codice_collegato').asstring;

                  if arc.dit.fieldbyname('accorpa_ddt_conto_lavoro').asstring = 'si' then
                  begin
                    dvr.fieldbyname('documento_origine').asstring := '';
                    dvr.fieldbyname('doc_progressivo_origine').asinteger := 0;
                    dvr.fieldbyname('doc_riga_origine').asinteger := 0;
                  end
                  else
                  begin
                    dvr.fieldbyname('documento_origine').asstring := 'produzione';
                    dvr.fieldbyname('doc_progressivo_origine').asinteger := tabella.fieldbyname('progressivo').asinteger;
                    dvr.fieldbyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
                  end;

                  dvr.fieldbyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
                  dvr.fieldbyname('tipologia').asstring := tabella.fieldbyname('tipologia').asstring;

                  dvr.fieldbyname('no_impegnato').asstring := 'si';

                  dvr.post;

                  if lotti = 'si' then
                  begin
                    read_tabella(arc.arcdit, 'tmo', 'codice', dvt.fieldbyname('tmo_codice').asstring);
                    if archivio.fieldbyname('lotti').asstring = 'si' then
                    begin
                      esegui_carltm(vararrayof(['ddt fornitori' + ' ven', dvr.fieldbyname('progressivo').asinteger,
                        dvr.fieldbyname('riga').asinteger, 0]), dvt.fieldbyname('numero_documento').asfloat,
                        'F', dvt.fieldbyname('cli_codice').asstring, dvr.fieldbyname('art_codice').asstring,
                        dvr.fieldbyname('tma_codice').asstring, dvt.fieldbyname('tmo_codice').asstring,
                        archivio.fieldbyname('esistenza').asstring, dvt.fieldbyname('serie_documento').asstring,
                        dvt.fieldbyname('data_documento').asdatetime, dvt.fieldbyname('data_documento').asdatetime,
                        archivio.fieldbyname('descrizione').asstring, dvr.fieldbyname('tum_quantita_base').asfloat, 0, 0);
                    end;
                  end;
                end;
              end;

              tabella_righe.next;
            end;

            tabella_righe.first;

            if creato_testata then
            begin
              //  riga con descrizione chiusura
              read_tabella(arc.arcdit, 'tda', 'codice', tda_codice);
              if archivio.fieldbyname('tcd_codice_chiusura_presso_ter').asstring <> '' then
              begin
                tcd_codice := archivio.fieldbyname('tcd_codice_chiusura_presso_ter').asstring;

                dvr.close;
                dvr.parambyname('progressivo').asinteger := 0;
                dvr.parambyname('riga').asinteger := 0;
                dvr.open;

                dvr.append;

                dvr.fieldbyname('progressivo').asfloat := progressivo_dvt;
                riga := riga + 10;
                dvr.fieldbyname('riga').asinteger := riga;
                dvr.fieldbyname('situazione').asstring := 'inserito';

                dvr.fieldbyname('tipo_movimento').asstring := 'normale';

                read_tabella(arc.arcdit, 'tcd', 'codice', tcd_codice);
                dvr.fieldbyname('note').asstring := archivio.fieldbyname('note').asstring + #13;

                dvr.post;
              end;

              totven.movven_testata(TMyConnection_go(dvt.connection), dvt.fieldbyname('tipo_documento').asstring, dvt.fieldbyname('progressivo').asinteger);
              esegui_programma('GESDDTF', dvt.fieldbyname('progressivo').asinteger, true);
            end;

            oat.close;

            opr.close;
            opr.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
            opr.execsql;
          end;
        end;
      finally
        pr.free;
      end;
    end;
  end;
  progressivo_cnt := 0;
end;

procedure TGESORDP.note_testata(esiste: boolean);
begin
  if esiste then
  begin
    dvt.fieldbyname('note').asstring := dvt.fieldbyname('note').asstring + #13 + #13;
  end;

  //  ordine fornitore
  dvt.fieldbyname('note').asstring := dvt.fieldbyname('note').asstring +
    'ordine fornitore n. ' + esiste_oat.fieldbyname('numero_documento').asstring;
  if esiste_oat.fieldbyname('serie_documento').asstring <> '' then
  begin
    dvt.fieldbyname('note').asstring := dvt.fieldbyname('note').asstring +
      '/' + esiste_oat.fieldbyname('serie_documento').asstring;
  end;
  dvt.fieldbyname('note').asstring := dvt.fieldbyname('note').asstring +
    '  del ' + esiste_oat.fieldbyname('data_documento').asstring;

  //  ordine produzione
  dvt.fieldbyname('note').asstring := dvt.fieldbyname('note').asstring + #13 +
    'ordine produzione n. ' + tabella.fieldbyname('numero_documento').asstring;
  dvt.fieldbyname('note').asstring := dvt.fieldbyname('note').asstring +
    '  del ' + tabella.fieldbyname('data_documento').asstring;

  read_tabella(arc.arcdit, 'art', 'codice', tabella.fieldbyname('art_codice').asstring);
  dvt.fieldbyname('note').asstring := dvt.fieldbyname('note').asstring + #13 + 'codice articolo: ' + archivio.fieldbyname('codice').asstring;
  dvt.fieldbyname('note').asstring := dvt.fieldbyname('note').asstring + #13 + archivio.fieldbyname('descrizione1').asstring;
  if archivio.fieldbyname('descrizione2').asstring <> '' then
  begin
    dvt.fieldbyname('note').asstring := dvt.fieldbyname('note').asstring + #13 +
      archivio.fieldbyname('descrizione2').asstring;
  end;
end;

function TGESORDP.esegui_controllo_esistenza(progressivo: integer;
  quantita: double;
  tmo_codice, tma_codice: string): boolean;
var
  stringa: string;
  mancante: boolean;
begin
  result := true;
  mancante := false;

  if ((tdo.fieldbyname('controllo_esistenza').asstring = 'si') or (tdo.fieldbyname('blocco_mancanza_esistenza').asstring = 'si') or
    (tdo.fieldbyname('controllo_sottoscorta').asstring = 'si')) then
  begin
    read_tabella(esistenza_deposito, vararrayof([tabella_righe.fieldbyname('art_codice').asstring, tma_codice]));

    read_tabella(art_quantita, vararrayof([progressivo, tabella_righe.fieldbyname('art_codice').asstring, tma_codice]));

    if esistenza_deposito.fieldbyname('esistenza').asfloat < (art_quantita.fieldbyname('quantita').asfloat + quantita) then
    begin
      mancante := true;
      if (tdo.fieldbyname('blocco_mancanza_esistenza').asstring = 'si') or (tdo.fieldbyname('controllo_esistenza').asstring = 'si') then
      begin
        stringa := 'l''esistenza dell''articolo [' + formatfloat(formato_display_quantita, esistenza_deposito.fieldbyname('esistenza').asfloat) +
          '] nel deposito [' + tma_codice + '] è inferiore alla quantità dell''articolo nel documento [' +
          formatfloat(formato_display_quantita, art_quantita.fieldbyname('quantita').asfloat + quantita) + ']';
        if tdo.fieldbyname('blocco_mancanza_esistenza').asstring = 'si' then
        begin
          messaggio(000, stringa + #13 + 'la riga non verrà generata');
          result := false;
          exit;
        end
        else
        begin
          messaggio(000, stringa);
        end;
      end;
    end;

    //  controllo disponibilità
    if not mancante and (esistenza_deposito.active) and (tdo.fieldbyname('controllo_esistenza').asstring = 'si') and
      (esistenza_deposito.fieldbyname('esistenza').asfloat - esistenza_deposito.fieldbyname('impegnato').asfloat <= 0) then
    begin
      messaggio(200, 'l''esistenza [' + formatfloat(formato_display_quantita, esistenza_deposito.fieldbyname('esistenza').asfloat) +
        '] al netto dell''impegnato [' + formatfloat(formato_display_quantita, esistenza_deposito.fieldbyname('impegnato').asfloat) +
        '] nel deposito [' + tma_codice + '] è negativa o uguale a zero');
    end;

    //  controllo sottoscorta
    if not mancante and (esistenza_deposito.active) and (tdo.fieldbyname('controllo_sottoscorta').asstring = 'si') and
      (esistenza_deposito.fieldbyname('esistenza').asfloat <= esistenza_deposito.fieldbyname('scorta_minima').asfloat) then
    begin
      messaggio(200, 'l''esistenza [' + formatfloat(formato_display_quantita, esistenza_deposito.fieldbyname('esistenza').asfloat) +
        '] nel deposito [' + tma_codice + '] è inferiore o uguale alla scorta minima [' +
        formatfloat(formato_display_quantita, esistenza_deposito.fieldbyname('scorta_minima').asfloat) + ']');
    end;
  end;
end;

procedure TGESORDP.v_gestione_movimenti_scaricoClick(Sender: TObject);
var
  i: word;
begin
  inherited;
  i := 0;
  query_mmt.close;
  query_mmt.parambyname('opt_progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
  query_mmt.parambyname('tmo_codice').asstring := tabella.fieldbyname('tmo_codice_materie_prime').asstring;
  query_mmt.parambyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
  query_mmt.open;
  if query_mmt.recordcount > 1 then
  begin
    i := 0;
    messaggio(200, 'sono presenti ' + inttostr(query_mmt.recordcount) + ' movimenti di scarico');
  end;
  while not query_mmt.eof do
  begin
    if query_mmt.recordcount > 1 then
    begin
      i := i + 1;
      messaggio(200, 'movimento di scarico numero ' + inttostr(i));
    end;
    esegui_programma('GESMOV', query_mmt.fieldbyname('progressivo').asfloat, true);

    query_mmt.next;
  end;
end;

procedure TGESORDP.v_ddt_fornitoreClick(Sender: TObject);
var
  i: word;
begin
  inherited;
  i := 0;
  query_ddt.params[0].asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  query_ddt.params[1].asinteger := tabella_righe.fieldbyname('riga').asinteger;
  query_ddt.params[2].asstring := tabella_righe.fieldbyname('art_codice').asstring;
  query_ddt.close;
  query_ddt.open;
  if query_ddt.recordcount > 1 then
  begin
    i := 0;
    messaggio(200, 'sono presenti ' + inttostr(query_ddt.recordcount) + ' ddt di consegna merce in conto lavoro');
  end;
  while not query_ddt.eof do
  begin
    if query_ddt.recordcount > 1 then
    begin
      i := i + 1;
      messaggio(200, 'ddt di conto lavoro numero ' + inttostr(i));
    end;
    esegui_programma('GESDDTF', query_ddt.fieldbyname('progressivo').asfloat, true);

    query_ddt.next;
  end;
end;

procedure TGESORDP.v_documento_originaleClick(Sender: TObject);
begin
  inherited;
  esegui_collegato;
end;

procedure TGESORDP.v_documento_origineChange(Sender: TObject);
begin
  inherited;
  if v_documento_origine.text = '' then
  begin
    v_gestione_collegato.enabled := false;
  end
  else
  begin
    v_gestione_collegato.enabled := true;
  end;
end;

procedure TGESORDP.v_genera_ordine_produzioneClick(Sender: TObject);
var
  stringa: string;
  quantita: double;
  prosegui: boolean;
begin
  inherited;
  quantita := tabella_righe.fieldbyname('quantita').asfloat;
  prosegui := true;
  if esiste_ordine_produzione_derivato then
  begin
    stringa := 'sono già stati emessi ' + esiste_opt.fieldbyname('numero').asstring +
      ' ordini di produzione ' + #13 +
      'per la quantità di ' + esiste_opt.fieldbyname('quantita').asstring;
    if messaggio(304, stringa + #13 + #13 + 'conferma l''operazione') = 1 then
    begin
      prosegui := true;
      quantita := tabella_righe.fieldbyname('quantita').asfloat - esiste_opt.fieldbyname('quantita').asfloat;
    end
    else
    begin
      prosegui := false;
    end;
  end;
  if prosegui then
  begin
    parametri_extra_programma_chiamato[0] := tabella_righe.fieldbyname('art_codice').asstring;
    parametri_extra_programma_chiamato[1] := quantita;
    parametri_extra_programma_chiamato[2] := 0;
    parametri_extra_programma_chiamato[3] := 0;
    parametri_extra_programma_chiamato[4] := tabella.fieldbyname('data_consegna').asdatetime;
    parametri_extra_programma_chiamato[5] := tabella_righe.fieldbyname('note').asstring;
    parametri_extra_programma_chiamato[6] := '';
    parametri_extra_programma_chiamato[7] := '';
    parametri_extra_programma_chiamato[8] := tabella.fieldbyname('cms_codice').asstring;
    parametri_extra_programma_chiamato[9] := tabella.fieldbyname('tipologia').asstring;
    parametri_extra_programma_chiamato[10] := 'ordine produzione';
    parametri_extra_programma_chiamato[11] := tabella_righe.fieldbyname('progressivo').asinteger;
    parametri_extra_programma_chiamato[12] := tabella_righe.fieldbyname('riga').asinteger;
    parametri_extra_programma_chiamato[13] := tabella.fieldbyname('art_codice').asstring;
    parametri_extra_programma_chiamato[14] := tabella.fieldbyname('tipo_esplosione').asstring;
    parametri_extra_programma_chiamato[15] := tabella.fieldbyname('lot_codice').asstring;
    parametri_extra_programma_chiamato[16] := tabella.fieldbyname('art_codice').asstring;

    if tabella.fieldbyname('frn_codice').asstring = '' then
    begin
      parametri_extra_programma_chiamato[17] := tabella_righe.fieldbyname('tma_codice').asstring;
    end
    else
    begin
      if top.active and (top.fieldbyname('tma_codice_materie_prime').asstring <> '') then
      begin
        parametri_extra_programma_chiamato[17] := top.fieldbyname('tma_codice_materie_prime').asstring;
      end
      else
      begin
        parametri_extra_programma_chiamato[17] := tma_codice_materie_prime;
      end;
    end;

    parametri_extra_programma_chiamato[18] := tabella.fieldbyname('progressivo_finito').asinteger;
    parametri_extra_programma_chiamato[19] := tabella.fieldbyname('top_codice').asstring;
    parametri_extra_programma_chiamato[20] := '';
    parametri_extra_programma_chiamato[21] := '';
    esegui_programma('GESORDP', 0, true);
  end;
end;

function TGESORDP.esiste_ordine_produzione_derivato: boolean;
begin
  result := true;
  esiste_opt.close;
  esiste_opt.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  esiste_opt.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  esiste_opt.open;
  if esiste_opt.isempty then
  begin
    result := false;
  end;
end;

procedure TGESORDP.v_gestione_collegatoClick(Sender: TObject);
begin
  inherited;
  esegui_collegato;
end;

procedure TGESORDP.esegui_collegato;
begin
  parametri_extra_programma_chiamato[29] := tabella.fieldbyname('doc_riga_origine').asinteger;

  if tabella.fieldbyname('documento_origine').asstring = 'ordine ven' then
  begin
    esegui_programma('GESORDV', tabella.fieldbyname('doc_progressivo_origine').asinteger, true);
  end
  else if tabella.fieldbyname('documento_origine').asstring = 'ordine produzione' then
  begin
    parametri_extra_programma_chiamato[29] := tabella.fieldbyname('doc_riga_origine').asinteger;
    esegui_programma('GESORDP', tabella.fieldbyname('doc_progressivo_origine').asinteger, true);
  end;
end;

procedure TGESORDP.v_gestione_movimenti_caricoClick(Sender: TObject);
var
  i: word;
begin
  inherited;
  i := 0;
  query_mmt.close;
  query_mmt.parambyname('opt_progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
  query_mmt.parambyname('tmo_codice').asstring := tabella.fieldbyname('tmo_codice_finiti').asstring;
  query_mmt.parambyname('art_codice').asstring := tabella.fieldbyname('art_codice').asstring;
  query_mmt.open;
  if query_mmt.recordcount > 1 then
  begin
    i := 0;
    messaggio(200, 'sono presenti ' + inttostr(query_mmt.recordcount) + ' movimenti di carico');
  end;
  while not query_mmt.eof do
  begin
    if query_mmt.recordcount > 1 then
    begin
      i := i + 1;
      messaggio(200, 'movimento di carico numero ' + inttostr(i));
    end;
    esegui_programma('GESMOV', query_mmt.fieldbyname('progressivo').asfloat, true);

    query_mmt.next;
  end;
end;

procedure TGESORDP.v_ordineClick(Sender: TObject);
begin
  inherited;
  query_oat.close;
  query_oat.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
  query_oat.open;
  if not query_oat.eof then
  begin
    parametri_extra_programma_chiamato[29] := query_oat.fieldbyname('riga').asinteger;
    esegui_programma('GESORDA', query_oat.fieldbyname('progressivo').asinteger, true);
  end
  else
  begin
    messaggio(200, 'l''ordine non è stato ancora creato');
  end;
end;

procedure TGESORDP.stampa;
begin
  codice_archivio := v_progressivo.value;
  inherited;
end;

procedure TGESORDP.annulla_dataset;
begin
  inherited;

  esistenza_deposito_finiti_ds.dataset := nil;
  esistenza_totale_finiti_ds.dataset := nil;
  esistenza_deposito_materie_prime_ds.dataset := nil;
  esistenza_totale_materie_prime_ds.dataset := nil;
end;

procedure TGESORDP.assegna_dataset;
begin
  inherited;

  esistenza_deposito_finiti_ds.dataset := esistenza_deposito_finiti;
  esistenza_totale_finiti_ds.dataset := esistenza_totale_finiti;
  esistenza_deposito_materie_prime_ds.dataset := esistenza_deposito_materie_prime;
  esistenza_totale_materie_prime_ds.dataset := esistenza_totale_materie_prime;
end;

procedure TGESORDP.controllo_rda_oar(operazione: string);
begin
  query_rda.close;
  query_rda.parambyname('ovr_progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  query_rda.parambyname('ovr_riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  query_rda.open;
  while not query_rda.eof do
  begin
    if query_rda.fieldbyname('archivio').asstring = 'rda' then
    begin
      messaggio(100, 'la riga ' + operazione + ' è presente nell''archivio' + #13 +
        'delle richieste di approvvigionamento' + #13 +
        'in situazione [' + query_rda.fieldbyname('situazione').asstring + ']' + #13 + #13 +
        'la richiesta d''acquisto verrà cancellata');
      rda_delete.close;
      rda_delete.parambyname('progressivo').asinteger := query_rda.fieldbyname('progressivo').asinteger;
      rda_delete.execsql;
    end
    else if query_rda.fieldbyname('archivio').asstring = 'oar' then
    begin
      if azzeramento_lettore then
      begin
        messaggio(100, 'per la riga ' + operazione + ' è stato emesso un ordine di acquisto ' + #13 +
          'con il progressivo: ' + inttostr(query_rda.fieldbyname('progressivo').asinteger) + #13 +
          'in situazione [' + query_rda.fieldbyname('situazione').asstring + ']');
      end
      else
      begin
        messaggio(100, 'per la riga ' + operazione + ' è stato emesso un ordine di acquisto ' + #13 +
          'con il progressivo: ' + inttostr(query_rda.fieldbyname('progressivo').asinteger) + #13 +
          'in situazione [' + query_rda.fieldbyname('situazione').asstring + ']' + #13 + #13 +
          'il riferimento verrà cancellato');
        oar.close;
        oar.parambyname('progressivo').asinteger := query_rda.fieldbyname('progressivo').asinteger;
        oar.parambyname('riga').asinteger := query_rda.fieldbyname('riga').asinteger;
        oar.open;
        oar.edit;

        if oar.fieldbyname('note_interne').asstring <> '' then
        begin
          oar.fieldbyname('note_interne').asstring := oar.fieldbyname('note_interne').asstring + #13;
        end;
        oar.fieldbyname('note_interne').asstring := oar.fieldbyname('note_interne').asstring +
          'l''ordine è stato emesso a fronte del documento' + #13 +
          oar.fieldbyname('ovr_tipo').asstring + #13 +
          'progressivo: ' + inttostr(oar.fieldbyname('ovr_progressivo').asinteger) + #13 +
          'riga: ' + inttostr(oar.fieldbyname('ovr_riga').asinteger) + #13 +
          'che è stata ' + operazione;
        if operazione = 'modificata' then
        begin
          if vecchio_art_codice_materie_prime <> v_art_codice_materie_prime.text then
          begin
            oar.fieldbyname('note_interne').asstring := oar.fieldbyname('note_interne').asstring + #13 +
              'vecchio codice articolo: ' + vecchio_art_codice_materie_prime + #13 +
              'nuovo codice articolo: ' + v_art_codice_materie_prime.text;
          end;
          if arrotonda(vecchio_quantita_materie_prime, 4) <> arrotonda(v_quantita_materie_prime.value, 4) then
          begin
            oar.fieldbyname('note_interne').asstring := oar.fieldbyname('note_interne').asstring + #13 +
              'vecchia quantità: ' + formatfloat(formato_display_quantita, vecchio_quantita_materie_prime) + #13 +
              'nuova quantità: ' + formatfloat(formato_display_quantita, v_quantita_materie_prime.value);
          end;
        end;

        oar.fieldbyname('ovr_tipo').asstring := '';
        oar.fieldbyname('ovr_progressivo').asinteger := 0;
        oar.fieldbyname('ovr_riga').asinteger := 0;

        oar.post;

        riga_ordine_modificata(operazione, 'oar');

        oar.close;
      end;
    end;

    query_rda.next;
  end;
  query_rda.close;
end;

procedure TGESORDP.riga_ordine_modificata(operazione, tipo_file: string);
begin
  msg.open;
  msg.append;

  msg.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(TMyConnection_go(msg.connection), 'MSG_PROGRESSIVO');
  msg.parambyname('progressivo').asinteger := msg.fieldbyname('progressivo').asinteger;
  msg.fieldbyname('utn_codice_destinatario').asstring := tabella.fieldbyname('utente').asstring;
  msg.fieldbyname('data_invio').asdatetime := now;
  msg.fieldbyname('descrizione').asstring := operazione + ' riga ordine: ' + tabella_righe.fieldbyname('progressivo').asstring +
    '/' + tabella_righe.fieldbyname('riga').asstring;
  if tipo_file = 'oar' then
  begin
    msg.fieldbyname('descrizione').asstring := msg.fieldbyname('descrizione').asstring + ' ordinata in: ' +
      oar.fieldbyname('progressivo').asstring + '/' + oar.fieldbyname('riga').asstring;
  end;
  msg.fieldbyname('letto').asstring := 'no';
  msg.fieldbyname('mittente').asstring := utente;
  msg.post;
  msg.refresh;

  //  msg risp
  invio_msg_risp(msg, msg.fieldbyname('descrizione').asstring, true);
end;

procedure TGESORDP.v_fas_codiceChange(Sender: TObject);
begin
  inherited;

  if v_fas_codice.text = '' then
  begin
    v_fas_codice.color := clbtnface;
  end
  else if tabella.fieldbyname('fas_codice').asstring = tabella.fieldbyname('fas_codice_ultima').asstring then
  begin
    v_fas_codice.color := cllime;
  end
  else
  begin
    v_fas_codice.color := claqua;
  end;
end;

procedure TGESORDP.v_non_conformitaClick(Sender: TObject);
begin
  inherited;
  nca.data_registrazione := tabella.fieldbyname('data_documento').asdatetime;
  nca.art_codice := tabella_righe.fieldbyname('art_codice').asstring;
  nca.frn_codice := '';
  nca.quantita_lotto := tabella_righe.fieldbyname('quantita').asfloat;
  nca.modulo_origine := '';
  nca.documento_origine := 'produzione';
  nca.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
  nca.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
  nca.crea_nct;
end;

procedure TGESORDP.v_esistenza_principale_finitiChange(Sender: TObject);
begin
  inherited;
  if v_esistenza_principale_finiti.value < 0 then
  begin
    v_esistenza_principale_finiti.color := clred;
  end
  else if v_esistenza_principale_finiti.value > 0 then
  begin
    v_esistenza_principale_finiti.color := cllime;
  end
  else
  begin
    v_esistenza_principale_finiti.color := clyellow;
  end;
end;

procedure TGESORDP.v_esistenza_principale_materie_primeChange(Sender: TObject);
begin
  inherited;
  if v_esistenza_principale_materie_prime.value < 0 then
  begin
    v_esistenza_principale_materie_prime.color := clred;
  end
  else if v_esistenza_principale_materie_prime.value > 0 then
  begin
    v_esistenza_principale_materie_prime.color := cllime;
  end
  else
  begin
    v_esistenza_principale_materie_prime.color := clyellow;
  end;
end;

procedure TGESORDP.v_evasioneClick(Sender: TObject);
var
  pr: tgesordpev;
  quantita, quantita_evasa: double;
  saldo_acconto: string;
  saldo_materie_prime, scarti, evasione_collegati, prosegui: boolean;

  pr1: tevaordpint;
  query_righe: tmyquery_go;

  evaodp: tevaodp;
begin
  inherited;

  evaodp := tevaodp.create;
  evaodp.evadi('GESORDP', tabella.fieldbyname('progressivo').asinteger, date, false);
  freeandnil(evaodp);

  tabella.refresh;
  tabella_righe.refresh;
  assegna_codice;

  abilita_codice;
end;

procedure TGESORDP.v_evasione_fasiClick(Sender: TObject);
var
  pr: tevafas;
  pr1: tevaordp;
begin
  inherited;

  if tabella.state = dsedit then
  begin
    tabella.post;
  end;

  pr := tevafas.create(nil);
  pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
  pr.showmodal;
  pr.free;

  if not read_tabella(opc_chiuso, tabella.fieldbyname('progressivo').asinteger) then
  begin
    if messaggio(300, 'le fasi sono completate' + #13 + 'conferma per evadere l''ordine') = 1 then
    begin
      read_tabella(opc_quantita, tabella.fieldbyname('progressivo').asinteger);
      pr1 := tevaordp.create(nil);
      pr1.progressivo := tabella.fieldbyname('progressivo').asinteger;
      pr1.quantita_evadere := opc_quantita.fieldbyname('quantita_prodotti').asfloat;
      pr1.showmodal;
      pr1.free;
    end;
  end;
  abilita_codice;
end;

procedure TGESORDP.v_evasione_saldoClick(Sender: TObject);
begin
  inherited;
  evasione_saldo.sql.text := 'update opt set situazione = ''evaso'' where progressivo = :progressivo';
  evasione_saldo.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
  evasione_saldo.execsql;

  evasione_saldo.sql.text := 'update opr set situazione = ''evaso'', quantita_approntata = 0 where progressivo = :progressivo';
  evasione_saldo.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
  evasione_saldo.execsql;

  tabella.refresh;
  tabella_righe.refresh;
  abilita_evasione_saldo(false);
end;

procedure TGESORDP.FormShow(Sender: TObject);
begin

  if arc.dit.fieldbyname('usa_top_codice').asstring = 'no' then
  begin
    v_top_codice.enabled := false;
  end;

  if arc.dit.fieldbyname('case_lotti').asstring = 'maiuscolo' then
  begin
    v_lot_codice.charcase := ecuppercase;
  end
  else if arc.dit.fieldbyname('case_lotti').asstring = 'minuscolo' then
  begin
    v_lot_codice.charcase := eclowercase;
  end;

  if parametri_extra_programma_chiamato[0] <> null then
  begin
    art_codice_gesven := parametri_extra_programma_chiamato[0];
    quantita_gesven := parametri_extra_programma_chiamato[1];
    progressivo_gesven := parametri_extra_programma_chiamato[2];
    progressivo_allegati := parametri_extra_programma_chiamato[2];
    riga_gesven := parametri_extra_programma_chiamato[3];
    data_consegna_gesven := parametri_extra_programma_chiamato[4];
    note_gesven := parametri_extra_programma_chiamato[5];
    note_interne_gesven := parametri_extra_programma_chiamato[6];
    formula_gesven := parametri_extra_programma_chiamato[7];
    cms_gesven := parametri_extra_programma_chiamato[8];
    cmt_gesven := parametri_extra_programma_chiamato[9];
    documento_origine_gesven := parametri_extra_programma_chiamato[10];
    doc_progressivo_origine_gesven := parametri_extra_programma_chiamato[11];
    doc_riga_origine_gesven := parametri_extra_programma_chiamato[12];
    art_codice_semilavorato_gesven := parametri_extra_programma_chiamato[13];
    tipo_esplosione_gesven := parametri_extra_programma_chiamato[14];
    lot_codice_finito := parametri_extra_programma_chiamato[15];
    codice_finito := parametri_extra_programma_chiamato[16];
    tma_codice_finiti := parametri_extra_programma_chiamato[17];
    progressivo_finito := parametri_extra_programma_chiamato[18];
    top_codice := parametri_extra_programma_chiamato[19];
    tvr_codice_passato := parametri_extra_programma_chiamato[20];
    art_codice_variante_passato := parametri_extra_programma_chiamato[21];
    data_inizio_lavorazione_passato := parametri_extra_programma_chiamato[22];
  end
  else
  begin
    art_codice_gesven := '';
    quantita_gesven := 0;
    progressivo_gesven := 0;
    riga_gesven := 0;
    data_consegna_gesven := 0;
    note_gesven := '';
    note_interne_gesven := '';
    formula_gesven := '';
    cms_gesven := '';
    cmt_gesven := '';
    documento_origine_gesven := '';
    doc_progressivo_origine_gesven := 0;
    doc_riga_origine_gesven := 0;
    art_codice_semilavorato_gesven := '';
    tipo_esplosione_gesven := '';
    lot_codice_finito := '';
    codice_finito := '';
    progressivo_finito := 0;
    top_codice := '';
    tvr_codice_passato := '';
    data_inizio_lavorazione_passato := null;
  end;

  inherited;
end;

procedure TGESORDP.v_progressivoEnter(Sender: TObject);
var
  key: word;
begin
  inherited;

  if utntop.isempty then
  begin
    v_progressivo.lookupvisname := 'OPT';
  end
  else
  begin
    v_progressivo.lookupvisname := 'OPTUTN';
  end;

  if art_codice_gesven <> '' then
  begin
    key := vk_return;
    inserisci_nuovo_record(key, []);
    //selectnext(v_progressivo, true, true);
  end;
end;

procedure TGESORDP.v_ordine_clienteClick(Sender: TObject);
begin
  inherited;
  esegui_programma('GESORDV', tabella.fieldbyname('ovr_progressivo').asinteger, true);
end;

procedure TGESORDP.esegui_bottone_dati_extra_testata;
var
  pr: tgesordp1;
begin
  inherited;
  pr := Tgesordp1.Create(nil);
  if pr.esegui_form then
  begin
    pr.form_chiamante := self;
    pr.showmodal;
  end;
  pr.free;
end;

procedure TGESORDP.esegui_query_righe;
begin
  inherited;

  (v_griglia_righe.columnbyname('quantita').field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia_righe.columnbyname('quantita_approntata').field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia_righe.columnbyname('quantita_evasa').field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia_righe.columnbyname('quantita_spedita').field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia_righe.columnbyname('costo_unitario').field as tfloatfield).displayformat := formato_display_prezzo_zero;
  (v_griglia_righe.columnbyname('quantita_disposta').field as tfloatfield).displayformat := formato_display_quantita_zero;
end;

procedure TGESORDP.v_art_codice_materie_primeEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_art_codice_materie_prime.text;
end;

procedure TGESORDP.v_aggiorna_dsbClick(Sender: TObject);
var
  operazione: word;
  aggiorna: boolean;

  vecchio_sequenza: integer;
  vecchio_data_inizio, vecchio_data_fine: tdate;
  vecchio_descrizione, vecchio_tma_codice, vecchio_formula, vecchio_fas_codice, vecchio_cla_sequenza: string;
  vecchio_prezzo: double;

  quantita: double;
  vecchio_operatore: string;
  vecchio_gg_anticipo: integer;

  ultima_sequenza: integer;
begin
  inherited;

  if messaggio(300, 'conferma aggiornamento distinta base e ciclo' + slinebreak +
    'dell''articolo ' + tabella.fieldbyname('art_codice').asstring + ' ' +
    art_finiti.fieldbyname('descrizione').asstring) = 1 then
  begin
    //  DSB
    //  articoli in dsb non in opr
    aggiorna_dsb.close;
    aggiorna_dsb.sql.clear;
    aggiorna_dsb.sql.add('select dsb.id, dsb.sequenza, dsb.art_codice_figlio, dsb.quantita, dsb.data_inizio, dsb.data_fine,');
    aggiorna_dsb.sql.add('concat(trim(art.descrizione1), '' '' + art.descrizione2) art_descrizione,');
    aggiorna_dsb.sql.add('(select max(d.sequenza) from dsb d where d.art_codice_padre = dsb.art_codice_padre) ultima_sequenza');
    aggiorna_dsb.sql.add('from dsb');
    aggiorna_dsb.sql.add('inner join art on art.codice = dsb.art_codice_figlio');
    aggiorna_dsb.sql.add('where dsb.art_codice_padre = :art_codice');
    aggiorna_dsb.sql.add('and dsb.art_codice_figlio not in (select opr.art_codice from opr');
    aggiorna_dsb.sql.add('where opr.progressivo = :progressivo and opr.sequenza_dsb = dsb.sequenza)');
    aggiorna_dsb.parambyname('art_codice').asstring := tabella.fieldbyname('art_codice').asstring;
    aggiorna_dsb.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
    aggiorna_dsb.open;

    ultima_sequenza := aggiorna_dsb.fieldbyname('ultima_sequenza').asinteger;

    operazione := 0;

    while not aggiorna_dsb.eof do
    begin
      if operazione = 0 then
      begin
        operazione := arc.messaggio_nuovo(0, 'l''articolo' + slinebreak +
          'sequenza: ' + aggiorna_dsb.fieldbyname('sequenza').asstring + slinebreak +
          aggiorna_dsb.fieldbyname('art_codice_figlio').asstring + slinebreak +
          aggiorna_dsb.fieldbyname('art_descrizione').asstring + slinebreak + slinebreak +
          'è presente in distinta base e non' + slinebreak +
          'nell''ordine di produzione' + slinebreak + slinebreak +
          'sequenza: ' + aggiorna_dsb.fieldbyname('sequenza').asstring + slinebreak,
          'mantieni l''articolo in distinta base;cancella l''articolo dalla distinta base;' +
          'mantieni tutti;cancella tutti');
      end;

      if operazione = 1 then
      begin
        operazione := 0;
        aggiorna_dsb.next;
      end
      else if operazione = 2 then
      begin
        operazione := 0;
        aggiorna_dsb.delete;
      end
      else if operazione = 3 then
      begin
        break;
      end
      else if operazione = 4 then
      begin
        aggiorna_dsb.delete;
      end;
    end;

    //  aggiorna dsb
    aggiorna_dsb.close;
    aggiorna_dsb.sql.clear;
    aggiorna_dsb.sql.add('select dsb.*,');
    aggiorna_dsb.sql.add('concat(trim(art.descrizione1), '' '' + art.descrizione2) art_descrizione');
    aggiorna_dsb.sql.add('from dsb');
    aggiorna_dsb.sql.add('left join art on art.codice = dsb.art_codice_figlio');
    aggiorna_dsb.sql.add('where dsb.art_codice_padre = :art_codice_padre');
    aggiorna_dsb.sql.add('and dsb.art_codice_figlio = :art_codice_figlio');
    aggiorna_dsb.sql.add('and dsb.sequenza = :sequenza');

    tabella_righe.first;
    while not tabella_righe.eof do
    begin
      aggiorna := true;

      aggiorna_dsb.close;
      aggiorna_dsb.parambyname('art_codice_padre').asstring := tabella.fieldbyname('art_codice').asstring;
      aggiorna_dsb.parambyname('art_codice_figlio').asstring := tabella_righe.fieldbyname('art_codice').asstring;
      aggiorna_dsb.parambyname('sequenza').asstring := tabella_righe.fieldbyname('sequenza_dsb').asstring;
      aggiorna_dsb.open;

      if not aggiorna_dsb.isempty then
      begin
        if arc.messaggio_nuovo(0, 'l''articolo' + slinebreak +
          'sequenza: ' + aggiorna_dsb.fieldbyname('sequenza').asstring + slinebreak +
          aggiorna_dsb.fieldbyname('art_codice_figlio').asstring + slinebreak +
          aggiorna_dsb.fieldbyname('art_descrizione').asstring + slinebreak + slinebreak +
          'è già presente in distinta base' + slinebreak + slinebreak +
          'sequenza: ' + aggiorna_dsb.fieldbyname('sequenza').asstring + slinebreak,
          'aggiorna la distinta base;non aggiornare la distinta base') <> 1 then
        begin
          aggiorna := false;
        end;
      end;

      if aggiorna then
      begin
        if not aggiorna_dsb.isempty then
        begin
          vecchio_sequenza := aggiorna_dsb.fieldbyname('sequenza').asinteger;
          vecchio_descrizione := aggiorna_dsb.fieldbyname('descrizione').asstring;
          vecchio_prezzo := aggiorna_dsb.fieldbyname('prezzo').asfloat;
          vecchio_tma_codice := aggiorna_dsb.fieldbyname('tma_codice').asstring;
          vecchio_formula := aggiorna_dsb.fieldbyname('formula').asstring;
          vecchio_fas_codice := aggiorna_dsb.fieldbyname('fas_codice').asstring;
          vecchio_cla_sequenza := aggiorna_dsb.fieldbyname('cla_sequenza').asstring;

          aggiorna_dsb.delete;
        end
        else
        begin
          vecchio_sequenza := 0;
          vecchio_descrizione := '';
          vecchio_prezzo := 0;
          vecchio_tma_codice := '';
          vecchio_formula := '';
          vecchio_fas_codice := '';
          vecchio_cla_sequenza := '';
        end;

        dsb_update.close;
        dsb_update.open;
        dsb_update.append;

        dsb_update.fieldbyname('art_codice_padre').asstring := tabella.fieldbyname('art_codice').asstring;
        if tabella_righe.fieldbyname('sequenza_dsb').asinteger <> 0 then
        begin
          dsb_update.fieldbyname('sequenza').asinteger := tabella_righe.fieldbyname('sequenza_dsb').asinteger;
        end
        else
        begin
          dsb_update.fieldbyname('sequenza').asinteger := ultima_sequenza + tabella_righe.fieldbyname('sequenza').asinteger;
        end;
        dsb_update.fieldbyname('art_codice_figlio').asstring := tabella_righe.fieldbyname('art_codice').asstring;

        read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring);
        if (archivio.fieldbyname('tum_codice_dsb').asstring = '') or
          (archivio.fieldbyname('tum_coefficiente_dsb').asfloat = 1) then
        begin
          dsb_update.fieldbyname('quantita').asfloat :=
            tabella_righe.fieldbyname('quantita').asfloat / tabella.fieldbyname('quantita').asfloat;
        end
        else
        begin
          if archivio.fieldbyname('operazione_coefficiente_dsb').asstring = '*' then
          begin
            dsb_update.fieldbyname('quantita').asfloat :=
              (tabella_righe.fieldbyname('quantita').asfloat / archivio.fieldbyname('tum_coefficiente_dsb').asfloat) /
              tabella.fieldbyname('quantita').asfloat;
          end
          else
          begin
            dsb_update.fieldbyname('quantita').asfloat :=
              (tabella_righe.fieldbyname('quantita').asfloat * archivio.fieldbyname('tum_coefficiente_dsb').asfloat) /
              tabella.fieldbyname('quantita').asfloat;
          end;
        end;

        dsb_update.fieldbyname('data_fine').asdatetime := strtodate(data_31_12_9999);
        dsb_update.fieldbyname('descrizione').asstring := tabella_righe.fieldbyname('note').asstring;

        if vecchio_sequenza <> 0 then
        begin
          dsb_update.fieldbyname('sequenza_dsb').asinteger := vecchio_sequenza;
          dsb_update.fieldbyname('descrizione').asstring := vecchio_descrizione;
          dsb_update.fieldbyname('prezzo').asfloat := vecchio_prezzo;
          dsb_update.fieldbyname('tma_codice').asstring := vecchio_tma_codice;
          dsb_update.fieldbyname('formula').asstring := vecchio_formula;
          dsb_update.fieldbyname('fas_codice').asstring := vecchio_fas_codice;
          dsb_update.fieldbyname('cla_sequenza').asstring := vecchio_cla_sequenza;
        end;

        dsb_update.post;
      end;

      tabella_righe.next;
    end;

    //  CLA
    //  fasi in cla non in opc
    aggiorna_dsb.close;
    aggiorna_dsb.sql.clear;
    aggiorna_dsb.sql.add('select cla.id, cla.sequenza, cla.fas_codice, cla.quantita,');
    aggiorna_dsb.sql.add('case when cla.operatore = ''*'' then ''moltiplicatore'' else ''divisore'' end operatore,');
    aggiorna_dsb.sql.add('fas.descrizione fas_descrizione');
    aggiorna_dsb.sql.add('from cla');
    aggiorna_dsb.sql.add('inner join fas on fas.codice = cla.fas_codice');
    aggiorna_dsb.sql.add('where cla.art_codice = :art_codice');
    aggiorna_dsb.sql.add('and cla.fas_codice not in (select opc.fas_codice from opc');
    aggiorna_dsb.sql.add('where opc.progressivo = :progressivo and opc.sequenza = cla.sequenza)');
    aggiorna_dsb.parambyname('art_codice').asstring := tabella.fieldbyname('art_codice').asstring;
    aggiorna_dsb.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
    aggiorna_dsb.open;

    operazione := 0;

    while not aggiorna_dsb.eof do
    begin
      if operazione = 0 then
      begin
        operazione := arc.messaggio_nuovo(0, 'la fase' + slinebreak +
          'sequenza: ' + aggiorna_dsb.fieldbyname('sequenza').asstring + slinebreak +
          aggiorna_dsb.fieldbyname('fas_codice').asstring + slinebreak +
          aggiorna_dsb.fieldbyname('fas_descrizione').asstring + slinebreak +
          'è presente nel ciclo di lavorazione' + slinebreak +
          'e non nell''ordine di produzione' + slinebreak + slinebreak,
          'mantieni la fase nel ciclo di lavorazione;cancella la fase dal ciclo di lavorazione;' +
          'mantieni tutte;cancella tutte');
      end;

      if operazione = 1 then
      begin
        operazione := 0;
        aggiorna_dsb.next;
      end
      else if operazione = 2 then
      begin
        operazione := 0;
        aggiorna_dsb.delete;
      end
      else if operazione = 3 then
      begin
        break;
      end
      else if operazione = 4 then
      begin
        aggiorna_dsb.delete;
      end;
    end;

    //  aggiorna cla
    aggiorna_dsb.close;
    aggiorna_dsb.sql.clear;
    aggiorna_dsb.sql.add('select cla.*,');
    aggiorna_dsb.sql.add('fas.descrizione fas_descrizione');
    aggiorna_dsb.sql.add('from cla');
    aggiorna_dsb.sql.add('left join fas on fas.codice = cla.fas_codice');
    aggiorna_dsb.sql.add('where cla.art_codice = :art_codice');
    aggiorna_dsb.sql.add('and cla.fas_codice = :fas_codice');
    aggiorna_dsb.sql.add('and cla.sequenza = :sequenza');

    read_tabella(opc_dsb, tabella.fieldbyname('progressivo').asinteger);

    opc_dsb.first;
    while not opc_dsb.eof do
    begin
      aggiorna := true;

      aggiorna_dsb.close;
      aggiorna_dsb.parambyname('art_codice').asstring := tabella.fieldbyname('art_codice').asstring;
      aggiorna_dsb.parambyname('fas_codice').asstring := opc_dsb.fieldbyname('fas_codice').asstring;
      aggiorna_dsb.parambyname('sequenza').asstring := opc_dsb.fieldbyname('sequenza').asstring;
      aggiorna_dsb.open;

      if not aggiorna_dsb.isempty then
      begin
        if arc.messaggio_nuovo(0, 'la fase' + slinebreak +
          'sequenza: ' + aggiorna_dsb.fieldbyname('sequenza').asstring + slinebreak +
          aggiorna_dsb.fieldbyname('fas_codice').asstring + slinebreak +
          aggiorna_dsb.fieldbyname('fas_descrizione').asstring + slinebreak + slinebreak +
          'è già presente nel ciclo di lavorazione ' + slinebreak + slinebreak +
          'sequenza: ' + aggiorna_dsb.fieldbyname('sequenza').asstring + slinebreak,
          'aggiorna il ciclo;non aggiornare il ciclo') <> 1 then
        begin
          aggiorna := false;
        end;
      end;

      if aggiorna then
      begin
        if not aggiorna_dsb.isempty then
        begin
          vecchio_operatore := aggiorna_dsb.fieldbyname('operatore').asstring;
          vecchio_gg_anticipo := aggiorna_dsb.fieldbyname('gg_anticipo').asinteger;

          aggiorna_dsb.delete;
        end
        else
        begin
          vecchio_operatore := '';
          vecchio_gg_anticipo := 0;
        end;

        cla_update.close;
        cla_update.open;
        cla_update.append;

        cla_update.fieldbyname('art_codice').asstring := tabella.fieldbyname('art_codice').asstring;
        cla_update.fieldbyname('sequenza').asstring := opc_dsb.fieldbyname('sequenza').asstring;
        cla_update.fieldbyname('fas_codice').asstring := opc_dsb.fieldbyname('fas_codice').asstring;
        cla_update.fieldbyname('frn_codice').asstring := opc_dsb.fieldbyname('frn_codice').asstring;
        cla_update.fieldbyname('note').asstring := opc_dsb.fieldbyname('note').asstring;

        if opc_dsb.fieldbyname('frn_codice').asstring <> '' then
        begin
          cla_update.fieldbyname('quantita').asfloat := 1;
        end
        else
        begin
          quantita := opc_dsb.fieldbyname('quantita').asfloat;
          cla_update.fieldbyname('quantita_attrezzaggio').asfloat := opc_dsb.fieldbyname('quantita_attrezzaggio').asfloat;
          cla_update.fieldbyname('quantita_fine_attrezzaggio').asfloat := opc_dsb.fieldbyname('quantita_fine_attrezzaggio').asfloat;

          if (opc_dsb.fieldbyname('situazione').asstring = 'completata') and
            (opc_dsb.fieldbyname('quantita').asfloat <> opc_dsb.fieldbyname('quantita_consuntivo').asfloat) then
          begin
            if arc.messaggio_nuovo(000, 'la fase è completata' + slinebreak +
              'selezionare la quantità da utilizzare' + slinebreak +
              'per l''aggiornamento',
              'quantità a preventivo;quantità a consuntivo', 2) = 2 then
            begin
              cla_update.fieldbyname('quantita_attrezzaggio').asfloat := opc_dsb.fieldbyname('quantita_attrezzaggio_consuntivo').asfloat;
              cla_update.fieldbyname('quantita_fine_attrezzaggio').asfloat := opc_dsb.fieldbyname('quantita_fine_attrezzaggio_consuntivo').asfloat;
              quantita := opc_dsb.fieldbyname('quantita_consuntivo').asfloat;
            end
            else
            begin
              cla_update.fieldbyname('quantita_attrezzaggio').asfloat := opc_dsb.fieldbyname('quantita_attrezzaggio').asfloat;
              cla_update.fieldbyname('quantita_fine_attrezzaggio').asfloat := opc_dsb.fieldbyname('quantita_fine_attrezzaggio').asfloat;
            end;
          end;

          if opc_dsb.fieldbyname('tipo_operazione').asstring = 'singola' then
          begin
            cla_update.fieldbyname('quantita').asfloat := quantita / tabella.fieldbyname('quantita').asfloat;
          end
          else
          begin
            cla_update.fieldbyname('quantita').asfloat := quantita;
          end;
        end;

        if vecchio_sequenza <> 0 then
        begin
          cla_update.fieldbyname('operatore').asstring := vecchio_operatore;
          cla_update.fieldbyname('gg_anticipo').asinteger := vecchio_gg_anticipo;
        end;

        cla_update.post;
      end;

      opc_dsb.next;
    end;

    tabella_righe.first;
  end;
end;

procedure TGESORDP.v_analisiClick(Sender: TObject);
begin
  inherited;
  esegui_programma('ANAORDP', tabella.fieldbyname('progressivo').asinteger, true);
end;

procedure TGESORDP.v_annulla_rdaClick(Sender: TObject);
begin
  inherited;
  query_rda.close;
  query_rda.parambyname('ovr_progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  query_rda.parambyname('ovr_riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  query_rda.open;
  while not query_rda.eof do
  begin
    if query_rda.fieldbyname('archivio').asstring = 'rda' then
    begin
      rda.close;
      rda.parambyname('progressivo').asinteger := query_rda.fieldbyname('progressivo').asinteger;
      rda.open;
      if not rda.isempty then
      begin
        if rda.fieldbyname('situazione').asstring <> '' then
        begin
          messaggio(200, 'la RDA è stata movimentata [situazione: ' + rda.fieldbyname('situazione').asstring + ']' +
            'e non è annullabile');
        end
        else
        begin
          rda.delete;
          messaggio(100, 'richiesta d''acquisto annullata');
        end;
      end;
    end;
    query_rda.next;
  end;
  tabella_righe.refresh;
  abilita_annulla_rda;
end;

procedure TGESORDP.v_art_codice_finitiEnter(Sender: TObject);
begin
  inherited;
  v_visequ.enabled := true;
  variato_stringa := v_art_codice_finiti.text;
end;

procedure TGESORDP.v_frn_codiceEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_frn_codice.text;
end;

procedure TGESORDP.v_tma_codiceExit(Sender: TObject);
begin
  inherited;
  tma_codice_controllo(true);
end;

procedure TGESORDP.tma_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, tma_righe, v_tma_codice, blocco, tab_control, tab_pagina1, tabella_righe);
end;

procedure TGESORDP.tool_distintaClick(Sender: TObject);
var
  pr: tdisordp;
begin
  inherited;
  pr := tdisordp.create(nil);
  if pr.esegui_form then
  begin
    pr.codice := v_progressivo.value;
    pr.showmodal;
  end;
  pr.free;
end;

procedure TGESORDP.tool_documenti_allegatiClick(Sender: TObject);
var
  pr: tgesdav;
begin
  inherited;

  if v_progressivo.value <> 0 then
  begin
    pr := tgesdav.create(nil);
    if pr.esegui_form then
    begin
      pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
      pr.riga_origine := 0;
      pr.tipo_documento := 'ordine produzione';
      pr.art_codice := tabella.fieldbyname('art_codice').asstring;
      pr.showmodal;
    end;
    pr.free;
  end;
end;

procedure TGESORDP.tool_etiartClick(Sender: TObject);
begin
  parametri_extra_programma_chiamato[0] := tabella.fieldbyname('art_codice').asstring;
  parametri_extra_programma_chiamato[1] := tabella.fieldbyname('quantita').asfloat;
  parametri_extra_programma_chiamato[2] := 0;
  esegui_programma('ETIART', '', true);
end;

procedure TGESORDP.tool_invio_messaggioClick(Sender: TObject);
begin

  if not top.isempty and (top.fieldbyname('messaggio_interattivo').asstring = 'si') then
  begin
    messaggio_interattivo_modulo_documento := 'produzione';
    messaggio_interattivo_tipo_documento := 'ordine' + ' [' + ditta + ']';
    messaggio_interattivo_progressivo_documento := tabella.fieldbyname('progressivo').asinteger;
  end;

  inherited;
end;

procedure TGESORDP.tabellaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (parte_attiva = 'pannello_codice') and (v_progressivo.value <> 0) then
  begin
    tool_distinta.enabled := true;
  end
  else
  begin
    tool_distinta.enabled := false;
  end;

  if tabella.fieldbyname('avanzamento_fasi').asstring = 'no' then
  begin
    tabella_dettaglio.close;
    tabella_dettaglio.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
    tabella_dettaglio.open;
  end
  else
  begin
    tabella_dettaglio.close;
  end;

  esistenza_finiti;
end;

procedure TGESORDP.v_top_codiceEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_top_codice.text;
  if not v_top_codice.tabstop then
  begin
    selectnext(v_top_codice, true, true);
  end
  else
  begin
    if utntop.isempty then
    begin
      v_top_codice.lookcollvisname := 'TOP';
    end
    else
    begin
      v_top_codice.lookcollvisname := 'TOPUTN';
      visarc_filtro_01 := utente;
    end;
  end;
end;

procedure TGESORDP.v_top_codiceExit(Sender: TObject);
begin
  inherited;
  v_top_codice_controllo(true);
  if variato_stringa <> v_top_codice.text then
  begin
    assegna_top_codice;
  end;
end;

procedure TGESORDP.assegna_top_codice;
begin
  if tabella_edit(tabella) then
  begin
    if top.isempty then
    begin
      tabella.fieldbyname('serie_documento').asstring := '';
      tabella.fieldbyname('avanzamento_fasi').asstring := arc.dit.fieldbyname('avanzamento_fasi').asstring;
      tabella.fieldbyname('fasi_non_sequenziali').asstring := 'no';
      tabella.fieldbyname('tipo_esplosione').asstring := tipo_esplosione_gesven;
      if tabella.fieldbyname('tipo_esplosione').asstring = '' then
      begin
        tabella.fieldbyname('tipo_esplosione').asstring := tipo_esplosione;
      end;
      tabella.fieldbyname('tmo_codice_finiti').asstring := tmo_codice_finiti;
      tabella.fieldbyname('tma_codice_finiti').asstring := tma_codice_finiti;
      tabella.fieldbyname('tmo_codice_materie_prime').asstring := tmo_codice_materie_prime;
      tabella.fieldbyname('tma_codice_materie_prime').asstring := tma_codice_materie_prime;
    end
    else
    begin
      tabella.fieldbyname('serie_documento').asstring := top.fieldbyname('serie_documento').asstring;
      tabella.fieldbyname('avanzamento_fasi').asstring := top.fieldbyname('avanzamento_fasi').asstring;
      if tabella.fieldbyname('avanzamento_fasi').asstring = 'si' then
      begin
        tabella.fieldbyname('fasi_non_sequenziali').asstring := top.fieldbyname('fasi_non_sequenziali').asstring;
      end
      else
      begin
        tabella.fieldbyname('fasi_non_sequenziali').asstring := 'no';
      end;
      tabella.fieldbyname('tipo_esplosione').asstring := top.fieldbyname('tipo_esplosione').asstring;
      if top.fieldbyname('tmo_codice_finiti').asstring <> '' then
      begin
        tabella.fieldbyname('tmo_codice_finiti').asstring := top.fieldbyname('tmo_codice_finiti').asstring;
      end;
      if (progressivo_finito = 0) and (top.fieldbyname('tma_codice_finiti').asstring <> '') then
      begin
        tabella.fieldbyname('tma_codice_finiti').asstring := top.fieldbyname('tma_codice_finiti').asstring;
      end;
      if top.fieldbyname('tmo_codice_materie_prime').asstring <> '' then
      begin
        tabella.fieldbyname('tmo_codice_materie_prime').asstring := top.fieldbyname('tmo_codice_materie_prime').asstring;
      end;
      if top.fieldbyname('tma_codice_materie_prime').asstring <> '' then
      begin
        tabella.fieldbyname('tma_codice_materie_prime').asstring := top.fieldbyname('tma_codice_materie_prime').asstring;
      end;
    end;
    if not frn.isempty then
    begin
      if frn.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
      begin
        tabella.fieldbyname('tma_codice_materie_prime').asstring := frn.fieldbyname('tma_codice_conto_terzi').asstring;
        tma_codice_materie_prime_controllo(false);
      end;
    end;

    tmo_codice_finiti_controllo(false);
    tma_codice_finiti_controllo(false);
    tmo_codice_materie_prime_controllo(false);
    tma_codice_materie_prime_controllo(false);
  end;

  if tabella.fieldbyname('tma_codice_finiti').asstring = '' then
  begin
    tabella.fieldbyname('tma_codice_finiti').asstring := tma_codice_finiti;
  end;
  if tabella.fieldbyname('tma_codice_materie_prime').asstring = '' then
  begin
    tabella.fieldbyname('tma_codice_materie_prime').asstring := tma_codice_finiti;
  end;
end;

procedure TGESORDP.v_top_codice_controllo(blocco: boolean);
begin
  if controllo and blocco and not utntop.isempty and
    not utntop.locate('top_codice', v_top_codice.text, []) then
  begin
    messaggio(000, 'codice documento non utilizzabile dall''utente');
    if not fuoco(v_top_codice) then
    begin
      abilita_codice;
    end;
    abort;
  end
  else
  begin
    tabella_controllo(true, top, v_top_codice, blocco, nil, nil, tabella);

    //if not esiste and controllo and blocco and (v_top_codice.text = '') and (arc.dit.fieldbyname('usa_top_codice').asstring = 'si') then
    if controllo and blocco and (v_top_codice.text = '') and (arc.dit.fieldbyname('usa_top_codice').asstring = 'si') then
    begin
      messaggio(000, 'in anagrafica ditta è stato impostato l''utilizzo del codice documento');
      fuoco(v_top_codice);
      abort;
    end;
  end;
end;

procedure TGESORDP.v_totalizzaClick(Sender: TObject);
var
  costo_totale, costo_lavorazione, costo_lavorazioni_esterne: double;
begin
  inherited;
  esegui_totordp(tabella.fieldbyname('progressivo').asinteger, costo_totale, costo_lavorazione, costo_lavorazioni_esterne);

  messaggio(100, 'costo materiale: ' + formatfloat(formato_display_importo, costo_totale - costo_lavorazione) + slinebreak +
    'costo lavorazioni interne: ' + formatfloat(formato_display_importo, costo_lavorazione - costo_lavorazioni_esterne) + slinebreak +
    'costo lavorazioni esterne: ' + formatfloat(formato_display_importo, costo_lavorazioni_esterne) + slinebreak + slinebreak +
    'costo totale: ' + formatfloat(formato_display_importo, costo_totale));
end;

procedure TGESORDP.v_visequClick(Sender: TObject);
var
  pr: tvisequ;
begin
  inherited;
  pr := tvisequ.create(nil);
  if pr.esegui_form then
  begin
    pr.codice := v_art_codice_finiti.text;
    pr.showmodal;

    if pr.codice <> v_art_codice_finiti.text then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('art_codice').asstring := pr.codice;
      end;
      art_codice_finiti_controllo(false);
      tab_control.activepage := tab_pagina1;
      fuoco(v_art_codice_finiti);
    end;
  end;
  pr.free;
end;

procedure TGESORDP.abilita_evasione_saldo(flag: boolean);
begin
  if not flag or (tabella.fieldbyname('situazione').asstring <> 'evaso parziale') then
  begin
    v_evasione_saldo.enabled := false;
  end
  else
  begin
    v_evasione_saldo.enabled := true;
  end;
end;

procedure TGESORDP.esegui_bottone_dati_extra_righe;
var
  pr: tgesordp2;
begin
  inherited;
  pr := tgesordp2.create(nil);
  if pr.esegui_form then
  begin
    pr.form_chiamante := self;
    pr.showmodal;
  end;
  pr.free;
end;

procedure TGESORDP.articoli_equivalenti(art_codice_finito: string);
var
  pr: tanaequ;
begin
  pr := tanaequ.create(nil);
  if pr.esegui_form then
  begin
    pr.art_codice := v_art_codice_materie_prime.text;
    if tabella_righe.fieldbyname('tma_codice').asstring <> '' then
    begin
      pr.tma_codice := tabella_righe.fieldbyname('tma_codice').asstring;
    end
    else
    begin
      pr.tma_codice := v_tma_codice_materie_prime.text;
    end;
    pr.art_codice_filtro := art_codice_finito;
    pr.showmodal;
    if pr.art_codice_assegnato <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('art_codice').asstring := pr.art_codice_assegnato;
      end;
      selectnext(v_art_codice_materie_prime, true, true);
    end;
  end;
  pr.free;
end;

procedure TGESORDP.materie_primeBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  materie_prime.cancel;
  abort;
end;

procedure TGESORDP.materie_primeBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if not inserisci then
  begin
    materie_prime.cancel;
    abort;
  end;
end;

procedure TGESORDP.memorizza_rda(data_consegna: tdate;
  descrizione:
  string;
  quantita:
  double);
var
  stringa: string;

  data_prezzo: tdate;
  prezzo: double;
  tsm_codice, tsm_codice_art: string;
  sconto_massimo_art: double;
  valorizzazione: string;
begin
  rda.close;
  rda.open;

  rda.append;

  rda.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(TMyConnection_go(rda.connection), 'rda_progressivo');
  rda.fieldbyname('art_codice_richiesta').asstring := tabella_righe.fieldbyname('art_codice').asstring;
  rda.fieldbyname('art_descrizione1_richiesta').asstring := art_materie_prime.fieldbyname('descrizione1').asstring;
  rda.fieldbyname('art_descrizione2_richiesta').asstring := art_materie_prime.fieldbyname('descrizione2').asstring;
  rda.fieldbyname('art_note_richiesta').asstring := tabella_righe.fieldbyname('note').asstring;

  read_tabella(arc.arcdit, 'tma', 'codice', tabella_righe.fieldbyname('tma_codice').asstring, 'tma_codice_carorda_opr');
  if archivio.fieldbyname('tma_codice_carorda_opr').asstring <> '' then
  begin
    rda.fieldbyname('tma_codice_richiesta').asstring := archivio.fieldbyname('tma_codice_carorda_opr').asstring;
  end
  else
  begin
    rda.fieldbyname('tma_codice_richiesta').asstring := tabella_righe.fieldbyname('tma_codice').asstring;
  end;
  rda.fieldbyname('quantita_richiesta').asfloat := quantita;
  if data_consegna <> 0 then
  begin
    rda.fieldbyname('data_consegna_richiesta').asdatetime := data_consegna;
  end;
  rda.fieldbyname('utn_codice_richiesta').asstring := utente;
  rda.fieldbyname('tipo_richiesta').asstring := 'ordini produzione';
  rda.fieldbyname('ovr_progressivo').asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  rda.fieldbyname('ovr_riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  rda.fieldbyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
  rda.fieldbyname('tipologia').asstring := tabella.fieldbyname('tipologia').asstring;

  stringa := 'numero ordine produzione: ' + tabella.fieldbyname('numero_documento').asstring;
  if tabella.fieldbyname('serie_documento').asstring <> '' then
  begin
    stringa := stringa + '/' + tabella.fieldbyname('serie_documento').asstring;
  end;
  stringa := stringa + ' del: ' + tabella.fieldbyname('data_documento').asstring + #13 +
    'data consegna: ' + tabella.fieldbyname('data_consegna').asstring;
  rda.fieldbyname('note_richiesta').asstring := stringa;
  rda.fieldbyname('note_richiesta').asstring := descrizione + #13 + rda.fieldbyname('note_richiesta').asstring;
  if read_tabella(arc.arcdit, 'ovt', 'progressivo', tabella.fieldbyname('ovr_progressivo').asinteger, 'cli_codice') then
  begin
    read_tabella(arc.arcdit, 'cli', 'codice', archivio.fieldbyname('cli_codice').asstring, 'descrizione1,citta');
    rda.fieldbyname('note_richiesta').asstring := rda.fieldbyname('note_richiesta').asstring + #13 +
      'cliente: ' + archivio.fieldbyname('descrizione1').asstring + ' città: ' +
      archivio.fieldbyname('citta').asstring;
  end;

  data_prezzo := now;
  sconto_massimo_art := 0;

  frn_rda.close;
  frn_rda.parambyname('codice').asstring := art_materie_prime.fieldbyname('frn_codice').asstring;
  frn_rda.open;

  prezzo := tabella_righe.fieldbyname('costo_unitario').asfloat;

  if prezzo = 0 then
  begin
    cerca_prezzo('rda', prezzo, tsm_codice, tsm_codice_art);
  end;

  if prezzo = 0 then
  begin
    valorizzazione := tipinv.tipo_inventario('produzione', tabella_righe.fieldbyname('art_codice').asstring);
    przinv.przinv(tabella_righe.fieldbyname('art_codice').asstring, tabella.fieldbyname('tma_codice_materie_prime').asstring,
      valorizzazione, esercizio, now, 0, prezzo,
      'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
    tsm_codice := '';
    tsm_codice_art := '';
  end;

  rda.fieldbyname('prezzo_costo').asfloat := arrotonda
    (prezzo * sconto(tsm_codice) * sconto(tsm_codice_art) / 10000, decimali_max_prezzo_acq);
  if arc.dit.fieldbyname('richiesta_autorizzazione_rda').asstring = 'no' then
  begin
    rda.fieldbyname('autorizzata').asstring := 'si';
  end
  else
  begin
    rda.fieldbyname('autorizzata').asstring := 'no';
  end;

  rda.post;
  abilita_annulla_rda;
end;

function TGESORDP.esiste_rda: boolean;
begin
  result := false;

  query_rda.close;
  query_rda.parambyname('ovr_progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  query_rda.parambyname('ovr_riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  query_rda.open;

  if not query_rda.isempty then
  begin
    messaggio(200, 'è già stata effettuata una richiesta d''acquisto per la riga ');
    result := true;
  end;
end;

function TGESORDP.esiste_opr: boolean;
var
  opt: tmyquery_go;
begin
  result := false;

  opt := tmyquery_go.create(nil);
  opt.connection := arc.arcdit;
  opt.sql.text := 'select id from opt where documento_origine = ''ordine produzione'' ' +
    'and doc_progressivo_origine = :progressivo and doc_riga_origine = :riga';

  opt.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  opt.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  opt.open;

  result := not opt.isempty;

  opt.free;
end;

procedure TGESORDP.creazione_ciclo(art_codice: string; quantita_finito: double; livello_distinta: boolean);
var
  quantita_lavorazione: double;

  //giorni_cicli: boolean;
begin
  quantita := 0;

  cla.close;
  cla.parambyname('art_codice').asstring := art_codice;
  cla.open;

  opc.close;

  if not cla.isempty then
  begin
    while not cla.eof do
    begin
      opc.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
      if not livello_distinta then
      begin
        opc.parambyname('sequenza').asstring := cla.fieldbyname('sequenza').asstring;
      end
      else
      begin
        opc.parambyname('sequenza').asstring := assegna_opc_sequenza_auto(tabella.fieldbyname('progressivo').asinteger);
      end;
      opc.parambyname('fas_codice').asstring := cla.fieldbyname('fas_codice').asstring;
      opc.parambyname('mac_codice').asstring := cla.fieldbyname('mac_codice').asstring;
      if tabella.fieldbyname('avanzamento_fasi').asstring = 'si' then
      begin
        opc.parambyname('frn_codice').asstring := cla.fieldbyname('frn_codice').asstring;
      end
      else
      begin
        opc.parambyname('frn_codice').asstring := '';
      end;
      opc.parambyname('note').asstring := cla.fieldbyname('note').asstring;

      quantita_lavorazione := cla.fieldbyname('quantita').asfloat;

      if cla.fieldbyname('fas_tipo_operazione').asstring = 'globale' then
      begin
        quantita_lavorazione := cla.fieldbyname('quantita').asfloat;
      end
      else if cla.fieldbyname('fas_tipo_operazione').asstring = 'singola' then
      begin
        if cla.fieldbyname('operatore').asstring = '*' then
        begin
          quantita_lavorazione := tabella.fieldbyname('quantita').asfloat * cla.fieldbyname('quantita').asfloat;
        end
        else
        begin
          quantita_lavorazione := tabella.fieldbyname('quantita').asfloat / cla.fieldbyname('quantita').asfloat;
        end;
      end
      else if cla.fieldbyname('fas_tipo_operazione').asstring = 'ignora' then
      begin
        quantita_lavorazione := 0;
      end;

      opc.parambyname('quantita_attrezzaggio').asfloat := cla.fieldbyname('quantita_attrezzaggio').asfloat;
      opc.parambyname('quantita').asfloat := quantita_lavorazione;
      opc.parambyname('quantita_fine_attrezzaggio').asfloat := cla.fieldbyname('quantita_fine_attrezzaggio').asfloat;
      opc.parambyname('tipo_operazione').asstring := cla.fieldbyname('fas_tipo_operazione').asstring;

      opc.parambyname('costo_totale').asfloat :=
        calfas.calcola_costo(cla.fieldbyname('frn_codice').asstring,
        tabella.fieldbyname('art_codice').asstring, tabella.fieldbyname('art_codice_finito').asstring,
        cla.fieldbyname('fas_codice').asstring, cla.fieldbyname('mac_codice').asstring,
        tabella.fieldbyname('data_documento').asdatetime, quantita_lavorazione,
        cla.fieldbyname('quantita_attrezzaggio').asfloat, cla.fieldbyname('quantita_fine_attrezzaggio').asfloat);

      if (opc.parambyname('frn_codice').asstring <> '') or (tabella.fieldbyname('frn_codice').asstring <> '') then
      begin
        opc.parambyname('quantita_attrezzaggio').asfloat := 0;
        opc.parambyname('quantita').asfloat := tabella.fieldbyname('quantita').asfloat;
        opc.parambyname('quantita_fine_attrezzaggio').asfloat := 0;
        //opc.parambyname('costo_totale').asfloat := 0;
      end;

      opc.execsql;

      cla.next;
    end;

    if not livello_distinta then
    begin
      messaggio(100, 'è stato generato il ciclo di lavorazione' + #13 +
        'per la gestione utilizzare la funzione apposita');
    end;
  end;
end;

procedure TGESORDP.esegui_commesse(mmt, mmr: tmyquery_go);
var
  segno: integer;
  importo: double;
  stringa, costo_ricavo: string;
begin
  inherited;
  read_tabella(arc.arcdit, 'tmo', 'codice', mmt.parambyname('tmo_codice').asstring,
    'descrizione, esistenza, commesse, tipo_movimento_commesse');
  if archivio.fieldbyname('commesse').asstring = 'si' then
  begin
    codice_passato := vararrayof(['movimenti magazzino', mmr.parambyname('progressivo').asfloat,
      mmr.parambyname('riga').asinteger, 0]);

    stringa := archivio.fieldbyname('descrizione').asstring;
    if archivio.fieldbyname('esistenza').asstring = 'decrementa' then
    begin
      costo_ricavo := 'ricavo'
    end
    else
    begin
      costo_ricavo := 'costo'
    end;

    segno := 1;
    if (archivio.fieldbyname('tipo_movimento_commesse').asstring <> '') and
      (archivio.fieldbyname('tipo_movimento_commesse').asstring <> costo_ricavo) then
    begin
      costo_ricavo := archivio.fieldbyname('tipo_movimento_commesse').asstring;
      segno := -1;
    end;

    if arc.dit.fieldbyname('solo_spese_mov_commesse').asstring = 'si' then
    begin
      importo := mmr.parambyname('importo_spese').asfloat;
    end
    else if arc.dit.fieldbyname('solo_materiale_mov_commesse').asstring = 'si' then
    begin
      importo := mmr.parambyname('importo').asfloat;
    end
    else
    begin
      importo := mmr.parambyname('importo').asfloat + mmr.parambyname('importo_spese').asfloat;
    end;

    esegui_carcmm(codice_passato, '', '',
      mmr.parambyname('art_codice').asstring, '', stringa, '',
      costo_ricavo, mmt.parambyname('data_registrazione').asdatetime,
      mmt.parambyname('data_documento').asdatetime, importo,
      mmt.parambyname('numero_documento').asfloat,
      mmt.parambyname('cms_codice').asstring, mmt.parambyname('tipologia').asstring,
      mmr.parambyname('quantita').asfloat, false, segno);
  end;
end;

procedure TGESORDP.esegui_lotti(mmt, mmr: tmyquery_go;
  lot_codice: string);
begin
  inherited;

  if not lettore then
  begin
    if lot_codice <> '' then
    begin
      read_tabella(arc.arcdit, 'art', 'codice', mmr.parambyname('art_codice').asstring, 'lotti');
      if archivio.fieldbyname('lotti').asstring = 'si' then
      begin
        read_tabella(arc.arcdit, 'tmo', 'codice', mmt.parambyname('tmo_codice').asstring);
        if archivio.fieldbyname('lotti').asstring = 'si' then
        begin
          ltm.close;
          ltm.open;
          ltm.append;

          ltm.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(TMyConnection_go(ltm.connection), 'ltm_progressivo');
          ltm.fieldbyname('art_codice').asstring := mmr.parambyname('art_codice').asstring;
          ltm.fieldbyname('lotto').asstring := lot_codice;
          ltm.fieldbyname('data_registrazione').asdatetime := mmt.parambyname('data_registrazione').asdatetime;
          ltm.fieldbyname('data_documento').asdatetime := mmt.parambyname('data_documento').asdatetime;
          ltm.fieldbyname('numero_documento').asfloat := mmt.parambyname('numero_documento').asfloat;

          ltm.fieldbyname('tma_codice').asstring := mmr.parambyname('tma_codice').asstring;
          ltm.fieldbyname('documento_origine').asstring := 'movimenti magazzino';
          ltm.fieldbyname('doc_progressivo_origine').asinteger := mmr.parambyname('progressivo').asinteger;
          ltm.fieldbyname('doc_riga_origine').asinteger := mmr.parambyname('riga').asinteger;

          ltm.fieldbyname('quantita').asfloat := mmr.parambyname('quantita').asfloat;
          ltm.fieldbyname('esistenza').asstring := archivio.fieldbyname('esistenza').asstring;

          ltm.post;
        end;
      end;
    end
    else
    begin
      read_tabella(arc.arcdit, 'art', 'codice', mmr.parambyname('art_codice').asstring, 'lotti');
      if archivio.fieldbyname('lotti').asstring = 'si' then
      begin
        read_tabella(arc.arcdit, 'tmo', 'codice', mmt.parambyname('tmo_codice').asstring);
        if archivio.fieldbyname('lotti').asstring = 'si' then
        begin
          codice_passato := vararrayof(['movimenti magazzino', mmr.parambyname('progressivo').asfloat,
            mmr.parambyname('riga').asinteger, 0]);

          esegui_carltm(codice_passato, mmt.parambyname('numero_documento').asfloat, '', '',
            mmr.parambyname('art_codice').asstring, mmr.parambyname('tma_codice').asstring,
            mmt.parambyname('tmo_codice').asstring, archivio.fieldbyname('esistenza').asstring, '',
            mmt.parambyname('data_registrazione').asdatetime, mmt.parambyname('data_documento').asdatetime,
            archivio.fieldbyname('descrizione').asstring, mmr.parambyname('quantita').asfloat, 0, 0);
        end;
      end;
    end;
  end;
end;

procedure TGESORDP.esegui_ubicazioni(mmt, mmr: tmyquery_go);
var
  tipo_movimento, tub_codice: string;
begin
  inherited;

  read_tabella(arc.arcdit, 'art', 'codice', mmr.parambyname('art_codice').asstring, 'tipo_articolo, tub_codice');
  if archivio.fieldbyname('tipo_articolo').asstring = 'fiscale' then
  begin
    tub_codice := archivio.fieldbyname('tub_codice').asstring;
    tipo_movimento := '';

    read_tabella(arc.arcdit, 'tmo', 'codice', mmt.parambyname('tmo_codice').asstring, 'esistenza');
    if archivio.fieldbyname('esistenza').asstring = 'incrementa' then
    begin
      tipo_movimento := 'carico';
    end;
    if archivio.fieldbyname('esistenza').asstring = 'decrementa' then
    begin
      tipo_movimento := 'scarico';
    end;

    if mmr.parambyname('quantita').asfloat <> 0 then
    begin
      codice_passato := vararrayof(['movimenti magazzino', mmr.parambyname('progressivo').asfloat,
        mmr.parambyname('riga').asinteger, 0]);

      esegui_carubm(codice_passato, mmr.parambyname('art_codice').asstring, tub_codice, tipo_movimento,
        mmt.parambyname('tmo_codice').asstring, mmr.parambyname('tma_codice').asstring,
        mmt.parambyname('data_registrazione').asdatetime, mmr.parambyname('quantita').asfloat);
    end;
  end;
end;

procedure TGESORDP.assegna_valore_fasi_non_sequenziali;
begin
  if not v_avanzamento_fasi.checked then
  begin
    tabella.fieldbyname('fasi_non_sequenziali').asstring := 'no';
  end;
end;

procedure TGESORDP.assegna_valore_lot_codice;
begin
  if art_finiti.fieldbyname('lotti').asstring <> 'si' then
  begin
    tabella.fieldbyname('lot_codice').asstring := '';
  end;
end;

procedure TGESORDP.cerca_prezzo(tipo: string; var prezzo: double; var tsm_codice, tsm_codice_art: string);
begin
  if tipo = 'costo' then
  begin
    cerca_prezzi.cerca_prezzo('F', art_costo.fieldbyname('frn_codice').asstring, '', 'ultimo prezzo acquisto',
      art_costo.fieldbyname('codice').asstring, tabella.fieldbyname('tma_codice_materie_prime').asstring, 0,
      prezzo, tsm_codice, tsm_codice_art, date, divisa_di_conto, 1, decimali_max_prezzo_acq,
      frn_rda.fieldbyname('tla_codice').asstring, 1, art_costo.fieldbyname('tum_codice').asstring, '');
  end
  else if tipo = 'ordine' then
  begin
    cerca_prezzi.cerca_prezzo('F', oat.fieldbyname('frn_codice').asstring, '', 'listino acquisto',
      oar.fieldbyname('art_codice').asstring,
      oar.fieldbyname('tma_codice').asstring, 0, prezzo, tsm_codice, tsm_codice_art,
      date, oat.fieldbyname('tva_codice').asstring, oat.fieldbyname('cambio').asfloat,
      decimali_max_prezzo_acq, oat.fieldbyname('tla_codice').asstring,
      (oar.fieldbyname('tum_quantita_base').asfloat / oar.fieldbyname('quantita').asfloat), oar.fieldbyname('tum_codice').asstring, '');
  end
  else if tipo = 'ordine lavorazione' then
  begin
    cerca_prezzi.cerca_prezzo('F', oat.fieldbyname('frn_codice').asstring, '', 'listino acquisto',
      lavorazioni.fieldbyname('art_codice_figlio').asstring,
      oar.fieldbyname('tma_codice').asstring, 0, prezzo, tsm_codice, tsm_codice_art,
      date, oat.fieldbyname('tva_codice').asstring, oat.fieldbyname('cambio').asfloat,
      decimali_max_prezzo_acq, oat.fieldbyname('tla_codice').asstring,
      (oar.fieldbyname('tum_quantita_base').asfloat / oar.fieldbyname('quantita').asfloat), oar.fieldbyname('tum_codice').asstring, '');
  end
  else if tipo = 'rda' then
  begin
    cerca_prezzi.cerca_prezzo('F', art_materie_prime.fieldbyname('frn_codice').asstring, '', 'listino acquisto',
      art_materie_prime.fieldbyname('codice').asstring,
      tabella_righe.fieldbyname('tma_codice').asstring, 0, prezzo, tsm_codice, tsm_codice_art,
      date, divisa_di_conto, 1, decimali_max_prezzo_acq, frn_rda.fieldbyname('tla_codice').asstring,
      1, art_materie_prime.fieldbyname('tum_codice').asstring, '');
  end
  else if tipo = 'lavorazione componenti' then
  begin
    cerca_prezzi.cerca_prezzo('F', oat.fieldbyname('frn_codice').asstring, '', 'listino acquisto',
      oar.fieldbyname('art_codice').asstring,
      oar.fieldbyname('tma_codice').asstring, 0, prezzo, tsm_codice, tsm_codice_art,
      date, oat.fieldbyname('tva_codice').asstring, oat.fieldbyname('cambio').asfloat,
      decimali_max_prezzo_acq, arc.dit.fieldbyname('tla_codice').asstring,
      (oar.fieldbyname('tum_quantita_base').asfloat / oar.fieldbyname('quantita').asfloat), oar.fieldbyname('tum_codice').asstring, '');
  end;
end;

procedure TGESORDP.crea_record_ncr;
begin
  nca.progressivo := progressivo_nca;
  nca.data_registrazione := tabella.fieldbyname('data_documento').asdatetime;
  nca.tac_codice := tac_codice_nca;
  nca.modulo_origine := '';
  nca.documento_origine := 'produzione';
  nca.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
  nca.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;

  nca.crea_ncr;
  progressivo_nca := 0;
end;

procedure TGESORDP.aggiorna_quantita_ciclo(progressivo: integer;
  rapporto:
  double);
var
  opc: tmyquery_go;
begin
  opc := tmyquery_go.create(nil);
  opc.connection := arc.arcdit;
  opc.sql.text := 'select opc.* from opc inner join fas on fas.codice = opc.fas_codice ' +
    'where progressivo = :progressivo and situazione <> ''completata'' and fas.tipo_operazione = ''singola''';
  opc.parambyname('progressivo').asinteger := progressivo;
  opc.open;

  while not opc.eof do
  begin
    opc.edit;

    read_tabella(arc.arcdit, 'fas', 'codice', opc.fieldbyname('fas_codice').asstring);
    if archivio.fieldbyname('tipo_operazione').asstring = 'singola' then
    begin
      opc.fieldbyname('quantita_attrezzaggio').asfloat := opc.fieldbyname('quantita_attrezzaggio').asfloat * rapporto;
      opc.fieldbyname('quantita').asfloat := opc.fieldbyname('quantita').asfloat * rapporto;
      opc.fieldbyname('quantita_fine_attrezzaggio').asfloat := opc.fieldbyname('quantita_fine_attrezzaggio').asfloat * rapporto;
    end;
    opc.fieldbyname('costo_totale').asfloat :=
      calfas.calcola_costo(opc.fieldbyname('frn_codice').asstring,
      tabella.fieldbyname('art_codice').asstring, tabella.fieldbyname('art_codice_finito').asstring,
      opc.fieldbyname('fas_codice').asstring, opc.fieldbyname('mac_codice').asstring,
      tabella.fieldbyname('data_documento').asdatetime, opc.fieldbyname('quantita').asfloat,
      opc.fieldbyname('quantita_attrezzaggio').asfloat, opc.fieldbyname('quantita_fine_attrezzaggio').asfloat);

    if (opc.fieldbyname('frn_codice').asstring <> '') or (tabella.fieldbyname('frn_codice').asstring <> '') then
    begin
      opc.fieldbyname('quantita_attrezzaggio').asfloat := 0;
      opc.fieldbyname('quantita').asfloat := tabella.fieldbyname('quantita').asfloat;
      opc.fieldbyname('quantita_fine_attrezzaggio').asfloat := 0;
      opc.fieldbyname('costo_totale').asfloat := 0;
    end;

    opc.post;

    opc.next;
  end;

  freeandnil(opc);
end;

procedure TGESORDP.crea_record_rma;
var
  tipo_documento_rma: string;
begin
  tipo_documento_rma := 'produzione';

  rma.progressivo := progressivo_rma;
  rma.intestatario := 'interno';
  rma.tipo_documento := tipo_documento_rma;
  rma.cfg_codice := '';
  rma.documento_origine := 'produzione';
  rma.data_documento := tabella.fieldbyname('data_documento').asdatetime;
  rma.numero_documento := tabella.fieldbyname('numero_documento').asfloat;
  rma.serie_documento := tabella.fieldbyname('serie_documento').asstring;
  rma.doc_progressivo_origine := tabella.fieldbyname('progressivo').asinteger;
  rma.doc_riga_origine := 0;
  rma.lot_codice := tabella.fieldbyname('lot_codice').asstring;
  rma.quantita_entrate := tabella.fieldbyname('quantita').asfloat;;
  rma.quantita_uscite := 0;
  rma.crea_rmr;

  progressivo_rma := 0;
end;

initialization

registerclass(tgesordp);

end.
