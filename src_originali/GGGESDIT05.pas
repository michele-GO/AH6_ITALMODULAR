unit GGGESDIT05;

interface

uses 
  winapi.windows, winapi.messages, system.sysutils, system.variants, system.classes, vcl.graphics, vcl.controls, vcl.forms, 
  vcl.dialogs, GGFORMBASE, data.db, query_go, MyAccess, vcl.menus, 
  vcl.comctrls, RzTabs, vcl.toolwin, GGGESDIT, vcl.stdctrls, vcl.mask, 
  vcl.buttons, vcl.extctrls, vcl.dbctrls, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk, 
  RzRadChk, RzButton, RzSplit, RzCmboBx, RzPrgres, 
  RzSpnEdt, RzShellDialogs, RzDBCmbo, raizeedit_go, RzEdit, DBAccess, MemDS, 
  GGGESARC, Vcl.WinXCtrls, RzGroupBar;

type

  TGESDIT05 = class(TGESARC)
    v_codice: TRzDBEdit_go;
    bar: tmyquery_go;
    Label49: TRzlabel;
    v_tipo_inventario: TRzDBComboBox_go;
    lif: tmyquery_go;
    Label77: TRzlabel;
    v_tmo_codice_chiusura: TRzDBEdit_go;
    Label1: TRzlabel;
    v_tmo_codice_apertura: TRzDBEdit_go;
    Label2: TRzlabel;
    v_tmo_codice_rettifica_inventario: TRzDBEdit_go;
    GroupBox2: TGroupBox;
    Label3: TRzlabel;
    v_tmo_codice_finiti: TRzDBEdit_go;
    Label5: TRzlabel;
    v_tma_codice_finiti: TRzDBEdit_go;
    Label4: TRzlabel;
    v_tmo_codice_materie_prime: TRzDBEdit_go;
    Label7: TRzlabel;
    v_tma_codice_materie_prime: TRzDBEdit_go;
    Label6: TRzlabel;
    v_tla_codice: TRzDBEdit_go;
    Label12: TRzlabel;
    v_tda_codice_produzione_presso_te: TRzDBEdit_go;
    GroupBox3: TGroupBox;
    Label13: TRzlabel;
    v_tmo_codice_finiti_lavorazione: TRzDBEdit_go;
    Label15: TRzlabel;
    v_tmo_codice_materie_prime_lavora: TRzDBEdit_go;
    Label17: TRzlabel;
    v_tma_codice_lavorazione: TRzDBEdit_go;
    Label19: TRzlabel;
    v_tdo_codice_lavorazione: TRzDBEdit_go;
    v_magazzino_ridimensiona_griglia: TRzDbcheckbox;
    Label22: TRzlabel;
    v_costo_produzione: TRzDBComboBox_go;
    tab_pagina2: TRztabsheet;
    GroupBox1: TGroupBox;
    Label8: TRzlabel;
    Label9: TRzlabel;
    Label10: TRzlabel;
    Label11: TRzlabel;
    v_prima_copia_staordp: TRzDBEdit_go;
    v_seconda_copia_staordp: TRzDBEdit_go;
    v_quarta_copia_staordp: TRzDBEdit_go;
    v_terza_copia_staordp: TRzDBEdit_go;
    GroupBox4: TGroupBox;
    Label14: TRzlabel;
    Label16: TRzlabel;
    Label18: TRzlabel;
    Label20: TRzlabel;
    v_prima_copia_staordl: TRzDBEdit_go;
    v_seconda_copia_staordl: TRzDBEdit_go;
    v_quarta_copia_staordl: TRzDBEdit_go;
    v_terza_copia_staordl: TRzDBEdit_go;
    Label21: TRzlabel;
    v_valorizzazione_gestionale: TRzDBComboBox_go;
    v_varia_dsb_ordp: TRzDbcheckbox;
    Label23: TRzlabel;
    v_tipo_esplosione: TRzDBComboBox_go;
    Label24: TRzlabel;
    v_tla_codice_costo_standard: TRzDBEdit_go;
    tmo_rettifica_inventario: tmyquery_go;
    tmo_rettifica_inventario_ds: tmydatasource;
    RzDBEditDescrizione_go19: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go1: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go2: TRzDBEditDescrizione_go;
    tmo_chiusura: tmyquery_go;
    tmo_chiusura_ds: tmydatasource;
    tmo_apertura: tmyquery_go;
    tmo_apertura_ds: tmydatasource;
    RzDBEditDescrizione_go3: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go4: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go5: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go6: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go7: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go8: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go9: TRzDBEditDescrizione_go;
    tmo_finiti: tmyquery_go;
    tmo_finiti_ds: tmydatasource;
    tmo_materie_prime: tmyquery_go;
    tmo_materie_prime_ds: tmydatasource;
    tla: tmyquery_go;
    tla_ds: tmydatasource;
    tma_finiti: tmyquery_go;
    tma_finiti_ds: tmydatasource;
    tma_materie_prime: tmyquery_go;
    tma_materie_prime_ds: tmydatasource;
    tda_produzione_presso_terzi: tmyquery_go;
    tda_produzione_presso_terzi_ds: tmydatasource;
    tla_costo_standard: tmyquery_go;
    tla_costo_standard_ds: tmydatasource;
    tmo_finiti_lavorazione: tmyquery_go;
    tmo_finiti_lavorazione_ds: tmydatasource;
    tmo_materie_prime_lavorazione: tmyquery_go;
    tmo_materie_prime_lavorazione_ds: tmydatasource;
    tma_lavorazione: tmyquery_go;
    tma_lavorazione_ds: tmydatasource;
    tdo_lavorazione: tmyquery_go;
    tdo_lavorazione_ds: tmydatasource;
    RzDBEditDescrizione_go10: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go11: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go12: TRzDBEditDescrizione_go;
    RzDBEditDescrizione_go13: TRzDBEditDescrizione_go;
    GroupBox5: TGroupBox;
    v_prima_variante: TRzDBEdit_go;
    Label25: TRzlabel;
    Label26: TRzlabel;
    v_seconda_variante: TRzDBEdit_go;
    Label27: TRzlabel;
    v_tmo_codice_commesse: TRzDBEdit_go;
    RzDBEditDescrizione_go14: TRzDBEditDescrizione_go;
    tmo_commesse: tmyquery_go;
    tmo_commesse_ds: tmydatasource;
    GroupBox6: TGroupBox;
    v_progressivo_mov_01: TRzDBEdit_go;
    v_progressivo_mov_02: TRzDBEdit_go;
    v_progressivo_mov_03: TRzDBEdit_go;
    v_progressivo_mov_04: TRzDBEdit_go;
    v_progressivo_mov_05: TRzDBEdit_go;
    v_progressivo_mov_06: TRzDBEdit_go;
    v_progressivo_mov_07: TRzDBEdit_go;
    v_progressivo_mov_08: TRzDBEdit_go;
    v_progressivo_mov_09: TRzDBEdit_go;
    v_progressivo_mov_10: TRzDBEdit_go;
    Label28: TRzlabel;
    RzDBEditDescrizione_go15: TRzDBEditDescrizione_go;
    v_tma_codice_principale: TRzDBEdit_go;
    tma_principale: tmyquery_go;
    tma_principale_ds: tmydatasource;
    Label29: TRzlabel;
    v_tla_codice_valorizzazione: TRzDBEdit_go;
    RzDBEditDescrizione_go16: TRzDBEditDescrizione_go;
    tla_valorizzazione: tmyquery_go;
    tla_valorizzazione_ds: tmydatasource;
    v_assegnazione_produzione: TRzDbcheckbox;
    v_assegna_costo_gesordp: TRzDbcheckbox;
    v_solo_spese_mov_commesse: TRzDbcheckbox;
    v_genera_descrizione_cicli: TRzDbcheckbox;
    v_gestione_costi_per_data: TRzDbcheckbox;
    v_controllo_commesse_ordini: TRzDBCheckBox;
    v_accorpa_ddt_conto_lavoro: TRzDBCheckBox;
    v_utilizza_listino_finito: TRzDBCheckBox;
    v_avanzamento_fasi: TRzDBCheckBox;
    RzLabel1: TRzLabel;
    v_tmo_codice_movordp: TRzDBEdit_go;
    RzDBEditDescrizione_go17: TRzDBEditDescrizione_go;
    tmo_movordp: TMyQuery_go;
    tmo_movordp_ds: TMyDataSource;
    v_usa_top_codice: TRzDBCheckBox;
    v_scarico_prima_fase: TRzDBCheckBox;
    v_solo_materiale_mov_commesse: TRzDBCheckBox;
    RzLabel2: TRzLabel;
    v_top_codice: trzdbedit_go;
    trzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    top: TMyQuery_go;
    top_ds: TMyDataSource;
    RzLabel3: TRzLabel;
    v_codice_commessa_automatico: trzdbcombobox_go;
    RzLabel4: TRzLabel;
    v_codice_sottocommessa_automatico: trzdbcombobox_go;
    trzdbeditdescrizione_go2: trzdbeditdescrizione_go;
    tma_manutenzioni: TMyQuery_go;
    tma_manutenzioni_ds: TMyDataSource;
    tab_pagina3: TRzTabSheet;
    RzLabel5: TRzLabel;
    v_tma_codice_manutenzioni: trzdbedit_go;
    trzdbeditdescrizione_go3: trzdbeditdescrizione_go;
    RzLabel6: TRzLabel;
    v_costo_orario_manutenzioni: trzdbnumericedit_go;
    RzLabel7: TRzLabel;
    v_tmo_codice_manutenzioni: trzdbedit_go;
    trzdbeditdescrizione_go4: trzdbeditdescrizione_go;
    tmo_manutenzioni: TMyQuery_go;
    tmo_manutenzioni_ds: TMyDataSource;
    v_utilizzo_equivalenti: TRzDBCheckBox;
    v_cruart_tempo_reale: TRzDBCheckBox;
    RzLabel8: TRzLabel;
    v_um_datconfas: trzdbcombobox_go;
    v_utilizzo_varianti: TRzDBCheckBox;
    v_variazione_tempi_lavorazione: TRzDBCheckBox;
    RzLabel9: TRzLabel;
    v_codice_cmt_automatico: trzdbedit_go;
    RzLabel10: TRzLabel;
    v_data_inizio_fifo_scatti: trzdbdatetimeedit_go;
    v_aggiorna_costo_da_acquisti: TRzDBCheckBox;
    procedure v_tmo_codice_chiusuraExit(Sender: TObject);
    procedure v_tmo_codice_aperturaExit(Sender: TObject);
    procedure v_tmo_codice_rettifica_inventarioExit(Sender: TObject);
    procedure v_tmo_codice_finitiExit(Sender: TObject);
    procedure v_tma_codice_finitiExit(Sender: TObject);
    procedure v_tmo_codice_materie_primeExit(Sender: TObject);
    procedure v_tma_codice_materie_primeExit(Sender: TObject);
    procedure v_tla_codiceExit(Sender: TObject);
    procedure v_tda_codice_produzione_presso_teEnter(Sender: TObject);
    procedure v_tda_codice_produzione_presso_teExit(Sender: TObject);
    procedure v_tdo_codice_lavorazioneEnter(Sender: TObject);
    procedure v_tmo_codice_finiti_lavorazioneExit(Sender: TObject);
    procedure v_tmo_codice_materie_prime_lavoraExit(Sender: TObject);
    procedure v_tma_codice_lavorazioneExit(Sender: TObject);
    procedure v_tdo_codice_lavorazioneExit(Sender: TObject);
    procedure v_tla_codice_costo_standardExit(Sender: TObject);
    procedure v_tmo_codice_commesseExit(Sender: TObject);
    procedure v_tma_codice_principaleExit(Sender: TObject);
    procedure v_tla_codice_valorizzazioneExit(Sender: TObject);
    procedure v_tmo_codice_movordpExit(Sender: TObject);
    procedure v_solo_materiale_mov_commesseClick(Sender: TObject);
    procedure v_solo_spese_mov_commesseClick(Sender: TObject);
    procedure v_top_codiceExit(Sender: TObject);
    procedure v_codiceEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v_tma_codice_manutenzioniExit(Sender: TObject);
    procedure v_tmo_codice_manutenzioniExit(Sender: TObject);
    procedure FormShow(Sender: TObject);

  protected
    procedure tmo_codice_rettifica_inventario_controllo(blocco: boolean);
    procedure tmo_codice_chiusura_controllo(blocco: boolean);
    procedure tmo_codice_apertura_controllo(blocco: boolean);
    procedure tmo_codice_finiti_controllo(blocco: boolean);
    procedure tma_codice_finiti_controllo(blocco: boolean);
    procedure tmo_codice_materie_prime_controllo(blocco: boolean);
    procedure tma_codice_materie_prime_controllo(blocco: boolean);
    procedure tla_codice_controllo(blocco: boolean);
    procedure tda_codice_produzione_presso_te_controllo(blocco: boolean);
    procedure tla_codice_costo_standard_controllo(blocco: boolean);
    procedure tmo_codice_movordp_controllo(blocco: boolean);
    procedure tmo_codice_finiti_lavorazione_controllo(blocco: boolean);
    procedure tmo_codice_materie_prime_lavora_controllo(blocco: boolean);
    procedure tma_codice_lavorazione_controllo(blocco: boolean);
    procedure tdo_codice_lavorazione_controllo(blocco: boolean);
    procedure tmo_codice_commesse_controllo(blocco: boolean);
    procedure tma_codice_principale_controllo(blocco: boolean);
    procedure tla_codice_valorizzazione_controllo(blocco: boolean);
    procedure top_codice_controllo(blocco: boolean);
    procedure tma_codice_manutenzioni_controllo(blocco: boolean);
    procedure tmo_codice_manutenzioni_controllo(blocco: boolean);
  public
    procedure visualizza_descrizioni; override;
    procedure assegna_codice; override;
    procedure controllo_campi; override;

    procedure before_post; override;
    procedure after_post; override;
  end;

