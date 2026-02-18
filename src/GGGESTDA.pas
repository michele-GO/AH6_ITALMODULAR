//
//aggiunta nuova tab ah6_tab_personalizzati e contenuto
//
unit GGGESTDA;

interface

uses 
  winapi.windows, winapi.messages, system.sysutils, system.variants, system.classes, vcl.graphics, vcl.controls, vcl.forms, 
  vcl.dialogs, gggesarc, data.db, query_go, MyAccess, vcl.menus, crencryption, 
  vcl.comctrls, RzTabs, vcl.toolwin, vcl.extctrls, vcl.stdctrls, vcl.dbctrls, vcl.mask, vcl.buttons, FileCtrl, 
  RzSpnEdt, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk, 
  RzRadChk, RzButton, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go, 
  RzEdit, DBAccess, MemDS, Vcl.WinXCtrls;

type

  TGESTDA = class(TGESARC)
    Label1: TRzlabel;
    v_codice: TRzDBEdit_go;
    Label2: TRzlabel;
    v_descrizione: TRzDBEdit_go;
    Label3: TRzlabel;
    Label4: TRzlabel;
    v_numerazione: TRzDBEdit_go;
    v_tipo_documento: TRzDBComboBox_go;
    Label25: TRzlabel;
    v_tco_codice: TRzDBEdit_go;
    Label5: TRzlabel;
    v_tmo_codice: TRzDBEdit_go;
    Label7: TRzlabel;
    v_tma_codice: TRzDBEdit_go;
    Label6: TRzlabel;
    v_tda_codice_differite: TRzDBEdit_go;
    Label8: TRzlabel;
    v_tcd_codice_inizio: TRzDBEdit_go;
    Label11: TRzlabel;
    v_tcd_codice_fine: TRzDBEdit_go;
    Label10: TRzlabel;
    v_transazione_intra: TRzDBComboBox_go;
    tab_pagina2: TRztabsheet;
    GroupBox3: TGroupBox;
    Label20: TRzlabel;
    Label21: TRzlabel;
    v_lingua_01: TRzlabel;
    v_lingua_02: TRzlabel;
    v_lingua_03: TRzlabel;
    v_lingua_04: TRzlabel;
    v_lingua_05: TRzlabel;
    v_descrizione_lingua_01: TRzDBEdit_go;
    v_descrizione_lingua_02: TRzDBEdit_go;
    v_descrizione_lingua_03: TRzDBEdit_go;
    v_descrizione_lingua_04: TRzDBEdit_go;
    v_descrizione_lingua_05: TRzDBEdit_go;
    Label14: TRzlabel;
    v_descrizione_documento: TRzDBEdit_go;
    GroupBox1: TGroupBox;
    v_analitica: TRzDbcheckbox;
    v_commesse: TRzDbcheckbox;
    GroupBox2: TGroupBox;
    v_note_fornitore: TRzDbcheckbox;
    v_note_articolo: TRzDbcheckbox;
    v_conto_terzi: TRzDbcheckbox;
    v_descrizioni_articolo_unite: TRzDbcheckbox;
    v_richiesta_accettazione: TRzDbcheckbox;
    v_evadere_note: TRzDbcheckbox;
    GroupBox5: TGroupBox;
    v_pagina_riferimento: TRzDbcheckbox;
    v_pagina_magazzino: TRzDbcheckbox;
    v_pagina_spedizione: TRzDbcheckbox;
    v_pagina_pagamento: TRzDbcheckbox;
    v_pagina_spese: TRzDbcheckbox;
    v_resi_editoria: TRzDbcheckbox;
    GroupBox4: TGroupBox;
    v_gestione_descrizione1: TRzDbcheckbox;
    v_gestione_descrizione2: TRzDbcheckbox;
    v_gestione_tipo_movimento: TRzDbcheckbox;
    v_gestione_tum_codice: TRzDbcheckbox;
    v_controllo_quantita: TRzDbcheckbox;
    v_gestione_quantita: TRzDbcheckbox;
    v_gestione_data_consegna: TRzDbcheckbox;
    v_gestione_sconto_cliente: TRzDbcheckbox;
    v_gestione_prezzo: TRzDbcheckbox;
    v_gestione_importo: TRzDbcheckbox;
    v_lotti: TRzDbcheckbox;
    GroupBox8: TGroupBox;
    Label16: TRzlabel;
    Label17: TRzlabel;
    v_tdo_codice_presso_terzi: TRzDBEdit_go;
    v_tmo_codice_presso_terzi: TRzDBEdit_go;
    Label9: TRzlabel;
    v_tcd_codice_apertura_presso_ter: TRzDBEdit_go;
    Label15: TRzlabel;
    v_tcd_codice_chiusura_presso_ter: TRzDBEdit_go;
    v_pagina_destinazione: TRzDbcheckbox;
    Label13: TRzlabel;
    v_cartella_archiviazione_doc: TRzDBEdit_go;
    v_sfoglia: TRzRapidFireButton;
    Label18: TRzlabel;
    v_aggiungi_cartella: TRzDBComboBox_go;
    v_controllo_articolo_livello_sup: TRzDbcheckbox;
    v_controllo_documenti_livello_sup: TRzDbcheckbox;
    v_emissione_nota_credito: TRzDbcheckbox;
    v_stampa_immediata: TRzDbcheckbox;
    v_controllo_esistenza: TRzDbcheckbox;
    v_esegui_dati_riga: TRzDbcheckbox;
    v_scadenziario_manuale: TRzDbcheckbox;
    v_stampa_immediata_etichette: TRzDbcheckbox;
    v_ultimo_prezzo: TRzDbcheckbox;
    Label19: TRzlabel;
    v_aggiorna_listini: TRzDBComboBox_go;
    v_aggiorna_listini_vendita: TRzDbcheckbox;
    v_consolidamento: TRzDbcheckbox;
    Label22: TRzlabel;
    v_documento_allegato: TRzDBEdit_go;
    SpeedButton1: TRzRapidFireButton;
    v_immagine_documento_allegato: TRzRapidFireButton;
    OpenDialog: Topendialog;
    tlv: tmyquery_go;
    tlv_ds: tmydatasource;
    Label23: TRzlabel;
    v_tlv_codice: TRzDBEdit_go;
    v_tlv_descrizione: TRzDBEditDescrizione_go;
    tco: tmyquery_go;
    tco_ds: tmydatasource;
    RzDBEditDescrizione_go1: TRzDBEditDescrizione_go;
    tmo: tmyquery_go;
    tmo_ds: tmydatasource;
    RzDBEditDescrizione_go2: TRzDBEditDescrizione_go;
    tma: tmyquery_go;
    tma_ds: tmydatasource;
    RzDBEditDescrizione_go3: TRzDBEditDescrizione_go;
    tda_differite: tmyquery_go;
    tda_differite_ds: tmydatasource;
    RzDBEditDescrizione_go4: TRzDBEditDescrizione_go;
    tcd_inizio: tmyquery_go;
    tcd_inizio_ds: tmydatasource;
    RzDBEditDescrizione_go5: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go6: TRzDBEditDescrizione_go;
    tcd_fine: tmyquery_go;
    tcd_fine_ds: tmydatasource;
    RzDBEditDescrizione_go7: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go8: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go9: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go10: TRzDBEditDescrizione_go;
    tdo_presso_terzi: tmyquery_go;
    tdo_presso_terzi_ds: tmydatasource;
    tmo_presso_terzi: tmyquery_go;
    tmo_presso_terzi_ds: tmydatasource;
    tcd_apertura_presso_terzi: tmyquery_go;
    tcd_apertura_presso_terzi_ds: tmydatasource;
    tcd_chiusura_presso_terzi: tmyquery_go;
    tcd_chiusura_presso_terzi_ds: tmydatasource;
    v_numerazione_automatica: TRzDbcheckbox;
    Label29: TRzlabel;
    v_modalita_erogazione_intra: TRzDBComboBox_go;
    v_aggiorna_approntato_produzione: TRzDbcheckbox;
    v_controllo_revisione: TRzDbcheckbox;
    v_invio_pec: TRzDbcheckbox;
    v_lotti_singola_riga: TRzDbcheckbox;
    v_rma: TRzDbcheckbox;
    v_note_art: TRzDbcheckbox;
    v_note_visibili: TRzDbcheckbox;
    v_gestione_numero_colli: TRzDbcheckbox;
    v_gestione_numero_confezioni: TRzDbcheckbox;
    v_controllo_articoli_doppi: TRzDbcheckbox;
    tab_pagina3: TRztabsheet;
    GroupBox11: TGroupBox;
    Label32: TRzlabel;
    Label33: TRzlabel;
    Label34: TRzlabel;
    Label35: TRzlabel;
    Label36: TRzlabel;
    v_user_e_mail: TRzDBEdit_go;
    v_user_host: TRzDBEdit_go;
    v_user_id: TRzDBEdit_go;
    v_porta_smtp: TRzDBEdit_go;
    v_user_password: TRzDBEdit_go;
    GroupBox10: TGroupBox;
    Label62: TRzlabel;
    Label63: TRzlabel;
    Label64: TRzlabel;
    Label65: TRzlabel;
    Label66: TRzlabel;
    v_user_e_mail_pec: TRzDBEdit_go;
    v_user_host_pec: TRzDBEdit_go;
    v_user_id_pec: TRzDBEdit_go;
    v_porta_smtp_pec: TRzDBEdit_go;
    v_user_password_pec: TRzDBEdit_go;
    Label12: TRzlabel;
    v_ttc_codice: TRzDBEdit_go;
    RzDBEditDescrizione_go11: TRzDBEditDescrizione_go;
    ttc: tmyquery_go;
    ttc_ds: tmydatasource;
    tab_control_testo_mail: TRzpagecontrol;
    tab_pagina1_note: TRztabsheet;
    v_testo_mail: TRzDbmemo_go;
    tab_pagina2_note: TRztabsheet;
    DBMemo1: TRzDbmemo_go;
    tab_pagina3_note: TRztabsheet;
    DBMemo2: TRzDbmemo_go;
    tab_pagina4_note: TRztabsheet;
    DBMemo3: TRzDbmemo_go;
    tab_pagina5_note: TRztabsheet;
    DBMemo4: TRzDbmemo_go;
    tab_pagina6_note: TRztabsheet;
    DBMemo5: TRzDbmemo_go;
    v_traduzione_testo_mail: TRzRapidFireButton;
    tab_control_testo_mail_excel: TRzpagecontrol;
    tab_pagina1_excel: TRzTabSheet;
    v_testo_mail_excel: TRzDbmemo_go;
    tab_pagina2_excel: TRzTabSheet;
    v_testo_mail_excel_lingua_01: TRzDbmemo_go;
    tab_pagina3_excel: TRzTabSheet;
    v_testo_mail_excel_lingua_02: TRzDbmemo_go;
    tab_pagina4_excel: TRzTabSheet;
    v_testo_mail_excel_lingua_03: TRzDbmemo_go;
    tab_pagina5_excel: TRzTabSheet;
    v_testo_mail_excel_lingua_04: TRzDbmemo_go;
    tab_pagina6_excel: TRzTabSheet;
    v_testo_mail_excel_lingua_05: TRzDbmemo_go;
    v_traduzione_testo_mail_excel: TRzRapidFireButton;
    v_stampa_lotto_etichette: TRzDbcheckbox;
    v_approntamento_automatico: TRzDbcheckbox;
    Label24: TRzlabel;
    v_tda_codice_conto_acquisto: TRzDBEdit_go;
    v_tdo_descrizione_conto_vendita: TRzDBEditDescrizione_go;
    tda_conto_acquisto: tmyquery_go;
    tda_conto_acquisto_ds: tmydatasource;
    tab_pagina4: TRztabsheet;
    GroupBox12: TGroupBox;
    Label38: TRzlabel;
    Label39: TRzlabel;
    v_cen_codice: TRzDBEdit_go;
    RzDBEditDescrizione_go13: TRzDBEditDescrizione_go;
    v_tvc_codice: TRzDBEdit_go;
    RzDBEditDescrizione_go14: TRzDBEditDescrizione_go;
    cen: tmyquery_go;
    cen_ds: tmydatasource;
    tvc: tmyquery_go;
    tvc_ds: tmydatasource;
    v_pagina_note: TRzDbcheckbox;
    v_pagina_analitica: TRzDbcheckbox;
    v_proporre_contropartita: TRzDbcheckbox;
    v_avviso_documenti_aperti: TRzDbcheckbox;
    v_note_come_descrizioni: TRzDbcheckbox;
    Label26: TRzlabel;
    v_modalita_lettore: TRzDBComboBox_go;
    v_controllo_articolo_consegnato: TRzDBCheckBox;
    v_avviso_presenza_ovr: TRzDBCheckBox;
    v_stampa_articoli_raggruppati: TRzDBCheckBox;
    TabSheet1: TRzTabSheet;
    Panel1: TRzPanel;
    v_marchio_immagine: TImage;
    v_carica_marchio: TRzBitBtn;
    v_cancella_marchio: TRzBitBtn;
    RzLabel2: TRzLabel;
    v_via: TRzDBEdit_go;
    RzLabel3: TRzLabel;
    v_cap: TRzDBEdit_go;
    RzLabel4: TRzLabel;
    v_citta: TRzDBEdit_go;
    RzLabel5: TRzLabel;
    v_provincia: TRzDBEdit_go;
    RzLabel6: TRzLabel;
    v_web: TRzDBEdit_go;
    RzLabel7: TRzLabel;
    v_e_mail_amministrazione: TRzDBEdit_go;
    OpenDialog_marchio: TOpenDialog;
    RzLabel8: TRzLabel;
    v_telefono: TRzDBEdit_go;
    Label41: TRzLabel;
    v_fax: TRzDBEdit_go;
    v_notifica_articolo_in_ordine: TRzDBCheckBox;
    v_produzione_conto_terzi: TRzDBCheckBox;
    RzLabel9: TRzLabel;
    v_prg_codice_riferimento: trzdbedit_go;
    trzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    prg: TMyQuery_go;
    prg_ds: TMyDataSource;
    v_imputazione_quantita_base: TRzDBCheckBox;
    v_controllo_articolo_ordini: TRzDBCheckBox;
    v_esegui_gestione_listini_acquisto: TRzDBCheckBox;
    v_avvisi_documento_stampato_fornitore: TRzDBCheckBox;
    v_messaggio_interattivo: TRzDBCheckBox;
    v_usa_griglia_input: TRzDBCheckBox;
    v_solo_righe_documento: TRzDBCheckBox;
    tab_control_oggetto: TRzPageControl;
    tab_pagina1_oggetto: TRzTabSheet;
    v_oggetto_mail: trzdbedit_go;
    tab_pagina2_oggetto: TRzTabSheet;
    v_oggetto_mail_lingua_01: trzdbedit_go;
    tab_pagina3_oggetto: TRzTabSheet;
    v_oggetto_mail_lingua_02: trzdbedit_go;
    tab_pagina4_oggetto: TRzTabSheet;
    v_oggetto_mail_lingua_03: trzdbedit_go;
    tab_pagina5_oggetto: TRzTabSheet;
    v_oggetto_mail_lingua_04: trzdbedit_go;
    tab_pagina6_oggetto: TRzTabSheet;
    v_oggetto_mail_lingua_05: trzdbedit_go;
    v_usa_prezzo_lordo_listini_vendita: TRzDBCheckBox;
    GroupBox9: TGroupBox;
    Label27: TRzLabel;
    Label28: TRzLabel;
    v_calcolo_colli_confezioni: TRzDBCheckBox;
    v_titolo_colli: trzdbedit_go;
    v_titolo_confezioni: trzdbedit_go;
    tab_collegamenti: TRzTabSheet;
    v_codice_edison: trzdbedit_go;
    RzLabel15: TRzLabel;
    v_intra_manuale: TRzDBCheckBox;
    v_numerazione_automatica_ddt: TRzDBCheckBox;
    v_split_payment: TRzDBCheckBox;
    V_autofattura_34: TRzDBCheckBox;
    v_assegnazione_clav: TRzDBCheckBox;
    v_no_ordinato: TRzDBCheckBox;
    RzLabel1: TRzLabel;
    v_protocollo_tls: trzdbcombobox_go;
    RzLabel10: TRzLabel;
    v_tdo_codice_nota_credito: trzdbedit_go;
    rzdbeditdescrizione_go12: trzdbeditdescrizione_go;
    tdo_nota_credito: TMyQuery_go;
    tdo_nota_credito_ds: TMyDataSource;
    RzLabel11: TRzLabel;
    v_calcolo_disponibilita_acquisti: trzdbcombobox_go;
    v_visualizza_disponibilita_ordini: TRzDBCheckBox;
    v_input_quantita_base: TRzDBCheckBox;
    RzGroupBox1: TRzGroupBox;
    v_carico_call_off_stock: TRzDBCheckBox;
    v_acquisto_call_off_stock: TRzDBCheckBox;
    v_approntamento_automatico_interattivo: TRzDBCheckBox;
    v_traduzione: TRzRapidFireButton;
    v_esporre_scadenziari: TRzDBCheckBox;
    //modifica
    ah6_tab_personalizzati: TRzTabSheet;
    v_ah6_commessa_obbligatoria: TRzDBCheckBox;
    //modifica fine
    procedure v_codiceExit(Sender: TObject);
    procedure v_descrizioneExit(Sender: TObject);
    procedure codice_controllo;
    procedure descrizione_controllo;
    procedure v_tipo_documentoExit(Sender: TObject);
    procedure pannello_campiEnter(Sender: TObject);
    procedure v_tipo_documentoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure v_tco_codiceExit(Sender: TObject);
    procedure v_tmo_codiceExit(Sender: TObject);
    procedure v_tda_codice_differiteExit(Sender: TObject);
    procedure v_tcd_codice_inizioExit(Sender: TObject);
    procedure v_tcd_codice_fineExit(Sender: TObject);
    procedure v_tma_codiceExit(Sender: TObject);
    procedure pannello_codiceEnter(Sender: TObject);
    procedure v_tdo_codice_presso_terziEnter(Sender: TObject);
    procedure v_tdo_codice_presso_terziExit(Sender: TObject);
    procedure v_tmo_codice_presso_terziExit(Sender: TObject);
    procedure v_tcd_codice_apertura_presso_terExit(Sender: TObject);
    procedure v_tcd_codice_chiusura_presso_terExit(Sender: TObject);
    procedure v_sfogliaClick(Sender: TObject);
    procedure v_cartella_archiviazione_docExit(Sender: TObject);
    procedure v_cartella_archiviazione_docChange(Sender: TObject);
    procedure v_tmo_codiceChange(Sender: TObject);
    procedure v_aggiorna_listiniChange(Sender: TObject);
    procedure v_aggiorna_listiniExit(Sender: TObject);
    procedure v_numerazioneExit(Sender: TObject);
    procedure v_aggiorna_listiniEnter(Sender: TObject);
    procedure v_documento_allegatoChange(Sender: TObject);
    procedure v_documento_allegatoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure v_immagine_documento_allegatoClick(Sender: TObject);
    procedure v_tlv_codiceExit(Sender: TObject);
    procedure pannello_campiExit(Sender: TObject);
    procedure v_traduzioneClick(Sender: TObject);
    procedure v_ttc_codiceExit(Sender: TObject);
    procedure v_traduzione_testo_mailClick(Sender: TObject);
    procedure v_traduzione_testo_mail_excelClick(Sender: TObject);
    procedure tab_control_testo_mailEnter(Sender: TObject);
    procedure tab_control_testo_mailExit(Sender: TObject);
    procedure tab_control_testo_mail_excelEnter(Sender: TObject);
    procedure tab_control_testo_mail_excelExit(Sender: TObject);
    procedure v_tda_codice_conto_acquistoExit(Sender: TObject);
    procedure v_tda_codice_conto_acquistoEnter(Sender: TObject);
    procedure v_cen_codiceExit(Sender: TObject);
    procedure v_tvc_codiceExit(Sender: TObject);
    procedure v_carica_marchioClick(Sender: TObject);
    procedure v_cancella_marchioClick(Sender: TObject);
    procedure pannello_codiceExit(Sender: TObject);
    procedure v_prg_codice_riferimentoExit(Sender: TObject);
    procedure v_tdo_codice_nota_creditoEnter(Sender: TObject);
    procedure v_tdo_codice_nota_creditoExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  protected
    crittografia_mail: tmyencryptor;

    blocco_modifica: boolean;
    tipo_documento_old, numerazione_old, tco_codice_old, tda_codice_differite_old: string;

    procedure abilita_tipo_documento;
    procedure abilita_aggiungi_cartella;

    procedure assegna_valore_tipo_documento;
    procedure assegna_valore_aggiungi_cartella;

    procedure modulo_tco_codice_controllo;
    procedure tco_codice_controllo(blocco: boolean);
    procedure tmo_codice_controllo(blocco: boolean);
    procedure tma_codice_controllo(blocco: boolean);
    procedure numerazione_controllo;
    procedure tda_codice_differite_controllo(blocco: boolean);
    procedure v_tdo_codice_nota_credito_controllo(blocco: boolean);
    procedure tcd_codice_inizio_controllo(blocco: boolean);
    procedure tcd_codice_fine_controllo(blocco: boolean);
    procedure tdo_codice_presso_terzi_controllo(blocco: boolean);
    procedure tmo_codice_presso_terzi_controllo(blocco: boolean);
    procedure tcd_codice_apertura_presso_ter_controllo(blocco: boolean);
    procedure tcd_codice_chiusura_presso_ter_controllo(blocco: boolean);
    procedure tlv_codice_controllo(blocco: boolean);
    procedure ttc_codice_controllo(blocco: boolean);
    procedure tda_codice_conto_acquisto_controllo(blocco: boolean);
    procedure cen_codice_controllo(blocco: boolean);
    procedure tvc_codice_controllo(blocco: boolean);
    procedure cartella_archiviazione_doc_controllo;
    procedure abilita_controllo_esistenza;
    procedure assegna_valore_controllo_esistenza;
    procedure abilita_aggiorna_listini_vendita;
    procedure assegna_valore_aggiorna_listini_vendita;
    procedure documento_allegato_controllo;
    procedure abilita_immagine_documento_allegato;
    procedure carica_marchio;
    procedure v_prg_codice_riferimento_controllo(blocco: boolean);
  public
    procedure visualizza_descrizioni; override;
    procedure abilitazioni; override;
    procedure assegna_codice; override;
    procedure controllo_cancella; override;
    procedure controllo_codice; override;
    procedure controllo_campi; override;
    procedure duplica; override;

    procedure before_post; override;
  end;

