unit GGCREORDP;

interface

uses
  winapi.windows, winapi.messages, system.sysutils, system.variants, system.classes, vcl.graphics, vcl.controls, vcl.forms,
  vcl.dialogs, ggformbase, data.db, query_go, myaccess, vcl.menus, vcl.comctrls, rztabs,
  vcl.toolwin, vcl.buttons, vcl.grids, vcl.dbgrids, rzdbgrid, vcl.stdctrls, vcl.mask, vcl.extctrls, vcl.dbctrls,
  rzbutton, zzcerca_prezzo, zzspesco, zztipinv, zzprzinv, rzlabel, rzpanel,
  rzdbedit, rzlistvw, rztreevw, rzdbchk, rzradchk, rzsplit, rzcmbobx, rzprgres,
  rzspnedt, rzshelldialogs, rzdbcmbo, raizeedit_go, rzedit, dbaccess, memds,
  ZZCALFAS;

type

  pnodo = ^tnodo;

  tnodo = record
    codice: string;
    descrizione: string;
    tum_codice: string;
    quantita: double;
    prezzo: double;
    tma_codice: string;
    note: string;
    esistenza_tma: double;
    approntato_tma: double;
    esistenza: double;
    esistenza_principale: double;
    assistenza_tecnica: string;
    tum_codice_dsb: string;
    sequenza: integer;
    data_inizio_lavorazione: string;
  end;

type
  TCREORDP = class(TFORMBASE)
    cms: tmyquery_go;
    cms_ds: tmydatasource;
    panel1: trzpanel;
    v_griglia: trztreeview;
    panel2: trzpanel;
    cmt: tmyquery_go;
    cmt_ds: tmydatasource;
    art: tmyquery_go;
    dsb: tmyquery_go;
    figli: tmyquery_go;
    art_01: tmyquery_go;
    art_01_ds: tmydatasource;
    ovt: tmyquery_go;
    ovt_ds: tmydatasource;
    panel4: trzpanel;
    v_art_codice_nodo: trzedit_go;
    v_quantita_nodo: trznumericedit_go;
    v_art_descrizione_nodo: trzedit_go;
    ovr: tmyquery_go;
    ovr_ds: tmydatasource;
    opt: tmyquery_go;
    opr: tmyquery_go;
    cla: tmyquery_go;
    opc: tmyquery_go;
    label1: trzlabel;
    v_esistenza_tma: trznumericedit_go;
    label4: trzlabel;
    v_esistenza: trznumericedit_go;
    label2: trzlabel;
    v_esistenza_principale: trznumericedit_go;
    mag: tmyquery_go;
    mag_approntato: tmyquery_go;
    art_costo: tmyquery_go;
    frn_rda: tmyquery_go;
    tool_commessa: ttoolbutton;
    label5: trzlabel;
    v_tma_codice_finito: trzedit_go;
    v_tma_codice_materia_prima: trzedit_go;
    art_lot: TMyQuery_go;
    tmo_lot: TMyQuery_go;
    v_avanzamento_fasi: TRzCheckBox;
    tool_inserimento_excel: TToolButton;
    OpenDialog: TOpenDialog;
    top: TMyQuery_go;
    top_ds: TMyDataSource;
    top_vista: TMyQuery_go;
    v_fasi_non_sequenziali: TRzCheckBox;
    RzPanel1: TRzPanel;
    pannello_commessa: TRzPanel;
    v_selezione: trzcombobox_go;
    v_quantita: trznumericedit_go;
    v_ovr_progressivo: trznumericedit_go;
    v_ovr_riga: trznumericedit_go;
    RzDBEditDescrizione_go4: trzdbeditdescrizione_go;
    v_art_codice: trzedit_go;
    v_art_descrizione: trzdbeditdescrizione_go;
    v_top_codice: trzedit_go;
    RzDBEditDescrizione_go5: trzdbeditdescrizione_go;
    v_data_consegna: trzdatetimeedit_go;
    v_conferma: TRzBitBtn;
    mag_art: TMyQuery_go;
    v_anaordp: TRzCheckBox;
    v_usa_equivalenti: TRzCheckBox;
    equ: TMyQuery_go;
    RzLabel1: TRzLabel;
    v_approntato_tma: trznumericedit_go;
    dsb_equ: TMyQuery_go;
    art_opt_esiste: TMyQuery_go;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    v_tvr_codice: trzedit_go;
    trzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    tvr: TMyQuery_go;
    tvr_ds: TMyDataSource;
    dsbv: TMyQuery_go;
    artv: TMyQuery_go;
    opc_data: TMyQuery_go;
    RzLabel7: TRzLabel;
    v_tipo_esplosione: trzcombobox_go;
    v_top_codice_ordine: TRzCheckBox;
    pannello_destra_PanelGroup: TCategoryPanelGroup;
    pannello_destra_01: TCategoryPanel;
    CategoryPanel1: TCategoryPanel;
    v_distinta_base: TRzRapidFireButton;
    v_equivalenti_filtro: TRzRapidFireButton;
    v_equivalenti: TRzRapidFireButton;
    v_data_inizio_lavorazione: TRzRapidFireButton;
    v_comprimi: TRzRapidFireButton;
    v_espandi: TRzRapidFireButton;
    v_crea_ordini: TRzRapidFireButton;
    v_cruscotto: TRzRapidFireButton;
    v_modifica_quantita: TRzRapidFireButton;
    v_esplodi_tutto: TRzRapidFireButton;
    v_cancella_sottoelementi: TRzRapidFireButton;
    v_cancella: TRzRapidFireButton;
    v_inserisci_sottoelemento: TRzRapidFireButton;
    v_inserisci: TRzRapidFireButton;
    v_esplodi: TRzRapidFireButton;
    v_varia_quantita: TRzRapidFireButton;
    procedure pannello_commessaexit(sender: tobject);
    procedure v_confermaclick(sender: tobject);
    procedure v_grigliagetimageindex(sender: tobject; node: ttreenode);
    procedure v_equivalenti_Click(sender: tobject);
    procedure v_grigliaenter(sender: tobject);
    procedure v_esplodi_Click(sender: tobject);
    procedure v_cancella_Click(sender: tobject);
    procedure v_inserisci_Click(sender: tobject);
    procedure v_inserisci_sottoelemento_Click(sender: tobject);
    procedure v_distinta_base_Click(sender: tobject);
    procedure v_espandi_Click(sender: tobject);
    procedure v_comprimi_Click(sender: tobject);
    procedure v_cancella_sottoelementi_Click(sender: tobject);
    procedure v_crea_ordini_Click(sender: tobject);
    procedure formkeydown(sender: tobject; var key: word; shift: tshiftstate);
    procedure v_art_codiceexit(sender: tobject);
    procedure v_ovr_progressivoexit(sender: tobject);
    procedure v_esplodi_tutto_Click(sender: tobject);
    procedure v_modifica_quantita_Click(sender: tobject);
    procedure v_grigliachange(sender: tobject; node: ttreenode);
    procedure v_ovr_rigaexit(sender: tobject);
    procedure v_selezioneclick(sender: tobject);
    procedure v_ovr_rigaenter(sender: tobject);
    procedure formshow(sender: tobject);
    procedure v_cruscotto_Click(sender: tobject);
    procedure v_ovr_progressivoenter(sender: tobject);
    procedure pannello_commessaenter(sender: tobject);
    procedure tool_commessaclick(sender: tobject);
    procedure formcreate(sender: tobject);
    procedure formdestroy(sender: tobject);
    procedure v_varia_quantita_Click(sender: tobject);
    procedure tool_inserimento_excelClick(Sender: TObject);
    procedure v_top_codiceExit(Sender: TObject);
    procedure v_tvr_codiceExit(Sender: TObject);
    procedure v_equivalenti_filtro_Click(Sender: TObject);
    procedure v_data_inizio_lavorazione_Click(Sender: TObject);
    procedure v_tvr_codiceEnter(Sender: TObject);
    procedure v_grigliaExit(Sender: TObject);
  protected
    cerca_prezzi: tcerca_prezzo;
    tipinv: ttipinv;
    przinv: tprzinv;
    calfas: tcalfas;

    primo_progressivo: integer;
    numero_documento: double;
    lot_codice_passato, formula_passata: string;

    cli_codice, cms_codice, cmt_codice, tma_codice_finiti_passato: string;
    progressivo_finito: integer;

    serie_documento, avanzamento_fasi, fasi_non_sequenziali, tipo_esplosione, tmo_codice_finiti, tma_codice_finiti,
      tmo_codice_materie_prime, tma_codice_materie_prime: string;

    aggiorna_tma_finiti, aggiorna_tma_mp: string;

    data_inizio_lavorazione_passato: variant;

    procedure ovr_progressivo_controllo(blocco: boolean);
    procedure ovr_riga_controllo(blocco: boolean);
    procedure art_codice_controllo(blocco: boolean);
    procedure v_top_codice_controllo(blocco: boolean);
    procedure v_tvr_codice_controllo(blocco: boolean);
    procedure assegna_top_codice;

    function inserisci_treeview(sequenza: integer; art_codice, art_descrizione, note, tma_codice: string;
      quantita, prezzo, esistenza_tma, approntato_tma, esistenza, esistenza_principale: double; treepadre: ttreenode): ttreenode;
    procedure esplodi_dsb(art_codice_dsb: string; quantita: double; elemento_selezionato: ttreenode);
    procedure crea_opt(nodo: ttreenode; opt_progressivo, opr_riga: integer; progressivo_semilavorato: integer;
      art_codice_semilavorato: string; aggiungi: boolean; data_consegna: tdate);
    procedure errore_commit_transazione;
    procedure cambia_quantita(nodo: ttreenode; quantita_base, quantita: double);

    function assegna_descrizione(nododata: pointer): string;
    function ha_figli(art_codice: string): boolean;
    function costo_unitario(art_codice: string): double;
    function controllo_livello: boolean;
    procedure data_inizio_lavorazione;
    function esiste_configurazione_ovr: boolean;
    procedure crea_ciclo_da_configurazione(opt_progressivo: integer; nodo: ttreenode);
    //modifica
    function ah6_esiste_configurazione_ovr: boolean;
    //fine
  public
    procedure visualizza_stampa_elabora; override;
  end;

implementation

{$r *.dfm}


uses DMARC, GGVISEQU, GGCREORDP01, GGCREORDP02, GGIMPALF, GGSCEDSBEQU, ZZVARIANTI_DSB,
  ZZSELEZIONE, GGANAEQU, ZZUTILS.PRODUZIONE;

procedure tcreordp.v_art_codiceexit(sender: tobject);
begin
  inherited;
  art_codice_controllo(true);
end;

procedure tcreordp.v_cancella_Click(sender: tobject);
var
  nodoptr: ^tnodo;
begin
  inherited;
  nodoptr := v_griglia.selected.data;
  if nodoptr <> nil then
  begin
    if v_griglia.selected.haschildren then
    begin
      if messaggio(300, 'conferma cancellazione articolo: ' + nodoptr.codice + #13 + nodoptr.descrizione + #13 +
        'e di tutti i suoi componenti') = 1 then
      begin
        v_griglia.items.delete(v_griglia.selected);
      end;
    end
    else
    begin
      if messaggio(300, 'conferma cancellazione articolo: ' + nodoptr.codice + #13 + nodoptr.descrizione) = 1 then
      begin
        v_griglia.items.delete(v_griglia.selected);
      end;
    end;
  end;
end;

procedure tcreordp.v_cancella_sottoelementi_Click(sender: tobject);
begin
  inherited;
  if v_griglia.selected.haschildren then
  begin
    if messaggio(300, 'conferma cancellazione sottoelementi') = 1 then
    begin
      while v_griglia.selected.getfirstchild <> nil do
      begin
        v_griglia.items.delete(v_griglia.selected.getfirstchild);
      end;
    end;
  end
  else
  begin
    messaggio(200, 'non ci sono sottoelementi');
  end;
end;

procedure tcreordp.v_selezioneclick(sender: tobject);
begin
  inherited;
  if v_selezione.itemindex = 0 then
  begin
    v_art_codice.readonly := false;
    v_art_codice.tabstop := true;
    v_art_codice.color := clwindow;

    v_ovr_progressivo.value := 0;
    v_ovr_progressivo.enabled := false;
    v_ovr_progressivo.color := clbtnface;
    v_ovr_riga.value := 0;
    v_ovr_riga.enabled := false;
    v_ovr_riga.color := clbtnface;
  end
  else if v_selezione.itemindex = 1 then
  begin
    v_art_codice.readonly := true;
    v_art_codice.tabstop := false;
    v_art_codice.color := clbtnface;

    v_ovr_progressivo.value := 0;
    v_ovr_progressivo.enabled := true;
    v_ovr_progressivo.color := clwindow;
    v_ovr_riga.value := 0;
    v_ovr_riga.enabled := true;
    v_ovr_riga.color := clwindow;
  end;
  art_codice_controllo(false);
  ovr_progressivo_controllo(false);
  ovr_riga_controllo(false);
end;

procedure TCREORDP.v_top_codiceExit(Sender: TObject);
begin
  inherited;
  v_top_codice_controllo(true);
  v_tipo_esplosione.itemindex := v_tipo_esplosione.indexof(top.fieldbyname('tipo_esplosione').asstring);
end;

procedure TCREORDP.assegna_top_codice;
begin
  tmo_codice_finiti := arc.dit.fieldbyname('tmo_codice_finiti').asstring;
  tma_codice_finiti := arc.dit.fieldbyname('tma_codice_finiti').asstring;
  tmo_codice_materie_prime := arc.dit.fieldbyname('tmo_codice_materie_prime').asstring;
  tma_codice_materie_prime := arc.dit.fieldbyname('tma_codice_materie_prime').asstring;

  tipo_esplosione := v_tipo_esplosione.text;

  fasi_non_sequenziali := 'no';
  if top.isempty then
  begin
    serie_documento := '';
    avanzamento_fasi := arc.dit.fieldbyname('avanzamento_fasi').asstring;
    if tma_codice_materie_prime = '' then
    begin
      tma_codice_materie_prime := tma_codice_finiti_passato;
    end;
  end
  else
  begin
    serie_documento := top.fieldbyname('serie_documento').asstring;
    avanzamento_fasi := top.fieldbyname('avanzamento_fasi').asstring;
    fasi_non_sequenziali := top.fieldbyname('fasi_non_sequenziali').asstring;

    if top.fieldbyname('tmo_codice_finiti').asstring <> '' then
    begin
      tmo_codice_finiti := top.fieldbyname('tmo_codice_finiti').asstring;
    end;
    if top.fieldbyname('tma_codice_finiti').asstring <> '' then
    begin
      tma_codice_finiti := top.fieldbyname('tma_codice_finiti').asstring;
    end;
    if top.fieldbyname('tmo_codice_materie_prime').asstring <> '' then
    begin
      tmo_codice_materie_prime := top.fieldbyname('tmo_codice_materie_prime').asstring;
    end;
    if top.fieldbyname('tma_codice_materie_prime').asstring <> '' then
    begin
      tma_codice_materie_prime := top.fieldbyname('tma_codice_materie_prime').asstring;
    end;
    if tma_codice_materie_prime = '' then
    begin
      tma_codice_materie_prime := tma_codice_finiti_passato;
    end;
  end;

  if tma_codice_finiti_passato <> '' then
  begin
    tma_codice_finiti := tma_codice_finiti_passato;
  end;

  v_tipo_esplosione.text := tipo_esplosione;
end;

procedure TCREORDP.v_top_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, top, v_top_codice, blocco, nil, nil, nil);

  if controllo and blocco and (v_top_codice.text = '') and (arc.dit.fieldbyname('usa_top_codice').asstring = 'si') then
  begin
    messaggio(200, 'in anagrafica ditta è stato impostato l''utilizzo del codice documento');
  end;