var
  GESDIT05: TGESDIT05;

implementation

{$R *.dfm}

uses DMARC;

procedure TGESDIT05.assegna_codice;
begin
  inherited;
end;

procedure TGESDIT05.v_codiceEnter(Sender: TObject);
begin
  inherited;
  selectnext(v_codice, true, true);
end;

procedure TGESDIT05.v_solo_materiale_mov_commesseClick(Sender: TObject);
begin
  inherited;
  if v_solo_materiale_mov_commesse.focused and v_solo_materiale_mov_commesse.checked then
  begin
    if tabella.fieldbyname('solo_spese_mov_commesse').asstring = 'si' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('solo_spese_mov_commesse').asstring := 'no';
      end;
    end;
  end;
end;

procedure TGESDIT05.v_solo_spese_mov_commesseClick(Sender: TObject);
begin
  inherited;
  if v_solo_spese_mov_commesse.focused and v_solo_spese_mov_commesse.checked then
  begin
    if tabella.fieldbyname('solo_materiale_mov_commesse').asstring = 'si' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('solo_materiale_mov_commesse').asstring := 'no';
      end;
    end;
  end;
end;

procedure TGESDIT05.visualizza_descrizioni;
begin
  inherited;

  tmo_codice_rettifica_inventario_controllo(false);
  tmo_codice_chiusura_controllo(false);
  tmo_codice_apertura_controllo(false);
  tmo_codice_finiti_controllo(false);
  tma_codice_finiti_controllo(false);
  tmo_codice_materie_prime_controllo(false);
  tma_codice_materie_prime_controllo(false);
  tla_codice_controllo(false);
  tda_codice_produzione_presso_te_controllo(false);
  tla_codice_costo_standard_controllo(false);
  tmo_codice_movordp_controllo(false);
  tmo_codice_finiti_lavorazione_controllo(false);
  tmo_codice_materie_prime_lavora_controllo(false);
  tma_codice_lavorazione_controllo(false);
  tdo_codice_lavorazione_controllo(false);
  tmo_codice_commesse_controllo(false);
  tma_codice_principale_controllo(false);
  tla_codice_valorizzazione_controllo(false);
  top_codice_controllo(false);
  tma_codice_manutenzioni_controllo(false);
  tmo_codice_manutenzioni_controllo(false);