var
  GESTDA: TGESTDA;

implementation

{$r *.dfm}


uses 
  DMARC, ZZCONTROLLO_INTEGRITA;

//******************************************************************************
// procedure e funzioni da personalizzare (verranno mantenute da inheritare)
//******************************************************************************

procedure TGESTDA.assegna_codice;
begin
  inherited;
  codice := variant(v_codice.text);
  if codice <> '' then
  begin
    crittografia_mail.password := codice;
  end;
end;

procedure TGESTDA.controllo_cancella;
begin
  inherited;

  if esiste then
  begin
    controllo_cancella_edit := controllo_integrita('tda_codice', v_codice.text);
  end;
end;

procedure TGESTDA.controllo_codice;
begin
  codice_controllo;
end;

procedure TGESTDA.controllo_campi;
begin
  descrizione_controllo;
  tco_codice_controllo(true);
  tmo_codice_controllo(true);
  tma_codice_controllo(true);
  numerazione_controllo;
  tda_codice_differite_controllo(true);
  v_tdo_codice_nota_credito_controllo(true);
  tcd_codice_inizio_controllo(true);
  tcd_codice_fine_controllo(true);
  tdo_codice_presso_terzi_controllo(true);
  tmo_codice_presso_terzi_controllo(true);
  tcd_codice_apertura_presso_ter_controllo(true);
  tcd_codice_chiusura_presso_ter_controllo(true);
  tlv_codice_controllo(true);
  ttc_codice_controllo(true);
  tda_codice_conto_acquisto_controllo(true);
  cartella_archiviazione_doc_controllo;
  documento_allegato_controllo;
  cen_codice_controllo(true);
  tvc_codice_controllo(true);
  v_prg_codice_riferimento_controllo(true);