end;

procedure TCREORDP.v_tvr_codiceEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_art_codice.text;
end;

procedure TCREORDP.v_tvr_codiceExit(Sender: TObject);
begin
  inherited;
  v_tvr_codice_controllo(true);
  if controllo then
  begin
    if (v_tvr_codice.text <> '') and not read_tabella(artv, vararrayof([v_art_codice.text, v_tvr_codice.text])) then
    begin
      messaggio(000, 'non è stato pevisto l''utilizzo della variante per l''articolo');
      fuoco(v_tvr_codice);
      abort;
    end
    else if (tvr.fieldbyname('art_codice').asstring <> '') and
      (tvr.fieldbyname('art_codice').asstring <> v_art_codice.text) then
    begin
      messaggio(000, 'la variante può essere utulizzata solamente per l''articolo [' +
        tvr.fieldbyname('art_codice').asstring + ']');
      fuoco(v_tvr_codice);
      abort;
    end;
  end;
end;

procedure TCREORDP.v_tvr_codice_controllo(blocco: boolean);
begin
  //  tabella_controllo(true, tvr, v_art_codice, v_tvr_codice, blocco, nil, nil, nil);
  tabella_controllo(true, tvr, v_tvr_codice, blocco, nil, nil, nil);
end;

procedure TCREORDP.v_varia_quantita_Click(sender: tobject);
var
  pr: timpalf;
begin
  inherited;
  pr := timpalf.create(nil);
  try
    pr.v_form_caption := 'Modifica quantità da produrre';
    pr.v_descrizione_caption := 'quantità';
    pr.valore_passato := v_quantita.value;
    pr.tipo_campo := 'numero';
    pr.v_width_campo := 18;
    pr.decimali := v_quantita.decimalplaces;
    pr.showmodal;
    if not pr.premuto_escape and pr.valore_passato <> v_quantita.value then
    begin
      v_griglia.select(v_griglia.items.getfirstnode);

      cambia_quantita(v_griglia.selected, pr.valore_passato, v_quantita.value);

      v_quantita.value := pr.valore_passato;
    end;
  finally
    pr.free;
  end;
end;

procedure tcreordp.cambia_quantita(nodo: ttreenode; quantita_base, quantita: double);
var
  nodoptr: ^tnodo;
begin
  nodoptr := nodo.data;
  nodoptr.quantita := arrotonda(nodoptr.quantita * quantita_base / v_quantita.value, decimali_max_quantita);
  nodo.data := nodoptr;
  nodo.text := assegna_descrizione(nodoptr);

  nodo := nodo.getfirstchild;
  while nodo <> nil do
  begin
    nodoptr := nodo.data;

    if nodo.haschildren then
    begin
      cambia_quantita(nodo, quantita_base, nodoptr.quantita);
    end
    else
    begin
      nodoptr.quantita := arrotonda(nodoptr.quantita * quantita_base / v_quantita.value, decimali_max_quantita);
      nodo.data := nodoptr;
      nodo.text := assegna_descrizione(nodoptr);
    end;

    nodo := nodo.getnextsibling;
  end;
end;

procedure tcreordp.v_comprimi_Click(sender: tobject);
begin
  inherited;
  v_griglia.fullcollapse;
end;

procedure tcreordp.v_confermaclick(sender: tobject);
var
  prosegui: boolean;
begin
  inherited;

  prosegui := true;

  if not top.isempty and (top.fieldbyname('controllo_articoli').asstring = 'si') then
  begin
    art_opt_esiste.close;
    art_opt_esiste.parambyname('art_codice').asstring := v_art_codice.text;
    art_opt_esiste.parambyname('ovr_progressivo').asinteger := v_ovr_progressivo.intvalue;
    art_opt_esiste.open;
    if art_opt_esiste.fieldbyname('progressivo').asstring <> '' then
    begin
      if messaggio(300, 'esistono già uno o più ordini di produzione per l''articolo ' + v_art_codice.text + slinebreak +
        'ai progressivi ' + art_opt_esiste.fieldbyname('progressivo').asstring + slinebreak + 'conferma per creare l''ordine') <> 1 then
      begin
        prosegui := false;
      end;
    end;
  end;

  if prosegui then
  begin
    progressivo_finito := 0;

    (*
      if v_ovr_progressivo.value <> 0) and not ordine_cliente then
      begin
      if read_tabella(arc.arcdit, 'opt', 'ovr_progressivo;ovr_riga', vararrayof([v_ovr_progressivo.value, v_ovr_riga.value]), 'progressivo') then
      begin
      messaggio(000, 'ordine già in produzione con il progressivo: ' + archivio.fieldbyname('progressivo').asstring);
      if v_ovr_progressivo.canfocus then
      begin
      v_ovr_progressivo.setfocus;
      end;
      abort;
      end;
      end;
    *)

    if (v_art_codice.text <> '') and (v_art_descrizione.text <> '') and (v_quantita.value <> 0) then
    begin
      v_griglia.items.clear;

      mag.close;
      mag.parambyname('art_codice').asstring := v_art_codice.text;
      mag.parambyname('tma_codice').asstring := tma_codice_finiti;
      mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
      mag.open;

      inserisci_treeview(0, v_art_codice.text, v_art_descrizione.text, '', '', v_quantita.value, 0,
        mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat, mag.fieldbyname('esistenza').asfloat,
        mag.fieldbyname('esistenza_principale').asfloat, nil);
      colore_control(pannello_commessa, false);
      pannello_commessa.enabled := false;
      if v_griglia.canfocus then
      begin
        if v_griglia.canfocus then
        begin
          v_griglia.setfocus;
        end;
      end;
    end
    else
    begin
      messaggio(000, 'codice articolo o quantità non specificati');
      if v_selezione.canfocus then
      begin
        v_selezione.setfocus;
      end;
    end;
  end
  else
  begin
    fuoco(v_selezione);
  end;
end;

procedure tcreordp.v_crea_ordini_Click(sender: tobject);
begin
  inherited;
  v_griglia.select(v_griglia.items.getfirstnode);

  apri_transazione;
  try
    try
      crea_opt(v_griglia.selected, 0, 0, 0, '', false, v_data_consegna.date);

      messaggio(100, 'progressivo ordine generato per il semilavorato: ' + inttostr(primo_progressivo));
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

  if v_anaordp.checked then
  begin
    if primo_progressivo <> 0 then
    begin
      esegui_programma('ANAORDP', primo_progressivo, true);
    end;
  end
  else
  begin
    if primo_progressivo <> 0 then
    begin
      esegui_programma('GESORDP', primo_progressivo, true);

      if (arc.dit.fieldbyname('assegnazione_produzione').asstring = 'si') and
        (messaggio(300, 'analisi approntamento') = 1) then
      begin
        if opt.parambyname('cms_codice').asstring <> '' then
        begin
          parametri_extra_programma_chiamato[0] := 'commessa';
          esegui_programma('ASSAPPOP', opt.parambyname('cms_codice').asstring, true);
        end
        else
        begin
          parametri_extra_programma_chiamato[0] := 'ordine';
          esegui_programma('ASSAPPOP', opt.parambyname('progressivo').asinteger, true);
        end;
      end;

      parametri_extra_programma_chiamato[27] := primo_progressivo;
    end;
  end;

  close;
end;

procedure tcreordp.crea_opt(nodo: ttreenode; opt_progressivo, opr_riga: integer; progressivo_semilavorato: integer;
  art_codice_semilavorato: string; aggiungi: boolean; data_consegna: tdate);
var
  progressivo, riga: integer;
  numero_documento_precedente: double;
  data_documento_precedente: tdatetime;
  //progressivo_finito: integer;
  art_codice_finito: string;
  nodoptr: ^tnodo;
  quantita_lavorazione, costo: double;

  ultima_riga: tmyquery_go;

  opt, opr, opc, art_opt: tmyquery_go;
  pr: timpalf;
  top_codice: string;