end;

procedure TGESDIT05.controllo_campi;
begin
  inherited;

  tmo_codice_rettifica_inventario_controllo(true);
  tmo_codice_chiusura_controllo(true);
  tmo_codice_apertura_controllo(true);
  tmo_codice_finiti_controllo(true);
  tma_codice_finiti_controllo(true);
  tmo_codice_materie_prime_controllo(true);
  tma_codice_materie_prime_controllo(true);
  tla_codice_controllo(true);
  tda_codice_produzione_presso_te_controllo(true);
  tla_codice_costo_standard_controllo(true);
  tmo_codice_movordp_controllo(true);
  tmo_codice_finiti_lavorazione_controllo(true);
  tmo_codice_materie_prime_lavora_controllo(true);
  tma_codice_lavorazione_controllo(true);
  tdo_codice_lavorazione_controllo(true);
  tmo_codice_commesse_controllo(true);
  tma_codice_principale_controllo(true);
  tla_codice_valorizzazione_controllo(true);
  top_codice_controllo(true);
  tma_codice_manutenzioni_controllo(true);
  tmo_codice_manutenzioni_controllo(true);
end;

procedure TGESDIT05.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  arc.dit.close;
  arc.dit.parambyname('codice').asstring := ditta;
  arc.dit.open;
end;

