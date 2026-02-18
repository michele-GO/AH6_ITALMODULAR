//
//aggiunta nuova tab ah6_tab_personalizzati e contenuto
//
unit GGGESTDO;

interface

uses 
  winapi.windows, winapi.messages, system.sysutils, system.variants, system.classes, vcl.graphics, vcl.controls, vcl.forms, 
  vcl.dialogs, gggesarc, data.db, query_go, MyAccess, vcl.menus, FileCtrl, crencryption, 
  vcl.comctrls, RzTabs, vcl.toolwin, vcl.extctrls, vcl.stdctrls, vcl.dbctrls, vcl.mask, 
  vcl.buttons, RzSpnEdt, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk, 
  RzRadChk, RzButton, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go, 
  RzEdit, DBAccess, MemDS, Vcl.WinXCtrls;

type

  TGESTDO = class(TGESARC)
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
    Label9: TRzlabel;
    v_causale_trasporto: TRzDBEdit_go;
    Label6: TRzlabel;
    v_tdo_codice_differite: TRzDBEdit_go;
    Label8: TRzlabel;
    v_tcd_codice_inizio: TRzDBEdit_go;
    Label11: TRzlabel;
    v_tcd_codice_fine: TRzDBEdit_go;
    Label10: TRzlabel;
    v_transazione_intra: TRzDBComboBox_go;
    tab_pagina2: TRztabsheet;
    Label14: TRzlabel;
    v_descrizione_documento: TRzDBEdit_go;
    GroupBox1: TGroupBox;
    v_analitica: TRzDbcheckbox;
    v_commesse: TRzDbcheckbox;
    GroupBox2: TGroupBox;
    v_note_cliente: TRzDbcheckbox;
    v_note_articolo: TRzDbcheckbox;
    v_conto_terzi: TRzDbcheckbox;
    GroupBox5: TGroupBox;
    v_pagina_riferimento: TRzDbcheckbox;
    v_pagina_magazzino: TRzDbcheckbox;
    v_pagina_spedizione: TRzDbcheckbox;
    v_pagina_incasso: TRzDbcheckbox;
    v_pagina_sconti: TRzDbcheckbox;
    Label13: TRzlabel;
    v_descrizione_documento_pro_forma: TRzDBEdit_go;
    v_pagina_destinazione: TRzDbcheckbox;
    GroupBox4: TGroupBox;
    v_gestione_data_documento: TRzDbcheckbox;
    v_gestione_numero_documento: TRzDbcheckbox;
    v_stampa_immediata: TRzDbcheckbox;
    v_descrizioni_articolo_unite: TRzDbcheckbox;
    v_data_inizio_trasporto: TRzDbcheckbox;
    v_ora_inizio_trasporto: TRzDbcheckbox;
    v_fattura_professionisti: TRzDbcheckbox;
    v_immagine_articolo: TRzDbcheckbox;
    v_richiesta_accettazione: TRzDbcheckbox;
    v_prezzo_bloccato: TRzDbcheckbox;
    v_evadere_note: TRzDbcheckbox;
    Label46: TRzlabel;
    v_spedizioni_editoria: TRzDBComboBox_go;
    GroupBox6: TGroupBox;
    v_pagina_riferimento_chiusura: TRzDbcheckbox;
    v_pagina_magazzino_chiusura: TRzDbcheckbox;
    v_pagina_spedizione_chiusura: TRzDbcheckbox;
    v_pagina_incasso_chiusura: TRzDbcheckbox;
    v_pagina_sconti_chiusura: TRzDbcheckbox;
    v_pagina_destinazione_chiusura: TRzDbcheckbox;
    v_controllo_quantita: TRzDbcheckbox;
    v_gestione_tlv_codice: TRzDbcheckbox;
    v_gestione_tpa_codice: TRzDbcheckbox;
    v_gestione_tsm_codice: TRzDbcheckbox;
    v_gestione_tva_codice: TRzDbcheckbox;
    v_gestione_data: TRzDbcheckbox;
    GroupBox7: TGroupBox;
    v_gestione_descrizione1: TRzDbcheckbox;
    v_gestione_descrizione2: TRzDbcheckbox;
    v_gestione_numero_colli: TRzDbcheckbox;
    v_gestione_quantita: TRzDbcheckbox;
    v_gestione_sconto_cliente: TRzDbcheckbox;
    v_gestione_tum_codice: TRzDbcheckbox;
    v_gestione_prezzo: TRzDbcheckbox;
    v_gestione_importo: TRzDbcheckbox;
    v_lotti: TRzDbcheckbox;
    Label15: TRzlabel;
    v_tdo_codice_evasione_diretta: TRzDBEdit_go;
    v_gestione_numero_confezioni: TRzDbcheckbox;
    v_gestione_tipo_movimento: TRzDbcheckbox;
    OpenDialog: Topendialog;
    v_controllo_prezzo: TRzDbcheckbox;
    v_controllo_articolo_livello_sup: TRzDbcheckbox;
    Label17: TRzlabel;
    v_tab_codice: TRzDBEdit_go;
    v_numerazione_fiscale: TRzDbcheckbox;
    v_controllo_documenti_livello_sup: TRzDbcheckbox;
    v_controllo_esistenza: TRzDbcheckbox;
    v_esegui_dati_riga: TRzDbcheckbox;
    v_calcolo_margine: TRzDbcheckbox;
    v_ultimo_prezzo: TRzDbcheckbox;
    v_gestione_configurazione: TRzDbcheckbox;
    tab_pagina3: TRztabsheet;
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
    v_totalizza_quantita: TRzDbcheckbox;
    Label18: TRzlabel;
    v_tdo_codice_conto_vendita: TRzDBEdit_go;
    v_tdo_descrizione_conto_vendita: TRzDBEditDescrizione_go;
    v_lotti_singola_riga: TRzDbcheckbox;
    v_gestione_colli: TRzDbcheckbox;
    v_consolidamento: TRzDbcheckbox;
    v_stampa_immediata_etichette: TRzDbcheckbox;
    v_l_prezzo_proposto: TRzlabel;
    v_prezzo_proposto: TRzDBComboBox_go;
    v_totalizza_colli: TRzDbcheckbox;
    v_controllo_sottoscorta: TRzDbcheckbox;
    tco: tmyquery_go;
    tco_ds: tmydatasource;
    RzDBEditDescrizione_go4: TRzDBEditDescrizione_go;
    tab: tmyquery_go;
    tab_ds: tmydatasource;
    RzDBEditDescrizione_go1: TRzDBEditDescrizione_go;
    tmo: tmyquery_go;
    tma: tmyquery_go;
    tmo_ds: tmydatasource;
    tma_ds: tmydatasource;
    RzDBEditDescrizione_go2: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go3: TRzDBEditDescrizione_go;
    tdo_differite_ds: tmydatasource;
    tdo_differite: tmyquery_go;
    RzDBEditDescrizione_go5: TRzDBEditDescrizione_go;
    tcd_fine_ds: tmydatasource;
    tcd_fine: tmyquery_go;
    tcd_inizio_ds: tmydatasource;
    tcd_inizio: tmyquery_go;
    RzDBEditDescrizione_go6: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go7: TRzDBEditDescrizione_go;
    tdo_evasione_diretta: tmyquery_go;
    tdo_evasione_diretta_ds: tmydatasource;
    RzDBEditDescrizione_go8: TRzDBEditDescrizione_go;
    GroupBox8: TGroupBox;
    Label19: TRzlabel;
    v_dit_codice_collegato: TRzDBEdit_go;
    RzDBEditDescrizione_go9: TRzDBEditDescrizione_go;
    dit_collegato: tmyquery_go;
    dit_collegato_ds: tmydatasource;
    Label22: TRzlabel;
    v_fornitore_collegato: TRzDBEdit_go;
    Label23: TRzlabel;
    v_documento_acquisto_collegato: TRzDBEdit_go;
    v_scheda_trasporto: TRzDbcheckbox;
    Label24: TRzlabel;
    v_nome_documento_tentata_vendita: TRzDBEdit_go;
    Label26: TRzlabel;
    v_cli_codice_collegato: TRzDBEdit_go;
    RzDBEditDescrizione_go10: TRzDBEditDescrizione_go;
    cli_collegato: tmyquery_go;
    cli_collegato_ds: tmydatasource;
    GroupBox9: TGroupBox;
    v_calcolo_colli_confezioni: TRzDbcheckbox;
    Label27: TRzlabel;
    v_titolo_colli: TRzDBEdit_go;
    Label28: TRzlabel;
    v_titolo_confezioni: TRzDBEdit_go;
    v_immagine_articolo_ordini: TRzDbcheckbox;
    v_controllo_accessori_equivalenti: TRzDbcheckbox;
    Label29: TRzlabel;
    v_modalita_erogazione_intra: TRzDBComboBox_go;
    Label12: TRzlabel;
    v_template: TRzDBEdit_go;
    v_sfoglia_template: TRzRapidFireButton;
    OpenDialog_template: Topendialog;
    v_controllo_costo: TRzDbcheckbox;
    v_emissione_scontrino: TRzDbcheckbox;
    v_controllo_revisione: TRzDbcheckbox;
    v_invio_pec: TRzDbcheckbox;
    TabSheet1: TRztabsheet;
    tab_control_note: TRzpagecontrol;
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
    v_traduzione: TRzRapidFireButton;
    v_traduzione_testo_mail: TRzRapidFireButton;
    Label30: TRzlabel;
    v_e_mail_conoscenza: TRzDBComboBox_go;
    v_rma: TRzDbcheckbox;
    Label31: TRzlabel;
    v_tdo_codice_preventivo: TRzDBEdit_go;
    RzDBEditDescrizione_go11: TRzDBEditDescrizione_go;
    tdo_preventivo: tmyquery_go;
    tdo_preventivo_ds: tmydatasource;
    v_note_art: TRzDbcheckbox;
    v_note_visibili: TRzDbcheckbox;
    v_controllo_articoli_doppi: TRzDbcheckbox;
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
    ttc: tmyquery_go;
    ttc_ds: tmydatasource;
    Label37: TRzlabel;
    v_ttc_codice: TRzDBEdit_go;
    RzDBEditDescrizione_go12: TRzDBEditDescrizione_go;
    tab_control_testo_mail_excel: TRzpagecontrol;
    tab_pagina1_excel: TRztabsheet;
    v_testo_mail_excel: TRzDbmemo_go;
    tab_pagina2_excel: TRztabsheet;
    _testo_mail_excel_lingua_01: TRzDbmemo_go;
    tab_pagina3_excel: TRztabsheet;
    v_testo_mail_excel_lingua_02: TRzDbmemo_go;
    tab_pagina4_excel: TRztabsheet;
    v_testo_mail_excel_lingua_03: TRzDbmemo_go;
    tab_pagina5_excel: TRztabsheet;
    v_testo_mail_excel_lingua_04: TRzDbmemo_go;
    tab_pagina6_excel: TRztabsheet;
    v_testo_mail_excel_lingua_05: TRzDbmemo_go;
    v_traduzione_testo_mail_excel: TRzRapidFireButton;
    v_blocco_mancanza_esistenza: TRzDbcheckbox;
    v_creazione_automatica_scaglioni: TRzDbcheckbox;
    v_note_come_descrizioni: TRzDbcheckbox;
    GroupBox12: TGroupBox;
    Label38: TRzlabel;
    v_cen_codice: TRzDBEdit_go;
    RzDBEditDescrizione_go13: TRzDBEditDescrizione_go;
    Label39: TRzlabel;
    v_tvc_codice: TRzDBEdit_go;
    RzDBEditDescrizione_go14: TRzDBEditDescrizione_go;
    cen: tmyquery_go;
    cen_ds: tmydatasource;
    tvc: tmyquery_go;
    tvc_ds: tmydatasource;
    v_pagina_analitica: TRzDbcheckbox;
    v_pagina_note: TRzDbcheckbox;
    v_pagina_note_chiusura: TRzDbcheckbox;
    v_pagina_analitica_chiusura: TRzDbcheckbox;
    v_avviso_ordini_aperti: TRzDbcheckbox;
    v_causale_trasporto_lingua_01: TRzDBEdit_go;
    v_causale_trasporto_lingua_02: TRzDBEdit_go;
    v_causale_trasporto_lingua_03: TRzDBEdit_go;
    v_causale_trasporto_lingua_04: TRzDBEdit_go;
    v_causale_trasporto_lingua_05: TRzDBEdit_go;
    v_ignora_autorizzazione_email: TRzDbcheckbox;
    Label40: TRzlabel;
    v_aggiorna_listini: TRzDBComboBox_go;
    v_stampa_lotto_etichette: TRzDBCheckBox;
    RzLabel1: TRzLabel;
    v_giorni_validita_preventivo: TRzDBNumericEdit_go;
    v_allegati_non_interattivi: TRzDBCheckBox;
    v_scontrino_totale: TRzDBCheckBox;
    v_eredita_allegati: TRzDBCheckBox;
    v_numerazione_automatica: TRzDBCheckBox;
    v_controllo_importo: TRzDBCheckBox;
    v_visualizza_disponibilita_ordini: TRzDBCheckBox;
    GroupBox13: TGroupBox;
    v_tag_codice_ca_obbligatorio: TRzDBCheckBox;
    v_duplica_ordini_clienti: TRzDBCheckBox;
    v_stampa_situazione_evaso: TRzDBCheckBox;
    tab_marchio_documenti: TRzTabSheet;
    Panel1: TRzPanel;
    v_marchio_immagine: TImage;
    v_carica_marchio: TRzBitBtn;
    v_cancella_marchio: TRzBitBtn;
    OpenDialog_marchio: TOpenDialog;
    v_note_documenti_derivati: TRzDBCheckBox;
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
    RzLabel8: TRzLabel;
    v_telefono: TRzDBEdit_go;
    Label41: TRzLabel;
    v_fax: TRzDBEdit_go;
    v_esecuzione_vuoti: TRzDBCheckBox;
    v_indicazione_deposito_partenza: TRzDBCheckBox;
    v_stampa_sempre_vuoti: TRzDBCheckBox;
    v_esistenza_cls: TRzDBCheckBox;
    Label80: TRzLabel;
    v_cartella_allegati_automatici: TRzDBEdit_go;
    v_sfoglia_cartella_documenti: TRzRapidFireButton;
    v_ind_obbligatoria: TRzDBCheckBox;
    RzLabel9: TRzLabel;
    v_prg_codice_riferimento: trzdbedit_go;
    trzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    prg: TMyQuery_go;
    prg_ds: TMyDataSource;
    v_note_saldo: trzdbmemo_go;
    RzLabel10: TRzLabel;
    TabSheet2: TRzTabSheet;
    RzLabel11: TRzLabel;
    v_server_ftp: trzdbedit_go;
    RzLabel12: TRzLabel;
    v_utente_ftp: trzdbedit_go;
    RzLabel13: TRzLabel;
    v_password_ftp: trzdbedit_go;
    v_modalita_passiva_ftp: TRzDBCheckBox;
    RzLabel14: TRzLabel;
    v_cartella_ftp: trzdbedit_go;
    v_importo_minimo_iva_inclusa: TRzDBCheckBox;
    v_l_prezzo: TRzLabel;
    v_importo_minimo: trzdbnumericedit_go;
    v_chiusura_documento_origine: TRzDBCheckBox;
    v_template_articolo: TRzDBCheckBox;
    v_esporre_scadenziari: TRzDBCheckBox;
    v_controllo_deposito_evasione: TRzDBCheckBox;
    v_deposito_modificabile: TRzDBCheckBox;
    tab_collegamenti: TRzTabSheet;
    RzLabel15: TRzLabel;
    v_codice_edison: trzdbedit_go;
    Label16: TRzLabel;
    v_documento_allegato: trzdbedit_go;
    v_sfoglia: TRzRapidFireButton;
    v_immagine_documento_allegato: TRzRapidFireButton;
    v_avviso_presenza_documenti: TRzDBCheckBox;
    v_avviso_kit_completo: TRzDBCheckBox;
    RzLabel16: TRzLabel;
    v_giorni_consegna_ordini: trzdbnumericedit_go;
    tab_control_oggetto: TRzPageControl;
    tab_pagina1_oggetto: TRzTabSheet;
    tab_pagina2_oggetto: TRzTabSheet;
    tab_pagina3_oggetto: TRzTabSheet;
    tab_pagina4_oggetto: TRzTabSheet;
    tab_pagina5_oggetto: TRzTabSheet;
    tab_pagina6_oggetto: TRzTabSheet;
    v_oggetto_mail: trzdbedit_go;
    v_oggetto_mail_lingua_01: trzdbedit_go;
    v_oggetto_mail_lingua_02: trzdbedit_go;
    v_oggetto_mail_lingua_03: trzdbedit_go;
    v_oggetto_mail_lingua_04: trzdbedit_go;
    v_oggetto_mail_lingua_05: trzdbedit_go;
    v_durc_obbligatorio: TRzDBCheckBox;
    v_avvisi_documento_stampato_cliente: TRzDBCheckBox;
    v_stampa_ordini_aperti: TRzDBCheckBox;
    v_password_chiusura_documento: trzdbedit_go;
    RzLabel17: TRzLabel;
    v_iva_bloccata: TRzDBCheckBox;
    v_messaggio_interattivo: TRzDBCheckBox;
    v_iva_spese_testata: TRzDBCheckBox;
    v_usare_come_modello: TRzDBCheckBox;
    v_usa_griglia_input: TRzDBCheckBox;
    v_solo_righe_documento: TRzDBCheckBox;
    RzLabel20: TRzLabel;
    v_tiv_codice_agevolata: trzdbedit_go;
    trzdbeditdescrizione_go2: trzdbeditdescrizione_go;
    tiv_agevolata: TMyQuery_go;
    tiv_agevolata_ds: TMyDataSource;
    RzLabel21: TRzLabel;
    v_calcolo_disponibilita_vendite: trzdbcombobox_go;
    v_no_sdi: TRzDBCheckBox;
    RzLabel22: TRzLabel;
    v_tipo_documento_fa: trzdbcombobox_go;
    v_ordine_pianificato: TRzDBCheckBox;
    RzLabel23: TRzLabel;
    v_tco_codice_ecobonus: trzdbedit_go;
    rzdbeditdescrizione_go15: trzdbeditdescrizione_go;
    tco_ecobonus: TMyQuery_go;
    tco_ecobonus_ds: TMyDataSource;
    v_stampa_standard_preventivo: TRzDBCheckBox;
    v_ignora_ddt_sezione_21_fe: TRzDBCheckBox;
    v_includi_ordini_sezione_21_fe: TRzDBCheckBox;
    RzLabel24: TRzLabel;
    v_protocollo_tls: trzdbcombobox_go;
    RzGroupBox1: TRzGroupBox;
    v_reso_call_off_stock: TRzDBCheckBox;
    RzLabel25: TRzLabel;
    v_campo_extra_primanota: trzdbcombobox_go;
    campi_extra: TMyQuery_go;
    RzGroupBox2: TRzGroupBox;
    v_gestione_punti_negozio: TRzDBCheckBox;
    v_tipo_gestione_punti_negozio: trzdbcombobox_go;
    v_documento_collegato: TRzRapidFireButton;
    v_obsoleto: TRzDBCheckBox;
    //modifica
    ah6_tab_personalizzati: TRzTabSheet;
    v_ah6_commessa_obbligatoria: TRzDBCheckBox;
    //modifica fine

    procedure v_codiceExit(Sender: TObject);
    procedure v_descrizioneExit(Sender: TObject);
    procedure v_tipo_documentoExit(Sender: TObject);
    procedure pannello_campiEnter(Sender: TObject);
    procedure v_tipo_documentoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure v_tco_codiceExit(Sender: TObject);
    procedure v_tmo_codiceExit(Sender: TObject);
    procedure v_data_inizio_trasportoExit(Sender: TObject);
    procedure v_ora_inizio_trasportoExit(Sender: TObject);
    procedure v_numerazioneExit(Sender: TObject);
    procedure v_tdo_codice_differiteExit(Sender: TObject);
    procedure v_tcd_codice_inizioExit(Sender: TObject);
    procedure v_tcd_codice_fineExit(Sender: TObject);
    procedure v_tma_codiceExit(Sender: TObject);
    procedure pannello_codiceEnter(Sender: TObject);
    procedure v_tdo_codice_evasione_direttaExit(Sender: TObject);
    procedure v_sfogliaClick(Sender: TObject);
    procedure v_documento_allegatoExit(Sender: TObject);
    procedure v_documento_allegatoChange(Sender: TObject);
    procedure v_immagine_documento_allegatoClick(Sender: TObject);
    procedure v_tab_codiceExit(Sender: TObject);
    procedure v_tdo_codice_conto_venditaExit(Sender: TObject);
    procedure v_tdo_codice_conto_venditaEnter(Sender: TObject);
    procedure v_dit_codice_collegatoExit(Sender: TObject);
    procedure v_cli_codice_collegatoExit(Sender: TObject);
    procedure v_sfoglia_templateClick(Sender: TObject);
    procedure v_templateExit(Sender: TObject);
    procedure v_traduzioneClick(Sender: TObject);
    procedure pannello_campiExit(Sender: TObject);
    procedure v_traduzione_testo_mailClick(Sender: TObject);
    procedure v_causale_trasportoEnter(Sender: TObject);
    procedure v_tdo_codice_preventivoEnter(Sender: TObject);
    procedure v_tdo_codice_preventivoExit(Sender: TObject);
    procedure v_ttc_codiceExit(Sender: TObject);
    procedure tab_control_testo_mail_excelExit(Sender: TObject);
    procedure tab_control_testo_mail_excelEnter(Sender: TObject);
    procedure v_traduzione_testo_mail_excelClick(Sender: TObject);
    procedure v_documento_collegatoClick(Sender: TObject);
    procedure v_cen_codiceExit(Sender: TObject);
    procedure v_tvc_codiceExit(Sender: TObject);
    procedure pannello_codiceExit(Sender: TObject);
    procedure v_carica_marchioClick(Sender: TObject);
    procedure v_cancella_marchioClick(Sender: TObject);
    procedure v_cartella_allegati_automaticiEnter(Sender: TObject);
    procedure v_cartella_allegati_automaticiExit(Sender: TObject);
    procedure v_sfoglia_cartella_documentiClick(Sender: TObject);
    procedure v_prg_codice_riferimentoExit(Sender: TObject);
    procedure v_note_saldoExit(Sender: TObject);
    procedure v_tiv_codice_agevolataExit(Sender: TObject);
    procedure tab_control_noteEnter(Sender: TObject);
    procedure tab_control_noteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_tco_codice_ecobonusExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  protected
    crittografia_mail: tmyencryptor;
    tabella_controllo_tdo_conto_vendita: tmyquery_go;
    tabella_controllo_tdo_conto_vendita_ds: tmydatasource;
    fattura_professionisti: boolean;
    tipo_documento_old, numerazione_old, tco_codice_old, tdo_codice_differite_old: string;

    procedure codice_controllo;
    procedure descrizione_controllo;
    procedure abilita_tipo_documento;
    procedure assegna_valore_tipo_documento;
    procedure assegna_valore_numerazione;
    procedure assegna_valore_tdo_evasione_diretta;
    procedure assegna_valore_tdo_preventivo;
    procedure modulo_tco_codice_controllo;
    procedure tco_codice_controllo(blocco: boolean);
    procedure tmo_codice_controllo(blocco: boolean);
    procedure tma_codice_controllo(blocco: boolean);
    procedure tdo_codice_differite_controllo(blocco: boolean);
    procedure tcd_codice_inizio_controllo(blocco: boolean);
    procedure tcd_codice_fine_controllo(blocco: boolean);
    procedure tdo_codice_evasione_diretta_controllo(blocco: boolean);
    procedure tab_codice_controllo(blocco: boolean);
    procedure tdo_codice_conto_vendita_controllo(blocco: boolean);
    procedure dit_codice_collegato_controllo(blocco: boolean);
    procedure cli_codice_collegato_controllo(blocco: boolean);
    procedure v_tiv_codice_agevolata_controllo(blocco: boolean);
    procedure tdo_codice_preventivo_controllo(blocco: boolean);
    procedure ttc_codice_controllo(blocco: boolean);
    procedure cen_codice_controllo(blocco: boolean);
    procedure tvc_codice_controllo(blocco: boolean);
    procedure v_cartella_allegati_automatici_controllo;
    procedure v_prg_codice_riferimento_controllo(blocco: boolean);
    procedure note_saldo_controllo;
    procedure tco_codice_ecobonus_controllo(blocco: boolean);

    procedure documento_allegato_controllo;
    procedure abilita_immagine_documento_allegato;
    procedure template_controllo;

    procedure carica_marchio;
  public
    procedure visualizza_descrizioni; override;
    procedure abilitazioni; override;
    procedure assegna_codice; override;
    procedure controllo_cancella; override;
    procedure controllo_codice; override;
    procedure controllo_campi; override;
    procedure duplica; override;
    procedure before_post; override;
    procedure get_codice_archivio; override;
  end;