begin
  opt := tmyquery_go.create(nil);
  opt.connection := arc.arcdit;
  opt.sql.add('insert into opt');
  opt.sql.add('(progressivo, art_codice, tmo_codice_finiti, tma_codice_finiti, tmo_codice_materie_prime, fasi_non_sequenziali,');
  opt.sql.add('tma_codice_materie_prime, quantita, data_consegna, data_documento, numero_documento, serie_documento,');
  opt.sql.add('progressivo_semilavorato, art_codice_semilavorato, tipo_esplosione, cms_codice, tipologia, frn_codice,');
  opt.sql.add('ovr_progressivo, ovr_riga, tda_codice_ordine, art_codice_finito, progressivo_finito,');
  opt.sql.add('documento_origine, doc_progressivo_origine, doc_riga_origine, descrizione, lot_codice, formula, avanzamento_fasi,');
  opt.sql.add('top_codice, data_inizio_lavorazione)');
  opt.sql.add('values');
  opt.sql.add('(:progressivo, :art_codice, :tmo_codice_finiti, :tma_codice_finiti, :tmo_codice_materie_prime, :fasi_non_sequenziali,');
  opt.sql.add(':tma_codice_materie_prime, :quantita, :data_consegna, :data_documento, :numero_documento, :serie_documento,');
  opt.sql.add(':progressivo_semilavorato, :art_codice_semilavorato, :tipo_esplosione, :cms_codice, :tipologia, :frn_codice,');
  opt.sql.add(':ovr_progressivo, :ovr_riga, :tda_codice_ordine, :art_codice_finito, :progressivo_finito,');
  opt.sql.add(':documento_origine, :doc_progressivo_origine, :doc_riga_origine, :descrizione, :lot_codice, :formula, :avanzamento_fasi,');
  opt.sql.add(':top_codice, :data_inizio_lavorazione)');

  opr := tmyquery_go.create(nil);
  opr.connection := arc.arcdit;
  opr.sql.add('insert into opr');
  opr.sql.add('(progressivo, riga, art_codice, quantita, semilavorato, tma_codice, note, quantita_approntata,');
  opr.sql.add('costo_unitario, assistenza_tecnica, sequenza_dsb)');
  opr.sql.add('values');
  opr.sql.add('(:progressivo, :riga, :art_codice, :quantita, :semilavorato, :tma_codice, :note, :quantita_approntata,');
  opr.sql.add(':costo_unitario, :assistenza_tecnica, :sequenza_dsb)');

  opc := tmyquery_go.create(nil);
  opc.connection := arc.arcdit;
  opc.sql.add('insert into opc');
  opc.sql.add('(progressivo, sequenza, fas_codice, frn_codice, quantita_attrezzaggio, quantita, quantita_fine_attrezzaggio,');
  opc.sql.add('tipo_operazione, costo_totale, note, mac_codice)');
  opc.sql.add('values');
  opc.sql.add('(:progressivo, :sequenza, :fas_codice, :frn_codice, :quantita_attrezzaggio, :quantita, :quantita_fine_attrezzaggio,');
  opc.sql.add(':tipo_operazione, :costo_totale, :note, :mac_codice)');

  ultima_riga := tmyquery_go.create(nil);
  ultima_riga.connection := arc.arcdit;
  ultima_riga.sql.text := 'select max(riga) riga from opr where progressivo = :progressivo';

  art_opt := tmyquery_go.create(nil);
  art_opt.connection := arc.arcdit;
  art_opt.sql.add('select art.frn_codice, frn.tma_codice_conto_terzi');
  art_opt.sql.add('from art');
  art_opt.sql.add('inner join frn on frn.codice = art.frn_codice');
  art_opt.sql.add('where art.codice = :codice');

  nodoptr := nodo.data;

  costo := 0;

  // testata
  if not aggiungi then
  begin
    opt.close;
    progressivo := arc.setta_valore_generatore(tmyconnection_go(opt.connection), 'opt_progressivo');
    if primo_progressivo = 0 then
    begin
      primo_progressivo := progressivo;
    end;

    //top_codice
    if v_top_codice_ordine.checked then
    begin
      top_codice := '';
      while top_codice = '' do
      begin
        pr := timpalf.create(nil);
        try
          read_tabella(arc.arcdit, 'art', 'codice', nodoptr.codice, 'descrizione1, descrizione2');
          pr.v_form_caption := 'Articolo . ' + nodoptr.codice + ' ' +
            archivio.fieldbyname('descrizione1').asstring + ' ' + archivio.fieldbyname('descrizione2').asstring;
          pr.v_descrizione_caption := 'codice documento';
          pr.v_width_campo := 4;
          pr.valore_passato := v_top_codice.text;
          pr.tipo_campo := 'alfa';
          pr.visarc_table := 'TOP';
          pr.visarc_visname := 'TOP';
          pr.visarc_codice := 'codice';
          pr.visarc_campo := 'descrizione';
          pr.showmodal;
          top_codice := pr.valore_passato;
          if not read_tabella(top, top_codice) then
          begin
            top_codice := '';
          end;
        finally
          freeandnil(pr);
        end;
      end;
      assegna_top_codice;
    end
    else
    begin
      top_codice := v_top_codice.text;
    end;
    //top_codice fine

    opt.parambyname('progressivo').asinteger := progressivo;
    opt.parambyname('top_codice').asstring := top_codice;
    opt.parambyname('art_codice').asstring := nodoptr.codice;
    //progressivo_finito := nodoptr.progressivo;
    art_codice_finito := nodoptr.codice;
    opt.parambyname('tmo_codice_finiti').asstring := tmo_codice_finiti;
    if art_codice_semilavorato = '' then
    begin
      opt.parambyname('tma_codice_finiti').asstring := tma_codice_finiti;
    end
    else
    begin
      opt.parambyname('tma_codice_finiti').asstring := tma_codice_materie_prime;
    end;
    opt.parambyname('tmo_codice_materie_prime').asstring := tmo_codice_materie_prime;
    opt.parambyname('tma_codice_materie_prime').asstring := tma_codice_materie_prime;
    opt.parambyname('quantita').asfloat := nodoptr.quantita;
    //opt.parambyname('descrizione').asstring := nodoptr.note;
    opt.parambyname('descrizione').value := ovr.fieldbyname('note').value;
    opt.parambyname('lot_codice').asstring := lot_codice_passato;
    opt.parambyname('formula').asstring := formula_passata;

    opt.parambyname('data_documento').asdate := date;
    opt.parambyname('serie_documento').asstring := serie_documento;

    progressivo_cnt := 0;
    esiste_numerazione_cnt := true;
    while esiste_numerazione_cnt do
    begin
      arc.assegna_numerazione(arc.arcdit, 'ORDINI PRODUZIONE', serie_documento, date, progressivo_cnt);
      opt.parambyname('numero_documento').asfloat := progressivo_cnt;

      if arc.esistenza_documento('opt', serie_documento, '', opt.parambyname('data_documento').asdate,
        opt.parambyname('numero_documento').asfloat, opt.parambyname('progressivo').asinteger) then
      begin
        progressivo_cnt := 0;
      end
      else
      begin
        esiste_numerazione_cnt := false;
      end;
    end;

    opt.parambyname('progressivo_semilavorato').asinteger := progressivo_semilavorato;
    opt.parambyname('art_codice_semilavorato').asstring := art_codice_semilavorato;

    if opt.parambyname('art_codice').asstring <> v_art_codice.text then
    begin
      opt.parambyname('art_codice_finito').asstring := v_art_codice.text;
    end
    else
    begin
      opt.parambyname('art_codice_finito').asstring := ''
    end;
    if progressivo_finito = 0 then
    begin
      progressivo_finito := progressivo;
      opt.parambyname('progressivo_finito').asinteger := 0;
    end
    else
    begin
      opt.parambyname('progressivo_finito').asinteger := progressivo_finito;
    end;

    opt.parambyname('tipo_esplosione').asstring := tipo_esplosione;
    opt.parambyname('data_consegna').asdate := data_consegna;

    if cms_codice <> '' then
    begin
      opt.parambyname('cms_codice').asstring := cms_codice;
      opt.parambyname('tipologia').asstring := cmt_codice;
    end
    else
    begin
      if ovt.active then
      begin
        opt.parambyname('cms_codice').asstring := ovr.fieldbyname('cms_codice').asstring;
        opt.parambyname('tipologia').asstring := ovr.fieldbyname('tipologia').asstring;
      end
      else
      begin
        opt.parambyname('cms_codice').asstring := '';
        opt.parambyname('tipologia').asstring := '';
      end;
    end;

    if opt.parambyname('cms_codice').asstring <> '' then
    begin
      read_tabella(cms, opt.parambyname('cms_codice').asstring);
      read_tabella(cmt, vararrayof([opt.parambyname('cms_codice').asstring, opt.parambyname('tipologia').asstring]));

      if aggiorna_tma_finiti <> 'no' then
      begin
        if (cms.fieldbyname('tma_codice').asstring <> '') and
          (cms.fieldbyname('tma_codice').asstring <> opt.parambyname('tma_codice_finiti').asstring) and
          ((cmt.isempty) or (cmt.fieldbyname('tma_codice').asstring = '')) then
        begin
          if (aggiorna_tma_finiti = 'si') or (messaggio(300, 'aggiorna il deposito prodotti finiti per adeguarlo a quello della commessa') = 1) then
          begin
            aggiorna_tma_finiti := 'si';
            opt.parambyname('tma_codice_finiti').asstring := cms.fieldbyname('tma_codice').asstring;
          end
          else
          begin
            aggiorna_tma_finiti := 'no';
          end;
        end
        else
        begin
          if (cmt.fieldbyname('tma_codice').asstring <> '') and
            (cmt.fieldbyname('tma_codice').asstring <> opt.parambyname('tma_codice_finiti').asstring) then
          begin
            if (aggiorna_tma_finiti = 'si') or (messaggio(300, 'aggiorna il deposito prodotti finiti per adeguarlo a quello della sottocommessa') = 1) then
            begin
              aggiorna_tma_finiti := 'no';
              opt.parambyname('tma_codice_finiti').asstring := cmt.fieldbyname('tma_codice').asstring;
            end
            else
            begin
              aggiorna_tma_finiti := 'no';
            end;
          end;
        end;
      end;

      if aggiorna_tma_mp <> 'no' then
      begin
        if (cms.fieldbyname('tma_codice').asstring <> '') and
          (cms.fieldbyname('tma_codice').asstring <> opt.parambyname('tma_codice_materie_prime').asstring) and
          ((cmt.isempty) or (cmt.fieldbyname('tma_codice').asstring = '')) then
        begin
          if (aggiorna_tma_mp = 'si') or (messaggio(300, 'aggiorna il deposito materie prime per adeguarlo a quello della commessa') = 1) then
          begin
            aggiorna_tma_mp := 'si';
            opt.parambyname('tma_codice_materie_prime').asstring := cms.fieldbyname('tma_codice').asstring;
          end
          else
          begin
            aggiorna_tma_mp := 'no';
          end;
        end
        else
        begin
          if (cmt.fieldbyname('tma_codice').asstring <> '') and
            (cmt.fieldbyname('tma_codice').asstring <> opt.parambyname('tma_codice_materie_prime').asstring) then
          begin
            if (aggiorna_tma_mp = 'si') or (messaggio(300, 'aggiorna il deposito materie prime per adeguarlo a quello della sottocommessa') = 1) then
            begin
              aggiorna_tma_mp := 'si';
              opt.parambyname('tma_codice_materie_prime').asstring := cmt.fieldbyname('tma_codice').asstring;
            end
            else
            begin
              aggiorna_tma_mp := 'no';
            end;
          end;
        end;
      end;
    end;

    if avanzamento_fasi = 'no' then
    begin
      read_tabella(art_opt, nodoptr.codice);
      opt.parambyname('frn_codice').asstring := art_opt.fieldbyname('frn_codice').asstring;
      if art_opt.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
      begin
        opt.parambyname('tma_codice_materie_prime').asstring := art_opt.fieldbyname('tma_codice_conto_terzi').asstring;
      end;
    end
    else
    begin
      opt.parambyname('frn_codice').asstring := '';
    end;

    if ovr.active and (opt_progressivo = 0) then
    begin
      opt.parambyname('ovr_progressivo').asinteger := ovr.fieldbyname('progressivo').asinteger;
      opt.parambyname('ovr_riga').asinteger := ovr.fieldbyname('riga').asinteger;
    end
    else
    begin
      opt.parambyname('ovr_progressivo').asinteger := 0;
      opt.parambyname('ovr_riga').asinteger := 0;
    end;

    if opt_progressivo <> 0 then
    begin
      opt.parambyname('documento_origine').asstring := 'ordine produzione';
      opt.parambyname('doc_progressivo_origine').asinteger := opt_progressivo;
      opt.parambyname('doc_riga_origine').asinteger := opr_riga;
    end
    else if (v_ovr_progressivo.value <> 0) and (v_ovr_riga.value <> 0) then
    begin
      opt.parambyname('documento_origine').asstring := 'ordine ven';
      opt.parambyname('doc_progressivo_origine').asinteger := trunc(v_ovr_progressivo.value);
      opt.parambyname('doc_riga_origine').asinteger := trunc(v_ovr_riga.value);
    end
    else
    begin
      opt.parambyname('documento_origine').asstring := '';
      opt.parambyname('doc_progressivo_origine').asinteger := 0;
      opt.parambyname('doc_riga_origine').asinteger := 0;
    end;

    read_tabella(art_lot, opt.parambyname('art_codice').asstring);
    read_tabella(tmo_lot, opt.parambyname('tmo_codice_finiti').asstring);
    if (art_lot.fieldbyname('lotti').asstring = 'si') and (tmo_lot.fieldbyname('lotti').asstring = 'si') then
    begin
      opt.parambyname('lot_codice').asstring := arc.assegna_codice_lotto_automatico(opt.parambyname('data_documento').asdate, 'FORN', 1,
        opt.parambyname('data_documento').asdate, opt.parambyname('art_codice').asstring);
    end
    else
    begin
      opt.parambyname('lot_codice').asstring := '';
    end;

    opt.parambyname('avanzamento_fasi').asstring := avanzamento_fasi;
    opt.parambyname('fasi_non_sequenziali').asstring := fasi_non_sequenziali;

    if (avanzamento_fasi = 'no') and (opt.parambyname('frn_codice').asstring <> '') then
    begin
      read_tabella(arc.arcdit, 'frn', 'codice', opt.parambyname('frn_codice').asstring, 'tma_codice_conto_terzi');
      if archivio.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
      begin
        opt.parambyname('tma_codice_materie_prime').asstring := archivio.fieldbyname('tma_codice_conto_terzi').asstring;
      end;
    end;

    if nodoptr.data_inizio_lavorazione = '' then
    begin
      opt.parambyname('data_inizio_lavorazione').value := null;
    end
    else
    begin
      opt.parambyname('data_inizio_lavorazione').asdate := strtodate(nodoptr.data_inizio_lavorazione);
    end;

    opt.execsql;

    // ciclo
    if (nodoptr.codice = v_art_codice.text) and (esiste_configurazione_ovr) then
    begin
      crea_ciclo_da_configurazione(progressivo, nodo);
    end
    else
    begin
      cla.close;
      cla.parambyname('art_codice').asstring := nodoptr.codice;
      cla.open;

      if not cla.isempty then
      begin
        while not cla.eof do
        begin
          costo := 0;

          opc.parambyname('progressivo').asinteger := progressivo;
          opc.parambyname('sequenza').asstring := cla.fieldbyname('sequenza').asstring;
          opc.parambyname('fas_codice').asstring := cla.fieldbyname('fas_codice').asstring;
          opc.parambyname('mac_codice').asstring := cla.fieldbyname('mac_codice').asstring;
          if opt.parambyname('avanzamento_fasi').asstring = 'si' then
          begin
            opc.parambyname('frn_codice').asstring := cla.fieldbyname('frn_codice').asstring;
          end
          else
          begin
            opc.parambyname('frn_codice').asstring := '';
          end;
          opc.parambyname('note').asstring := cla.fieldbyname('note').asstring;

          if cla.fieldbyname('fas_tipo_operazione').asstring = 'globale' then
          begin
            quantita_lavorazione := cla.fieldbyname('quantita').asfloat;
          end
          else if cla.fieldbyname('fas_tipo_operazione').asstring = 'singola' then
          begin
            if cla.fieldbyname('operatore').asstring = '*' then
            begin
              quantita_lavorazione := nodoptr.quantita * cla.fieldbyname('quantita').asfloat;
            end
            else
            begin
              quantita_lavorazione := nodoptr.quantita / cla.fieldbyname('quantita').asfloat;
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
            opt.parambyname('art_codice').asstring, opt.parambyname('art_codice_finito').asstring,
            cla.fieldbyname('fas_codice').asstring, cla.fieldbyname('mac_codice').asstring,
            opt.parambyname('data_documento').asdatetime, quantita_lavorazione,
            cla.fieldbyname('quantita_attrezzaggio').asfloat, cla.fieldbyname('quantita_fine_attrezzaggio').asfloat);

          opc.execsql;

          cla.next;
        end;
      end;
    end;
    riga := 0;
  end
  else
  begin
    progressivo := opt_progressivo;
    riga := opr_riga;
  end;

  // righe
  nodo := nodo.getfirstchild;
  while nodo <> nil do
  begin
    nodoptr := nodo.data;

    if nodo.haschildren and (tipo_esplosione = 'tutti i livelli fino alle materie prime') then
    begin
      // salta semilavorato
    end
    else
    begin
      read_tabella(arc.arcdit, 'art', 'codice', nodoptr.codice, 'tum_codice,tipo_articolo');
      if archivio.fieldbyname('tipo_articolo').asstring <> 'livello distinta' then
      begin
        riga := riga + 1;

        opr.close;

        opr.parambyname('progressivo').asinteger := progressivo;
        opr.parambyname('riga').asinteger := riga;
        opr.parambyname('art_codice').asstring := nodoptr.codice;
        opr.parambyname('quantita').asfloat := nodoptr.quantita;
        if nodo.haschildren then
        begin
          opr.parambyname('semilavorato').asstring := 'si';
        end
        else
        begin
          opr.parambyname('semilavorato').asstring := 'no';
        end;

        opr.parambyname('costo_unitario').asfloat := nodoptr.prezzo;
        if (arc.dit.fieldbyname('assegna_costo_gesordp').asstring = 'si') and
          (nodoptr.prezzo = 0) and (opt.parambyname('frn_codice').asstring = '') then
        begin
          opr.parambyname('costo_unitario').asfloat := costo_unitario(nodoptr.codice);
        end;

        opr.parambyname('note').asstring := nodoptr.note;
        if nodoptr.tma_codice <> '' then
        begin
          opr.parambyname('tma_codice').asstring := nodoptr.tma_codice;
        end
        else
        begin
          opr.parambyname('tma_codice').asstring := opt.parambyname('tma_codice_materie_prime').asstring;
          if opr.parambyname('tma_codice').asstring = '' then
          begin
            opr.parambyname('tma_codice').asstring := tma_codice_materie_prime;
          end;
        end;

        (*
          if avanzamento_fasi = 'no' then
          begin
          read_tabella(art_opt, nodoptr.codice);
          if art_opt.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
          begin
          read_tabella(arc.arcdit, 'tma', 'codice', opr.parambyname('tma_codice').asstring, 'ignora_articoli_produzione');
          if archivio.fieldbyname('ignora_articoli_produzione').asstring <> 'si' then
          begin
          opr.parambyname('tma_codice').asstring := art_opt.fieldbyname('tma_codice_conto_terzi').asstring;
          end;
          end;
          end;
        *)

        opr.parambyname('assistenza_tecnica').asstring := nodoptr.assistenza_tecnica;
        opr.parambyname('sequenza_dsb').asinteger := nodoptr.sequenza;

        if arc.dit.fieldbyname('assegnazione_produzione').asstring = 'si' then
        begin
          mag_approntato.close;
          mag_approntato.parambyname('art_codice').asstring := opr.parambyname('art_codice').asstring;
          mag_approntato.parambyname('tma_codice').asstring := opr.parambyname('tma_codice').asstring;
          mag_approntato.open;
          if (mag_approntato.fieldbyname('esistenza').asfloat - mag_approntato.fieldbyname('approntato').asfloat) >=
            opr.parambyname('quantita').asfloat then
          begin
            opr.parambyname('quantita_approntata').asfloat := opr.parambyname('quantita').asfloat;
          end
          else
          begin
            opr.parambyname('quantita_approntata').asfloat := mag_approntato.fieldbyname('esistenza').asfloat -
              mag_approntato.fieldbyname('approntato').asfloat;
          end;
        end
        else
        begin
          opr.parambyname('quantita_approntata').asfloat := 0;
        end;

        opr.execsql;
      end
      else
      begin
        cla.close;
        cla.parambyname('art_codice').asstring := nodoptr.codice;
        cla.open;

        if not cla.isempty then
        begin
          while not cla.eof do
          begin
            costo := 0;

            opc.parambyname('progressivo').asinteger := progressivo;
            opc.parambyname('sequenza').asstring := assegna_opc_sequenza_auto(progressivo);
            opc.parambyname('fas_codice').asstring := cla.fieldbyname('fas_codice').asstring;
            opc.parambyname('mac_codice').asstring := cla.fieldbyname('mac_codice').asstring;
            if opt.parambyname('avanzamento_fasi').asstring = 'si' then
            begin
              opc.parambyname('frn_codice').asstring := cla.fieldbyname('frn_codice').asstring;
            end
            else
            begin
              opc.parambyname('frn_codice').asstring := '';
            end;
            opc.parambyname('note').asstring := cla.fieldbyname('note').asstring;

            if cla.fieldbyname('fas_tipo_operazione').asstring = 'globale' then
            begin
              quantita_lavorazione := cla.fieldbyname('quantita').asfloat;
            end
            else if cla.fieldbyname('fas_tipo_operazione').asstring = 'singola' then
            begin
              if cla.fieldbyname('operatore').asstring = '*' then
              begin
                quantita_lavorazione := nodoptr.quantita * cla.fieldbyname('quantita').asfloat;
              end
              else
              begin
                quantita_lavorazione := nodoptr.quantita / cla.fieldbyname('quantita').asfloat;
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
              nodoptr.codice, opt.parambyname('art_codice_finito').asstring,
              cla.fieldbyname('fas_codice').asstring, cla.fieldbyname('mac_codice').asstring,
              opt.parambyname('data_documento').asdatetime, quantita_lavorazione,
              cla.fieldbyname('quantita_attrezzaggio').asfloat, cla.fieldbyname('quantita_fine_attrezzaggio').asfloat);

            opc.execsql;

            cla.next;
          end;
        end;
      end;
    end;

    if nodo.haschildren then
    begin
      read_tabella(opc_data, progressivo);
      read_tabella(arc.arcdit, 'art', 'codice', nodoptr.codice, 'tipo_articolo');
      if (tipo_esplosione = 'generazione ordini per tutti i semilavorati') and
        (archivio.fieldbyname('tipo_articolo').asstring <> 'livello distinta') then
      begin
        crea_opt(nodo, progressivo, riga, opt.parambyname('progressivo').asinteger, art_codice_finito, false, v_data_consegna.date);
      end
      else
      begin
        crea_opt(nodo, progressivo, riga, opt.parambyname('progressivo').asinteger, art_codice_finito, true, v_data_consegna.date);
        ultima_riga.close;
        ultima_riga.parambyname('progressivo').asinteger := progressivo;
        ultima_riga.open;
        riga := ultima_riga.fieldbyname('riga').asinteger;
      end;
    end;

    nodo := nodo.getnextsibling;
  end;

  freeandnil(ultima_riga);
  freeandnil(opt);
  freeandnil(opr);
  freeandnil(opc);
  freeandnil(art_opt);