procedure TGESDIT05.FormCreate(Sender: TObject);
begin
  inherited;

  uscita_forzata_esc := true;
end;

procedure TGESDIT05.FormShow(Sender: TObject);
begin
  inherited;
  //v_codice_sottocommessa_automatico.style := csdropdown;
end;

procedure TGESDIT05.v_tmo_codice_chiusuraExit(Sender: TObject);
begin
  inherited;
  tmo_codice_chiusura_controllo(true);
end;

procedure TGESDIT05.tmo_codice_chiusura_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_chiusura, v_tmo_codice_chiusura, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESDIT05.v_tmo_codice_aperturaExit(Sender: TObject);
begin
  inherited;
  tmo_codice_apertura_controllo(true);
end;

procedure TGESDIT05.tmo_codice_apertura_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_apertura, v_tmo_codice_apertura, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESDIT05.v_tmo_codice_rettifica_inventarioExit(Sender: TObject);
begin
  inherited;
  tmo_codice_rettifica_inventario_controllo(true);
end;

procedure TGESDIT05.v_top_codiceExit(Sender: TObject);
begin
  inherited;
  top_codice_controllo(true);
end;

procedure TGESDIT05.top_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, top, v_top_codice, blocco, tab_control, tab_pagina2, tabella);
end;