end;

procedure TGESTDA.before_post;
begin
  if esiste and
    (parametro_sessione <> 'SBLOCCAMODIFICHE') and
    ((tipo_documento_old <> tabella.fieldbyname('tipo_documento').asstring) or
    (tco_codice_old <> tabella.fieldbyname('tco_codice').asstring) or
    (tda_codice_differite_old <> tabella.fieldbyname('tda_codice_differite').asstring) or
    (numerazione_old <> tabella.fieldbyname('numerazione').asstring)) and
    not controllo_integrita('tda_codice', v_codice.text, '', '', '', '', '', 'modifica') then
  begin
    tabella.cancel;
    fuoco(v_descrizione);
    abort;
  end
  else
  begin
    modulo_tco_codice_controllo;
    assegna_valore_tipo_documento;
    assegna_valore_aggiungi_cartella;
    assegna_valore_controllo_esistenza;
    assegna_valore_aggiorna_listini_vendita;

    if v_analitica.checked then
    begin
      if tco.fieldbyname('analitica').asstring = 'si' then
      begin
        messaggio(000, 'la gestione dell''analitica è utilizzata anche nella causale contabile');
        if v_descrizione.canfocus then
        begin
          v_descrizione.setfocus;
        end;
        abort;
      end;

      if tda_differite.fieldbyname('analitica').asstring = 'si' then
      begin
        messaggio(000, 'la gestione dell''analitica è utilizzata anche nel documento di fatturazione differita');
        if v_descrizione.canfocus then
        begin
          v_descrizione.setfocus;
        end;
        abort;
      end;

      if read_tabella(arc.arcdit, 'tda', 'tda_codice_differite', tabella.fieldbyname('codice').asstring) then
      begin
        while not archivio.eof do
        begin
          if archivio.fieldbyname('analitica').asstring = 'si' then
          begin
            messaggio(000, 'la gestione dell''analitica è utilizzata anche nel documento da fatturare con codice [' +
              archivio.fieldbyname('codice').asstring + ']');
            fuoco(v_descrizione);
            abort;
          end;

          archivio.next;
        end;
      end;
    end;

    if v_commesse.checked then
    begin
      if tco.fieldbyname('commesse').asstring = 'si' then
      begin
        messaggio(000, 'la gestione delle commesse è utilizzata anche nella causale contabile');
        if v_descrizione.canfocus then
        begin
          v_descrizione.setfocus;
        end;
        abort;
      end;

      if tda_differite.fieldbyname('commesse').asstring = 'si' then
      begin
        messaggio(000, 'la gestione delle commesse è utilizzata anche nel documento di fatturazione differita');
        if v_descrizione.canfocus then
        begin
          v_descrizione.setfocus;
        end;
        abort;
      end;

      if tmo.fieldbyname('commesse').asstring = 'si' then
      begin
        messaggio(000, 'la gestione delle commesse è utilizzata anche nella causale di magazzino');
        if v_descrizione.canfocus then
        begin
          v_descrizione.setfocus;
        end;
        abort;
      end;
    end;

    if v_lotti.checked then
    begin
      if tmo.fieldbyname('lotti').asstring = 'si' then
      begin
        messaggio(000, 'la gestione dei lotti è utilizzata anche nella causale di magazzino');
        if v_descrizione.canfocus then
        begin
          v_descrizione.setfocus;
        end;
        abort;
      end;
    end;

    if v_carico_call_off_stock.checked then
    begin
      if (tabella.fieldbyname('tipo_documento').asstring <> 'ddt') or
        (tabella.fieldbyname('tda_codice_differite').asstring <> '') then
      begin
        tabella.fieldbyname('carico_call_off_stock').asstring := 'no';
      end;
    end;

    if v_acquisto_call_off_stock.checked then
    begin
      if not((tabella.fieldbyname('tipo_documento').asstring = 'ddt') and
        (tabella.fieldbyname('tda_codice_differite').asstring <> '')) then
      begin
        tabella.fieldbyname('acquisto_call_off_stock').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('approntamento_automatico').asstring = 'no' then
    begin
      tabella.fieldbyname('approntamento_automatico_interattivo').asstring := 'no';
    end;

    inherited;
  end;
