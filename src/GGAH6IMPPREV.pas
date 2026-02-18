unit GGAH6IMPPREV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGFORMBASE, MyAccess, query_go, Data.DB,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, RzButton, Vcl.Buttons,
  RzSpnEdt, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit,
  ZZLIBRERIE_ITALMODULAR, raizeedit_go, RzLabel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Phys, FireDAC.Comp.Client, FireDAC.Moni.Base, FireDAC.Moni.FlatFile,
  FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, RzDBGrid, RzTabs,
  FireDAC.Stan.StorageBin;

type
  TAH6IMPPREV = class(TFORMBASE)
    v_esci: TRzRapidFireButton;
    v_conferma: TRzBitBtn;
    pannello_file: TRzPanel;
    v_nome_file: TRzDBEdit;
    v_sfoglia: TRzBitBtn;
    OpenDialog1: TOpenDialog;
    pannello_righe: TRzPanel;
    cms: TMyQuery_go;
    pannello_campi: TRzPanel;
    Label14: TRzLabel;
    v_cli_codice: trzedit_go;
    Label28: TRzLabel;
    v_ind_codice: trzedit_go;
    v_cli_descrizione: trzdbeditdescrizione_go;
    v_ind_descrizione: trzdbeditdescrizione_go;
    RzLabel1: TRzLabel;
    v_cms_codice: trzedit_go;
    v_cms_descrizione: trzdbeditdescrizione_go;
    v_codice_disegno: TRzEdit;
    v_data_preventivo: trzdatetimeedit_go;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    cli: TMyQuery_go;
    cli_ds: TMyDataSource;
    ind: TMyQuery_go;
    ind_ds: TMyDataSource;
    cms_ds: TMyDataSource;
    RzLabel4: TRzLabel;
    v_riferimento_cliente: TRzEdit;
    art: TMyQuery_go;
    tab_controllo: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    v_log: TMemo;
    v_griglia: trzdbgrid_go;
    FDrighe: TFDMemTable;
    FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink;
    FDManager1: TFDManager;
    fdrighe_ds: TDataSource;
    FDrigheriga: TIntegerField;
    FDrighearticolo: TStringField;
    FDrigheart_codice: TStringField;
    FDrighequantita: TFloatField;
    FDrigheprezzo: TFloatField;
    FDrigheimporto: TFloatField;
    panno_righe_testata: TRzPanel;
    panno_righe_piede: TRzPanel;
    RzLabel5: TRzLabel;
    v_totale_preventivo_netto: trznumericedit_go;
    ovt: TMyQuery_go;
    RzLabel6: TRzLabel;
    v_tdo_codice: trzedit_go;
    v_tdo_descrizione: trzdbeditdescrizione_go;
    tdo: TMyQuery_go;
    tdo_ds: TMyDataSource;
    procedure v_confermaClick(Sender: TObject);
    procedure v_sfogliaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure v_cli_codiceExit(Sender: TObject);
    procedure v_ind_codiceExit(Sender: TObject);
    procedure v_cms_codiceExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure v_tdo_codiceExit(Sender: TObject);
    procedure v_ind_codiceEnter(Sender: TObject);
  protected
    docprev_italmodular_record: tdocprev_italmodular_record;
    docven_italmodular: tdocven_italmodular;
    totale_prezzo: string;

    procedure cli_codice_controllo(blocco: boolean);
    procedure ind_codice_controllo(blocco: boolean);
    procedure cms_codice_controllo(blocco: boolean);
    procedure tdo_codice_controllo(blocco: boolean);

    function verifica_preventivo_vendita: boolean;
    procedure genera_ordine_vendita;
  public
    { Public declarations }
    procedure get_codice_archivio; override;
    procedure set_codice_archivio; override;

    procedure controllo_campi;
    procedure visualizza_campi;
  end;

var
  AH6IMPPREV: TAH6IMPPREV;

implementation

{$r *.dfm}


uses DMARC;