end;

procedure tcreordp.v_cruscotto_Click(sender: tobject);
var
  nodoptr: ^tnodo;
begin
  inherited;
  nodoptr := v_griglia.selected.data;
  if nodoptr <> nil then
  begin
    esegui_programma('CRUART', nodoptr.codice, true);
  end;
end;

procedure TCREORDP.v_data_inizio_lavorazione_Click(Sender: TObject);
begin
  inherited;
  data_inizio_lavorazione;
end;

procedure tcreordp.v_distinta_base_Click(sender: tobject);
var
  nodoptr: ^tnodo;
begin
  inherited;
  nodoptr := v_griglia.selected.data;
  if nodoptr <> nil then
  begin
    esegui_programma('GESDSB', vararrayof([nodoptr.codice, 0, '']), true);
  end;
end;

procedure tcreordp.v_grigliachange(sender: tobject; node: ttreenode);
var
  nodoptr: ^tnodo;
begin
  inherited;
  nodoptr := v_griglia.selected.data;
  v_art_codice_nodo.text := nodoptr.codice;
  v_art_descrizione_nodo.text := nodoptr.descrizione;
  v_quantita_nodo.value := nodoptr.quantita;
  v_esistenza_tma.value := nodoptr.esistenza_tma;
  v_approntato_tma.value := nodoptr.approntato_tma;
  v_esistenza.value := nodoptr.esistenza;
  v_esistenza_principale.value := nodoptr.esistenza_principale;
  v_tma_codice_finito.text := tma_codice_finiti;
  v_tma_codice_materia_prima.text := nodoptr.tma_codice;
  if nodoptr.tma_codice = '' then
  begin
    v_tma_codice_materia_prima.text := tma_codice_materie_prime;
  end;

  if nodoptr.codice = v_art_codice.text then
  begin
    abilita_campo(v_data_inizio_lavorazione);
  end
  else
  begin
    disabilita_campo(v_data_inizio_lavorazione);
  end;
end;

procedure tcreordp.v_grigliaenter(sender: tobject);
begin
  inherited;
  v_equivalenti.enabled := true;
  v_equivalenti_filtro.enabled := true;
  v_esplodi.enabled := true;
  v_inserisci.enabled := true;
  v_inserisci_sottoelemento.enabled := true;
  v_cancella.enabled := true;
  v_crea_ordini.enabled := true;
  v_distinta_base.enabled := true;
  v_espandi.enabled := true;
  v_comprimi.enabled := true;
  v_cancella_sottoelementi.enabled := true;
  abilita_campo(tool_inserimento_excel);

  begin
    v_esplodi_tutto.enabled := true;
  end;
  v_modifica_quantita.enabled := true;
  v_cruscotto.enabled := true;
  v_varia_quantita.enabled := true;
end;

procedure TCREORDP.v_grigliaExit(Sender: TObject);
begin
  inherited;
  disabilita_campo(tool_inserimento_excel);
end;

procedure tcreordp.v_grigliagetimageindex(sender: tobject; node: ttreenode);
var
  nodoptr: ^tnodo;
  quantita: double;
begin
  inherited;

  nodoptr := node.data;

  quantita := nodoptr.quantita;
  if not(node.haschildren) then
  begin
    if pos('distinta base', node.text) > 0 then
    begin
      node.imageindex := 13;
      node.selectedindex := 13;
      node.stateindex := -1;
    end
    else
    begin
      if nodoptr.esistenza_tma >= quantita then
      begin
        node.imageindex := 40;
        node.selectedindex := 40;
        node.stateindex := -1;
      end
      else if nodoptr.esistenza >= quantita then
      begin
        node.imageindex := 42;
        node.selectedindex := 42;
        node.stateindex := -1;
      end
      else
      begin
        node.imageindex := 41;
        node.selectedindex := 41;
        node.stateindex := -1;
      end;
    end;
  end
  else
  begin
    if nodoptr.esistenza_tma >= nodoptr.quantita then
    begin
      node.imageindex := 54;
      node.selectedindex := 54;
      node.stateindex := -1;
    end
    else if nodoptr.esistenza >= nodoptr.quantita then
    begin
      node.imageindex := 56;
      node.selectedindex := 56;
      node.stateindex := -1;
    end
    else
    begin
      node.imageindex := 55;
      node.selectedindex := 55;
      node.stateindex := -1;
    end;
  end;
end;

procedure tcreordp.data_inizio_lavorazione;
var
  nodoptr: ^tnodo;
  pr: timpalf;
begin
  inherited;

  nodoptr := v_griglia.selected.data;
  if nodoptr <> nil then
  begin
    if v_griglia.selected.haschildren then
    begin
      pr := timpalf.create(nil);
      try
        pr.tipo_campo := 'data';
        try
          pr.valore_passato := strtodate(nodoptr.data_inizio_lavorazione);
        except
          pr.valore_passato := date;
        end;
        pr.v_form_caption := 'data inizio lavorazione';
        pr.v_descrizione_caption := 'data inizio lavorazione';
        pr.v_width_campo := 91;
        pr.help := 'data inizio lavorazione';
        pr.showmodal;
        if datetostr(pr.valore_passato) = '30/12/1899' then
        begin
          nodoptr.data_inizio_lavorazione := '';
        end
        else
        begin
          nodoptr.data_inizio_lavorazione := datetostr(pr.valore_passato);
        end;
        v_griglia.selected.text := assegna_descrizione(nodoptr);
      finally
        freeandnil(pr);
      end;
    end;
  end;
end;

procedure tcreordp.v_inserisci_Click(sender: tobject);
var
  pr: tcreordp01;
begin
  inherited;

  if v_griglia.selected.parent = nil then
  begin
    messaggio(200, 'non è possibile creare un elemento a questo livello' + #13 +
      'inserire un sottoelemento');
  end
  else
  begin
    pr := tcreordp01.create(nil);
    if pr.esegui_form then
    begin
      pr.showmodal;

      if (pr.v_art_codice.text <> '') and (pr.v_quantita.value <> 0) then
      begin
        mag.close;
        mag.parambyname('art_codice').asstring := pr.v_art_codice.text;
        mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
        mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
        mag.open;

        inserisci_treeview(0, pr.v_art_codice.text, pr.v_art_descrizione.text, '', '', pr.v_quantita.value, 0,
          mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat, mag.fieldbyname('esistenza').asfloat,
          mag.fieldbyname('esistenza_principale').asfloat, v_griglia.selected.parent);
      end
      else
      begin
        messaggio(200, 'mancano codice articolo o quantità');
      end;
    end;
    pr.free;
  end;