end;

procedure TGESTDA.modulo_tco_codice_controllo;
begin
  if read_tabella(arc.arcdit, 'tco', 'codice', v_tco_codice.text, 'segno_registro_iva') then
  begin
    if ((v_tipo_documento.text = 'nota credito') and
      (archivio.fieldbyname('segno_registro_iva').asstring <> 'decrementa')) then
    begin
      messaggio(000, 'c''è incompatibilità tra il tipo documento [nota credito]' + #13 +
        'e il segno registro iva della causale contabile [incrementa]');
    end;

    if ((v_tipo_documento.text <> 'nota credito') and
      (archivio.fieldbyname('segno_registro_iva').asstring <> '') and
      (archivio.fieldbyname('segno_registro_iva').asstring <> 'incrementa')) then
    begin
      messaggio(000, 'c''è incompatibilità tra il tipo documento [fattura o corrispettivo]' + #13 +
        'e il segno registro iva della causale contabile [decrementa]');
    end;
  end;
end;

//******************************************************************************
// gestione campi da inserire programma per programma ex novo
//******************************************************************************

procedure TGESTDA.FormCreate(Sender: TObject);
begin
  crittografia_mail := tmyencryptor.create(nil);
  crittografia_mail.dataheader := ehnone;
  crittografia_mail.encryptionalgorithm := eatripledes;
  crittografia_mail.password := 'GO';
  tabella.encryption.encryptor := crittografia_mail;
  tabella.encryption.fields := 'user_password_pec, user_password';

  inherited;
  v_lingua_01.caption := arc.lin.fieldbyname('lingua_01').asstring;
  v_lingua_02.caption := arc.lin.fieldbyname('lingua_02').asstring;
  v_lingua_03.caption := arc.lin.fieldbyname('lingua_03').asstring;
  v_lingua_04.caption := arc.lin.fieldbyname('lingua_04').asstring;
  v_lingua_05.caption := arc.lin.fieldbyname('lingua_05').asstring;

  tab_pagina2_oggetto.caption := arc.lin.fieldbyname('lingua_01').asstring;
  tab_pagina3_oggetto.caption := arc.lin.fieldbyname('lingua_02').asstring;
  tab_pagina4_oggetto.caption := arc.lin.fieldbyname('lingua_03').asstring;
  tab_pagina5_oggetto.caption := arc.lin.fieldbyname('lingua_04').asstring;
  tab_pagina6_oggetto.caption := arc.lin.fieldbyname('lingua_05').asstring;

  tab_pagina2_note.caption := arc.lin.fieldbyname('lingua_01').asstring;
  tab_pagina3_note.caption := arc.lin.fieldbyname('lingua_02').asstring;
  tab_pagina4_note.caption := arc.lin.fieldbyname('lingua_03').asstring;
  tab_pagina5_note.caption := arc.lin.fieldbyname('lingua_04').asstring;
  tab_pagina6_note.caption := arc.lin.fieldbyname('lingua_05').asstring;

  tab_pagina2_excel.caption := arc.lin.fieldbyname('lingua_01').asstring;
  tab_pagina3_excel.caption := arc.lin.fieldbyname('lingua_02').asstring;
  tab_pagina4_excel.caption := arc.lin.fieldbyname('lingua_03').asstring;
  tab_pagina5_excel.caption := arc.lin.fieldbyname('lingua_04').asstring;
  tab_pagina6_excel.caption := arc.lin.fieldbyname('lingua_05').asstring;
end;

procedure TGESTDA.FormDestroy(Sender: TObject);
begin
  crittografia_mail.free;

  inherited;
end;

procedure TGESTDA.v_codiceExit(Sender: TObject);
begin
  inherited;
  codice_controllo;
end;

procedure TGESTDA.codice_controllo;
begin
  if controllo then
  begin
    if trim(v_codice.text) = '' then
    begin
      messaggio(002, label1.caption);
      if v_codice.canfocus then
      begin
        v_codice.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESTDA.v_descrizioneExit(Sender: TObject);
begin
  inherited;
  descrizione_controllo;
end;

procedure TGESTDA.descrizione_controllo;
begin
  if controllo then
  begin
    if trim(v_descrizione.text) = '' then
    begin
      messaggio(002, label2.caption);
      tab_control.ActivePage := tab_pagina1;
      if v_descrizione.canfocus then
      begin
        v_descrizione.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESTDA.v_tipo_documentoExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    assegna_valore_tipo_documento;
  end;
end;

procedure TGESTDA.pannello_campiEnter(Sender: TObject);
begin
  inherited;
  if esiste then
  begin
    if arc_prg.fieldbyname('abr_id').asinteger = 0 then
    begin
      tool_f7.enabled := true;
    end;
  end
  else
  begin
    abilita_tipo_documento;
  end;
  v_traduzione.enabled := true;
end;

procedure TGESTDA.pannello_campiExit(Sender: TObject);
begin
  inherited;
  v_traduzione.enabled := false;
end;