procedure TAH6IMPPREV.FormCreate(Sender: TObject);
begin
  inherited;
  v_tdo_codice.text := 'ZIMO';

  docven_italmodular := tdocven_italmodular.create(arc.arc, arc.arcdit);

  tab_controllo.ActivePage := TabSheet1;

  opendialog1.InitialDir := cartella_root_installazione + 'importa';
  opendialog1.Filter := 'File Excel|*.xls';

  visualizza_campi;
end;

procedure TAH6IMPPREV.FormDestroy(Sender: TObject);
begin
  inherited;
  freeandnil(docven_italmodular);
end;

procedure TAH6IMPPREV.controllo_campi;
begin
  cli_codice_controllo(true);
  ind_codice_controllo(true);
  cms_codice_controllo(true);
  tdo_codice_controllo(true);
end;

procedure TAH6IMPPREV.get_codice_archivio;
begin
  inherited;
  if screen.activecontrol = v_ind_codice then
  begin
    if v_ind_codice.text <> codice_archivio[1] then
    begin
      v_ind_codice.text := codice_archivio[1];
    end;
  end;

end;

procedure TAH6IMPPREV.set_codice_archivio;
begin

  if screen.activecontrol = v_ind_codice then
  begin
    codice_archivio := vararrayof([v_cli_codice.text, v_ind_codice.text]);
  end;
  inherited;
end;

procedure TAH6IMPPREV.visualizza_campi;
begin
  cli_codice_controllo(false);
  ind_codice_controllo(false);
  cms_codice_controllo(false);
  tdo_codice_controllo(false);
end;

procedure TAH6IMPPREV.v_cli_codiceExit(Sender: TObject);
begin
  inherited;
  cli_codice_controllo(true);
end;

procedure TAH6IMPPREV.cli_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, cli, v_cli_codice, blocco, nil, nil, nil);
end;

procedure TAH6IMPPREV.v_cms_codiceExit(Sender: TObject);
begin
  inherited;
  cms_codice_controllo(true);
end;

procedure TAH6IMPPREV.cms_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, cms, v_cms_codice, blocco, nil, nil, nil);
end;

procedure TAH6IMPPREV.v_ind_codiceEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := '';
  visarc_filtro_02 := '';
  visarc_filtro_03 := '';

  visarc_filtro_01 := v_cli_codice.text;
end;

procedure TAH6IMPPREV.v_ind_codiceExit(Sender: TObject);
begin
  inherited;
  ind_codice_controllo(true);
end;

procedure TAH6IMPPREV.ind_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, ind, v_cli_codice, v_ind_codice, blocco, nil, nil, nil);
end;

procedure TAH6IMPPREV.v_confermaClick(Sender: TObject);
var
  flag_prosegui: boolean;
begin
  inherited;
  if v_nome_file.text = '' then
  begin
    v_sfoglia.click;
  end;

  controllo_campi;

  flag_prosegui := verifica_preventivo_vendita;

  if flag_prosegui then
  begin
    if messaggio(300, 'Si desidera generare ordine di vendita') = 1 then
    begin

    end;

    genera_ordine_vendita;
  end;
end;

procedure TAH6IMPPREV.v_sfogliaClick(Sender: TObject);
begin
  inherited;
  if not OpenDialog1.execute then
  begin
    Close;
  end;
  arc.xlswrite.filename := Opendialog1.filename;
  v_nome_file.text := arc.xlswrite.filename;
  if fileexists(v_nome_file.text) then
  begin
    verifica_preventivo_vendita;
  end;
end;

procedure TAH6IMPPREV.v_tdo_codiceExit(Sender: TObject);
begin
  inherited;
  tdo_codice_controllo(true);
end;

procedure TAH6IMPPREV.tdo_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, tdo, v_tdo_codice, blocco, nil, nil, nil);
end;

function TAH6IMPPREV.verifica_preventivo_vendita: boolean;
var
  row: integer;
  riga: integer;
  riga_art: integer;
  conta: integer;
  art_codice: string;
  descrizione_articolo: string;
  descrizione1_articolo: string;
  descrizione2_articolo: string;
  gen_codice: string;
  flag_articoli: boolean;
  flag_errore_articoli: boolean;
