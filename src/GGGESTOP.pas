//
//aggiunta nuova tab ah6_tab_personalizzati e contenuto
//
unit GGGESTOP;

interface

uses 
  winapi.windows, winapi.messages, system.sysutils, system.variants, system.classes, vcl.graphics, vcl.controls, vcl.forms, 
  vcl.dialogs, gggesarc, data.db, query_go, MyAccess, vcl.menus, 
  vcl.comctrls, RzTabs, vcl.toolwin, vcl.extctrls, vcl.stdctrls, vcl.mask, 
  AppEvnts, printers, winapi.wininet, 
  vcl.buttons, RzSpnEdt, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk, 
  RzRadChk, RzButton, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go, RzEdit, DBAccess, MemDS, 
  Vcl.WinXCtrls;

type

  TGESTOP = class(TGESARC)
    Label1: TRzlabel;
    v_codice: TRzDBEdit_go;
    v_descrizione: TRzDBEdit_go;
    Label2: TRzlabel;
    tmo_finiti: TMyQuery_go;
    tmo_finiti_ds: TMyDataSource;
    v_avanzamento_fasi: TRzDBCheckBox;
    Label53: TRzLabel;
    v_tipo_esplosione: TRzDBCombobox_go;
    Label21: TRzLabel;
    v_tmo_codice_finiti: TRzDBEdit_go;
    RzDBEditDescrizione_go1: TRzDBEditDescrizione_go;
    RzLabel1: TRzLabel;
    v_tma_codice_finiti: TRzDBEdit_go;
    RzDBEditDescrizione_go2: TRzDBEditDescrizione_go;
    Label7: TRzLabel;
    v_tmo_codice_materie_prime: TRzDBEdit_go;
    RzDBEditDescrizione_go3: TRzDBEditDescrizione_go;
    Label9: TRzLabel;
    v_tma_codice_materie_prime: TRzDBEdit_go;
    RzDBEditDescrizione_go4: TRzDBEditDescrizione_go;
    tma_finiti: TMyQuery_go;
    tma_finiti_ds: TMyDataSource;
    tmo_materie_prime: TMyQuery_go;
    tmo_materie_prime_ds: TMyDataSource;
    tma_materie_prime: TMyQuery_go;
    tma_materie_prime_ds: TMyDataSource;
    v_scarico_prima_fase: TRzDBCheckBox;
    v_valorizzazione_finito_costo_standard: TRzDBCheckBox;
    v_scarico_componenti_interattivo: TRzDBCheckBox;
    v_acquisizione_dip_mac: TRzDBCheckBox;
    v_fasi_non_sequenziali: TRzDBCheckBox;
    v_creazione_ddt_ordini: TRzDBCheckBox;
    v_conferma_evasione: TRzDBCheckBox;
    RzGroupBox1: TRzGroupBox;
    v_avvisa_superamento_tempo_fase: TRzDBCheckBox;
    Label15: TRzLabel;
    v_percentuale_avviso_soft: trzdbnumericedit_go;
    v_percentuale_avviso_hard: trzdbnumericedit_go;
    RzLabel2: TRzLabel;
    v_messaggio_interattivo: TRzDBCheckBox;
    Label4: TRzLabel;
    v_serie_documento: trzdbedit_go;
    RzLabel3: TRzLabel;
    v_tmo_codice_movordp: trzdbedit_go;
    trzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    RzLabel4: TRzLabel;
    v_tma_codice_principale: trzdbedit_go;
    trzdbeditdescrizione_go2: trzdbeditdescrizione_go;
    tmo_movordp: TMyQuery_go;
    tmo_movordp_ds: TMyDataSource;
    tma_principale: TMyQuery_go;
    tma_principale_ds: TMyDataSource;
    Label12: TRzLabel;
    v_template: trzdbedit_go;
    v_sfoglia_template: TRzRapidFireButton;
    OpenDialog: TOpenDialog;
    v_controllo_articoli: TRzDBCheckBox;
    v_variazione_tempi_lavorazione: TRzDBCheckBox;
    v_scarico_diretto: TRzDBCheckBox;
    v_evasione_chiusura_fasi: TRzDBCheckBox;
    //modifica
    ah6_tab_personalizzati: TRzTabSheet;
    v_ah6_commessa_obbligatoria: TRzDBCheckBox;
    //modifica fine
    procedure v_codiceExit(Sender: TObject);
    procedure v_descrizioneExit(Sender: TObject);
    procedure codice_controllo;
    procedure descrizione_controllo;
    procedure v_tmo_codice_finitiExit(Sender: TObject);
    procedure v_tma_codice_finitiExit(Sender: TObject);
    procedure v_tmo_codice_materie_primeExit(Sender: TObject);
    procedure v_tma_codice_materie_primeExit(Sender: TObject);
    procedure v_scarico_prima_faseClick(Sender: TObject);
    procedure v_scarico_prima_faseExit(Sender: TObject);
    procedure v_avanzamento_fasiClick(Sender: TObject);
    procedure v_avanzamento_fasiExit(Sender: TObject);
    procedure v_tmo_codice_movordpExit(Sender: TObject);
    procedure v_tma_codice_principaleExit(Sender: TObject);
    procedure v_sfoglia_templateClick(Sender: TObject);
    procedure v_templateExit(Sender: TObject);
  protected
    procedure v_tmo_codice_finiti_controllo(blocco: boolean);
    procedure v_tma_codice_finiti_controllo(blocco: boolean);
    procedure v_tmo_codice_materie_prime_controllo(blocco: boolean);
    procedure v_tma_codice_materie_prime_controllo(blocco: boolean);
    procedure v_tmo_codice_movordp_controllo(blocco: boolean);
    procedure v_tma_codice_principale_controllo(blocco: boolean);
    procedure template_controllo;

    procedure abilita_avanzamento_fasi;
    procedure assegna_valore_avanzamento_fasi;

    procedure abilita_scarico_componenti_interattivo;
    procedure assegna_valore_scarico_componenti_interattivo;
  public
    procedure abilitazioni; override;
    procedure visualizza_descrizioni; override;
    procedure assegna_codice; override;
    procedure controllo_codice; override;
    procedure controllo_campi; override;
    procedure controllo_cancella; override;
    procedure before_post; override;
  end;