procedure TGESTDA.abilita_tipo_documento;
begin
  inherited;

  if v_tipo_documento.text = 'ordine' then
  begin
    abilita_campo(v_no_ordinato);
  end
  else
  begin
    disabilita_campo(v_no_ordinato);
  end;

  v_tco_codice.enabled := true;
  v_tmo_codice.enabled := true;
  v_tma_codice.enabled := true;
  v_tda_codice_differite.enabled := true;
  v_analitica.enabled := true;
  v_commesse.enabled := true;
  v_lotti.enabled := true;
  v_conto_terzi.enabled := true;
  v_produzione_conto_terzi.enabled := false;
  v_numerazione.enabled := true;
  v_tcd_codice_inizio.enabled := true;
  v_tcd_codice_fine.enabled := true;
  v_richiesta_accettazione.enabled := false;
  v_resi_editoria.enabled := false;
  v_tdo_codice_presso_terzi.enabled := false;
  v_tmo_codice_presso_terzi.enabled := false;
  v_tcd_codice_apertura_presso_ter.enabled := false;
  v_tcd_codice_chiusura_presso_ter.enabled := false;
  v_controllo_documenti_livello_sup.enabled := true;
  v_controllo_articolo_livello_sup.enabled := true;
  v_emissione_nota_credito.enabled := false;
  v_numerazione_automatica.enabled := false;
  v_numerazione_automatica_ddt.enabled := false;
  v_controllo_revisione.enabled := false;
  v_invio_pec.enabled := false;
  v_rma.enabled := false;
  v_approntamento_automatico.enabled := false;
  v_approntamento_automatico_interattivo.enabled := false;

  v_tco_codice.color := clwindow;
  v_tmo_codice.color := clwindow;
  v_tma_codice.color := clwindow;
  v_tda_codice_differite.color := clwindow;
  v_numerazione.color := clwindow;
  v_tcd_codice_inizio.color := clwindow;
  v_tcd_codice_fine.color := clwindow;
  v_tdo_codice_presso_terzi.color := clbtnface;
  v_tmo_codice_presso_terzi.color := clbtnface;
  v_tcd_codice_apertura_presso_ter.color := clbtnface;
  v_tcd_codice_chiusura_presso_ter.color := clbtnface;

  v_consolidamento.enabled := false;
  v_controllo_articolo_consegnato.enabled := false;

  groupbox2.caption := 'note fornitori e articoli';
  v_note_fornitore.caption := 'stampa note fornitori';

  colore_control(tab_control_testo_mail, false);
  colore_control(tab_control_testo_mail_excel, false);
  tab_control_testo_mail.enabled := false;
  tab_control_testo_mail_excel.enabled := false;
  v_stampa_articoli_raggruppati.enabled := false;

  v_notifica_articolo_in_ordine.enabled := false;

  disabilita_campo(v_controllo_articolo_ordini);
  disabilita_campo(v_ttc_codice);

  if (v_tipo_documento.text = 'preventivo') or (v_tipo_documento.text = 'ordine') then
  begin
    abilita_campo(v_ttc_codice);
  end;

  disabilita_campo(v_tdo_codice_nota_credito);

  if v_tipo_documento.text = 'ddt clienti' then
  begin
    abilita_campo(v_tdo_codice_nota_credito);

    groupbox2.caption := 'note clienti e articoli';
    v_note_fornitore.caption := 'stampa note clienti';

    v_tco_codice.enabled := false;
    v_numerazione.enabled := false;
    v_tcd_codice_inizio.enabled := false;
    v_tcd_codice_fine.enabled := false;
    v_tda_codice_differite.Enabled := false;
    v_analitica.enabled := false;
    v_commesse.enabled := false;
    v_evadere_note.enabled := false;
    v_resi_editoria.enabled := true;
    v_cartella_archiviazione_doc.enabled := true;
    v_sfoglia.enabled := true;
    v_controllo_documenti_livello_sup.enabled := false;
    v_controllo_articolo_livello_sup.enabled := false;
    v_emissione_nota_credito.enabled := true;
    v_aggiorna_approntato_produzione.enabled := false;
    v_rma.enabled := true;
    v_controllo_articolo_consegnato.enabled := true;
    v_avviso_presenza_ovr.enabled := false;
    v_produzione_conto_terzi.enabled := true;

    v_tco_codice.color := clbtnface;
    v_tda_codice_differite.color := clbtnface;
    v_numerazione.color := clbtnface;
    v_tcd_codice_inizio.color := clbtnface;
    v_tcd_codice_fine.color := clbtnface;
    v_cartella_archiviazione_doc.color := clwindow;
  end;

  if v_tipo_documento.text = 'ddt' then
  begin
    abilita_campo(v_controllo_articolo_ordini);

    v_tco_codice.enabled := false;
    v_numerazione.enabled := false;
    v_tcd_codice_inizio.enabled := false;
    v_tcd_codice_fine.enabled := false;
    v_conto_terzi.enabled := false;
    v_evadere_note.enabled := true;
    v_cartella_archiviazione_doc.enabled := true;
    v_sfoglia.enabled := true;
    v_aggiorna_approntato_produzione.enabled := true;
    v_rma.enabled := true;
    v_avviso_presenza_ovr.enabled := true;
    v_numerazione_automatica_ddt.enabled := true;

    v_tco_codice.color := clbtnface;
    v_numerazione.color := clbtnface;
    v_tcd_codice_inizio.color := clbtnface;
    v_tcd_codice_fine.color := clbtnface;
    v_cartella_archiviazione_doc.color := clwindow;

    if trim(v_tda_codice_differite.text) = '' then
    begin
      v_controllo_documenti_livello_sup.enabled := false;
      v_controllo_articolo_livello_sup.enabled := false;
    end;
  end;

  if v_tipo_documento.text = 'preventivo' then
  begin
    tab_control_testo_mail.enabled := true;
    tab_control_testo_mail_excel.enabled := true;
    colore_control(tab_control_testo_mail, true);
    colore_control(tab_control_testo_mail_excel, true);

    v_tco_codice.enabled := false;
    v_tmo_codice.enabled := false;
    v_tma_codice.enabled := false;
    v_tda_codice_differite.Enabled := false;
    v_analitica.enabled := false;
    v_conto_terzi.enabled := false;
    v_lotti.enabled := false;
    v_richiesta_accettazione.enabled := true;
    v_evadere_note.enabled := true;
    v_cartella_archiviazione_doc.enabled := false;
    v_sfoglia.enabled := false;
    v_controllo_documenti_livello_sup.enabled := false;
    v_controllo_articolo_livello_sup.enabled := false;
    v_aggiorna_approntato_produzione.enabled := false;
    v_controllo_revisione.enabled := true;
    v_invio_pec.enabled := true;
    v_stampa_articoli_raggruppati.enabled := true;
    v_avviso_presenza_ovr.enabled := false;

    v_tco_codice.color := clbtnface;
    v_tmo_codice.color := clbtnface;
    v_tma_codice.color := clbtnface;
    v_tda_codice_differite.color := clbtnface;
    v_cartella_archiviazione_doc.color := clbtnface;
  end;

  if v_tipo_documento.text = 'ordine' then
  begin
    tab_control_testo_mail.enabled := true;
    colore_control(tab_control_testo_mail, true);

    v_tco_codice.enabled := false;
    v_tmo_codice.enabled := false;
    v_tda_codice_differite.Enabled := false;
    v_analitica.enabled := false;
    v_conto_terzi.enabled := false;
    v_lotti.enabled := false;
    v_richiesta_accettazione.enabled := true;
    v_evadere_note.enabled := true;
    v_tdo_codice_presso_terzi.enabled := true;
    v_tmo_codice_presso_terzi.enabled := true;
    v_tcd_codice_apertura_presso_ter.enabled := true;
    v_tcd_codice_chiusura_presso_ter.enabled := true;
    v_cartella_archiviazione_doc.enabled := false;
    v_sfoglia.enabled := false;
    v_aggiorna_approntato_produzione.enabled := false;
    v_invio_pec.enabled := true;
    v_approntamento_automatico.enabled := true;
    v_approntamento_automatico_interattivo.enabled := true;
    v_avviso_presenza_ovr.enabled := false;
    v_stampa_articoli_raggruppati.enabled := true;
    v_notifica_articolo_in_ordine.enabled := true;

    v_tco_codice.color := clbtnface;
    v_tmo_codice.color := clbtnface;
    v_tda_codice_differite.color := clbtnface;
    v_tdo_codice_presso_terzi.color := clwindow;
    v_tmo_codice_presso_terzi.color := clwindow;
    v_tcd_codice_apertura_presso_ter.color := clwindow;
    v_tcd_codice_chiusura_presso_ter.color := clwindow;
    v_cartella_archiviazione_doc.color := clbtnface;
  end;

  if (v_tipo_documento.text = 'fattura') or (v_tipo_documento.text = 'nota credito') then
  begin
    v_tda_codice_differite.Enabled := false;
    v_numerazione.enabled := false;
    v_tcd_codice_inizio.enabled := false;
    v_tcd_codice_fine.enabled := false;
    v_conto_terzi.enabled := false;
    v_evadere_note.enabled := false;
    v_cartella_archiviazione_doc.enabled := true;
    v_sfoglia.enabled := true;
    v_consolidamento.enabled := true;
    v_numerazione_automatica.enabled := true;
    v_aggiorna_approntato_produzione.enabled := true;
    v_rma.enabled := true;
    v_avviso_presenza_ovr.enabled := false;

    v_tda_codice_differite.color := clbtnface;
    v_numerazione.color := clbtnface;
    v_tcd_codice_inizio.color := clbtnface;
    v_tcd_codice_fine.color := clbtnface;
    v_cartella_archiviazione_doc.color := clwindow;
  end;

  if v_tipo_documento.text = 'fattura' then
  begin
    abilita_campo(v_controllo_articolo_ordini);

    v_tda_codice_conto_acquisto.enabled := true;
    v_tda_codice_conto_acquisto.color := clwindow;
    v_avviso_presenza_ovr.enabled := true;
  end
  else
  begin
    v_tda_codice_conto_acquisto.enabled := false;
    v_tda_codice_conto_acquisto.color := clbtnface;
  end;

  if v_tipo_documento.text = 'fattura differita' then
  begin
    v_tmo_codice.enabled := false;
    v_tma_codice.enabled := false;
    v_tda_codice_differite.Enabled := false;
    v_commesse.enabled := false;
    v_numerazione.enabled := false;
    v_tcd_codice_inizio.enabled := false;
    v_tcd_codice_fine.enabled := false;
    v_lotti.enabled := false;
    v_conto_terzi.enabled := false;
    v_evadere_note.enabled := false;
    v_cartella_archiviazione_doc.enabled := true;
    v_sfoglia.enabled := true;
    v_controllo_articolo_livello_sup.enabled := false;
    v_consolidamento.enabled := true;
    v_aggiorna_approntato_produzione.enabled := false;
    v_avviso_presenza_ovr.enabled := false;

    v_tmo_codice.color := clbtnface;
    v_tma_codice.color := clbtnface;
    v_tda_codice_differite.color := clbtnface;
    v_numerazione.color := clbtnface;
    v_tcd_codice_inizio.color := clbtnface;
    v_tcd_codice_fine.color := clbtnface;
    v_cartella_archiviazione_doc.color := clwindow;
  end;

  //call_off_stock
  disabilita_campo(v_carico_call_off_stock);
  disabilita_campo(v_acquisto_call_off_stock);
  if v_tipo_documento.text = 'ddt' then
  begin
    abilita_campo(v_carico_call_off_stock);
    abilita_campo(v_acquisto_call_off_stock);
  end;