implementation

{$r *.dfm}


uses 
  DMARC, GGGESTDOCOLL, ZZCONTROLLO_INTEGRITA;

//******************************************************************************
// procedure e funzioni da personalizzare (verranno mantenute da inheritare)
//******************************************************************************

procedure TGESTDO.assegna_codice;
begin
  inherited;
  codice := variant(v_codice.text);
  if codice <> '' then
  begin
    crittografia_mail.password := codice;
  end;
end;

procedure TGESTDO.controllo_cancella;
begin
  inherited;

  if esiste then
  begin
    controllo_cancella_edit := controllo_integrita('tdo_codice', v_codice.text);

    if controllo_cancella_edit then
    begin
      controllo_cancella_edit := controllo_integrita('ven_tdo_codice', v_codice.text);
    end;
  end;
end;

procedure TGESTDO.controllo_codice;
begin
  codice_controllo;
end;

procedure TGESTDO.controllo_campi;
begin
  descrizione_controllo;
  tco_codice_controllo(true);
  tmo_codice_controllo(true);
  tma_codice_controllo(true);
  tdo_codice_differite_controllo(true);
  tcd_codice_inizio_controllo(true);
  tcd_codice_fine_controllo(true);
  tdo_codice_evasione_diretta_controllo(true);
  tab_codice_controllo(true);
  note_saldo_controllo;
  documento_allegato_controllo;
  tdo_codice_conto_vendita_controllo(true);
  dit_codice_collegato_controllo(true);
  cli_codice_collegato_controllo(true);
  template_controllo;
  v_tiv_codice_agevolata_controllo(true);
  tdo_codice_preventivo_controllo(true);
  ttc_codice_controllo(true);
  cen_codice_controllo(true);
  tvc_codice_controllo(true);
  v_cartella_allegati_automatici_controllo;
  v_prg_codice_riferimento_controllo(true);
  tco_codice_ecobonus_controllo(true);