implementation

{$r *.dfm}


uses DMARC, ZZCONTROLLO_INTEGRITA;

//******************************************************************************
// procedure e funzioni da personalizzare (verranno mantenute da inheritare)
//******************************************************************************

procedure TGESTOP.assegna_codice;
begin
  inherited;
  codice := variant(v_codice.text);
end;

procedure tGESTOP.controllo_cancella;
begin
  inherited;

  if esiste then
  begin
    controllo_cancella_edit := controllo_integrita('top_codice', v_codice.text);
  end;
end;

procedure TGESTOP.controllo_codice;
begin
  codice_controllo;
end;

procedure TGESTOP.abilitazioni;
begin
  abilita_avanzamento_fasi;
  abilita_scarico_componenti_interattivo;
end;

procedure TGESTOP.controllo_campi;
begin
  descrizione_controllo;
  v_tmo_codice_finiti_controllo(true);
  v_tma_codice_finiti_controllo(true);
  v_tmo_codice_materie_prime_controllo(true);
  v_tma_codice_materie_prime_controllo(true);
  v_tmo_codice_movordp_controllo(true);
  v_tma_codice_principale_controllo(true);
  template_controllo;
end;

procedure TGESTOP.before_post;
begin
  assegna_valore_avanzamento_fasi;
  assegna_valore_scarico_componenti_interattivo;
  inherited;
end;

//******************************************************************************
// gestione campi da inserire programma per programma ex novo
//******************************************************************************

procedure TGESTOP.v_avanzamento_fasiClick(Sender: TObject);
begin
  inherited;

  abilita_avanzamento_fasi;
end;

procedure TGESTOP.v_avanzamento_fasiExit(Sender: TObject);
begin
  inherited;

  assegna_valore_avanzamento_fasi;
end;

procedure TGESTOP.abilita_avanzamento_fasi;
begin
  inherited;

  if v_avanzamento_fasi.checked then
  begin
    abilita_campo(v_scarico_prima_fase);
    abilita_campo(v_creazione_ddt_ordini);
    abilita_campo(v_acquisizione_dip_mac);
    abilita_campo(v_fasi_non_sequenziali);
    abilita_campo(v_avvisa_superamento_tempo_fase);
    abilita_campo(v_percentuale_avviso_soft);
    abilita_campo(v_percentuale_avviso_hard);
  end
  else
  begin
    disabilita_campo(v_scarico_prima_fase);
    disabilita_campo(v_creazione_ddt_ordini);
    disabilita_campo(v_acquisizione_dip_mac);
    disabilita_campo(v_fasi_non_sequenziali);
    disabilita_campo(v_avvisa_superamento_tempo_fase);
    disabilita_campo(v_percentuale_avviso_soft);
    disabilita_campo(v_percentuale_avviso_hard);
  end;
end;

procedure TGESTOP.assegna_valore_avanzamento_fasi;
begin
  inherited;

  if not v_avanzamento_fasi.checked then
  begin
    if tabella.fieldbyname('scarico_prima_fase').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('scarico_prima_fase').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('creazione_ddt_ordini').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('creazione_ddt_ordini').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('acquisizione_dip_mac').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('acquisizione_dip_mac').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('fasi_non_sequenziali').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('fasi_non_sequenziali').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('avvisa_superamento_tempo_fase').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('avvisa_superamento_tempo_fase').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('percentuale_avviso_soft').asfloat <> 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('percentuale_avviso_soft').asfloat := 0;
      end;
    end;

    if tabella.fieldbyname('percentuale_avviso_hard').asfloat <> 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('percentuale_avviso_hard').asfloat := 0;
      end;
    end;
  end;
end;

procedure TGESTOP.v_codiceExit(Sender: TObject);
begin
  inherited;
  codice_controllo;
end;