end;

procedure TGESTDA.v_tipo_documentoChange(Sender: TObject);
begin
  inherited;
  abilita_tipo_documento;
end;

procedure TGESTDA.assegna_valore_tipo_documento;
begin
  if v_tipo_documento.text <> 'ddt clienti' then
  begin
    if tabella.fieldbyname('tdo_codice_nota_credito').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_nota_credito').asstring := '';
      end;
    end;
  end;
  if v_tipo_documento.text <> 'ordine' then
  begin
    if tabella.fieldbyname('no_ordinato').asstring = 'si' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('no_ordinato').asstring := 'no';
      end;
    end;
  end;
  if (v_tipo_documento.text <> 'preventivo') and (v_tipo_documento.text <> 'ordine') then
  begin
    if tabella.fieldbyname('ttc_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('ttc_codice').asstring := '';
      end;
    end;
  end;
  if v_tipo_documento.text = 'ddt' then
  begin
    if tabella.fieldbyname('tco_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tco_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('numerazione').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('numerazione').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tcd_codice_inizio').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_inizio').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tcd_codice_fine').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_fine').asstring := '';
      end;
    end;
    if tabella.fieldbyname('conto_terzi').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('conto_terzi').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('richiesta_accettazione').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('richiesta_accettazione').asstring := 'no';
      end;
    end;
    if (trim(v_tda_codice_differite.text) = '') then
    begin
      if tabella.fieldbyname('evadere_note').asstring <> 'no' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('evadere_note').asstring := 'no';
        end;
      end;
    end;
    if tabella.fieldbyname('consolidamento').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('consolidamento').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tda_codice_conto_acquisto').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tda_codice_conto_acquisto').asstring := '';
      end;
    end;
    if tabella.fieldbyname('stampa_articoli_raggruppati').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('stampa_articoli_raggruppati').asstring := 'no';
      end;
    end;
  end
  else
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('numerazione_automatica_ddt').asstring := 'no';
    end;
  end;

  if v_tipo_documento.text = 'preventivo' then
  begin
    if tabella.fieldbyname('tco_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tco_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tmo_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tmo_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tma_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tda_codice_differite').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tda_codice_differite').asstring := '';
      end;
    end;
    if tabella.fieldbyname('transazione_intra').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('transazione_intra').asstring := '';
      end;
    end;
    if tabella.fieldbyname('conto_terzi').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('conto_terzi').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('cartella_archiviazione_doc').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cartella_archiviazione_doc').asstring := '';
      end;
    end;
    if tabella.fieldbyname('consolidamento').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('consolidamento').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tda_codice_conto_acquisto').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tda_codice_conto_acquisto').asstring := '';
      end;
    end;
    if tabella.fieldbyname('avviso_presenza_ovr').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('avviso_presenza_ovr').asstring := 'no';
      end;
    end;
  end;

  if v_tipo_documento.text = 'ordine' then
  begin
    if tabella.fieldbyname('tco_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tco_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tmo_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tmo_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tda_codice_differite').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tda_codice_differite').asstring := '';
      end;
    end;
    if tabella.fieldbyname('transazione_intra').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('transazione_intra').asstring := '';
      end;
    end;
    if tabella.fieldbyname('conto_terzi').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('conto_terzi').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('cartella_archiviazione_doc').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cartella_archiviazione_doc').asstring := '';
      end;
    end;
    if tabella.fieldbyname('consolidamento').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('consolidamento').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tda_codice_conto_acquisto').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tda_codice_conto_acquisto').asstring := '';
      end;
    end;
    if tabella.fieldbyname('avviso_presenza_ovr').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('avviso_presenza_ovr').asstring := 'no';
      end;
    end;
  end
  else
  begin
    if tabella.fieldbyname('tdo_codice_presso_terzi').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_presso_terzi').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tmo_codice_presso_terzi').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tmo_codice_presso_terzi').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tcd_codice_apertura_presso_ter').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_apertura_presso_ter').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tcd_codice_chiusura_presso_ter').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_chiusura_presso_ter').asstring := '';
      end;
    end;
  end;

  if (v_tipo_documento.text = 'fattura') or (v_tipo_documento.text = 'nota credito') then
  begin
    if tabella.fieldbyname('tda_codice_differite').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tda_codice_differite').asstring := '';
      end;
    end;
    if tabella.fieldbyname('numerazione').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('numerazione').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tcd_codice_inizio').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_inizio').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tcd_codice_fine').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_fine').asstring := '';
      end;
    end;
    if tabella.fieldbyname('conto_terzi').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('conto_terzi').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('richiesta_accettazione').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('richiesta_accettazione').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('evadere_note').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('evadere_note').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('stampa_articoli_raggruppati').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('stampa_articoli_raggruppati').asstring := 'no';
      end;
    end;

    if v_tipo_documento.text = 'nota credito' then
    begin
      if tabella.fieldbyname('tda_codice_conto_acquisto').asstring <> '' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tda_codice_conto_acquisto').asstring := '';
        end;
      end;
      if tabella.fieldbyname('avviso_presenza_ovr').asstring <> 'no' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('avviso_presenza_ovr').asstring := 'no';
        end;
      end;
    end;
  end;

  if v_tipo_documento.text = 'fattura differita' then
  begin
    if tabella.fieldbyname('tmo_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tmo_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tma_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tda_codice_differite').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tda_codice_differite').asstring := '';
      end;
    end;
    if tabella.fieldbyname('numerazione').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('numerazione').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tcd_codice_inizio').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_inizio').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tcd_codice_fine').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_fine').asstring := '';
      end;
    end;
    if tabella.fieldbyname('conto_terzi').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('conto_terzi').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('richiesta_accettazione').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('richiesta_accettazione').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('evadere_note').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('evadere_note').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tda_codice_conto_acquisto').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tda_codice_conto_acquisto').asstring := '';
      end;
    end;
    if tabella.fieldbyname('stampa_articoli_raggruppati').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('stampa_articoli_raggruppati').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('avviso_presenza_ovr').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('avviso_presenza_ovr').asstring := 'no';
      end;
    end;
  end;

  if v_tipo_documento.text = 'ddt clienti' then
  begin
    if tabella.fieldbyname('tco_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tco_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tda_codice_differite').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tda_codice_differite').asstring := '';
      end;
    end;
    if tabella.fieldbyname('transazione_intra').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('transazione_intra').asstring := '';
      end;
    end;
    if tabella.fieldbyname('analitica').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('analitica').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('commesse').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('commesse').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('numerazione').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('numerazione').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tcd_codice_inizio').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_inizio').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tcd_codice_fine').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_fine').asstring := '';
      end;
    end;
    if tabella.fieldbyname('richiesta_accettazione').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('richiesta_accettazione').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('evadere_note').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('evadere_note').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('consolidamento').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('consolidamento').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tda_codice_conto_acquisto').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tda_codice_conto_acquisto').asstring := '';
      end;
    end;
    if tabella.fieldbyname('stampa_articoli_raggruppati').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('stampa_articoli_raggruppati').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('avviso_presenza_ovr').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('avviso_presenza_ovr').asstring := 'no';
      end;
    end;
  end
  else
  begin
    if tabella.fieldbyname('resi_editoria').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('resi_editoria').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('emissione_nota_credito').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('emissione_nota_credito').asstring := 'no';
      end;
    end;
  end;

  if v_tipo_documento.text <> 'ddt clienti' then
  begin
    if tabella.fieldbyname('produzione_conto_terzi').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('produzione_conto_terzi').asstring := 'no';
      end;
    end;
  end;
end;

procedure TGESTDA.v_tco_codiceExit(Sender: TObject);
begin
  inherited;
  tco_codice_controllo(true);
  if controllo and (v_tco_codice.text <> '') then
  begin
    if (tco.fieldbyname('movimento_iva').asstring <> 'si') or (tco.fieldbyname('tipo_registro_iva').asstring <> 'acquisti') then
    begin
      messaggio(000, 'la causale deve essere un movimento iva di acquisto');
      tab_control.activepage := tab_pagina1;
      if v_tco_codice.canfocus then
      begin
        v_tco_codice.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESTDA.tco_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tco, v_tco_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDA.v_tmo_codiceExit(Sender: TObject);
begin
  inherited;
  tmo_codice_controllo(true);
  assegna_valore_controllo_esistenza;
end;