end;

procedure tcreordp.v_inserisci_sottoelemento_Click(sender: tobject);
var
  pr: tcreordp01;
begin
  inherited;

  if v_griglia.selected.haschildren then
  begin
    messaggio(200, 'l''articolo è già esploso');
  end
  else
  begin
    if controllo_livello then
    begin
      pr := tcreordp01.create(nil);
      if pr.esegui_form then
      begin
        pr.showmodal;

        if (pr.v_art_codice.text <> '') and (pr.v_quantita.value <> 0) then
        begin
          mag.close;
          mag.parambyname('art_codice').asstring := pr.v_art_codice.text;
          mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
          mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
          mag.open;

          inserisci_treeview(0, pr.v_art_codice.text, pr.v_art_descrizione.text, '', '', pr.v_quantita.value, 0,
            mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat, mag.fieldbyname('esistenza').asfloat,
            mag.fieldbyname('esistenza_principale').asfloat, v_griglia.selected);
        end
        else
        begin
          messaggio(200, 'mancano codice articolo o quantità');
        end;
      end;
      pr.free;
    end;
  end;
end;

procedure tcreordp.v_ovr_progressivoenter(sender: tobject);
begin
  inherited;
  visarc_filtro_01 := 'evaso';
  visarc_filtro_02 := 'annullato';
end;

procedure tcreordp.v_ovr_progressivoexit(sender: tobject);
begin
  inherited;
  ovr_progressivo_controllo(true);
end;

procedure tcreordp.v_ovr_rigaenter(sender: tobject);
begin
  inherited;
  visarc_filtro_01 := v_ovr_progressivo.value;
end;

procedure tcreordp.v_ovr_rigaexit(sender: tobject);
var
  stringa: string;