begin

  result := false;

  arc.xlswrite.read;

  docprev_italmodular_record.tdo_codice := arc.xlswrite.SheetByName('STAMPA').asstring[1, 1];
  docprev_italmodular_record.art_codice_vendita := arc.xlswrite.SheetByName('STAMPA').asstring[0, 7];
  docprev_italmodular_record.data_documento := arc.xlswrite.SheetByName('STAMPA').asdatetime[1, 4];
  docprev_italmodular_record.riferimento_cliente := arc.xlswrite.SheetByName('STAMPA').asstring[3, 4];

  docprev_italmodular_record.codice_disegno := arc.xlswrite.SheetByName('STAMPA').asstring[1, 5];
  docprev_italmodular_record.codice_commessa := arc.xlswrite.SheetByName('STAMPA').asstring[3, 5];

  docprev_italmodular_record.codice_commessa := stringreplace(docprev_italmodular_record.codice_commessa, 'N° prev. ', '', [rfReplaceAll]);
  docprev_italmodular_record.riferimento_cliente := stringreplace(docprev_italmodular_record.riferimento_cliente, 'Riferimento cliente : ', '', [rfReplaceAll]);

  v_tdo_codice.text := docprev_italmodular_record.tdo_codice;
  v_cms_codice.text := docprev_italmodular_record.codice_commessa;

  v_data_preventivo.date := docprev_italmodular_record.data_documento;
  v_codice_disegno.text := docprev_italmodular_record.codice_disegno;
  v_riferimento_cliente.text := docprev_italmodular_record.riferimento_cliente;

  read_tabella(cms, docprev_italmodular_record.codice_commessa);
  if cms.eof then
  begin
    docprev_italmodular_record.cli_codice := '';

    v_cms_codice.Brush.color := clred;
    v_cli_codice.Brush.color := clred;
    messaggio(000, 'Codice della commessa [' + docprev_italmodular_record.codice_commessa + '] non esiste');
    exit;
  end
  else
  begin

    result := true;
    docprev_italmodular_record.cli_codice := cms.fieldbyname('cli_codice').asstring;
    v_cms_codice.Brush.color := clwindow;
    v_cli_codice.Brush.color := clwindow;
  end;
  v_cli_codice.text := docprev_italmodular_record.cli_codice;

  read_tabella(cli, docprev_italmodular_record.cli_codice);
  if v_ind_codice.text = '' then
  begin
    v_ind_codice.text := cli.fieldbyname('ind_codice').asstring;
  end;

  self.refresh;

  docprev_italmodular_record.totale_documento := 0;

  SetLength(docprev_italmodular_record.arighe, 0);
  fdrighe.Active := false;
  fdrighe.createdataset;
  fdrighe.Active := true;

  flag_articoli := false;

  riga := 0;
  riga_art := 0;
  conta := 0;

  descrizione_articolo := '';
  flag_errore_articoli := false;

  v_log.lines.clear;
  v_log.visible := true;
  for row := 0 to arc.xlswrite.SheetByName('STAMPA').LastRow do
  begin

    if pos('IM09', arc.xlswrite.SheetByName('STAMPA').asstring[1, row]) > 0 then
    begin
      descrizione_articolo := arc.xlswrite.SheetByName('STAMPA').asstring[1, row];
      arc.spezza_descrizione(descrizione_articolo, descrizione1_articolo, descrizione2_articolo, 40);
      gen_codice := '00401006';
      flag_articoli := false;
      riga := riga + 1;
    end;
    if pos('IM92', arc.xlswrite.SheetByName('STAMPA').asstring[1, row]) > 0 then
    begin
      descrizione_articolo := arc.xlswrite.SheetByName('STAMPA').asstring[1, row];
      arc.spezza_descrizione(descrizione_articolo, descrizione1_articolo, descrizione2_articolo, 40);
      gen_codice := '00401007';
      flag_articoli := false;
      riga := riga + 1;
    end;

    if arc.xlswrite.SheetByName('STAMPA').asstring[0, row] = 'COD.' then
    begin
      flag_articoli := true;
    end;

    if arc.xlswrite.SheetByName('STAMPA').asstring[3, row] = '' then
    begin
      conta := conta + 1;
    end
    else
    begin
      conta := 0;
    end;

    if conta > 5 then
    begin
      break;
    end;

    if flag_articoli then
    begin
      if (arc.xlswrite.SheetByName('STAMPA').asstring[0, row] <> '') and
        (arc.xlswrite.SheetByName('STAMPA').asstring[0, row] <> 'COD.') then
      begin
        riga_art := riga_art + 1;
        SetLength(docprev_italmodular_record.arighe, riga_art);

        docprev_italmodular_record.arighe[riga_art - 1].riga := riga;
        docprev_italmodular_record.arighe[riga_art - 1].art_codice := trim(arc.xlswrite.SheetByName('STAMPA').asstring[0, row]);
        docprev_italmodular_record.arighe[riga_art - 1].art_descrizione1 := descrizione1_articolo;
        docprev_italmodular_record.arighe[riga_art - 1].art_descrizione2 := descrizione2_articolo;
        docprev_italmodular_record.arighe[riga_art - 1].gen_codice := gen_codice;
        docprev_italmodular_record.arighe[riga_art - 1].quantita := arc.xlswrite.SheetByName('STAMPA').asfloat[2, row];
        docprev_italmodular_record.arighe[riga_art - 1].articolo := arc.xlswrite.SheetByName('STAMPA').asstring[3, row];
        docprev_italmodular_record.arighe[riga_art - 1].prezzo := arc.xlswrite.SheetByName('STAMPA').asfloat[4, row];
        docprev_italmodular_record.arighe[riga_art - 1].importo := arc.xlswrite.SheetByName('STAMPA').asfloat[5, row];

        read_tabella(art, docprev_italmodular_record.arighe[riga_art - 1].art_codice);
        //   docprev_italmodular_record.arighe[riga_art - 1].flag_errore := art.eof;

        if art.eof then
        begin
          docprev_italmodular_record.arighe[riga_art - 1].articolo := '*** non esiste' + docprev_italmodular_record.arighe[riga_art - 1].articolo;
          v_log.lines.add('*** ' + docprev_italmodular_record.arighe[riga_art - 1].art_codice + ' non esiste');
          flag_errore_articoli := true;
        end
        else
        begin
          v_log.lines.add(docprev_italmodular_record.arighe[riga_art - 1].art_codice);
        end;
        fdrighe.append;
        fdrighe.fieldbyname('riga').asinteger := docprev_italmodular_record.arighe[riga_art - 1].riga;
        fdrighe.fieldbyname('art_codice').asstring := docprev_italmodular_record.arighe[riga_art - 1].art_codice;
        fdrighe.fieldbyname('articolo').asstring := docprev_italmodular_record.arighe[riga_art - 1].articolo;
        fdrighe.fieldbyname('quantita').asfloat := docprev_italmodular_record.arighe[riga_art - 1].quantita;
        fdrighe.fieldbyname('prezzo').asfloat := docprev_italmodular_record.arighe[riga_art - 1].prezzo;
        fdrighe.fieldbyname('importo').asfloat := docprev_italmodular_record.arighe[riga_art - 1].importo;
        fdrighe.post;
      end
      else
      begin
        if (arc.xlswrite.SheetByName('STAMPA').asstring[3, row] = 'TOTALE LISTINO :') then
        begin
          riga_art := riga_art + 1;
          SetLength(docprev_italmodular_record.arighe, riga_art);

          docprev_italmodular_record.arighe[riga_art - 1].riga := riga;
          docprev_italmodular_record.arighe[riga_art - 1].articolo := ' totale listino';
          docprev_italmodular_record.arighe[riga_art - 1].art_descrizione1 := descrizione1_articolo;
          docprev_italmodular_record.arighe[riga_art - 1].art_descrizione2 := descrizione2_articolo;
          docprev_italmodular_record.arighe[riga_art - 1].gen_codice := gen_codice;

          docprev_italmodular_record.arighe[riga_art - 1].totale_documento_riga := arrotonda(arc.xlswrite.SheetByName('STAMPA').asfloat[5, row], 2);
          v_log.lines.add('totale listino ' + docprev_italmodular_record.arighe[riga_art - 1].totale_documento_riga.tostring);

          fdrighe.append;
          fdrighe.fieldbyname('riga').asinteger := docprev_italmodular_record.arighe[riga_art - 1].riga;
          fdrighe.fieldbyname('art_codice').asstring := docprev_italmodular_record.arighe[riga_art - 1].art_codice;
          fdrighe.fieldbyname('articolo').asstring := docprev_italmodular_record.arighe[riga_art - 1].articolo;
          fdrighe.fieldbyname('quantita').asfloat := docprev_italmodular_record.arighe[riga_art - 1].quantita;
          fdrighe.fieldbyname('prezzo').asfloat := docprev_italmodular_record.arighe[riga_art - 1].prezzo;
          fdrighe.fieldbyname('importo').asfloat := arrotonda(docprev_italmodular_record.arighe[riga_art - 1].totale_documento_riga, 2);

          fdrighe.post;
        end
        else if (arc.xlswrite.SheetByName('STAMPA').asstring[3, row] = 'SCONTO :') then
        begin
          riga_art := riga_art + 1;
          SetLength(docprev_italmodular_record.arighe, riga_art);

          docprev_italmodular_record.arighe[riga_art - 1].riga := riga;
          docprev_italmodular_record.arighe[riga_art - 1].articolo := ' totale sconto';
          docprev_italmodular_record.arighe[riga_art - 1].art_descrizione1 := descrizione1_articolo;
          docprev_italmodular_record.arighe[riga_art - 1].art_descrizione2 := descrizione2_articolo;
          docprev_italmodular_record.arighe[riga_art - 1].gen_codice := gen_codice;
          docprev_italmodular_record.arighe[riga_art - 1].perc_sconto := arc.xlswrite.SheetByName('STAMPA').asfloat[4, row];
          docprev_italmodular_record.arighe[riga_art - 1].importo_sconto := arrotonda(arc.xlswrite.SheetByName('STAMPA').asfloat[5, row], 2);

          v_log.lines.add('perc sconto ' + docprev_italmodular_record.arighe[riga_art - 1].perc_sconto.tostring);
          v_log.lines.add('importo sconto ' + docprev_italmodular_record.arighe[riga_art - 1].importo_sconto.tostring);

          fdrighe.append;
          fdrighe.fieldbyname('riga').asinteger := docprev_italmodular_record.arighe[riga_art - 1].riga;
          fdrighe.fieldbyname('art_codice').asstring := docprev_italmodular_record.arighe[riga_art - 1].art_codice;
          fdrighe.fieldbyname('articolo').asstring := docprev_italmodular_record.arighe[riga_art - 1].articolo;
          fdrighe.fieldbyname('prezzo').asfloat := docprev_italmodular_record.arighe[riga_art - 1].perc_sconto * 100;
          fdrighe.fieldbyname('importo').asfloat := docprev_italmodular_record.arighe[riga_art - 1].importo_sconto;
          fdrighe.post;

        end
        else if (arc.xlswrite.SheetByName('STAMPA').asstring[3, row] = 'PREZZO NETTO :') then
        begin
          riga_art := riga_art + 1;
          SetLength(docprev_italmodular_record.arighe, riga_art);

          docprev_italmodular_record.arighe[riga_art - 1].riga := riga;
          docprev_italmodular_record.arighe[riga_art - 1].articolo := 'prezzo netto';
          docprev_italmodular_record.arighe[riga_art - 1].art_descrizione1 := descrizione1_articolo;
          docprev_italmodular_record.arighe[riga_art - 1].art_descrizione2 := descrizione2_articolo;
          docprev_italmodular_record.arighe[riga_art - 1].gen_codice := gen_codice;
          docprev_italmodular_record.arighe[riga_art - 1].totale_documento_netto_riga := arrotonda(arc.xlswrite.SheetByName('STAMPA').asfloat[5, row], 2);
          v_log.lines.add('prezzo netto ' + docprev_italmodular_record.arighe[riga_art - 1].totale_documento_netto_riga.tostring);

          fdrighe.append;
          fdrighe.fieldbyname('riga').asinteger := docprev_italmodular_record.arighe[riga_art - 1].riga;
          fdrighe.fieldbyname('art_codice').asstring := docprev_italmodular_record.arighe[riga_art - 1].art_codice;
          fdrighe.fieldbyname('articolo').asstring := docprev_italmodular_record.arighe[riga_art - 1].articolo;
          fdrighe.fieldbyname('importo').asfloat := docprev_italmodular_record.arighe[riga_art - 1].totale_documento_netto_riga;
          fdrighe.post;

          docprev_italmodular_record.totale_documento := docprev_italmodular_record.totale_documento + docprev_italmodular_record.arighe[riga_art - 1].totale_documento_netto_riga;
        end;

      end
    end; // if

  end; // for

  fdrighe.first;

  if flag_errore_articoli then
  begin
    messaggio(000, 'Non esistono articoli dei componenti');
  end;

  tab_controllo.ActivePage := TabSheet2;
  v_totale_preventivo_netto.value := docprev_italmodular_record.totale_documento;