end;

procedure TGESTDO.before_post;
var
  prosegui: boolean;
begin
  if esiste and
    (parametro_sessione <> 'SBLOCCAMODIFICHE') and
    ((tipo_documento_old <> tabella.fieldbyname('tipo_documento').asstring) or
    (tco_codice_old <> tabella.fieldbyname('tco_codice').asstring) or
    (tdo_codice_differite_old <> tabella.fieldbyname('tdo_codice_differite').asstring) or
    (numerazione_old <> tabella.fieldbyname('numerazione').asstring)) and
    not controllo_integrita('tdo_codice', v_codice.text, '', '', '', '', '', 'modifica') then
  begin
    tabella.cancel;
    fuoco(v_descrizione);
    abort;
  end
  else
  begin
    prosegui := true;

    if (tabella.fieldbyname('tipo_documento_fa').asstring >= 'TD16') and
      (tabella.fieldbyname('tipo_documento_fa').asstring <= 'TD23') then
    begin
      if tabella.fieldbyname('tco_codice').asstring <> '' then
      begin
        messaggio(000, 'per le autofatture non va gestita' + slinebreak +
          'la causale contabile');
        prosegui := false;
      end;
      if tabella.fieldbyname('tmo_codice').asstring <> '' then
      begin
        messaggio(000, 'per le autofatture non va gestita' + slinebreak +
          'la causale movimenti magazzino');
        prosegui := false;
      end;
      if tabella.fieldbyname('analitica').asstring <> 'no' then
      begin
        messaggio(000, 'per le autofatture non va gestito' + slinebreak +
          'il collegamento con la contabilità analitica');
        prosegui := false;
      end;
      if tabella.fieldbyname('commesse').asstring <> 'no' then
      begin
        messaggio(000, 'per le autofatture non va gestito' + slinebreak +
          'il collegamento con la gestione commesse');
        prosegui := false;
      end;
      if tabella.fieldbyname('lotti').asstring <> 'no' then
      begin
        messaggio(000, 'per le autofatture non va gestito' + slinebreak +
          'il collegamento con la gestione lotti/matricole');
        prosegui := false;
      end;
      if tabella.fieldbyname('conto_terzi').asstring <> 'no' then
      begin
        messaggio(000, 'per le autofatture non va gestito' + slinebreak +
          'il collegamento con la gestione conto terzi');
        prosegui := false;
      end;
      if tabella.fieldbyname('rma').asstring <> 'no' then
      begin
        messaggio(000, 'per le autofatture non va gestito' + slinebreak +
          'il collegamento con la gestione del reso materiale autorizzato');
        prosegui := false;
      end;
    end;

    if prosegui then
    begin
      modulo_tco_codice_controllo;
      assegna_valore_tipo_documento;
      assegna_valore_numerazione;
      assegna_valore_tdo_evasione_diretta;
      assegna_valore_tdo_preventivo;

      if v_analitica.checked then
      begin
        if tco.fieldbyname('analitica').asstring = 'si' then
        begin
          messaggio(000, 'la gestione dell''analitica è utilizzata anche nella causale contabile');
          fuoco(v_descrizione);
          abort;
        end;

        if tdo_differite.fieldbyname('analitica').asstring = 'si' then
        begin
          messaggio(000, 'la gestione dell''analitica è utilizzata anche nel documento di fatturazione differita');
          fuoco(v_descrizione);
          abort;
        end;

        if read_tabella(arc.arcdit, 'tdo', 'tdo_codice_differite', tabella.fieldbyname('codice').asstring) then
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

        if tabella.fieldbyname('tiv_codice_agevolata').asstring <> '' then
        begin
          messaggio(000, 'la gestione dell''analitica non è compatibile con l''iva agevolata');
          fuoco(v_descrizione);
          abort;
        end;
      end;

      if v_commesse.checked then
      begin
        if tco.fieldbyname('commesse').asstring = 'si' then
        begin
          messaggio(000, 'la gestione delle commesse è utilizzata anche nella causale contabile');
          fuoco(v_descrizione);
          abort;
        end;

        if tdo_differite.fieldbyname('commesse').asstring = 'si' then
        begin
          messaggio(000, 'la gestione delle commesse è utilizzata anche nel documento di fatturazione differita');
          fuoco(v_descrizione);
          abort;
        end;

        if tmo.fieldbyname('commesse').asstring = 'si' then
        begin
          messaggio(000, 'la gestione delle commesse è utilizzata anche nella causale di magazzino');
          fuoco(v_descrizione);
          abort;
        end;

        if tabella.fieldbyname('tiv_codice_agevolata').asstring <> '' then
        begin
          messaggio(000, 'la gestione delle commesse non è compatibile con l''iva agevolata');
          fuoco(v_descrizione);
          abort;
        end;
      end;

      if v_lotti.checked then
      begin
        if tmo.fieldbyname('lotti').asstring = 'si' then
        begin
          messaggio(000, 'la gestione dei lotti è utilizzata anche nella causale di magazzino');
          fuoco(v_descrizione);
          abort;
        end;

        if tabella.fieldbyname('tiv_codice_agevolata').asstring <> '' then
        begin
          messaggio(000, 'la gestione dei lotti non è compatibile con l''iva agevolata');
          fuoco(v_descrizione);
          abort;
        end;
      end;

      if v_reso_call_off_stock.checked then
      begin
        if tabella.fieldbyname('tipo_documento').asstring <> 'ddt fornitori' then
        begin
          tabella.fieldbyname('reso_call_off_stock').asstring := 'no';
        end;
      end;

      inherited;
    end
    else
    begin
      fuoco(v_descrizione);
      abort;
    end;
  end;
end;