begin
  inherited;
  ovr_riga_controllo(true);

  if controllo then
  begin
    v_art_codice.text := ovr.fieldbyname('art_codice').asstring;
    art_codice_controllo(false);
    v_quantita.value := ovr.fieldbyname('quantita').asfloat;

    if ovr.fieldbyname('numero').asinteger <> 0 then
    begin
      if ovr.fieldbyname('numero').asinteger = 1 then
      begin
        stringa := 'è già stato emesso 1 ordine di produzione ' + #13 +
          'per la quantità di ' + ovr.fieldbyname('quantita_produzione').asstring;
      end
      else
      begin
        stringa := 'sono già stati emessi ' + ovr.fieldbyname('numero').asstring +
          ' ordini di produzione ' + #13 +
          'per la quantità di ' + ovr.fieldbyname('quantita_produzione').asstring;
      end;
      if messaggio(300, stringa + #13 + #13 + 'conferma l''operazione') <> 1 then
      begin
        close;
      end;
    end;
  end;
end;

procedure tcreordp.formcreate(sender: tobject);
begin
  cerca_prezzi := tcerca_prezzo.create(arc.arc, arc.arcdit);
  tipinv := ttipinv.create;
  przinv := tprzinv.create;
  calfas := tcalfas.create;

  inherited;

  v_top_codice.text := arc.dit.fieldbyname('top_codice').asstring;
  v_top_codice_controllo(false);

  if v_top_codice.text = '' then
  begin
    v_tipo_esplosione.itemindex := v_tipo_esplosione.indexof(arc.dit.fieldbyname('tipo_esplosione').asstring);
  end
  else
  begin
    v_tipo_esplosione.itemindex := v_tipo_esplosione.indexof(top.fieldbyname('tipo_esplosione').asstring);
  end;

  if arc.dit.fieldbyname('utilizzo_varianti').asstring = 'no' then
  begin
    disabilita_campo(v_tvr_codice);
  end;
end;

procedure tcreordp.formdestroy(sender: tobject);
var
  i: integer;
  nodoptr: ^tnodo;
begin
  inherited;
  for i := 0 to v_griglia.items.count - 1 do
  begin
    nodoptr := v_griglia.items[i].data;
    dispose(nodoptr);
  end;

  freeandnil(cerca_prezzi);
  freeandnil(tipinv);
  freeandnil(przinv);
  freeandnil(calfas);
end;

procedure tcreordp.formkeydown(sender: tobject; var key: word; shift: tshiftstate);
begin
  if (parte_attiva = 'pannello') and
    (key = vk_return) and (shift = [ssctrl]) then
  begin
    fuoco(v_conferma);
  end
  else if screen.activecontrol = v_griglia then
  begin
    if (key = vk_f1) and (shift = []) then
    begin
      v_distinta_base_click(nil);
    end
    else if (key = vk_f2) and (shift = []) then
    begin
      v_equivalenti_click(nil);
    end
    else if (key = vk_f3) and (shift = []) then
    begin
      if controllo_livello then
      begin
        v_esplodi_click(nil);
      end;
    end
    else if (key = vk_f4) and (shift = []) then
    begin
      v_inserisci_click(nil);
    end
    else if (key = vk_f5) and (shift = []) then
    begin
      if controllo_livello then
      begin
        v_inserisci_sottoelemento_click(nil);
      end;
    end
    else if (key = vk_f6) and (shift = []) then
    begin
      v_cancella_click(nil);
    end
    else if (key = vk_f7) and (shift = []) then
    begin
      v_cancella_sottoelementi_click(nil);
    end
    else if (key = vk_f8) and (shift = []) then
    begin
      //if tipo_esplosione <> 'solo primo livello' then
      begin
        v_esplodi_tutto_click(nil);
      end;
    end
    else if (key = vk_f9) and (shift = []) then
    begin
      v_modifica_quantita_click(nil);
    end
    else if (key = vk_f11) and (shift = []) then
    begin
      v_cruscotto_click(nil);
    end
    else if (key = vk_f12) and (shift = []) then
    begin
      v_crea_ordini_click(nil);
    end
    else
    begin
      inherited;
    end;
  end
  else
  begin
    inherited;
  end;
end;

procedure tcreordp.formshow(sender: tobject);
begin
  //self.windowstate := wsMaximized;
  massimizza_form;

  if arc.dit.fieldbyname('usa_top_codice').asstring = 'no' then
  begin
    v_top_codice.enabled := false;
  end;

  v_data_consegna.date := date;

  if parametri_extra_programma_chiamato[0] <> null then
  begin
    v_selezione.itemindex := 1;
    v_ovr_progressivo.value := parametri_extra_programma_chiamato[0];
    v_ovr_riga.value := parametri_extra_programma_chiamato[1];
    v_art_codice.text := parametri_extra_programma_chiamato[2];
    v_quantita.value := parametri_extra_programma_chiamato[3];
    lot_codice_passato := parametri_extra_programma_chiamato[4];
    tma_codice_finiti_passato := parametri_extra_programma_chiamato[5];
    formula_passata := parametri_extra_programma_chiamato[6];
    cms_codice := parametri_extra_programma_chiamato[7];
    cmt_codice := parametri_extra_programma_chiamato[8];
    if parametri_extra_programma_chiamato[9] <> null then
    begin
      v_data_consegna.date := parametri_extra_programma_chiamato[9];
    end;
    if cms_codice <> '' then
    begin
      tool_commessa.visible := false;
    end;
    if parametri_extra_programma_chiamato[10] <> null then
    begin
      cli_codice := parametri_extra_programma_chiamato[10];
    end
    else
    begin
      cli_codice := '';
    end;
    data_inizio_lavorazione_passato := parametri_extra_programma_chiamato[22];

    ovr_progressivo_controllo(false);
    ovr_riga_controllo(false);
    art_codice_controllo(false);
  end;

  if parametri_extra_programma_chiamato[11] <> null then
  begin
    v_selezione.itemindex := 0;
    v_art_codice.text := parametri_extra_programma_chiamato[11];
    v_quantita.value := parametri_extra_programma_chiamato[12];
    v_data_consegna.date := parametri_extra_programma_chiamato[13];

    art_codice_controllo(false);
    fuoco(v_quantita);
  end;

  inherited;
end;

procedure tcreordp.art_codice_controllo(blocco: boolean);
begin
  if v_art_codice.enabled then
  begin
    tabella_controllo(false, art_01, v_art_codice, blocco, nil, nil, nil);
  end
  else
  begin
    tabella_controllo(true, art_01, v_art_codice, blocco, nil, nil, nil);
  end;
end;

procedure tcreordp.ovr_progressivo_controllo(blocco: boolean);
begin
  if v_ovr_progressivo.enabled then
  begin
    tabella_controllo(false, ovt, v_ovr_progressivo, blocco, nil, nil, nil);
  end
  else
  begin
    tabella_controllo(true, ovt, v_ovr_progressivo, blocco, nil, nil, nil);
  end;
  (*
    if controllo and blocco and not ovt.isempty then
    begin
    if v_data_consegna.date = 0 then
    begin
    v_data_consegna.date := ovt.fieldbyname('data_consegna').asdatetime;
    end;
    end;
  *)
end;

procedure tcreordp.ovr_riga_controllo(blocco: boolean);
var
  codice: variant;
begin
  tabella_controllo(true, ovr, v_ovr_progressivo, v_ovr_riga, blocco, nil, nil, nil);
  if controllo then
  begin
    if blocco and v_ovr_riga.enabled and ovr.isempty then
    begin
      codice := 0;
      esegui_visarc(arc.arcdit, 'OVR', 'OVR', codice, v_ovr_progressivo.value, '', '', '', '', '');
      if codice <> 0 then
      begin
        v_ovr_riga.value := codice;
        read_tabella(ovr, vararrayof([v_ovr_progressivo.value, v_ovr_riga.value]));
      end;
    end;
    if blocco and not ovr.isempty then
    begin
      if v_data_consegna.date = 0 then
      begin
        v_data_consegna.date := ovr.fieldbyname('data_consegna').asdatetime;
      end;
    end;
  end;
end;

procedure tcreordp.pannello_commessaenter(sender: tobject);
begin
  parte_attiva := 'pannello';

  inherited;

  tool_commessa.enabled := true;

  if v_ovr_progressivo.value <> 0 then
  begin
    fuoco(v_top_codice);
  end;
end;

procedure tcreordp.pannello_commessaexit(sender: tobject);
begin
  inherited;

  parte_attiva := '';

  art_codice_controllo(true);
  ovr_progressivo_controllo(true);
  ovr_riga_controllo(true);
  v_top_codice_controllo(true);
  v_tvr_codice_controllo(true);
  assegna_top_codice;

  if avanzamento_fasi = 'si' then
  begin
    v_avanzamento_fasi.checked := true;
  end;

  if fasi_non_sequenziali = 'si' then
  begin
    v_fasi_non_sequenziali.checked := true;
  end;

  (*
    if (tipo_esplosione <> 'tutti i livelli fino alle materie prime') and
    (tipo_esplosione <> 'generazione ordini per tutti i semilavorati') then
  *)

  if tipo_esplosione = 'nessuno' then
  begin
    messaggio(200, 'per operare con questa funzione è necessario che la modalità di generazione' + #13 +
      'degli ordini di produzione impostata in anagrafica ditta o nel codice documento sia:' + #13 +
      '[solo primo livello] oppure' + #13 +
      '[tutti i livelli fino alle materie prime] oppure' + #13 +
      '[generazione ordini per tutti i semilavorati]');
    close;
  end
  else
  begin
    tool_commessa.enabled := false;
  end;
end;

procedure tcreordp.tool_commessaclick(sender: tobject);
var
  pr: tcreordp02;
begin
  inherited;

  pr := tcreordp02.create(nil);
  if pr.esegui_form then
  begin
    pr.cli_codice := cli_codice;
    pr.showmodal;
    if (pr.cms_codice <> '') and (pr.cmt_codice <> '') then
    begin
      cms_codice := pr.cms_codice;
      cmt_codice := pr.cmt_codice;
    end;
  end;
  pr.free;
end;

procedure TCREORDP.tool_inserimento_excelClick(Sender: TObject);
var
  i: word;
  art_codice, descrizione: string;
  quantita: double;
  nodoptr: ^tnodo;
begin
  inherited;

  if not assigned(v_griglia.selected) then
  begin
    messaggio(m_info, 'selezionare un elemento padre per cui caricare la distinta');
    exit;
  end;

  nodoptr := v_griglia.selected.data;

  opendialog.defaultext := 'xls';
  opendialog.filter := 'file Excel (*.xls, *.xlsx)|*.xls;*.xlsx';
  opendialog.initialdir := cartella_file;
  opendialog.filename := '';
  opendialog.execute;

  if opendialog.filename <> '' then
  begin
    arc.xlswrite.clear;
    arc.xlswrite.filename := opendialog.filename;
    arc.xlswrite.read;

    for i := 0 to arc.xlswrite.sheets[0].lastrow do
    begin
      art_codice := arc.xlswrite.sheets[0].asstring[0, i];
      quantita := arc.xlswrite.sheets[0].asfloat[1, i] * nodoptr.quantita;
      descrizione := arc.xlswrite.sheets[0].asstring[2, i];

      if (read_tabella(art, art_codice)) and (quantita <> 0) then
      begin

        mag.close;
        mag.parambyname('art_codice').asstring := art_codice;
        mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
        mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
        mag.open;

        inserisci_treeview(0, art_codice, art.fieldbyname('descrizione').asstring, descrizione, '', quantita, 0,
          mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat, mag.fieldbyname('esistenza').asfloat,
          mag.fieldbyname('esistenza_principale').asfloat, v_griglia.selected);
      end
      else
      begin
        messaggio(200, 'mancano codice articolo o quantità');
      end;
    end;

    messaggio(100, 'importazione eseguita');
  end;
end;

procedure tcreordp.v_modifica_quantita_Click(sender: tobject);
var
  pr: tcreordp01;
  nodoptr: ^tnodo;
begin
  inherited;

  nodoptr := v_griglia.selected.data;

  pr := tcreordp01.create(nil);
  if pr.esegui_form then
  begin
    pr.art_codice := nodoptr.codice;
    pr.quantita := nodoptr.quantita;
    pr.showmodal;

    if (pr.v_quantita.value <> 0) then
    begin
      nodoptr.quantita := pr.v_quantita.value;
      v_griglia.selected.data := nodoptr;
      v_griglia.selected.text := assegna_descrizione(nodoptr);
    end;
  end;
  pr.free;

  v_grigliachange(v_griglia, v_griglia.selected);
end;

procedure tcreordp.v_equivalenti_Click(sender: tobject);
var
  nodoptr: ^tnodo;
  nodo: ttreenode;
  pr: tvisequ;
  sostituisci_struttura: boolean;
begin
  inherited;
  nodoptr := v_griglia.selected.data;
  if nodoptr <> nil then
  begin
    pr := tvisequ.create(nil);
    if pr.esegui_form then
    begin
      pr.codice := nodoptr.codice;
      pr.showmodal;

      if pr.codice <> nodoptr.codice then
      begin
        sostituisci_struttura := false;
        dsb.close;
        dsb.parambyname('art_codice_padre').asstring := pr.codice;
        dsb.open;
        if not dsb.isempty then
        begin
          if messaggio(300, 'si vuole sostituire il componente con quelli della distinta base dell''articolo selezionato?') = 1 then
          begin
            sostituisci_struttura := true;
          end;
        end;

        if not sostituisci_struttura then
        begin
          mag.close;
          mag.parambyname('art_codice').asstring := pr.codice;
          mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
          mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
          mag.open;

          read_tabella(art, pr.codice);
          nodoptr.codice := pr.codice;
          nodoptr.descrizione := art.fieldbyname('descrizione').asstring;
          nodoptr.tum_codice := art.fieldbyname('tum_codice').asstring;
          nodoptr.tum_codice_dsb := art.fieldbyname('tum_codice_dsb').asstring;
          nodoptr.esistenza_tma := mag.fieldbyname('esistenza_tma').asfloat;
          nodoptr.approntato_tma := mag.fieldbyname('approntato_tma').asfloat;
          nodoptr.esistenza := mag.fieldbyname('esistenza').asfloat;
          nodoptr.esistenza_principale := mag.fieldbyname('esistenza_principale').asfloat;
          if art.fieldbyname('tcn_codice').asstring <> '' then
          begin
            nodoptr.assistenza_tecnica := 'si';
          end
          else
          begin
            nodoptr.assistenza_tecnica := 'no';
          end;
          nodoptr.sequenza := 0;

          v_griglia.selected.data := nodoptr;
          v_griglia.selected.text := assegna_descrizione(nodoptr);
        end
        else
        begin
          nodo := v_griglia.selected.parent;
          v_griglia.items.delete(v_griglia.selected);
          dsb.first;
          while not dsb.eof
            do
          begin
            mag.close;
            mag.parambyname('art_codice').asstring := dsb.fieldbyname('art_codice_figlio').asstring;
            mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
            mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
            mag.open;

            read_tabella(art, dsb.fieldbyname('art_codice_figlio').asstring);
            inserisci_treeview(0, dsb.fieldbyname('art_codice_figlio').asstring,
              art.fieldbyname('descrizione').asstring, '', dsb.fieldbyname('tma_codice').asstring,
              dsb.fieldbyname('quantita').asfloat * v_quantita.value,
              dsb.fieldbyname('prezzo').asfloat, mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat,
              mag.fieldbyname('esistenza').asfloat, mag.fieldbyname('esistenza_principale').asfloat, nodo);

            dsb.next;
          end;
        end;
      end;
    end;
    pr.free;

    v_grigliachange(v_griglia, v_griglia.selected);
  end;
end;

procedure TCREORDP.v_equivalenti_filtro_Click(Sender: TObject);
var
  pr: tanaequ;
  nodoptr: ^tnodo;
begin
  pr := tanaequ.create(nil);
  if pr.esegui_form then
  begin
    nodoptr := v_griglia.selected.data;
    pr.art_codice := nodoptr.codice;
    if nodoptr.tma_codice <> '' then
    begin
      pr.tma_codice := nodoptr.tma_codice;
    end
    else
    begin
      pr.tma_codice := tma_codice_materie_prime;
    end;
    pr.art_codice_filtro := v_art_codice.text;
    pr.showmodal;
    if pr.art_codice_assegnato <> '' then
    begin
      mag.close;
      mag.parambyname('art_codice').asstring := pr.art_codice_assegnato;
      mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
      mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
      mag.open;

      read_tabella(art, pr.art_codice_assegnato);
      nodoptr.codice := pr.art_codice_assegnato;
      nodoptr.descrizione := art.fieldbyname('descrizione').asstring;
      nodoptr.tum_codice := art.fieldbyname('tum_codice').asstring;
      nodoptr.tum_codice_dsb := art.fieldbyname('tum_codice_dsb').asstring;
      nodoptr.esistenza_tma := mag.fieldbyname('esistenza_tma').asfloat;
      nodoptr.approntato_tma := mag.fieldbyname('approntato_tma').asfloat;
      nodoptr.esistenza := mag.fieldbyname('esistenza').asfloat;
      nodoptr.esistenza_principale := mag.fieldbyname('esistenza_principale').asfloat;
      if art.fieldbyname('tcn_codice').asstring <> '' then
      begin
        nodoptr.assistenza_tecnica := 'si';
      end
      else
      begin
        nodoptr.assistenza_tecnica := 'no';
      end;
      nodoptr.sequenza := 0;

      v_griglia.selected.data := nodoptr;
      v_griglia.selected.text := assegna_descrizione(nodoptr);
    end;
  end;
  pr.free;
end;

procedure tcreordp.v_espandi_Click(sender: tobject);
begin
  inherited;
  v_griglia.fullexpand;
end;

procedure tcreordp.v_esplodi_Click(sender: tobject);
var
  prosegui: boolean;
  nodoptr: ^tnodo;

  pr: tvisequ;
  art_codice, art_descrizione: string;
  i: word;
  lista_art_codice, lista_art_descrizione, lista_quantita: tstringlist;
  art_codice_principale: string;
  scedsbequ: tscedsbequ;
  query_cnf: tmyquery_go;
  //modifica
  ah6_nodoptr: ^tnodo;
  ah6_query_cnf: tmyquery_go;
  //fine
begin
  inherited;

  lista_art_codice := tstringlist.create;
  lista_art_descrizione := tstringlist.create;
  lista_quantita := tstringlist.create;

  if v_griglia.selected.haschildren then
  begin
    messaggio(200, 'l''articolo è già esploso');
  end
  else
  begin
    nodoptr := v_griglia.selected.data;

    if controllo_livello then
    begin
      prosegui := true;

      art_codice_principale := nodoptr.codice;
      if read_tabella(dsb_equ, art_codice_principale) then
      begin
        if messaggio(300, 'l''articolo da produrre [' + art_codice_principale +
          '] ha articoli equivalenti con distinta base' + slinebreak +
          'confermare per selezionare la distinta base di uno degli equivalenti') = 1 then
        begin
          scedsbequ := tscedsbequ.create(nil);
          try
            scedsbequ.dsb := dsb_equ;
            scedsbequ.showmodal;
            if scedsbequ.art_codice <> '' then
            begin
              art_codice_principale := scedsbequ.art_codice;
            end;
          finally
            freeandnil(scedsbequ);
          end;
        end;
      end;

      read_tabella(arc.arcdit, 'art', 'codice', art_codice_principale, 'materia_prima');
      if archivio.fieldbyname('materia_prima').asstring = 'si' then
      begin
        if tipo_esplosione <> 'solo primo livello' then
        begin
          if messaggio(300, 'l''articolo [' + art_codice_principale + '] ' +
            'è stato definito come materia prima' + #13 +
            'conferma per NON effettuare l''esplosione dei componenti') = 1 then
          begin
            prosegui := false;
          end;
        end
        else
        begin
          prosegui := false;
        end;
      end;

      if prosegui then
      begin
        //modifica
        ah6_nodoptr := v_griglia.selected.data;
        if (ah6_nodoptr.codice = v_art_codice.text) and (ah6_esiste_configurazione_ovr) then
        begin
          ah6_query_cnf := tmyquery_go.create(nil);
          ah6_query_cnf.connection := arc.arcdit;
          ah6_query_cnf.sql.add('select cnf.*,');
          ah6_query_cnf.sql.add('  concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione');
          ah6_query_cnf.sql.add('from cnf');
          ah6_query_cnf.sql.add('inner join ovr on ovr.configurazione = cnf.configurazione');
          ah6_query_cnf.sql.add('inner join art on art.codice = cnf.art_codice');
          ah6_query_cnf.sql.add('where ovr.progressivo = :progressivo');
          ah6_query_cnf.sql.add('  and ovr.riga = :riga');
          ah6_query_cnf.sql.add('order by cnf.sequenza');
          ah6_query_cnf.parambyname('progressivo').asinteger := v_ovr_progressivo.intvalue;
          ah6_query_cnf.parambyname('riga').asinteger := v_ovr_riga.intvalue;
          ah6_query_cnf.open;
          while not ah6_query_cnf.eof do
          begin
            art_codice := ah6_query_cnf.fieldbyname('art_codice').asstring;
            art_descrizione := ah6_query_cnf.fieldbyname('art_descrizione').asstring;

            mag.close;
            mag.parambyname('art_codice').asstring := art_codice;
            mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
            mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
            mag.open;

            lista_art_codice.clear;
            lista_art_descrizione.clear;
            lista_quantita.clear;

            lista_art_codice.add(art_codice);
            lista_art_descrizione.add(art_descrizione);
            lista_quantita.add(ah6_query_cnf.fieldbyname('quantita').asstring);

            for i := 0 to lista_art_codice.count - 1 do
            begin
              if strtofloat(lista_quantita[i]) <> 0 then
              begin
                inserisci_treeview(ah6_query_cnf.fieldbyname('sequenza').asinteger,
                  lista_art_codice[i], lista_art_descrizione[i], '',
                  tma_codice_materie_prime, arrotonda(ah6_nodoptr.quantita * strtofloat(lista_quantita[i]), 4),
                  ah6_query_cnf.fieldbyname('prezzo').asfloat, mag.fieldbyname('esistenza_tma').asfloat,
                  mag.fieldbyname('approntato_tma').asfloat,
                  mag.fieldbyname('esistenza').asfloat, mag.fieldbyname('esistenza_principale').asfloat,
                  v_griglia.selected);
              end;
            end;

            ah6_query_cnf.next;
          end;

          v_griglia.selected.expand(false);

          if ah6_query_cnf.isempty then
          begin
            v_griglia.selected.haschildren := false;
          end
          else
          begin
            v_griglia.selected.haschildren := true;
          end;

          ah6_query_cnf.free;
        end
        else
        begin
        //modifica fine
        if (nodoptr.codice = v_art_codice.text) and esiste_configurazione_ovr then
        begin
          query_cnf := tmyquery_go.create(nil);
          query_cnf.connection := arc.arcdit;
          query_cnf.sql.add('select cnf.*,');
          query_cnf.sql.add('  concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione');
          query_cnf.sql.add('from cnf');
          query_cnf.sql.add('inner join ovr on ovr.configurazione = cnf.configurazione');
          query_cnf.sql.add('inner join art on art.codice = cnf.art_codice');
          query_cnf.sql.add('where ovr.progressivo = :progressivo');
          query_cnf.sql.add('  and ovr.riga = :riga');
          query_cnf.sql.add('order by cnf.sequenza');
          query_cnf.parambyname('progressivo').asinteger := v_ovr_progressivo.intvalue;
          query_cnf.parambyname('riga').asinteger := v_ovr_riga.intvalue;
          query_cnf.open;
          while not query_cnf.eof do
          begin
            art_codice := query_cnf.fieldbyname('art_codice').asstring;
            art_descrizione := query_cnf.fieldbyname('art_descrizione').asstring;

            mag.close;
            mag.parambyname('art_codice').asstring := art_codice;
            mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
            mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
            mag.open;

            lista_art_codice.clear;
            lista_art_descrizione.clear;
            lista_quantita.clear;

            lista_art_codice.add(art_codice);
            lista_art_descrizione.add(art_descrizione);
            lista_quantita.add(query_cnf.fieldbyname('quantita').asstring);

            for i := 0 to lista_art_codice.count - 1 do
            begin
              if strtofloat(lista_quantita[i]) <> 0 then
              begin
                inserisci_treeview(query_cnf.fieldbyname('sequenza').asinteger,
                  lista_art_codice[i], lista_art_descrizione[i], '',
                  tma_codice_materie_prime, arrotonda(nodoptr.quantita * strtofloat(lista_quantita[i]), 4),
                  query_cnf.fieldbyname('prezzo').asfloat, mag.fieldbyname('esistenza_tma').asfloat,
                  mag.fieldbyname('approntato_tma').asfloat,
                  mag.fieldbyname('esistenza').asfloat, mag.fieldbyname('esistenza_principale').asfloat,
                  v_griglia.selected);
              end;
            end;

            query_cnf.next;
          end;

          v_griglia.selected.expand(false);

          if query_cnf.isempty then
          begin
            v_griglia.selected.haschildren := false;
          end
          else
          begin
            v_griglia.selected.haschildren := true;
          end;

          query_cnf.free;
        end
        else
        begin
          dsb.close;
          dsb.parambyname('art_codice_padre').asstring := art_codice_principale;
          dsb.open;
          while not dsb.eof do
          begin
            art_codice := dsb.fieldbyname('art_codice_figlio').asstring;
            art_descrizione := dsb.fieldbyname('art_descrizione').asstring;

            lista_art_codice.clear;
            lista_art_descrizione.clear;
            lista_quantita.clear;

            //  varianti
            if not assegna_variante(v_tvr_codice.text, dsb.fieldbyname('art_codice_padre').asstring,
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
                          read_tabella(arc.arcdit, 'art', 'codice', lista_art_codice[i], 'descrizione1, descrizione2');
                          art_descrizione := archivio.fieldbyname('descrizione1').asstring + ' ' + archivio.fieldbyname('descrizione2').asstring;
                        end;
                      end;
                    finally
                      freeandnil(pr);
                    end;
                  end;
                end;

                mag.close;
                mag.parambyname('art_codice').asstring := lista_art_codice[i];
                if dsb.fieldbyname('tma_codice').asstring <> '' then
                begin
                  mag.parambyname('tma_codice').asstring := dsb.fieldbyname('tma_codice').asstring;
                end
                else
                begin
                  mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
                end;
                mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
                mag.open;

                inserisci_treeview(dsb.fieldbyname('sequenza').asinteger,
                  lista_art_codice[i], lista_art_descrizione[i], dsb.fieldbyname('descrizione').asstring,
                  dsb.fieldbyname('tma_codice').asstring, arrotonda(nodoptr.quantita * strtofloat(lista_quantita[i]), 4),
                  dsb.fieldbyname('prezzo').asfloat, mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat,
                  mag.fieldbyname('esistenza').asfloat, mag.fieldbyname('esistenza_principale').asfloat, v_griglia.selected);
              end;
            end;

            dsb.next;
          end;
          v_griglia.selected.expand(false);

          if dsb.isempty then
          begin
            v_griglia.selected.haschildren := false;
          end
          else
          begin
            v_griglia.selected.haschildren := true;
          end;
        end;
        //modifica
        end;
        //modifica fine
      end
      else
      begin
        v_griglia.selected.haschildren := false;
      end;
    end;
  end;

  freeandnil(lista_art_codice);
  freeandnil(lista_art_descrizione);
  freeandnil(lista_quantita);
end;

procedure tcreordp.v_esplodi_tutto_Click(sender: tobject);
var
  nodoptr: ^tnodo;

  art_codice: string;
  scedsbequ: tscedsbequ;
begin
  inherited;

  v_griglia.select(v_griglia.items.getfirstnode);
  nodoptr := v_griglia.selected.data;

  art_codice := nodoptr.codice;

  if read_tabella(dsb_equ, art_codice) then
  begin
    if messaggio(300, 'l''articolo da produrre [' + art_codice + '] ha articoli equivalenti con distinta base' + slinebreak +
      'confermare per selezionare la distinta base di uno degli equivalenti') = 1 then
    begin
      scedsbequ := tscedsbequ.create(nil);
      scedsbequ.dsb := dsb_equ;
      scedsbequ.showmodal;
      if scedsbequ.art_codice <> '' then
      begin
        art_codice := scedsbequ.art_codice;
      end;
      freeandnil(scedsbequ);
    end;
  end;

  if ha_figli(art_codice) and not v_griglia.selected.haschildren then
  begin
    v_griglia.selected.haschildren := true;
    esplodi_dsb(art_codice, nodoptr.quantita, v_griglia.selected);
    v_griglia.fullexpand;
    v_griglia.select(v_griglia.items.getfirstnode);
  end
  else
  begin
    //modifica
    if art_codice = v_art_codice.text then
    begin
     if (ah6_esiste_configurazione_ovr) then
     begin
      v_griglia.selected.haschildren := true;
      esplodi_dsb(art_codice, nodoptr.quantita, v_griglia.selected);
      v_griglia.fullexpand;
      v_griglia.select(v_griglia.items.getfirstnode);
     end
     else
     begin
      if not ha_figli(art_codice) then
      begin
        messaggio(200, 'articolo senza distinta base e configurazione');
      end
      else
      begin
        messaggio(200, 'distinta base/configurazione già esplosa per l''articolo: ' + art_codice);
      end;
     end;
    end
    else
    begin
    //modifica fine
    if not ha_figli(art_codice) then
    begin
      messaggio(200, 'articolo senza distinta base');
    end
    else
    begin
      messaggio(200, 'distinta base già esplosa per l''articolo: ' + art_codice);
    end;
    //modifica
    end;
    //modifica fine
  end;
end;

procedure tcreordp.esplodi_dsb(art_codice_dsb: string; quantita: double; elemento_selezionato: ttreenode);
var
  prosegui: boolean;
  nodo, nodo_creato: ttreenode;
  nodoptr: ^tnodo;

  pr: tvisequ;
  art_codice, art_descrizione: string;

  i: word;
  lista_art_codice, lista_art_descrizione, lista_quantita: tstringlist;
  query_cnf: tmyquery_go;
  //modifica
  ah6_nodoptr: ^tnodo;
  ah6_query_cnf: tmyquery_go;
  //fine
begin
  lista_art_codice := tstringlist.create;
  lista_art_descrizione := tstringlist.create;
  lista_quantita := tstringlist.create;

  nodoptr := elemento_selezionato.data;
  //modifica
  ah6_nodoptr := elemento_selezionato.data;
  if (ah6_nodoptr.codice = v_art_codice.text) and (ah6_esiste_configurazione_ovr) then
  begin
    ah6_query_cnf := tmyquery_go.create(nil);
    ah6_query_cnf.connection := arc.arcdit;
    ah6_query_cnf.sql.add('select cnf.*,');
    ah6_query_cnf.sql.add('  concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione');
    ah6_query_cnf.sql.add('from cnf');
    ah6_query_cnf.sql.add('inner join ovr on ovr.configurazione = cnf.configurazione');
    ah6_query_cnf.sql.add('inner join art on art.codice = cnf.art_codice');
    ah6_query_cnf.sql.add('where ovr.progressivo = :progressivo');
    ah6_query_cnf.sql.add('  and ovr.riga = :riga');
    ah6_query_cnf.sql.add('order by cnf.sequenza');
    ah6_query_cnf.parambyname('progressivo').asinteger := v_ovr_progressivo.intvalue;
    ah6_query_cnf.parambyname('riga').asinteger := v_ovr_riga.intvalue;
    ah6_query_cnf.open;
    while not ah6_query_cnf.eof do
    begin
      art_codice := ah6_query_cnf.fieldbyname('art_codice').asstring;
      art_descrizione := ah6_query_cnf.fieldbyname('art_descrizione').asstring;

      mag.close;
      mag.parambyname('art_codice').asstring := art_codice;
      mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
      mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
      mag.open;

      lista_art_codice.clear;
      lista_art_descrizione.clear;
      lista_quantita.clear;

      lista_art_codice.add(art_codice);
      lista_art_descrizione.add(art_descrizione);
      lista_quantita.add(ah6_query_cnf.fieldbyname('quantita').asstring);

      for i := 0 to lista_art_codice.count - 1 do
      begin
        if strtofloat(lista_quantita[i]) <> 0 then
        begin
          nodo_creato := inserisci_treeview(ah6_query_cnf.fieldbyname('sequenza').asinteger,
            lista_art_codice[i], lista_art_descrizione[i], '',
            tma_codice_materie_prime, arrotonda(quantita * strtofloat(lista_quantita[i]), 4),
            ah6_query_cnf.fieldbyname('prezzo').asfloat, mag.fieldbyname('esistenza_tma').asfloat,
            mag.fieldbyname('approntato_tma').asfloat,
            mag.fieldbyname('esistenza').asfloat, mag.fieldbyname('esistenza_principale').asfloat,
            elemento_selezionato);

          if ha_figli(lista_art_codice[i]) then
          begin
            prosegui := true;
            read_tabella(arc.arcdit, 'art', 'codice', lista_art_codice[i], 'materia_prima');
            if archivio.fieldbyname('materia_prima').asstring = 'si' then
            begin
              if tipo_esplosione <> 'solo primo livello' then
              begin
                if messaggio(300, 'l''articolo [' + art_codice + '] ' +
                  'è stato definito come materia prima' + #13 +
                  'conferma per NON effettuare l''esplosione dei componenti') = 1 then
                begin
                  prosegui := false;
                end;
              end
              else
              begin
                prosegui := false;
              end;
            end;

            if prosegui then
            begin
              nodo_creato.haschildren := true;
            end
            else
            begin
              nodo_creato.haschildren := false;
            end;
          end
          else
          begin
            nodo_creato.haschildren := false;
          end;

        end;
      end;
      ah6_query_cnf.next;
    end;
    ah6_query_cnf.free;
  end
  else
  begin
  //modifica fine
  if (nodoptr.codice = v_art_codice.text) and esiste_configurazione_ovr then
  begin
    query_cnf := tmyquery_go.create(nil);
    query_cnf.connection := arc.arcdit;
    query_cnf.sql.add('select cnf.*,');
    query_cnf.sql.add('  concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione');
    query_cnf.sql.add('from cnf');
    query_cnf.sql.add('inner join ovr on ovr.configurazione = cnf.configurazione');
    query_cnf.sql.add('inner join art on art.codice = cnf.art_codice');
    query_cnf.sql.add('where ovr.progressivo = :progressivo');
    query_cnf.sql.add('  and ovr.riga = :riga');
    query_cnf.sql.add('order by cnf.sequenza');
    query_cnf.parambyname('progressivo').asinteger := v_ovr_progressivo.intvalue;
    query_cnf.parambyname('riga').asinteger := v_ovr_riga.intvalue;
    query_cnf.open;
    while not query_cnf.eof do
    begin
      art_codice := query_cnf.fieldbyname('art_codice').asstring;
      art_descrizione := query_cnf.fieldbyname('art_descrizione').asstring;

      mag.close;
      mag.parambyname('art_codice').asstring := art_codice;
      mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
      mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
      mag.open;

      lista_art_codice.clear;
      lista_art_descrizione.clear;
      lista_quantita.clear;

      lista_art_codice.add(art_codice);
      lista_art_descrizione.add(art_descrizione);
      lista_quantita.add(query_cnf.fieldbyname('quantita').asstring);

      for i := 0 to lista_art_codice.count - 1 do
      begin
        if strtofloat(lista_quantita[i]) <> 0 then
        begin
          nodo_creato := inserisci_treeview(query_cnf.fieldbyname('sequenza').asinteger,
            lista_art_codice[i], lista_art_descrizione[i], '',
            tma_codice_materie_prime, arrotonda(quantita * strtofloat(lista_quantita[i]), 4),
            query_cnf.fieldbyname('prezzo').asfloat, mag.fieldbyname('esistenza_tma').asfloat,
            mag.fieldbyname('approntato_tma').asfloat,
            mag.fieldbyname('esistenza').asfloat, mag.fieldbyname('esistenza_principale').asfloat,
            elemento_selezionato);

          if ha_figli(lista_art_codice[i]) then
          begin
            prosegui := true;
            read_tabella(arc.arcdit, 'art', 'codice', lista_art_codice[i], 'materia_prima');
            if archivio.fieldbyname('materia_prima').asstring = 'si' then
            begin
              if tipo_esplosione <> 'solo primo livello' then
              begin
                if messaggio(300, 'l''articolo [' + art_codice + '] ' +
                  'è stato definito come materia prima' + #13 +
                  'conferma per NON effettuare l''esplosione dei componenti') = 1 then
                begin
                  prosegui := false;
                end;
              end
              else
              begin
                prosegui := false;
              end;
            end;

            if prosegui then
            begin
              nodo_creato.haschildren := true;
            end
            else
            begin
              nodo_creato.haschildren := false;
            end;
          end
          else
          begin
            nodo_creato.haschildren := false;
          end;

        end;
      end;
      query_cnf.next;
    end;
    query_cnf.free;
  end
  else
  begin
    dsb.close;
    dsb.parambyname('art_codice_padre').asstring := art_codice_dsb;
    dsb.open;
    while not dsb.eof do
    begin
      art_codice := dsb.fieldbyname('art_codice_figlio').asstring;
      art_descrizione := dsb.fieldbyname('art_descrizione').asstring;

      if arc.dit.fieldbyname('utilizzo_equivalenti').asstring = 'si' then
      begin
        if read_tabella(equ, art_codice) then
        begin
          pr := tvisequ.create(nil);
          try
            if pr.esegui_form then
            begin
              pr.codice := art_codice;
              pr.showmodal;
              if pr.codice <> art_codice then
              begin
                art_codice := pr.codice;
                read_tabella(arc.arcdit, 'art', 'codice', art_codice, 'descrizione1, descrizione2');
                art_descrizione := archivio.fieldbyname('descrizione1').asstring + ' ' + archivio.fieldbyname('descrizione2').asstring;
              end;
            end;
          finally
            freeandnil(pr);
          end;
        end;
      end;

      mag.close;
      mag.parambyname('art_codice').asstring := art_codice;
      if dsb.fieldbyname('tma_codice').asstring <> '' then
      begin
        mag.parambyname('tma_codice').asstring := dsb.fieldbyname('tma_codice').asstring;
      end
      else
      begin
        mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
      end;
      mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
      mag.open;

      lista_art_codice.clear;
      lista_art_descrizione.clear;
      lista_quantita.clear;

      //  varianti
      if not assegna_variante(v_tvr_codice.text, dsb.fieldbyname('art_codice_padre').asstring,
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
          nodo_creato := inserisci_treeview(dsb.fieldbyname('sequenza').asinteger,
            lista_art_codice[i], lista_art_descrizione[i], dsb.fieldbyname('descrizione').asstring,
            dsb.fieldbyname('tma_codice').asstring, arrotonda(quantita * strtofloat(lista_quantita[i]), 4),
            dsb.fieldbyname('prezzo').asfloat, mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat,
            mag.fieldbyname('esistenza').asfloat, mag.fieldbyname('esistenza_principale').asfloat, elemento_selezionato);

          if ha_figli(lista_art_codice[i]) then
          begin
            prosegui := true;
            read_tabella(arc.arcdit, 'art', 'codice', lista_art_codice[i], 'materia_prima');
            if archivio.fieldbyname('materia_prima').asstring = 'si' then
            begin
              if tipo_esplosione <> 'solo primo livello' then
              begin
                if messaggio(300, 'l''articolo [' + art_codice + '] ' +
                  'è stato definito come materia prima' + #13 +
                  'conferma per NON effettuare l''esplosione dei componenti') = 1 then
                begin
                  prosegui := false;
                end;
              end
              else
              begin
                prosegui := false;
              end;
            end;

            if prosegui then
            begin
              nodo_creato.haschildren := true;
            end
            else
            begin
              nodo_creato.haschildren := false;
            end;
          end
          else
          begin
            nodo_creato.haschildren := false;
          end;

        end;
      end;

      dsb.next;
    end;
  end;
  //modifica
  end;
  //fine

  if tipo_esplosione <> 'solo primo livello' then
  begin
    nodo := elemento_selezionato.getfirstchild;
    while nodo <> nil do
    begin
      nodoptr := nodo.data;
      if nodo.haschildren then
      begin
        esplodi_dsb(nodoptr.codice, nodoptr.quantita, nodo);
      end;
      nodo := nodo.getnextsibling;
    end;
  end;

  freeandnil(lista_art_codice);
  freeandnil(lista_art_descrizione);
  freeandnil(lista_quantita);
end;

procedure tcreordp.visualizza_stampa_elabora;
begin
  art_codice_controllo(false);
  ovr_progressivo_controllo(false);
  ovr_riga_controllo(false);
  v_top_codice_controllo(false);
  v_tvr_codice_controllo(false);
end;

function tcreordp.inserisci_treeview(sequenza: integer; art_codice, art_descrizione, note, tma_codice: string;
  quantita, prezzo, esistenza_tma, approntato_tma, esistenza, esistenza_principale: double; treepadre: ttreenode): ttreenode;
var
  nodoptr: pnodo;
begin
  read_tabella(art, art_codice);

  new(nodoptr);
  nodoptr^.codice := art_codice;
  nodoptr^.descrizione := art_descrizione;
  nodoptr^.tum_codice := art.fieldbyname('tum_codice').asstring;
  nodoptr^.tum_codice_dsb := art.fieldbyname('tum_codice_dsb').asstring;
  if (art_codice = v_art_codice.text) or (art.fieldbyname('tum_codice_dsb').asstring = '') then
  begin
    nodoptr^.quantita := quantita;
  end
  else
  begin
    if art.fieldbyname('operazione_coefficiente_dsb').asstring = '*' then
    begin
      nodoptr^.quantita := quantita * art.fieldbyname('tum_coefficiente_dsb').asfloat;
    end
    else
    begin
      nodoptr^.quantita := quantita / art.fieldbyname('tum_coefficiente_dsb').asfloat;
    end;
  end;
  nodoptr^.prezzo := prezzo;
  nodoptr^.note := note;
  nodoptr^.tma_codice := tma_codice;
  nodoptr^.esistenza_tma := esistenza_tma;
  nodoptr^.approntato_tma := approntato_tma;
  nodoptr^.esistenza := esistenza;
  nodoptr^.esistenza_principale := esistenza_principale;
  if art.fieldbyname('tcn_codice').asstring <> '' then
  begin
    nodoptr^.assistenza_tecnica := 'si';
  end
  else
  begin
    nodoptr^.assistenza_tecnica := 'no';
  end;
  nodoptr^.sequenza := sequenza;

  if data_inizio_lavorazione_passato <> null then
  begin
    nodoptr^.data_inizio_lavorazione := data_inizio_lavorazione_passato;
    data_inizio_lavorazione_passato := null;
  end;

  result := v_griglia.items.addchildobject(treepadre, assegna_descrizione(nodoptr), nodoptr);

  result.haschildren := false;
end;

function tcreordp.assegna_descrizione(nododata: pointer): string;
var
  nodoptr: ^tnodo;
  descrizione_extra: string;
begin
  nodoptr := nododata;

  descrizione_extra := ' ' + nodoptr.tum_codice;
  if nodoptr.tum_codice_dsb <> '' then
  begin
    descrizione_extra := descrizione_extra + '   u.m. dsb ' + nodoptr.tum_codice_dsb;
  end;

  if ha_figli(nodoptr.codice) then
  begin
    result := nodoptr.codice + ' - ' + nodoptr.descrizione + ' - quantità ' +
      formatfloat(formato_display_quantita, nodoptr.quantita) +
      descrizione_extra + '  con distinta base';
  end
  else
  begin
    result := nodoptr.codice + ' - ' + nodoptr.descrizione + ' - quantità ' +
      formatfloat(formato_display_quantita, nodoptr.quantita) + descrizione_extra;
  end;

  mag_art.close;
  mag_art.parambyname('art_codice').asstring := nodoptr.codice;
  mag_art.open;
  if not mag_art.eof then
  begin
    result := result + ' [ ';
    while not mag_art.eof do
    begin
      result := result + mag_art.fieldbyname('tma_codice').asstring + ' ' + formatfloat('#,###0', mag_art.fieldbyname('esistenza').asfloat) + ' ';

      mag_art.next;
    end;
    result := result + ' ] ';
  end;

  //if nodoptr.data_inizio_lavorazione <> strtodate('30/12/1899') then
  if (nodoptr.data_inizio_lavorazione <> '') and (nodoptr.data_inizio_lavorazione <> '30/12/1899') then
  begin
    result := result + '  -  data inizio lavorazione: ' + nodoptr.data_inizio_lavorazione;
  end;
end;

function tcreordp.ha_figli(art_codice: string): boolean;
begin
  if (art_codice = v_art_codice.text) then
  begin
    result := esiste_configurazione_ovr;
  end;

  if not result then
  begin
    figli.close;
    figli.params[0].asstring := art_codice;
    figli.open;
    result := not figli.isempty;
  end;
end;

procedure tcreordp.errore_commit_transazione;
begin
  arc.storna_numerazione(arc.arcdit, 'ORDINI PRODUZIONE', '', opt.parambyname('data_documento').asdatetime,
    opt.parambyname('numero_documento').asfloat);

  primo_progressivo := 0;
end;

function tcreordp.costo_unitario(art_codice: string): double;
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

  cerca_prezzi.cerca_prezzo('F', art_costo.fieldbyname('frn_codice').asstring, '', 'ultimo prezzo acquisto',
    art_costo.fieldbyname('codice').asstring, opr.parambyname('tma_codice').asstring, 0, prezzo, tsm_codice, tsm_codice_art,
    date, divisa_di_conto, 1, cifre_decimali_prezzo_acq, frn_rda.fieldbyname('tla_codice').asstring,
    1, art_costo.fieldbyname('tum_codice').asstring, '');

  if prezzo = 0 then
  begin
    valorizzazione := tipinv.tipo_inventario('produzione', art_codice);
    przinv.przinv(art_codice, tma_codice_materie_prime, valorizzazione, esercizio, now, 0, prezzo,
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

  if prezzo = 0 then
  begin
    valorizzazione := tipinv.tipo_inventario('produzione', art_codice);
    przinv.przinv(art_codice, tma_codice_materie_prime, valorizzazione, esercizio, now, 0, prezzo,
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

function TCREORDP.controllo_livello: boolean;
var
  nodoptr: ^tnodo;
begin
  nodoptr := v_griglia.selected.data;

  if (tipo_esplosione = 'solo primo livello') and (nodoptr.codice <> v_art_codice.text) then
  begin
    result := false;
    messaggio(000, 'l''esplosione è prevista solamente al primo livello');
  end
  else
  begin
    result := true;
  end;
end;

function TCREORDP.esiste_configurazione_ovr: boolean;
begin
  result := false;

  if (v_ovr_progressivo.value > 0) and (v_ovr_riga.value > 0) then
  begin
    if read_tabella(arc.arcdit, 'ovr', 'progressivo;riga',
      vararrayof([v_ovr_progressivo.value, v_ovr_riga.value])) then
    begin
      if (archivio.fieldbyname('configurazione').asinteger > 0) then
      begin
        if read_tabella(arc.arcdit, 'cnf', 'configurazione', archivio.fieldbyname('configurazione').asinteger) then
        begin
          result := true;
        end;
      end;
    end;
  end;
end;

procedure TCREORDP.crea_ciclo_da_configurazione(opt_progressivo: integer; nodo: ttreenode);
var
  sequenza: integer;
  query_cnl :tmyquery_go;
  nodoptr: ^tnodo;
begin
  sequenza := 0;
  nodoptr := nodo.data;

  query_cnl := tmyquery_go.create(nil);
  query_cnl.connection := arc.arcdit;
  query_cnl.sql.add('select cnl.*, fas.tipo_operazione, fas.mac_codice');
  query_cnl.sql.add('from ovr');
  query_cnl.sql.add('inner join cnl on cnl.configurazione = ovr.configurazione');
  query_cnl.sql.add('inner join fas on fas.codice = cnl.fas_codice');
  query_cnl.sql.add('where ovr.progressivo = :progressivo');
  query_cnl.sql.add('  and ovr.riga = :riga');
  query_cnl.sql.add('order by cnl.sequenza');
  query_cnl.parambyname('progressivo').asfloat := v_ovr_progressivo.value;
  query_cnl.parambyname('riga').asfloat := v_ovr_riga.intvalue;
  query_cnl.open;

  while not query_cnl.eof do
  begin
    opc.close;
    opc.parambyname('progressivo').asinteger := opt_progressivo;
    sequenza := sequenza + 10;
    opc.parambyname('sequenza').asinteger := sequenza;
    opc.parambyname('fas_codice').asstring := query_cnl.fieldbyname('fas_codice').asstring;
    opc.parambyname('mac_codice').asstring := query_cnl.fieldbyname('mac_codice').asstring;

    if query_cnl.fieldbyname('tipo_operazione').asstring = 'globale' then
    begin
      opc.parambyname('quantita').asfloat := query_cnl.fieldbyname('quantita').asfloat;
    end
    else if query_cnl.fieldbyname('tipo_operazione').asstring = 'singola' then
    begin
      opc.parambyname('quantita').asfloat := query_cnl.fieldbyname('quantita').asfloat *
        nodoptr.quantita;
    end
    else if query_cnl.fieldbyname('tipo_operazione').asstring = 'ignora' then
    begin
      opc.parambyname('quantita').asfloat := 0;
    end;

    if query_cnl.fieldbyname('costo_unitario').asfloat <> 0 then
    begin
      opc.parambyname('costo_totale').asfloat := nodoptr.quantita * query_cnl.fieldbyname('costo_unitario').asfloat;
    end
    else
    begin
      opc.parambyname('costo_totale').asfloat := nodoptr.quantita * query_cnl.fieldbyname('prezzo').asfloat;
    end;
    opc.parambyname('tipo_operazione').asstring := query_cnl.fieldbyname('tipo_operazione').asstring;
    opc.parambyname('quantita_attrezzaggio').asfloat := 0;
    opc.parambyname('frn_codice').asstring := query_cnl.fieldbyname('frn_codice').asstring;
    opc.parambyname('note').asstring := query_cnl.fieldbyname('note').asstring;
    opc.execsql;

    query_cnl.next;
  end;
  query_cnl.free;
end;

//modifica
function TCREORDP.ah6_esiste_configurazione_ovr: boolean;
begin
  result := false;

  if (v_ovr_progressivo.value > 0) and (v_ovr_riga.value > 0) then
  begin
    if read_tabella(arc.arcdit, 'ovr', 'progressivo;riga',
      vararrayof([v_ovr_progressivo.value, v_ovr_riga.value])) then
    begin
      if (archivio.fieldbyname('configurazione').asinteger > 0) then
      begin
        if read_tabella(arc.arcdit, 'cnf', 'configurazione', archivio.fieldbyname('configurazione').asinteger) then
        begin
          result := true;
        end;
      end;
    end;
  end;
end;
//fine

initialization

registerclass(tcreordp);

end.