end;

procedure TAH6IMPPREV.genera_ordine_vendita;
var
  row, riga: integer;
begin
  screen.cursor := crhourglass;

  docven_italmodular.indirizzo := v_ind_codice.text;
  docven_italmodular.cms_codice := v_cms_codice.text;
  docven_italmodular.cmt_codice := '1';
  docven_italmodular.riferimento := v_riferimento_cliente.text;
  docven_italmodular.data_riferimento := v_data_preventivo.date;
  docven_italmodular.nostro_riferimento := v_codice_disegno.text;
  docven_italmodular.assegna_numero_documento := true;

  docven_italmodular.crea_documento_vendita(v_cli_codice.text, v_tdo_codice.text, date);

  riga := 0;
  for row := 0 to high(docprev_italmodular_record.arighe) do
  begin

    if riga <> docprev_italmodular_record.arighe[row].riga then
    begin
      riga := docprev_italmodular_record.arighe[row].riga;
      docven_italmodular.gen_codice_riga := docprev_italmodular_record.arighe[row].gen_codice;

      docven_italmodular.crea_documento_vendita_riga(
        docprev_italmodular_record.art_codice_vendita,
        docprev_italmodular_record.arighe[row].art_descrizione1,
        docprev_italmodular_record.arighe[row].art_descrizione2,
        1,
        docprev_italmodular_record.arighe[row].totale_documento_netto_riga,
        docprev_italmodular_record.arighe[row].totale_documento_netto_riga);

    end;

    if (riga = docprev_italmodular_record.arighe[row].riga) and
      (docprev_italmodular_record.arighe[row].articolo = 'prezzo netto') then
    begin
      docven_italmodular.configurazione_documento := 0;
      docven_italmodular.aggiorna_riga(
        docprev_italmodular_record.arighe[row].art_descrizione1,
        docprev_italmodular_record.arighe[row].art_descrizione2,
        1,
        docprev_italmodular_record.arighe[row].totale_documento_netto_riga,
        docprev_italmodular_record.arighe[row].totale_documento_netto_riga);
    end
    else
      if (riga = docprev_italmodular_record.arighe[row].riga) and
      (docprev_italmodular_record.arighe[row].art_codice <> '') then
    begin
      docven_italmodular.crea_documento_vendita_riga_cnf(
        docven_italmodular.configurazione_documento,
        docprev_italmodular_record.arighe[row].art_codice,
        docprev_italmodular_record.arighe[row].quantita,
        docprev_italmodular_record.arighe[row].prezzo,
        docprev_italmodular_record.arighe[row].importo);

    end;
  end;

  docven_italmodular.crea_documento_vendita_totale;
  esegui_programma('GESORDV', docven_italmodular.progressivo_documento, true);

  screen.cursor := crdefault;

  Close;
end;

initialization

registerclass(tAH6IMPPREV);

end.