procedure TGESTDO.modulo_tco_codice_controllo;
begin
  //if read_tabella(arc.arcdit, 'tco', 'codice', v_tco_codice.text) then
  if v_tco_codice.text <> '' then
  begin
    if ((v_tipo_documento.text = 'corrispettivo') and
      (tco.fieldbyname('tipo_registro_iva').asstring <> 'corrispettivi')) then
    begin
      messaggio(000, 'c''è incompatibilità tra il tipo documento [corrispettivo]' + #13 +
        'e il registro iva della causale contabile [diverso da corrispettivi]');
      v_tipo_documento.setfocus;
      abort;
    end;

    if ((v_tipo_documento.text <> 'corrispettivo') and ((v_tipo_documento.text <> 'fattura immediata') or
      (v_tipo_documento.text <> 'nota credito')) and (tco.fieldbyname('tipo_registro_iva').asstring = 'corrispettivi')) then
    begin
      messaggio(000, 'c''è incompatibilità tra il tipo documento' + #13 +
        'e il registro iva della causale contabile [corrispettivi]');
      v_tipo_documento.setfocus;
      abort;
    end;

    if ((v_tipo_documento.text = 'nota credito') and
      (tco.fieldbyname('segno_registro_iva').asstring <> 'decrementa')) then
    begin
      messaggio(000, 'c''è incompatibilità tra il tipo documento [nota credito]' + #13 +
        'e il segno registro iva della causale contabile [incrementa]');
      //v_tipo_documento.setfocus;
      //abort;
    end;

    if ((v_tipo_documento.text <> 'nota credito') and
      (tco.fieldbyname('segno_registro_iva').asstring <> '') and
      (tco.fieldbyname('segno_registro_iva').asstring <> 'incrementa')) then
    begin
      messaggio(200, 'il segno registro iva della causale contabile [decrementa]' + #13 +
        'potrebbe essere incompatibile con il tipo documento');
    end;
  end;
end;

//******************************************************************************
// gestione campi da inserire programma per programma ex novo
//******************************************************************************

procedure TGESTDO.FormCreate(Sender: TObject);
var
  larghezza, altezza, divisore: double;
begin
  crittografia_mail := tmyencryptor.create(nil);
  crittografia_mail.dataheader := ehnone;
  crittografia_mail.encryptionalgorithm := eatripledes;
  crittografia_mail.password := 'GO';
  tabella.encryption.encryptor := crittografia_mail;
  tabella.encryption.fields := 'user_password_pec, user_password';

  tabella_controllo_tdo_conto_vendita := tmyquery_go.create(self);
  tabella_controllo_tdo_conto_vendita_ds := tmydatasource.create(self);
  tabella_controllo_tdo_conto_vendita_ds.dataset := tabella_controllo_tdo_conto_vendita;
  tabella_controllo_tdo_conto_vendita.connection := arc.arcdit;
  tabella_controllo_tdo_conto_vendita.sql.text := 'select codice, descrizione, tipo_documento, tdo_codice_differite from tdo where codice = :codice';
  v_tdo_descrizione_conto_vendita.datasource := tabella_controllo_tdo_conto_vendita_ds;
  v_tdo_descrizione_conto_vendita.datafield := 'descrizione';

  inherited;

  opendialog.initialdir := cartella_file + 'archiviazione_documenti';
  opendialog.filter := 'Ricerca documento (*.*)|*.*';

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

  if (arc.dit.fieldbyname('art_codice_cassa_professionisti').asstring = '')
    or (arc.dit.fieldbyname('gen_codice_ritenuta_acconto').asstring = '')
    or (arc.dit.fieldbyname('tco_codice_ritenuta_acconto').asstring = '')
    or (arc.dit.fieldbyname('tpe_codice').asstring = '') then
  begin
    fattura_professionisti := false;
  end
  else
  begin
    fattura_professionisti := true;
  end;

  try
    larghezza := arc.dit.fieldbyname('marchio_larghezza').asfloat / 324;
  except
    larghezza := 0;
  end;
  try
    altezza := arc.dit.fieldbyname('marchio_altezza').asfloat / 86;
  except
    altezza := 0;
  end;
  if (larghezza <> 0) and (altezza <> 0) then
  begin
    divisore := larghezza;
    if altezza > divisore then
    begin
      divisore := altezza;
    end;
    v_marchio_immagine.width := trunc(arc.dit.fieldbyname('marchio_larghezza').asfloat / divisore);
    v_marchio_immagine.height := trunc(arc.dit.fieldbyname('marchio_altezza').asfloat / divisore);
  end;

  v_obsoleto.enabled := supervisore_utente or (arc.utn.fieldbyname('manutentore').asstring = 'si');
end;

procedure TGESTDO.FormDestroy(Sender: TObject);
begin
  inherited;

  crittografia_mail.free;
end;

procedure TGESTDO.FormShow(Sender: TObject);
begin
  inherited;

  read_tabella(campi_extra);
  v_campo_extra_primanota.items.clear;
  v_campo_extra_primanota.values.clear;

  v_campo_extra_primanota.items.add('');
  v_campo_extra_primanota.values.add('');

  while not campi_extra.eof do
  begin
    v_campo_extra_primanota.items.add(campi_extra.fieldbyname('colonna').asstring);
    v_campo_extra_primanota.values.add(campi_extra.fieldbyname('colonna').asstring);

    campi_extra.next;
  end;
  campi_extra.close;


  v_tipo_documento_fa.items.clear;
  v_tipo_documento_fa.items.add('');
  v_tipo_documento_fa.items.add('TD01 - Fattura (Beni e Servizi)');
  v_tipo_documento_fa.items.add('TD02 - Acconto/anticipo su fattura');
  v_tipo_documento_fa.items.add('TD03 - Acconto/anticipo su parcella');
  v_tipo_documento_fa.items.add('TD04 - Nota di credito');
  v_tipo_documento_fa.items.add('TD05 - Nota di debito');
  v_tipo_documento_fa.items.add('TD06 - Parcella');
  v_tipo_documento_fa.items.add('TD16 - Integrazione fattura reverse charge interno');
  v_tipo_documento_fa.items.add('TD17 - Integrazione/Autofattura acquisto servizi dall''estero');
  v_tipo_documento_fa.items.add('TD18 - Integrazione acquisto beni intracomunitari');
  v_tipo_documento_fa.items.add('TD19 - Integrazione/Autofattura acquisto beni ex art. 17 DPR 633/72');
  v_tipo_documento_fa.items.add('TD20 - Autofattura per regolarizzazione e integrazione delle fatture (ex art. 6 c.9-bis d.lgs. 471/97 o art.46 c.5 D.L. 331/93)');
  v_tipo_documento_fa.items.add('TD21 - Autofattura per splafonamento');
  v_tipo_documento_fa.items.add('TD22 - Estrazione beni da deposito IVA');
  v_tipo_documento_fa.items.add('TD23 - Estrazione beni da deposito IVA con versamento IVA');
  v_tipo_documento_fa.items.add('TD24 - Fattura differita art 21 comma 4 lett. a)');
  v_tipo_documento_fa.items.add('TD25 - Fattura differita art 21 comma 4 terzo periodo lett. b)');
  v_tipo_documento_fa.items.add('TD26 - Cessione beni ammortizzabili e per passaggi interni ex art. 36 DPR 633/72');
  v_tipo_documento_fa.items.add('TD27 - Fattura autoconsumo o cessioni gratuite senza rivalsa');
  v_tipo_documento_fa.items.add('TD29 - Comunicazione per omessa o irregolare fatturazione (art. 6, comma 8, D.Lgs. 471/97)');

  v_tipo_documento_fa.values.clear;
  v_tipo_documento_fa.values.add('');
  v_tipo_documento_fa.values.add('TD01');
  v_tipo_documento_fa.values.add('TD02');
  v_tipo_documento_fa.values.add('TD03');
  v_tipo_documento_fa.values.add('TD04');
  v_tipo_documento_fa.values.add('TD05');
  v_tipo_documento_fa.values.add('TD06');
  v_tipo_documento_fa.values.add('TD16');
  v_tipo_documento_fa.values.add('TD17');
  v_tipo_documento_fa.values.add('TD18');
  v_tipo_documento_fa.values.add('TD19');
  v_tipo_documento_fa.values.add('TD20');
  v_tipo_documento_fa.values.add('TD21');
  v_tipo_documento_fa.values.add('TD22');
  v_tipo_documento_fa.values.add('TD23');
  v_tipo_documento_fa.values.add('TD24');
  v_tipo_documento_fa.values.add('TD25');
  v_tipo_documento_fa.values.add('TD26');
  v_tipo_documento_fa.values.add('TD27');
  v_tipo_documento_fa.values.add('TD29');
end;

procedure TGESTDO.v_codiceExit(Sender: TObject);
begin
  inherited;
  codice_controllo;
end;

procedure TGESTDO.codice_controllo;
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

procedure TGESTDO.v_descrizioneExit(Sender: TObject);
begin
  inherited;
  descrizione_controllo;
end;

procedure TGESTDO.v_dit_codice_collegatoExit(Sender: TObject);
begin
  inherited;
  dit_codice_collegato_controllo(true);
end;

procedure TGESTDO.dit_codice_collegato_controllo(blocco: boolean);
begin
  tabella_controllo(true, dit_collegato, v_dit_codice_collegato, blocco, tab_control, tab_pagina3, tabella);
end;

procedure TGESTDO.descrizione_controllo;
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

procedure TGESTDO.v_tipo_documentoExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    assegna_valore_tipo_documento;
  end;
end;

procedure TGESTDO.v_tiv_codice_agevolataExit(Sender: TObject);
begin
  inherited;
  v_tiv_codice_agevolata_controllo(true);
end;

procedure TGESTDO.v_tiv_codice_agevolata_controllo(blocco: boolean);
begin
  tabella_controllo(true, tiv_agevolata, v_tiv_codice_agevolata, blocco, tab_control, tab_pagina3, tabella);
end;

procedure TGESTDO.pannello_campiEnter(Sender: TObject);
begin
  inherited;
  if esiste then
  begin
    if arc_prg.fieldbyname('abr_id').asinteger = 0 then
    begin
      tool_f7.enabled := true;
    end;
    v_documento_collegato.enabled := true;
  end
  else
  begin
    abilita_tipo_documento;
    v_documento_collegato.enabled := false;
  end;
  v_traduzione.enabled := true;
end;

procedure TGESTDO.pannello_campiExit(Sender: TObject);
begin
  inherited;
  v_traduzione.enabled := false;
  v_documento_collegato.enabled := false;
end;