procedure TGESTDA.tmo_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo, v_tmo_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDA.v_tma_codiceExit(Sender: TObject);
begin
  inherited;
  tma_codice_controllo(true);
end;

procedure TGESTDA.tma_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma, v_tma_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDA.v_tda_codice_conto_acquistoEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := 'ddt';
end;

procedure TGESTDA.v_tda_codice_conto_acquistoExit(Sender: TObject);
begin
  inherited;
  tda_codice_conto_acquisto_controllo(true);
end;

procedure TGESTDA.tda_codice_conto_acquisto_controllo(blocco: boolean);
begin
  tabella_controllo(true, tda_conto_acquisto, v_tda_codice_conto_acquisto, blocco, tab_control, tab_pagina2, tabella);
end;

procedure TGESTDA.cen_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, cen, v_cen_codice, blocco, tab_control, tab_pagina4, tabella);
end;

procedure TGESTDA.tvc_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tvc, v_tvc_codice, blocco, tab_control, tab_pagina4, tabella);
end;

procedure TGESTDA.v_tda_codice_differiteExit(Sender: TObject);
begin
  inherited;
  tda_codice_differite_controllo(true);
  if controllo and (v_tda_codice_differite.text <> '') then
  begin
    if tda_differite.fieldbyname('tipo_documento').asstring <> 'fattura differita' then
    begin
      messaggio(000, 'il documento deve essere una fattura differita');
      tab_control.activepage := tab_pagina1;
      if v_tda_codice_differite.canfocus then
      begin
        v_tda_codice_differite.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESTDA.tda_codice_differite_controllo(blocco: boolean);