procedure TGESDIT05.tmo_codice_rettifica_inventario_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_rettifica_inventario, v_tmo_codice_rettifica_inventario, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESDIT05.v_tmo_codice_finitiExit(Sender: TObject);
begin
  inherited;
  tmo_codice_finiti_controllo(true);
end;

procedure TGESDIT05.tmo_codice_finiti_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_finiti, v_tmo_codice_finiti, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESDIT05.v_tma_codice_finitiExit(Sender: TObject);
begin
  inherited;
  tma_codice_finiti_controllo(true);
end;

procedure TGESDIT05.tma_codice_finiti_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma_finiti, v_tma_codice_finiti, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESDIT05.v_tmo_codice_manutenzioniExit(Sender: TObject);
begin
  inherited;
  tmo_codice_manutenzioni_controllo(true);
end;

procedure TGESDIT05.tmo_codice_manutenzioni_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_manutenzioni, v_tmo_codice_manutenzioni, blocco, tab_control, tab_pagina3, tabella);
end;

procedure TGESDIT05.v_tmo_codice_materie_primeExit(Sender: TObject);
begin
  inherited;
  tmo_codice_materie_prime_controllo(true);
end;

procedure TGESDIT05.tmo_codice_materie_prime_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_materie_prime, v_tmo_codice_materie_prime, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESDIT05.v_tma_codice_manutenzioniExit(Sender: TObject);
begin
  inherited;
  tma_codice_manutenzioni_controllo(true);
end;

procedure TGESDIT05.tma_codice_manutenzioni_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma_manutenzioni, v_tma_codice_manutenzioni, blocco, tab_control, tab_pagina3, tabella);
end;

procedure TGESDIT05.v_tma_codice_materie_primeExit(Sender: TObject);
begin
  inherited;
  tma_codice_materie_prime_controllo(true);
end;

procedure TGESDIT05.v_tma_codice_principaleExit(Sender: TObject);
begin
  inherited;
  tma_codice_principale_controllo(true);
end;

procedure TGESDIT05.tma_codice_principale_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma_principale, v_tma_codice_principale, blocco, tab_control, tab_pagina2, tabella);
end;

procedure TGESDIT05.tma_codice_materie_prime_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma_materie_prime, v_tma_codice_materie_prime, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESDIT05.v_tla_codiceExit(Sender: TObject);
begin
  inherited;
  tla_codice_controllo(true);
end;