procedure TGESTDO.abilita_tipo_documento;
begin
  inherited;

  if (v_tipo_documento.text = 'fattura accompagnatoria') or
    (v_tipo_documento.text = 'fattura immediata') then
  begin
    abilita_campo(v_gestione_punti_negozio);
  end
  else
  begin
    disabilita_campo(v_gestione_punti_negozio);
  end;

  if (copy(v_tipo_documento.text, 1, 10) = 'preventivo') or (v_tipo_documento.text = 'ordine') then
  begin
    abilita_campo(v_stampa_standard_preventivo);
  end
  else
  begin
    disabilita_campo(v_stampa_standard_preventivo);
  end;

  if (copy(v_tipo_documento.text, 1, 7) = 'fattura') or (v_tipo_documento.text = 'nota credito') then
  begin
    abilita_campo(v_tipo_documento_fa);
    abilita_campo(v_tipo_gestione_punti_negozio);
  end
  else
  begin
    disabilita_campo(v_tipo_documento_fa);
    disabilita_campo(v_tipo_gestione_punti_negozio);
  end;

  if (v_tipo_documento.text = 'ddt') or (v_tipo_documento.text = 'bolla') then
  begin
    abilita_campo(v_ignora_ddt_sezione_21_fe);
  end
  else
  begin
    disabilita_campo(v_ignora_ddt_sezione_21_fe);
  end;

  if (copy(v_tipo_documento.text, 1, 7) = 'fattura') or (v_tipo_documento.text = 'nota credito') then
  begin
    abilita_campo(v_includi_ordini_sezione_21_fe);
    abilita_campo(v_campo_extra_primanota);
  end
  else
  begin
    disabilita_campo(v_includi_ordini_sezione_21_fe);
    disabilita_campo(v_campo_extra_primanota);
  end;

  disabilita_campo(v_no_sdi);

  v_tco_codice.enabled := true;
  v_tmo_codice.enabled := true;
  v_tma_codice.enabled := true;
  v_causale_trasporto.enabled := true;
  v_data_inizio_trasporto.enabled := true;
  v_ora_inizio_trasporto.enabled := true;
  v_tdo_codice_differite.Enabled := true;
  abilita_campo(v_transazione_intra);
  v_modalita_erogazione_intra.enabled := true;
  v_analitica.enabled := true;
  v_controllo_documenti_livello_sup.enabled := true;
  v_controllo_articolo_livello_sup.enabled := true;
  v_gestione_configurazione.enabled := true;
  v_rma.enabled := false;
  v_note_documenti_derivati.enabled := false;
  v_esporre_scadenziari.enabled := false;

  v_commesse.enabled := false;
  v_lotti.enabled := true;
  v_conto_terzi.enabled := true;
  v_immagine_articolo.enabled := false;
  v_immagine_articolo_ordini.enabled := false;
  v_richiesta_accettazione.enabled := false;
  v_prezzo_bloccato.enabled := false;
  v_fattura_professionisti.enabled := false;
  v_tdo_codice_evasione_diretta.enabled := false;
  v_tab_codice.enabled := false;
  v_consolidamento.enabled := false;
  v_emissione_scontrino.enabled := false;
  v_controllo_revisione.enabled := false;
  v_duplica_ordini_clienti.enabled := false;

  v_tco_codice.color := clwindow;
  v_tmo_codice.color := clwindow;
  v_tma_codice.color := clwindow;
  v_causale_trasporto.color := clwindow;
  v_tdo_codice_differite.color := clwindow;
  v_transazione_intra.color := clwindow;
  v_tdo_codice_evasione_diretta.color := clbtnface;
  v_tab_codice.color := clbtnface;

  disabilita_campo(v_stampa_ordini_aperti);
  disabilita_campo(v_ordine_pianificato);

  groupbox2.caption := 'note clienti e articoli';
  v_note_cliente.caption := 'stampa note clienti';

  if v_tipo_documento.text = 'preventivo' then
  begin
    abilita_campo(v_ordine_pianificato);
  end;

  if v_tipo_documento.text = 'ddt fornitori' then
  begin
    groupbox2.caption := 'note fornitori e articoli';
    v_note_cliente.caption := 'stampa note fornitori';

    v_tco_codice.enabled := false;
    v_tdo_codice_differite.Enabled := false;
    v_transazione_intra.enabled := false;
    disabilita_campo(v_modalita_erogazione_intra);
    v_analitica.enabled := false;
    v_evadere_note.enabled := false;
    v_controllo_documenti_livello_sup.enabled := false;
    v_controllo_articolo_livello_sup.enabled := false;
    v_tab_codice.enabled := true;
    v_gestione_configurazione.enabled := false;
    v_scheda_trasporto.enabled := true;
    v_rma.enabled := true;

    v_tco_codice.color := clbtnface;
    v_tdo_codice_differite.color := clbtnface;
    v_transazione_intra.color := clbtnface;
    v_tab_codice.color := clwindow;
  end;

  if (v_tipo_documento.text = 'bolla') or (v_tipo_documento.text = 'ddt') then
  begin
    v_tco_codice.enabled := false;
    v_tab_codice.enabled := true;
    v_tco_codice.color := clbtnface;
    v_tab_codice.color := clwindow;
    v_commesse.enabled := true;
    v_scheda_trasporto.enabled := true;

    if v_tipo_documento.text = 'ddt' then
    begin
      v_rma.enabled := true;
    end;

    v_evadere_note.enabled := true;
    if trim(v_tdo_codice_differite.text) = '' then
    begin
      v_evadere_note.enabled := false;
      v_controllo_documenti_livello_sup.enabled := false;
      v_controllo_articolo_livello_sup.enabled := false;
    end;
  end;

  if copy(v_tipo_documento.text, 1, 10) = 'preventivo' then
  begin
    v_tco_codice.enabled := false;
    v_tmo_codice.enabled := false;
    v_tma_codice.enabled := false;
    v_causale_trasporto.enabled := false;
    v_data_inizio_trasporto.enabled := false;
    v_ora_inizio_trasporto.enabled := false;
    v_tdo_codice_differite.Enabled := false;
    v_transazione_intra.enabled := false;
    disabilita_campo(v_modalita_erogazione_intra);
    v_analitica.enabled := false;
    v_lotti.enabled := false;
    v_conto_terzi.enabled := false;
    v_immagine_articolo.enabled := true;
    v_richiesta_accettazione.enabled := true;
    v_prezzo_bloccato.enabled := true;
    v_evadere_note.enabled := true;
    v_tdo_codice_evasione_diretta.enabled := true;
    v_controllo_documenti_livello_sup.enabled := false;
    v_controllo_articolo_livello_sup.enabled := false;
    v_scheda_trasporto.enabled := false;
    v_controllo_revisione.enabled := true;
    //modifica
    v_commesse.enabled := true;
    //modifica fine

    v_tco_codice.color := clbtnface;
    v_tmo_codice.color := clbtnface;
    v_tma_codice.color := clbtnface;
    v_causale_trasporto.color := clbtnface;
    v_tdo_codice_differite.color := clbtnface;
    v_transazione_intra.color := clbtnface;
    v_tdo_codice_evasione_diretta.color := clwindow;

    if v_tipo_documento.text = 'preventivo nominativi' then
    begin
      v_tdo_codice_evasione_diretta.enabled := false;
      v_tdo_codice_evasione_diretta.color := clbtnface;
    end;
  end;

  if v_tipo_documento.text = 'ordine' then
  begin
    abilita_campo(v_stampa_ordini_aperti);

    v_tco_codice.enabled := false;
    v_tmo_codice.enabled := false;
    v_causale_trasporto.enabled := false;
    v_data_inizio_trasporto.enabled := false;
    v_ora_inizio_trasporto.enabled := false;
    v_tdo_codice_differite.Enabled := false;
    v_transazione_intra.enabled := false;
    disabilita_campo(v_modalita_erogazione_intra);
    v_analitica.enabled := false;
    v_conto_terzi.enabled := false;
    v_immagine_articolo_ordini.enabled := true;
    v_richiesta_accettazione.enabled := true;
    v_prezzo_bloccato.enabled := true;
    v_evadere_note.enabled := true;
    v_tdo_codice_evasione_diretta.enabled := true;
    v_commesse.enabled := true;
    v_scheda_trasporto.enabled := false;
    v_duplica_ordini_clienti.enabled := true;
    v_note_documenti_derivati.enabled := true;
    if fattura_professionisti then
    begin
      v_fattura_professionisti.enabled := true;
    end;
    v_esporre_scadenziari.enabled := true;

    v_tco_codice.color := clbtnface;
    v_tmo_codice.color := clbtnface;
    v_causale_trasporto.color := clbtnface;
    v_tdo_codice_differite.color := clbtnface;
    v_transazione_intra.color := clbtnface;
    v_tdo_codice_evasione_diretta.color := clwindow;
  end;

  if v_tipo_documento.text = 'corrispettivo' then
  begin
    v_causale_trasporto.enabled := false;
    v_data_inizio_trasporto.enabled := false;
    v_ora_inizio_trasporto.enabled := false;
    v_tdo_codice_differite.Enabled := false;
    v_transazione_intra.enabled := false;
    disabilita_campo(v_modalita_erogazione_intra);
    v_evadere_note.enabled := false;
    v_commesse.enabled := true;
    v_consolidamento.enabled := true;
    v_tdo_codice_evasione_diretta.enabled := true;
    v_scheda_trasporto.enabled := false;
    v_emissione_scontrino.enabled := true;

    v_causale_trasporto.color := clbtnface;
    v_tdo_codice_differite.color := clbtnface;
    v_transazione_intra.color := clbtnface;
    v_tdo_codice_evasione_diretta.color := clwindow;
  end;

  if v_tipo_documento.text = 'fattura accompagnatoria' then
  begin
    v_tdo_codice_differite.Enabled := false;
    v_evadere_note.enabled := false;
    v_commesse.enabled := true;
    v_tab_codice.enabled := true;
    v_consolidamento.enabled := true;
    v_scheda_trasporto.enabled := true;
    v_rma.enabled := true;

    v_tdo_codice_differite.color := clbtnface;
    v_tab_codice.color := clwindow;
  end;

  if (v_tipo_documento.text = 'fattura immediata') or (v_tipo_documento.text = 'nota credito') then
  begin
    v_causale_trasporto.enabled := false;
    v_data_inizio_trasporto.enabled := false;
    v_ora_inizio_trasporto.enabled := false;
    v_tdo_codice_differite.Enabled := false;
    v_evadere_note.enabled := false;
    v_commesse.enabled := true;
    if fattura_professionisti then
    begin
      v_fattura_professionisti.enabled := true;
    end;
    v_consolidamento.enabled := true;
    v_scheda_trasporto.enabled := false;

    v_causale_trasporto.color := clbtnface;
    v_tdo_codice_differite.color := clbtnface;

    if v_tipo_documento.text = 'fattura immediata' then
    begin
      v_gestione_configurazione.enabled := true;
    end
    else if v_tipo_documento.text = 'nota credito' then
    begin
      v_gestione_configurazione.enabled := false;
      v_rma.enabled := true;
    end;
  end;

  if v_tipo_documento.text = 'fattura differita' then
  begin
    v_tmo_codice.enabled := false;
    v_tma_codice.enabled := false;
    v_causale_trasporto.enabled := false;
    v_data_inizio_trasporto.enabled := false;
    v_ora_inizio_trasporto.enabled := false;
    v_tdo_codice_differite.Enabled := false;
    v_lotti.enabled := false;
    v_evadere_note.enabled := false;
    v_controllo_documenti_livello_sup.enabled := false;
    v_controllo_articolo_livello_sup.enabled := false;
    v_consolidamento.enabled := true;
    v_gestione_configurazione.enabled := false;
    v_scheda_trasporto.enabled := false;

    v_tmo_codice.color := clbtnface;
    v_tma_codice.color := clbtnface;
    v_causale_trasporto.color := clbtnface;
    v_tdo_codice_differite.color := clbtnface;
  end;

  if (v_tipo_documento.text = 'fattura immediata') or
    ((v_tipo_documento.text = 'bolla') and (v_tdo_codice_differite.text <> '')) then
  begin
    v_descrizione_documento_pro_forma.enabled := true;
    v_descrizione_documento_pro_forma.color := clwindow;

    v_tdo_codice_conto_vendita.enabled := true;
    v_tdo_codice_conto_vendita.color := clwindow;
  end
  else
  begin
    v_descrizione_documento_pro_forma.enabled := false;
    v_descrizione_documento_pro_forma.color := clbtnface;

    v_tdo_codice_conto_vendita.enabled := false;
    v_tdo_codice_conto_vendita.color := clbtnface;
  end;

  if (copy(v_tipo_documento.text, 1, 10) = 'preventivo') or (v_tipo_documento.text = 'ordine') then
  begin
    abilita_campo(v_usare_come_modello);
  end
  else
  begin
    disabilita_campo(v_usare_come_modello);
  end;

  if (copy(v_tipo_documento.text, 1, 7) = 'fattura') or (v_tipo_documento.text = 'nota credito') then
  begin
    abilita_campo(v_no_sdi);
  end;

  //call_off_stock
  disabilita_campo(v_reso_call_off_stock);
  if v_tipo_documento.text = 'ddt fornitori' then
  begin
    abilita_campo(v_reso_call_off_stock);
  end;