procedure TGESTOP.codice_controllo;
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

procedure TGESTOP.v_descrizioneExit(Sender: TObject);
begin
  inherited;
  descrizione_controllo;
end;

procedure TGESTOP.v_scarico_prima_faseClick(Sender: TObject);
begin
  inherited;

  abilita_scarico_componenti_interattivo;
end;

procedure TGESTOP.v_scarico_prima_faseExit(Sender: TObject);
begin
  inherited;

  assegna_valore_scarico_componenti_interattivo;
end;

procedure TGESTOP.v_sfoglia_templateClick(Sender: TObject);
var
  i: word;
  codice_base, nome_file: string;
begin
  inherited;

  codice_base := 'STAORDP';

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
  fuoco(v_template);
end;

procedure TGESTOP.abilita_scarico_componenti_interattivo;
begin
  if v_scarico_prima_fase.checked then
  begin
    disabilita_campo(v_scarico_componenti_interattivo);
    disabilita_campo(v_scarico_diretto);
  end
  else
  begin
    abilita_campo(v_scarico_componenti_interattivo);
    abilita_campo(v_scarico_diretto);
  end;
end;

procedure TGESTOP.assegna_valore_scarico_componenti_interattivo;
begin
  if v_scarico_prima_fase.checked then
  begin
    if tabella.fieldbyname('scarico_componenti_interattivo').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('scarico_componenti_interattivo').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('scarico_diretto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('scarico_diretto').asstring := 'no';
      end;
    end;
  end;

  if v_scarico_diretto.checked then
  begin
    if tabella.fieldbyname('scarico_prima_fase').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('scarico_prima_fase').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('scarico_componenti_interattivo').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('scarico_componenti_interattivo').asstring := 'no';
      end;
    end;
  end;

  if v_scarico_componenti_interattivo.checked then
  begin
    if tabella.fieldbyname('scarico_prima_fase').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('scarico_prima_fase').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('scarico_diretto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('scarico_diretto').asstring := 'no';
      end;
    end;
  end;
end;

procedure TGESTOP.v_templateExit(Sender: TObject);
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

procedure TGESTOP.template_controllo;
var
  codice_base: string;
begin
  if controllo then
  begin
    if trim(v_template.text) <> '' then
    begin
      codice_base := 'STAORDP';

      if not fileexists(cartella_report + 'report' + '\' + codice_base + '_' + trim(v_template.text)) and
        not fileexists(cartella_report + 'report_' + ditta + '\' + codice_base + '_' + trim(v_template.text)) and
        not fileexists(cartella_root_installazione + 'report' + '\' + codice_base + '_' + trim(v_template.text)) and
        not fileexists(cartella_root_installazione + 'report_' + ditta + '\' + codice_base + '_' + trim(v_template.text)) then
      begin
        messaggio(000, 'il modello di stampa non esiste');
        tab_control.activepage := tab_pagina1;
        fuoco(v_template);
        abort;
      end;
    end;
  end;
end;

procedure TGESTOP.v_tma_codice_finitiExit(Sender: TObject);
begin
  inherited;
  v_tma_codice_finiti_controllo(true);
end;

procedure TGESTOP.v_tma_codice_materie_primeExit(Sender: TObject);
begin
  inherited;
  v_tma_codice_materie_prime_controllo(true);
end;

procedure TGESTOP.v_tma_codice_materie_prime_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma_materie_prime, v_tma_codice_materie_prime, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTOP.v_tma_codice_principaleExit(Sender: TObject);
begin
  inherited;
  v_tma_codice_principale_controllo(true);
end;

procedure TGESTOP.v_tma_codice_principale_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma_principale, v_tma_codice_principale, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTOP.v_tma_codice_finiti_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma_finiti, v_tma_codice_finiti, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTOP.v_tmo_codice_finitiExit(Sender: TObject);
begin
  inherited;
  v_tmo_codice_finiti_controllo(true);
end;

procedure TGESTOP.v_tmo_codice_finiti_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_finiti, v_tmo_codice_finiti, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTOP.v_tmo_codice_materie_primeExit(Sender: TObject);
begin
  inherited;
  v_tmo_codice_materie_prime_controllo(true);
end;

procedure TGESTOP.v_tmo_codice_materie_prime_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_materie_prime, v_tmo_codice_materie_prime, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTOP.v_tmo_codice_movordpExit(Sender: TObject);
begin
  inherited;

  v_tmo_codice_movordp_controllo(true);
end;

procedure TGESTOP.v_tmo_codice_movordp_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_movordp, v_tmo_codice_movordp, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TGESTOP.descrizione_controllo;
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

procedure TGESTOP.visualizza_descrizioni;
begin
  v_tmo_codice_finiti_controllo(false);
  v_tma_codice_finiti_controllo(false);
  v_tmo_codice_materie_prime_controllo(false);
  v_tma_codice_materie_prime_controllo(false);
  v_tmo_codice_movordp_controllo(false);
  v_tma_codice_principale_controllo(false);
end;

initialization

registerclass(tgestop);

end.