procedure TGESDIT05.tla_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tla, v_tla_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESDIT05.v_tda_codice_produzione_presso_teEnter(
  Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := 'ordine';
end;

procedure TGESDIT05.v_tda_codice_produzione_presso_teExit(
  Sender: TObject);
begin
  inherited;
  tda_codice_produzione_presso_te_controllo(true);
end;

procedure TGESDIT05.tda_codice_produzione_presso_te_controllo(blocco: boolean);
begin
  tabella_controllo(true, tda_produzione_presso_terzi, v_tda_codice_produzione_presso_te, blocco, tab_control, tab_pagina1, tabella);

  if blocco and controllo and (v_tda_codice_produzione_presso_te.text <> '') then
  begin
    if tda_produzione_presso_terzi.fieldbyname('tipo_documento').asstring <> 'ordine' then
    begin
      messaggio(002, label12.caption);
      if v_tda_codice_produzione_presso_te.canfocus then
      begin
        v_tda_codice_produzione_presso_te.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESDIT05.v_tdo_codice_lavorazioneEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := 'ordine';
end;

procedure TGESDIT05.v_tmo_codice_finiti_lavorazioneExit(Sender: TObject);
begin
  inherited;
  tmo_codice_finiti_lavorazione_controllo(true);
end;

procedure TGESDIT05.tmo_codice_finiti_lavorazione_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_finiti_lavorazione, v_tmo_codice_finiti_lavorazione, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESDIT05.v_tmo_codice_materie_prime_lavoraExit(
  Sender: TObject);
begin
  inherited;
  tmo_codice_materie_prime_lavora_controllo(true);
end;

procedure TGESDIT05.v_tmo_codice_movordpExit(Sender: TObject);
begin
  inherited;
  tmo_codice_movordp_controllo(true);
end;

procedure TGESDIT05.tmo_codice_movordp_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_movordp, v_tmo_codice_movordp, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESDIT05.tmo_codice_materie_prime_lavora_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_materie_prime_lavorazione, v_tmo_codice_materie_prime_lavora, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESDIT05.v_tdo_codice_lavorazioneExit(Sender: TObject);
begin
  inherited;
  tdo_codice_lavorazione_controllo(true);
end;

procedure TGESDIT05.tdo_codice_lavorazione_controllo(blocco: boolean);
begin
  tabella_controllo(true, tdo_lavorazione, v_tdo_codice_lavorazione, blocco, tab_control, tab_pagina1, tabella);

  if blocco and controllo and (v_tdo_codice_lavorazione.text <> '') then
  begin
    if tdo_lavorazione.fieldbyname('tipo_documento').asstring <> 'ordine' then
    begin
      messaggio(002, label12.caption);
      if v_tdo_codice_lavorazione.canfocus then
      begin
        v_tdo_codice_lavorazione.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TGESDIT05.v_tma_codice_lavorazioneExit(Sender: TObject);
begin
  inherited;
  tma_codice_lavorazione_controllo(true);
end;

procedure TGESDIT05.tma_codice_lavorazione_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma_lavorazione, v_tma_codice_lavorazione, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESDIT05.v_tla_codice_costo_standardExit(Sender: TObject);
begin
  inherited;
  tla_codice_costo_standard_controllo(true);
end;

procedure TGESDIT05.v_tla_codice_valorizzazioneExit(Sender: TObject);
begin
  inherited;
  tla_codice_valorizzazione_controllo(true);
end;

procedure TGESDIT05.tla_codice_valorizzazione_controllo(blocco: boolean);
begin
  tabella_controllo(true, tla_valorizzazione, v_tla_codice_valorizzazione, blocco, tab_control, tab_pagina2, tabella);
end;

procedure TGESDIT05.tla_codice_costo_standard_controllo(blocco: boolean);
begin
  tabella_controllo(true, tla_costo_standard, v_tla_codice_costo_standard, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESDIT05.v_tmo_codice_commesseExit(Sender: TObject);
begin
  inherited;
  tmo_codice_commesse_controllo(true);
end;

procedure TGESDIT05.tmo_codice_commesse_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_commesse, v_tmo_codice_commesse, blocco, tab_control, tab_pagina2, tabella);
end;

procedure TGESDIT05.before_post;
begin
  inherited;

  if (tabella.fieldbyname('codice_commesse_numerico').asstring = 'si') and
    (tabella.fieldbyname('codice_commessa_automatico').asstring <> 'nessuno') then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('codice_commessa_automatico').asstring := 'nessuno';
    end;
  end;
end;

procedure TGESDIT05.after_post;
begin
  inherited;

  if v_codice.text = ditta then
  begin
  inventario_fiscale := tabella.fieldbyname('tipo_inventario').asstring;
  inventario_gestionale := tabella.fieldbyname('valorizzazione_gestionale').asstring;

    arc.arcdit.execsql('set @tma_codice_principale = ' + quotedstr(tabella.fieldbyname('tma_codice_principale').asstring));
  end;

  close;
end;

initialization
  registerclass(tgesdit05);

end.