end;

procedure TGESTDO.v_tipo_documentoChange(Sender: TObject);
begin
  inherited;
  abilita_tipo_documento;
end;

procedure TGESTDO.assegna_valore_numerazione;
begin
  if not tco.isempty then
  begin
    if v_numerazione.Text <> tco.fieldbyname('serie_numerazione').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('numerazione').AsString := tco.fieldbyname('serie_numerazione').asstring;
      end;
    end;
  end;
end;

procedure TGESTDO.assegna_valore_tdo_preventivo;
begin
  if v_tipo_documento.text <> 'preventivo nominativi' then
  begin
    if v_tdo_codice_preventivo.text <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_preventivo').asstring := '';
      end;
    end;
  end;
end;

procedure TGESTDO.assegna_valore_tdo_evasione_diretta;
begin
  if v_tipo_documento.text = 'preventivo nominativi' then
  begin
    if v_tdo_codice_evasione_diretta.text <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_evasione_diretta').asstring := '';
      end;
    end;
  end;
end;

procedure TGESTDO.assegna_valore_tipo_documento;
begin
  if (copy(v_tipo_documento.text, 1, 7) <> 'fattura') and
    (v_tipo_documento.text <> 'nota credito') then
  begin
    if tabella.fieldbyname('tipo_gestione_punti_negozio').asstring <> 'nessuna' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tipo_gestione_punti_negozio').asstring := 'nessuna';
      end;
    end;
  end;

  if (v_tipo_documento.text <> 'ddt') and (v_tipo_documento.text <> 'bolla') then
  begin
    if tabella.fieldbyname('ignora_ddt_sezione_21_fe').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('ignora_ddt_sezione_21_fe').asstring := 'no';
      end;
    end;
  end;

  if copy(v_tipo_documento.text, 1, 7) <> 'fattura' then
  begin
    if tabella.fieldbyname('includi_ordini_sezione_21_fe').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('includi_ordini_sezione_21_fe').asstring := 'no';
        tabella.fieldbyname('campo_extra_prinmanota').asstring := '';
      end;
    end;
  end;

  if v_tipo_documento.text <> 'preventivo' then
  begin
    if tabella.fieldbyname('ordine_pianificato').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('ordine_pianificato').asstring := 'no';
      end;
    end;
  end;

  if copy(v_tipo_documento.text, 1, 10) = 'preventivo' then
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
    if tabella.fieldbyname('causale_trasporto').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('causale_trasporto').asstring := '';
      end;
    end;
    if tabella.fieldbyname('data_inizio_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('data_inizio_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('ora_inizio_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('ora_inizio_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_differite').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_differite').asstring := '';
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
    if tabella.fieldbyname('conto_terzi').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('conto_terzi').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tab_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tab_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('scheda_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('scheda_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_conto_vendita').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_conto_vendita').asstring := '';
      end;
    end;
  end;

  if (copy(v_tipo_documento.text, 1, 10) <> 'preventivo') and
    (v_tipo_documento.text <> 'ordine') then
  begin
    if tabella.fieldbyname('stampa_standard_preventivo').asstring <> 'si' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('stampa_standard_preventivo').asstring := 'si';
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
    if tabella.fieldbyname('causale_trasporto').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('causale_trasporto').asstring := '';
      end;
    end;
    if tabella.fieldbyname('data_inizio_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('data_inizio_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('ora_inizio_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('ora_inizio_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_differite').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_differite').asstring := '';
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
    if tabella.fieldbyname('conto_terzi').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('conto_terzi').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('immagine_articolo').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('immagine_articolo').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tab_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tab_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('scheda_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('scheda_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_conto_vendita').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_conto_vendita').asstring := '';
      end;
    end;
  end;

  if v_tipo_documento.text = 'corrispettivo' then
  begin
    if tabella.fieldbyname('causale_trasporto').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('causale_trasporto').asstring := '';
      end;
    end;
    if tabella.fieldbyname('data_inizio_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('data_inizio_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('ora_inizio_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('ora_inizio_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_differite').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_differite').asstring := '';
      end;
    end;
    if tabella.fieldbyname('transazione_intra').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('transazione_intra').asstring := '';
      end;
    end;
    if tabella.fieldbyname('immagine_articolo').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('immagine_articolo').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('richiesta_accettazione').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('richiesta_accettazione').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('prezzo_bloccato').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('prezzo_bloccato').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('evadere_note').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('evadere_note').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tab_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tab_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('scheda_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('scheda_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_conto_vendita').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_conto_vendita').asstring := '';
      end;
    end;
  end;

  if v_tipo_documento.text = 'fattura accompagnatoria' then
  begin
    if tabella.fieldbyname('tdo_codice_differite').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_differite').asstring := '';
      end;
    end;
    if tabella.fieldbyname('immagine_articolo').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('immagine_articolo').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('richiesta_accettazione').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('richiesta_accettazione').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('prezzo_bloccato').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('prezzo_bloccato').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('evadere_note').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('evadere_note').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_evasione_diretta').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_evasione_diretta').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_conto_vendita').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_conto_vendita').asstring := '';
      end;
    end;
  end;

  if (v_tipo_documento.text = 'fattura immediata') or (v_tipo_documento.text = 'nota credito') then
  begin
    if tabella.fieldbyname('causale_trasporto').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('causale_trasporto').asstring := '';
      end;
    end;
    if tabella.fieldbyname('data_inizio_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('data_inizio_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('ora_inizio_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('ora_inizio_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_differite').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_differite').asstring := '';
      end;
    end;
    if tabella.fieldbyname('immagine_articolo').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('immagine_articolo').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('richiesta_accettazione').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('richiesta_accettazione').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('prezzo_bloccato').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('prezzo_bloccato').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('evadere_note').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('evadere_note').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_evasione_diretta').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_evasione_diretta').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tab_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tab_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('scheda_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('scheda_trasporto').asstring := 'no';
      end;
    end;

    if v_tipo_documento.text = 'nota credito' then
    begin
      if tabella.fieldbyname('tdo_codice_conto_vendita').asstring <> '' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tdo_codice_conto_vendita').asstring := '';
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
    if tabella.fieldbyname('causale_trasporto').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('causale_trasporto').asstring := '';
      end;
    end;
    if tabella.fieldbyname('data_inizio_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('data_inizio_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('ora_inizio_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('ora_inizio_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_differite').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_differite').asstring := '';
      end;
    end;
    if tabella.fieldbyname('immagine_articolo').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('immagine_articolo').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('richiesta_accettazione').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('richiesta_accettazione').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('prezzo_bloccato').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('prezzo_bloccato').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('evadere_note').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('evadere_note').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_evasione_diretta').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_evasione_diretta').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tab_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tab_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('calcolo_margine').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('calcolo_margine').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('scheda_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('scheda_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_conto_vendita').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_conto_vendita').asstring := '';
      end;
    end;
  end;

  if v_tipo_documento.text = 'ddt fornitori' then
  begin
    if tabella.fieldbyname('tco_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tco_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_differite').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_differite').asstring := '';
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
    if tabella.fieldbyname('immagine_articolo').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('immagine_articolo').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('richiesta_accettazione').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('richiesta_accettazione').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('prezzo_bloccato').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('prezzo_bloccato').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('evadere_note').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('evadere_note').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_evasione_diretta').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_evasione_diretta').asstring := '';
      end;
    end;
    if tabella.fieldbyname('calcolo_margine').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('calcolo_margine').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('tdo_codice_conto_vendita').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_conto_vendita').asstring := '';
      end;
    end;
  end;

  if (v_tipo_documento.text = 'ddt') or (v_tipo_documento.text = 'bolla') then
  begin
    if tabella.fieldbyname('tco_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tco_codice').asstring := '';
      end;
    end;
    if tabella.fieldbyname('immagine_articolo').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('immagine_articolo').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('richiesta_accettazione').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('richiesta_accettazione').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('prezzo_bloccato').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('prezzo_bloccato').asstring := 'no';
      end;
    end;

    if (v_tipo_documento.text = 'ddt') then
    begin
      if tabella.fieldbyname('tdo_codice_conto_vendita').asstring <> '' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tdo_codice_conto_vendita').asstring := '';
        end;
      end;
    end;

    if (trim(v_tdo_codice_differite.text) = '') then
    begin
      if tabella.fieldbyname('evadere_note').asstring <> 'no' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('evadere_note').asstring := 'no';
        end;
      end;
      if tabella.fieldbyname('calcolo_margine').asstring <> 'no' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('calcolo_margine').asstring := 'no';
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('fatturazione_differita').asstring <> 'no' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('fatturazione_differita').asstring := 'no';
        end;
      end;
    end;

    (*
      if tabella.fieldbyname('tdo_codice_evasione_diretta').asstring <> '' then
      begin
      if tabella_edit(tabella) then
      begin
      tabella.fieldbyname('tdo_codice_evasione_diretta').asstring := '';
      end;
      end;
    *)
  end
  else
  begin
    if tabella.fieldbyname('fatturazione_differita').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('fatturazione_differita').asstring := 'no';
      end;
    end;
  end;

  if v_tipo_documento.text <> 'fattura immediata' then
  begin
    if tabella.fieldbyname('descrizione_documento_pro_forma').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('descrizione_documento_pro_forma').asstring := '';
      end;
    end;
  end;

  if v_tipo_documento.text <> 'ordine' then
  begin
    if tabella.fieldbyname('duplica_ordini_clienti').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('duplica_ordini_clienti').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('note_documenti_derivati').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('note_documenti_derivati').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('stampa_ordini_aperti').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('stampa_ordini_aperti').asstring := 'no';
      end;
    end;
  end;

  if (copy(v_tipo_documento.text, 1, 10) <> 'preventivo') and (v_tipo_documento.text <> 'ordine') then
  begin
    if tabella.fieldbyname('usare_come_modello').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('usare_come_modello').asstring := 'no';
      end;
    end;
  end;

  if not((copy(v_tipo_documento.text, 1, 7) = 'fattura') or (v_tipo_documento.text = 'nota credito')) then
  begin
    if tabella.fieldbyname('tipo_documento_fa').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tipo_documento_fa').asstring := '';
      end;
    end;
  end;

end;

procedure TGESTDO.v_tco_codiceExit(Sender: TObject);
begin
  inherited;
  tco_codice_controllo(true);
  if controllo and (v_tco_codice.text <> '') then
  begin
    if (tco.FieldByName('movimento_iva').asstring <> 'si') or
      ((tco.FieldByName('tipo_registro_iva').asstring <> 'vendite') and
      (tco.FieldByName('tipo_registro_iva').asstring <> 'corrispettivi') and
      (tco.FieldByName('tipo_registro_iva').asstring <> 'editoria')) then
    begin
      messaggio(000, 'la causale deve essere un movimento iva di vendita');
      tab_control.activepage := tab_pagina1;
      v_tco_codice.setfocus;
      abort;
    end;
    assegna_valore_numerazione;
  end;
end;

procedure TGESTDO.v_tco_codice_ecobonusExit(Sender: TObject);
begin
  inherited;
  tco_codice_ecobonus_controllo(true);
end;

procedure TGESTDO.tco_codice_ecobonus_controllo(blocco: boolean);
begin
  tabella_controllo(true, tco_ecobonus, v_tco_codice_ecobonus, blocco, tab_control, tab_collegamenti, tabella);
end;

procedure TGESTDO.tco_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tco, v_tco_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDO.v_tmo_codiceExit(Sender: TObject);
begin
  inherited;
  tmo_codice_controllo(true);
end;

procedure TGESTDO.v_traduzioneClick(Sender: TObject);
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

  try
    if tabella_edit(tabella) then
    begin
      arc.traduzione(tabella, v_causale_trasporto.text, 'causale_trasporto_lingua_01',
        'causale_trasporto_lingua_02', 'causale_trasporto_lingua_03',
        'causale_trasporto_lingua_04', 'causale_trasporto_lingua_05');
    end;
  finally
    screen.cursor := cursore;
  end;
end;

procedure TGESTDO.v_traduzione_testo_mailClick(Sender: TObject);
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

procedure TGESTDO.v_traduzione_testo_mail_excelClick(Sender: TObject);
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

procedure TGESTDO.v_ttc_codiceExit(Sender: TObject);
begin
  inherited;
  ttc_codice_controllo(true);
end;

procedure TGESTDO.v_tvc_codiceExit(Sender: TObject);
begin
  inherited;
  tvc_codice_controllo(true);
end;

procedure TGESTDO.ttc_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, ttc, v_ttc_codice, blocco, tab_control, tab_pagina3, tabella);
end;