begin
  tabella_controllo(true, tda_differite, v_tda_codice_differite, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDA.v_tcd_codice_inizioExit(Sender: TObject);
begin
  inherited;
  tcd_codice_inizio_controllo(true);
end;

procedure TGESTDA.tcd_codice_inizio_controllo(blocco: boolean);
begin
  tabella_controllo(true, tcd_inizio, v_tcd_codice_inizio, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDA.v_tcd_codice_fineExit(Sender: TObject);
begin
  inherited;
  tcd_codice_fine_controllo(true);
end;

procedure TGESTDA.tcd_codice_fine_controllo(blocco: boolean);
begin
  tabella_controllo(true, tcd_fine, v_tcd_codice_fine, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDA.abilitazioni;
begin
  abilita_tipo_documento;
  abilita_controllo_esistenza;
  abilita_aggiungi_cartella;
  abilita_aggiorna_listini_vendita;
  abilita_immagine_documento_allegato;

  carica_marchio;
end;

procedure TGESTDA.visualizza_descrizioni;
begin
  tco_codice_controllo(false);
  tmo_codice_controllo(false);
  tma_codice_controllo(false);
  tda_codice_differite_controllo(false);
  v_tdo_codice_nota_credito_controllo(false);
  tcd_codice_inizio_controllo(false);
  tcd_codice_fine_controllo(false);
  tdo_codice_presso_terzi_controllo(false);
  tmo_codice_presso_terzi_controllo(false);
  tcd_codice_apertura_presso_ter_controllo(false);
  tcd_codice_chiusura_presso_ter_controllo(false);
  tlv_codice_controllo(false);
  ttc_codice_controllo(false);
  tda_codice_conto_acquisto_controllo(false);
  cen_codice_controllo(false);
  tvc_codice_controllo(false);
  v_prg_codice_riferimento_controllo(false);
end;

procedure TGESTDA.pannello_codiceEnter(Sender: TObject);
begin
  inherited;
  tool_f7.Enabled := false;

  tab_control_oggetto.activepageindex := 0;
  tab_control_testo_mail.activepage := tab_pagina1_note;
  tab_control_testo_mail_excel.activepage := tab_pagina1_excel;
end;

procedure TGESTDA.pannello_codiceExit(Sender: TObject);
begin
  inherited;

  carica_marchio;

  tipo_documento_old := tabella.fieldbyname('tipo_documento').asstring;
  tco_codice_old := tabella.fieldbyname('tco_codice').asstring;
  tda_codice_differite_old := tabella.fieldbyname('tda_codice_differite').asstring;
  numerazione_old := tabella.fieldbyname('numerazione').asstring;
end;

procedure tGESTDA.duplica;
begin
  titolo_form := 'Duplicazione causale documento';
  descrizione_codice := 'codice nuova causale';
  lunghezza_codice := 04;

  inherited;
end;

procedure TGESTDA.v_tdo_codice_nota_creditoEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := 'nota credito';
end;

procedure TGESTDA.v_tdo_codice_nota_creditoExit(Sender: TObject);
begin
  inherited;
  v_tdo_codice_nota_credito_controllo(true);
end;

procedure TGESTDA.v_tdo_codice_nota_credito_controllo(blocco: boolean);
begin
  tabella_controllo(true, tdo_nota_credito, v_tdo_codice_nota_credito, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDA.v_tdo_codice_presso_terziEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := 'ddt fornitori';
end;

procedure TGESTDA.v_tdo_codice_presso_terziExit(Sender: TObject);
begin
  inherited;
  tdo_codice_presso_terzi_controllo(true);
  if controllo and not tdo_presso_terzi.isempty then
  begin
    if tdo_presso_terzi.fieldbyname('tipo_documento').asstring <> 'ddt fornitori' then
    begin
      messaggio(002, label16.caption);
      if v_tdo_codice_presso_terzi.canfocus then
      begin
        v_tdo_codice_presso_terzi.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESTDA.tdo_codice_presso_terzi_controllo(blocco: boolean);
begin
  tabella_controllo(true, tdo_presso_terzi, v_tdo_codice_presso_terzi, blocco, tab_control, tab_pagina2, tabella);
end;

procedure TGESTDA.v_tmo_codice_presso_terziExit(Sender: TObject);
begin
  inherited;
  tmo_codice_presso_terzi_controllo(true);
end;

procedure TGESTDA.v_traduzioneClick(Sender: TObject);
begin
  inherited;
  screen.cursor := crhourglass;
  try
    if tabella_edit(tabella) then
    begin
      arc.traduzione(tabella, v_descrizione_documento.text, 'descrizione_documento_lingua_01',
        'descrizione_documento_lingua_02', 'descrizione_documento_lingua_03',
        'descrizione_documento_lingua_04', 'descrizione_documento_lingua_05');
    end;
  finally
    screen.cursor := cursore;
  end;
end;

procedure TGESTDA.v_traduzione_testo_mailClick(Sender: TObject);
begin
  inherited;
  screen.cursor := crhourglass;
  try
    if tabella_edit(tabella) then
    begin
      arc.traduzione(tabella, v_testo_mail.text, 'testo_mail_lingua_01', 'testo_mail_lingua_02', 'testo_mail_lingua_03',
        'testo_mail_lingua_04', 'testo_mail_lingua_05');
    end;
  finally
    screen.cursor := cursore;
  end;
end;

procedure TGESTDA.v_traduzione_testo_mail_excelClick(Sender: TObject);
begin
  inherited;
  screen.cursor := crhourglass;
  try
    if tabella_edit(tabella) then
    begin
      arc.traduzione(tabella, v_testo_mail_excel.text, 'testo_mail_excel_lingua_01',
        'testo_mail_excel_lingua_02', 'testo_mail_excel_lingua_03',
        'testo_mail_excel_lingua_04', 'testo_mail_excel_lingua_05');
    end;
  finally
    screen.cursor := cursore;
  end;
end;

procedure TGESTDA.v_ttc_codiceExit(Sender: TObject);
begin
  inherited;
  ttc_codice_controllo(true);
end;

procedure TGESTDA.v_tvc_codiceExit(Sender: TObject);
begin
  inherited;
  tvc_codice_controllo(true);
end;

procedure TGESTDA.ttc_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, ttc, v_ttc_codice, blocco, tab_control, tab_pagina2, tabella);
end;

procedure TGESTDA.tmo_codice_presso_terzi_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_presso_terzi, v_tmo_codice_presso_terzi, blocco, tab_control, tab_pagina2, tabella);
end;

procedure TGESTDA.v_tcd_codice_apertura_presso_terExit(Sender: TObject);
begin
  inherited;
  tcd_codice_apertura_presso_ter_controllo(true);
end;

procedure TGESTDA.tab_control_testo_mailEnter(Sender: TObject);
begin
  inherited;
  v_traduzione_testo_mail.enabled := true;
end;

procedure TGESTDA.tab_control_testo_mailExit(Sender: TObject);
begin
  inherited;
  v_traduzione_testo_mail.enabled := false;
end;

procedure TGESTDA.tab_control_testo_mail_excelEnter(Sender: TObject);
begin
  inherited;
  v_traduzione_testo_mail_excel.enabled := true;
end;

procedure TGESTDA.tab_control_testo_mail_excelExit(Sender: TObject);
begin
  inherited;
  v_traduzione_testo_mail_excel.enabled := false;
end;

procedure TGESTDA.tcd_codice_apertura_presso_ter_controllo(blocco: boolean);
begin
  tabella_controllo(true, tcd_apertura_presso_terzi, v_tcd_codice_apertura_presso_ter, blocco, tab_control, tab_pagina2, tabella);
end;

procedure TGESTDA.v_tcd_codice_chiusura_presso_terExit(Sender: TObject);
begin
  inherited;
  tcd_codice_chiusura_presso_ter_controllo(true);
end;

procedure TGESTDA.tcd_codice_chiusura_presso_ter_controllo(blocco: boolean);
begin
  tabella_controllo(true, tcd_chiusura_presso_terzi, v_tcd_codice_chiusura_presso_ter, blocco, tab_control, tab_pagina2, tabella);
end;

procedure TGESTDA.v_sfogliaClick(Sender: TObject);
const
  help = 0;
var
  cartella: widestring;
  cartella_archiviazione: string;
begin
  cartella := '';
  if selectdirectory('Cartella archiviazione documenti', cartella, cartella_archiviazione) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('cartella_archiviazione_doc').asstring := cartella_archiviazione;
    end;
  end;
  if v_cartella_archiviazione_doc.canfocus then
  begin
    v_cartella_archiviazione_doc.setfocus;
  end;
end;

procedure TGESTDA.v_cartella_archiviazione_docExit(Sender: TObject);
begin
  inherited;
  cartella_archiviazione_doc_controllo;
end;

procedure TGESTDA.v_cen_codiceExit(Sender: TObject);
begin
  inherited;
  cen_codice_controllo(true);
end;

procedure TGESTDA.cartella_archiviazione_doc_controllo;
begin
  inherited;
  if controllo then
  begin
    if trim(v_cartella_archiviazione_doc.text) <> '' then
    begin
      if not directoryexists(trim(v_cartella_archiviazione_doc.text)) then
      begin
        if messaggio(300, 'la cartella non esiste, la si vuole creare?') = 1 then
        begin
          forcedirectories(trim(v_cartella_archiviazione_doc.text));
        end
        else
        begin
          if v_cartella_archiviazione_doc.canfocus then
          begin
            v_cartella_archiviazione_doc.setfocus;
          end;
          abort;
        end;
      end;
    end;
  end;
end;

procedure TGESTDA.v_cancella_marchioClick(Sender: TObject);
begin
  inherited;
  if tabella_edit(tabella) then
  begin
    tabella.fieldbyname('marchio_percorso').asstring := '';
  end;
  carica_marchio;
end;

procedure TGESTDA.v_carica_marchioClick(Sender: TObject);
var
  stringa: string;
begin
  inherited;
  stringa := tabella.fieldbyname('marchio_percorso').asstring;
  OpenDialog_marchio.filename := tabella.fieldbyname('marchio_percorso').asstring;
  OpenDialog_marchio.filter := 'Immagine marchio (*.bmp, *.jpg, *.png, *gif, *.apf, *.ico)|*.bmp;*.jpg;*.png;*gif;*.apf;*.ico';
  if tabella.fieldbyname('marchio_percorso').asstring = '' then
  begin
    OpenDialog_marchio.initialdir := cartella_root_installazione + 'bmp';
  end;
  OpenDialog_marchio.execute;

  if OpenDialog_marchio.filename <> '' then
  begin
    if OpenDialog_marchio.filename <> stringa then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('marchio_percorso').asstring := OpenDialog_marchio.filename;
      end;
      carica_marchio;
    end;
  end;
end;

procedure TGESTDA.v_cartella_archiviazione_docChange(
  Sender: TObject);
begin
  inherited;
  abilita_aggiungi_cartella;
end;

procedure TGESTDA.abilita_aggiungi_cartella;
begin
  inherited;
  if trim(v_cartella_archiviazione_doc.text) = '' then
  begin
    v_aggiungi_cartella.enabled := false;
  end
  else
  begin
    v_aggiungi_cartella.enabled := true;
  end;
end;

procedure TGESTDA.assegna_valore_aggiungi_cartella;
begin
  if trim(v_cartella_archiviazione_doc.text) = '' then
  begin
    if tabella.fieldbyname('aggiungi_cartella').asstring <> 'manuale' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('aggiungi_cartella').asstring := 'manuale';
      end;
    end;
  end;
end;

procedure TGESTDA.abilita_controllo_esistenza;
begin
  if trim(v_tmo_codice.text) = '' then
  begin
    v_controllo_esistenza.enabled := false;
  end
  else
  begin
    v_controllo_esistenza.enabled := true;
  end;
end;

procedure TGESTDA.assegna_valore_controllo_esistenza;
begin
  if controllo then
  begin
    if trim(v_tmo_codice.text) = '' then
    begin
      if tabella.fieldbyname('controllo_esistenza').asstring <> 'no' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('controllo_esistenza').asstring := 'no';
        end;
      end;
    end;
  end;
end;

procedure TGESTDA.v_tmo_codiceChange(Sender: TObject);
begin
  inherited;
  abilita_controllo_esistenza;
end;

procedure TGESTDA.v_aggiorna_listiniChange(Sender: TObject);
begin
  inherited;
  abilita_aggiorna_listini_vendita;
end;

procedure TGESTDA.abilita_aggiorna_listini_vendita;
begin
  inherited;
  if (v_aggiorna_listini.itemindex = 0) or (v_aggiorna_listini.itemindex = 3) then
  begin
    v_aggiorna_listini_vendita.enabled := false;
  end
  else
  begin
    v_aggiorna_listini_vendita.enabled := true;
  end;
end;

procedure TGESTDA.v_aggiorna_listiniExit(Sender: TObject);
begin
  inherited;
  if (controllo) and (variato_stringa <> v_aggiorna_listini.text) then
  begin
    assegna_valore_aggiorna_listini_vendita;
  end;
end;

procedure TGESTDA.assegna_valore_aggiorna_listini_vendita;
begin
  inherited;
  if (v_aggiorna_listini.itemindex = 0) or (v_aggiorna_listini.itemindex = 3) then
  begin
    tabella.fieldbyname('aggiorna_listini_vendita').asstring := 'no';
  end;
end;

procedure TGESTDA.v_numerazioneExit(Sender: TObject);
begin
  inherited;
  numerazione_controllo;
end;

procedure TGESTDA.v_prg_codice_riferimentoExit(Sender: TObject);
begin
  inherited;
  v_prg_codice_riferimento_controllo(true);
end;

procedure TGESTDA.v_prg_codice_riferimento_controllo(blocco: boolean);
begin
  tabella_controllo(true, prg, v_prg_codice_riferimento, blocco, tab_control, tab_pagina4, tabella);
end;

procedure TGESTDA.numerazione_controllo;
begin
end;

procedure TGESTDA.v_aggiorna_listiniEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_aggiorna_listini.text;
end;

procedure TGESTDA.v_documento_allegatoChange(Sender: TObject);
begin
  inherited;
  abilita_immagine_documento_allegato;
end;

procedure TGESTDA.abilita_immagine_documento_allegato;
begin
  if trim(v_documento_allegato.text) = '' then
  begin
    v_immagine_documento_allegato.enabled := false;
  end
  else
  begin
    v_immagine_documento_allegato.enabled := true;
  end;
end;

procedure TGESTDA.v_documento_allegatoExit(Sender: TObject);
begin
  inherited;
  documento_allegato_controllo;
end;

procedure TGESTDA.documento_allegato_controllo;
begin
  inherited;
  if controllo then
  begin
    if trim(v_documento_allegato.text) <> '' then
    begin
      if not fileexists(trim(v_documento_allegato.text)) then
      begin
        messaggio(000, 'il documento non esiste');
        if v_documento_allegato.canfocus then
        begin
          v_documento_allegato.setfocus;
        end;
        abort;
      end;
    end;
  end;
end;

procedure TGESTDA.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  opendialog.filename := v_documento_allegato.text;
  OpenDialog.execute;

  if opendialog.filename <> v_documento_allegato.text then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('documento_allegato').asstring := opendialog.filename;
    end;
  end;
  if v_documento_allegato.canfocus then
  begin
    v_documento_allegato.setfocus;
  end;
end;

procedure TGESTDA.v_immagine_documento_allegatoClick(Sender: TObject);
begin
  inherited;
  esegui(trim(v_documento_allegato.text));
end;

procedure TGESTDA.v_tlv_codiceExit(Sender: TObject);
begin
  inherited;
  tlv_codice_controllo(true);
end;

procedure TGESTDA.tlv_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tlv, v_tlv_codice, blocco, tab_control, tab_pagina2, tabella);
end;

procedure TGESTDA.carica_marchio;
begin
  inherited;
  v_marchio_immagine.visible := true;
  if fileexists(tabella.fieldbyname('marchio_percorso').asstring) then
  begin
    v_marchio_immagine.picture.loadfromfile(tabella.fieldbyname('marchio_percorso').asstring);
  end
  else
  begin
    v_marchio_immagine.visible := false;
  end;
end;

initialization

registerclass(tgestda);

end.