procedure TGESTDO.tvc_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tvc, v_tvc_codice, blocco, tab_control, tab_pagina3, tabella);
end;

procedure TGESTDO.cen_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, cen, v_cen_codice, blocco, tab_control, tab_pagina3, tabella);
end;

procedure TGESTDO.tmo_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo, v_tmo_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDO.v_tma_codiceExit(Sender: TObject);
begin
  inherited;
  tma_codice_controllo(true);
end;

procedure TGESTDO.tma_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma, v_tma_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDO.v_cancella_marchioClick(Sender: TObject);
begin
  inherited;
  if tabella_edit(tabella) then
  begin
    tabella.fieldbyname('marchio_percorso').asstring := '';
  end;
  carica_marchio;
end;

procedure TGESTDO.v_carica_marchioClick(Sender: TObject);
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

procedure TGESTDO.v_cartella_allegati_automaticiEnter(Sender: TObject);
begin
  inherited;
  v_sfoglia_cartella_documenti.enabled := true;
end;

procedure TGESTDO.v_cartella_allegati_automaticiExit(Sender: TObject);
begin
  inherited;
  v_sfoglia_cartella_documenti.enabled := false;
  v_cartella_allegati_automatici_controllo;
end;

procedure TGESTDO.v_cartella_allegati_automatici_controllo;
begin
  if controllo and (v_cartella_allegati_automatici.text <> '') then
  begin
    if not directoryexists(v_cartella_allegati_automatici.text) then
    begin
      messaggio(002, label80.caption);
      tab_control.activepage := tab_marchio_documenti;
      if v_cartella_allegati_automatici.canfocus then
      begin
        v_cartella_allegati_automatici.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESTDO.v_causale_trasportoEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_causale_trasporto.text;
end;

procedure TGESTDO.v_cen_codiceExit(Sender: TObject);
begin
  inherited;
  cen_codice_controllo(true);
end;

procedure TGESTDO.v_cli_codice_collegatoExit(Sender: TObject);
begin
  inherited;
  cli_codice_collegato_controllo(true);
end;

procedure TGESTDO.cli_codice_collegato_controllo(blocco: boolean);
begin
  tabella_controllo(true, cli_collegato, v_cli_codice_collegato, blocco, tab_control, tab_pagina3, tabella);
end;

procedure TGESTDO.v_data_inizio_trasportoExit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TGESTDO.v_ora_inizio_trasportoExit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TGESTDO.v_prg_codice_riferimentoExit(Sender: TObject);
begin
  inherited;
  v_prg_codice_riferimento_controllo(true);
end;

procedure TGESTDO.v_prg_codice_riferimento_controllo(blocco: boolean);
begin
  tabella_controllo(true, prg, v_prg_codice_riferimento, blocco, tab_control, tab_marchio_documenti, tabella);
end;

procedure TGESTDO.v_note_saldoExit(Sender: TObject);
begin
  inherited;

  note_saldo_controllo;
end;

procedure TGESTDO.note_saldo_controllo;
begin
  inherited;
  if controllo then
  begin
    if v_note_saldo.text <> '' then
    begin
      if (pos('data_saldo', v_note_saldo.text) = 0) or (pos('importo_saldo', v_note_saldo.text) = 0) then
      begin
        messaggio(000, 'nel testo delle note situazione scadenze vanno indicate' + #13 +
          'le posizione della data [data_saldo] e dell''importo [importo_saldo]');
        fuoco(v_note_saldo);
        abort;
      end;
    end;
  end;
end;

procedure TGESTDO.v_numerazioneExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    assegna_valore_numerazione;
  end;
end;

procedure TGESTDO.v_tdo_codice_differiteExit(Sender: TObject);
begin
  inherited;
  tdo_codice_differite_controllo(true);
  if controllo and (v_tdo_codice_differite.text <> '') then
  begin
    if tdo_differite.fieldbyname('tipo_documento').asstring <> 'fattura differita' then
    begin
      messaggio(000, 'il documento deve essere una fattura differita');
      tab_control.activepage := tab_pagina1;
      v_tdo_codice_differite.setfocus;
      abort;
    end;
  end;
end;

procedure TGESTDO.tdo_codice_differite_controllo(blocco: boolean);
begin
  tabella_controllo(true, tdo_differite, v_tdo_codice_differite, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDO.v_tcd_codice_inizioExit(Sender: TObject);
begin
  inherited;
  tcd_codice_inizio_controllo(true);
end;

procedure TGESTDO.tcd_codice_inizio_controllo(blocco: boolean);
begin
  tabella_controllo(true, tcd_inizio, v_tcd_codice_inizio, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDO.v_tcd_codice_fineExit(Sender: TObject);
begin
  inherited;
  tcd_codice_fine_controllo(true);
end;

procedure TGESTDO.tcd_codice_fine_controllo(blocco: boolean);
begin
  tabella_controllo(true, tcd_fine, v_tcd_codice_fine, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDO.abilitazioni;
begin
  abilita_tipo_documento;
  abilita_immagine_documento_allegato;

  carica_marchio;
end;

procedure TGESTDO.visualizza_descrizioni;
begin
  tco_codice_controllo(false);
  tmo_codice_controllo(false);
  tma_codice_controllo(false);
  tdo_codice_differite_controllo(false);
  tcd_codice_inizio_controllo(false);
  tcd_codice_fine_controllo(false);
  tdo_codice_evasione_diretta_controllo(false);
  tab_codice_controllo(false);
  tdo_codice_conto_vendita_controllo(false);
  dit_codice_collegato_controllo(false);
  cli_codice_collegato_controllo(false);
  v_tiv_codice_agevolata_controllo(false);
  tdo_codice_preventivo_controllo(false);
  ttc_codice_controllo(false);
  cen_codice_controllo(false);
  tvc_codice_controllo(false);
  v_prg_codice_riferimento_controllo(false);
  tco_codice_ecobonus_controllo(false);
end;

procedure TGESTDO.pannello_codiceEnter(Sender: TObject);
begin
  inherited;
  tool_f7.Enabled := false;

  tab_control_oggetto.activepageindex := 0;
  tab_control_note.activepageindex := 0;
  tab_control_testo_mail_excel.activepageindex := 0;
end;

procedure TGESTDO.pannello_codiceExit(Sender: TObject);
begin
  inherited;

  carica_marchio;

  tipo_documento_old := tabella.fieldbyname('tipo_documento').asstring;
  tco_codice_old := tabella.fieldbyname('tco_codice').asstring;
  tdo_codice_differite_old := tabella.fieldbyname('tdo_codice_differite').asstring;
  numerazione_old := tabella.fieldbyname('numerazione').asstring;
end;

procedure tGESTDO.duplica;
begin
  titolo_form := 'Duplicazione causale documento';
  descrizione_codice := 'codice nuova causale';
  lunghezza_codice := 04;

  inherited;
end;

procedure TGESTDO.v_tdo_codice_evasione_direttaExit(Sender: TObject);
begin
  inherited;
  tdo_codice_evasione_diretta_controllo(true);
  if controllo and not tdo_evasione_diretta.isempty then
  begin
    if (v_tipo_documento.text = 'ordine') or (copy(v_tipo_documento.text, 1, 10) = 'preventivo') then
    begin
      if ((tdo_evasione_diretta.fieldbyname('tipo_documento').asstring <> 'bolla') and
        (tdo_evasione_diretta.fieldbyname('tipo_documento').asstring <> 'corrispettivo') and
        (tdo_evasione_diretta.fieldbyname('tipo_documento').asstring <> 'ddt') and
        (tdo_evasione_diretta.fieldbyname('tipo_documento').asstring <> 'fattura immediata') and
        (tdo_evasione_diretta.fieldbyname('tipo_documento').asstring <> 'fattura accompagnatoria')) then
      begin
        messaggio(000, 'il documento di evasione deve essere di tipo' + #13 +
          '"bolla" o "corrpettivo" o "ddt (di vendita)" o "fattura immediata" o "fattura accompagnatoria"');
        v_tdo_codice_evasione_diretta.setfocus;
        abort;
      end;
    end
    else if v_tipo_documento.text = 'corrispettivo' then
    begin
      if (tdo_evasione_diretta.fieldbyname('tipo_documento').asstring <> 'fattura immediata') then
      begin
        messaggio(000, 'il documento di evasione deve essere di tipo' + #13 + '"fattura immediata"');
        v_tdo_codice_evasione_diretta.setfocus;
        abort;
      end;
    end;
  end;
  if controllo then
  begin
    assegna_valore_tdo_evasione_diretta;
  end;
end;

procedure TGESTDO.v_tdo_codice_preventivoEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := 'preventivo';
end;

procedure TGESTDO.v_tdo_codice_preventivoExit(Sender: TObject);
begin
  inherited;
  tdo_codice_preventivo_controllo(true);
  if controllo then
  begin
    assegna_valore_tdo_preventivo;
  end;
end;

procedure TGESTDO.v_templateExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    if trim(v_template.text) <> '' then
    begin
      if pos('.RTM', uppercase(v_template.text)) = 0 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('template').asstring := tabella.fieldbyname('template').asstring + '.RTM';
        end;
      end;
    end;
  end;

  template_controllo;
end;

procedure TGESTDO.template_controllo;
var
  codice_base: string;
begin
  if controllo then
  begin
    if trim(v_template.text) <> '' then
    begin
      if copy(v_tipo_documento.text, 1, 10) = 'preventivo' then
      begin
        codice_base := 'STAPREV';
      end
      else if v_tipo_documento.text = 'ordine' then
      begin
        codice_base := 'STAORDV';
      end
      else if v_tipo_documento.text = 'bolla' then
      begin
        codice_base := 'STABOLV';
      end
      else if v_tipo_documento.text = 'corrispettivo' then
      begin
        codice_base := 'STACORV';
      end
      else if v_tipo_documento.text = 'ddt' then
      begin
        codice_base := 'STADDTV';
      end
      else if v_tipo_documento.text = 'ddt fornitori' then
      begin
        codice_base := 'STADDTF';
      end
      else if v_tipo_documento.text = 'fattura accompagnatoria' then
      begin
        codice_base := 'STAFAAV';
      end
      else if v_tipo_documento.text = 'fattura immediata' then
      begin
        codice_base := 'STAFAIV';
      end
      else if v_tipo_documento.text = 'fattura differita' then
      begin
        codice_base := 'STAFADV';
      end
      else if v_tipo_documento.text = 'nota credito' then
      begin
        codice_base := 'STANOCV';
      end;

      if not fileexists(cartella_report + 'report' + '\' + codice_base + '_' + trim(v_template.text)) and
        not fileexists(cartella_report + 'report_' + ditta + '\' + codice_base + '_' + trim(v_template.text)) and
        not fileexists(cartella_root_installazione + 'report' + '\' + codice_base + '_' + trim(v_template.text)) and
        not fileexists(cartella_root_installazione + 'report_' + ditta + '\' + codice_base + '_' + trim(v_template.text)) then
      begin
        messaggio(000, 'il modello di stampa non esiste');
        tab_control.activepage := tab_pagina3;
        v_template.setfocus;
        abort;
      end;
    end;
  end;
end;

procedure TGESTDO.tdo_codice_evasione_diretta_controllo(blocco: boolean);
begin
  tabella_controllo(true, tdo_evasione_diretta, v_tdo_codice_evasione_diretta, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDO.tdo_codice_preventivo_controllo(blocco: boolean);
begin
  if tabella.fieldbyname('tipo_documento').asstring = 'preventivo nominativi' then
  begin
    tabella_controllo(false, tdo_preventivo, v_tdo_codice_preventivo, blocco, tab_control, tab_pagina3, tabella);
  end
  else
  begin
    tabella_controllo(true, tdo_preventivo, v_tdo_codice_preventivo, blocco, tab_control, tab_pagina3, tabella);
  end;
end;

procedure TGESTDO.v_sfogliaClick(Sender: TObject);
begin
  inherited;

  opendialog.filename := v_documento_allegato.text;
  opendialog.execute;

  if opendialog.filename <> v_documento_allegato.text then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('documento_allegato').asstring := opendialog.filename;
    end;
  end;
  v_documento_allegato.setfocus;
end;

procedure TGESTDO.v_sfoglia_cartella_documentiClick(Sender: TObject);
const
  help = 0;
var
  cartella: widestring;
  cartella_documenti: string;
begin
  cartella := '';
  if selectdirectory('Cartella allegati automatici', cartella, cartella_documenti) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('cartella_allegati_automatici').asstring := cartella_documenti;
    end;
  end;
end;

procedure TGESTDO.v_sfoglia_templateClick(Sender: TObject);
var
  i: word;
  codice_base, nome_file: string;
begin
  inherited;

  if v_tipo_documento.text = 'preventivo' then
  begin
    codice_base := 'STAPREV';
  end
  else if v_tipo_documento.text = 'preventivo nominativi' then
  begin
    codice_base := 'STAPREVNOM';
  end
  else if v_tipo_documento.text = 'ordine' then
  begin
    codice_base := 'STAORDV';
  end
  else if v_tipo_documento.text = 'bolla' then
  begin
    codice_base := 'STABOLV';
  end
  else if v_tipo_documento.text = 'corrispettivo' then
  begin
    codice_base := 'STACORV';
  end
  else if v_tipo_documento.text = 'ddt' then
  begin
    codice_base := 'STADDTV';
  end
  else if v_tipo_documento.text = 'ddt fornitori' then
  begin
    codice_base := 'STADDTF';
  end
  else if v_tipo_documento.text = 'fattura accompagnatoria' then
  begin
    codice_base := 'STAFAAV';
  end
  else if v_tipo_documento.text = 'fattura immediata' then
  begin
    codice_base := 'STAFAIV';
  end
  else if v_tipo_documento.text = 'fattura differita' then
  begin
    codice_base := 'STAFADV';
  end
  else if v_tipo_documento.text = 'nota credito' then
  begin
    codice_base := 'STANOCV';
  end;

  opendialog.initialdir := cartella_report + 'report';
  opendialog.filter := 'Modello di stampa (*.RTM)|' + codice_base + '_' + '*.RTM';
  opendialog.execute;

  for i := length(opendialog.filename) downto 1 do
  begin
    if opendialog.filename[i] = '\' then
    begin
      break;
    end;
  end;
  nome_file := copy(opendialog.filename, i + 1, length(opendialog.filename));
  nome_file := copy(nome_file, length(codice_base) + 2, length(nome_file));

  if not fileexists(cartella_report + 'report' + '\' + codice_base + '_' + nome_file) and
    not fileexists(cartella_report + 'report_' + ditta + '\' + codice_base + '_' + nome_file) and
    not fileexists(cartella_root_installazione + 'report' + '\' + codice_base + '_' + nome_file) and
    not fileexists(cartella_root_installazione + 'report_' + ditta + '\' + codice_base + '_' + nome_file) then
  begin
    messaggio(000, 'non è stato selezionato un programma di stampa valido');
  end
  else
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('template').asstring := nome_file;
    end;
  end;
  v_template.setfocus;
end;

procedure TGESTDO.v_documento_allegatoExit(Sender: TObject);
begin
  inherited;
  documento_allegato_controllo;
end;

procedure TGESTDO.v_documento_collegatoClick(Sender: TObject);
var
  pr: tgestdocoll;
begin
  inherited;

  pr := tgestdocoll.create(nil);
  if pr.esegui_form then
  begin
    pr.codice := vararrayof([tabella.fieldbyname('codice').asstring, '']);
    pr.showmodal;
  end;
  pr.free;
end;

procedure TGESTDO.documento_allegato_controllo;
begin
  inherited;
  if controllo then
  begin
    if trim(v_documento_allegato.text) <> '' then
    begin
      if not fileexists(trim(v_documento_allegato.text)) then
      begin
        messaggio(000, 'il documento allegato non esiste');
        fuoco(v_documento_allegato);
        abort;
      end;
    end;
  end;
end;

procedure TGESTDO.abilita_immagine_documento_allegato;
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

procedure TGESTDO.v_documento_allegatoChange(Sender: TObject);
begin
  inherited;
  abilita_immagine_documento_allegato;
end;

procedure TGESTDO.v_immagine_documento_allegatoClick(Sender: TObject);
begin
  inherited;
  esegui(trim(v_documento_allegato.text));
end;

procedure TGESTDO.v_tab_codiceExit(Sender: TObject);
begin
  inherited;
  tab_codice_controllo(true);
end;

procedure TGESTDO.tab_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tab, v_tab_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTDO.tab_control_noteEnter(Sender: TObject);
begin
  inherited;
  v_traduzione_testo_mail.enabled := true;
end;

procedure TGESTDO.tab_control_noteExit(Sender: TObject);
begin
  inherited;
  v_traduzione_testo_mail.enabled := false;
end;

procedure TGESTDO.tab_control_testo_mail_excelEnter(Sender: TObject);
begin
  inherited;
  v_traduzione_testo_mail_excel.enabled := true;
end;

procedure TGESTDO.tab_control_testo_mail_excelExit(Sender: TObject);
begin
  inherited;
  v_traduzione_testo_mail_excel.enabled := false;
end;

procedure TGESTDO.v_tdo_codice_conto_venditaExit(Sender: TObject);
begin
  inherited;
  tdo_codice_conto_vendita_controllo(true);
  if controllo then
  begin
    if (tabella_controllo_tdo_conto_vendita.active) and (v_tdo_codice_conto_vendita.text <> '') then
    begin
      if tabella_controllo_tdo_conto_vendita.fieldbyname('tipo_documento').asstring <> 'ddt' then
      begin
        messaggio(000, 'il documento deve essere di tipo [ddt]');
        v_tdo_codice_conto_vendita.setfocus;
        abort;
      end
      else if tabella_controllo_tdo_conto_vendita.fieldbyname('tdo_codice_differite').asstring <> '' then
      begin
        messaggio(000, 'il documento non deve prevedere la fatturazione differita');
        v_tdo_codice_conto_vendita.setfocus;
        abort;
      end;
    end;
  end;
end;

procedure TGESTDO.tdo_codice_conto_vendita_controllo(blocco: boolean);
begin
  tabella_controllo(true, tabella_controllo_tdo_conto_vendita, v_tdo_codice_conto_vendita, blocco, tab_control, tab_pagina2, tabella);
end;

procedure TGESTDO.v_tdo_codice_conto_venditaEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := 'ddt';
end;

procedure TGESTDO.get_codice_archivio;
begin
  if screen.activecontrol = v_causale_trasporto then
  begin
    if variato_stringa <> codice_archivio then
    begin
      if read_tabella(arc.arcdit, 'ttr', 'codice', codice_archivio, 'descrizione') then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('causale_trasporto').asstring := archivio.fieldbyname('descrizione').asstring;
        end;
      end;
    end;
  end;
  inherited;
end;

procedure TGESTDO.carica_marchio;
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

registerclass(tgestdo);

end.
