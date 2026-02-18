//
//aggiunta nuova tab_ah6_preventivi_clienti + contenuto
//aggiunta nuovo tmyquery_go ah6_preventivi_clienti + ah6_preventivi_clienti_ds
//

unit GGVISCMSOV;

interface

uses 
  winapi.windows, winapi.messages, system.sysutils, system.variants, system.classes, vcl.graphics, vcl.controls, vcl.forms, 
  vcl.dialogs, GGFORMBASE, data.db, query_go, MyAccess, vcl.menus, 
  vcl.comctrls, RzTabs, vcl.toolwin, vcl.grids, vcl.dbgrids, RzDBGrid, vcl.stdctrls, 
  vcl.extctrls, vcl.buttons, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk, 
  RzRadChk, RzButton, RzSplit, RzCmboBx, RzPrgres, 
  RzSpnEdt, RzShellDialogs, RzDBCmbo, raizeedit_go, DBAccess, MemDS;

type

  TVISCMSOV = class(TFORMBASE)
    clienti: tmyquery_go;
    clienti_ds: tmydatasource;
    fornitori: tmyquery_go;
    fornitori_ds: tmydatasource;
    produzione: tmyquery_go;
    produzione_ds: tmydatasource;
    tool_situazione: TRzRapidFireButton;
    tab_control: TRzpagecontrol;
    tab_clienti: TRztabsheet;
    v_griglia_clienti: TRzDBGrid_go;
    tab_fornitori: TRztabsheet;
    v_griglia_fornitori: TRzDBGrid_go;
    tab_produzione: TRztabsheet;
    v_griglia_produzione: TRzDBGrid_go;
    tab_assistenza: TRztabsheet;
    v_griglia_assistenza: TRzDBGrid_go;
    assistenza: tmyquery_go;
    assistenza_ds: tmydatasource;
    tab_interventi: TRztabsheet;
    v_griglia_interventi: TRzDBGrid_go;
    interventi: tmyquery_go;
    interventi_ds: tmydatasource;
    tab_preventivi_fornitori: TRzTabSheet;
    v_griglia_preventivi_fornitori: TRzDBGrid_go;
    preventivi_fornitori: TMyQuery_go;
    preventivi_fornitori_ds: TMyDataSource;
    //modifica
    tab_ah6_preventivi_clienti: TRzTabSheet;
    v_ah6_griglia_preventivi_clienti: trzdbgrid_go;
    ah6_preventivi_clienti: TMyQuery_go;
    ah6_preventivi_clienti_ds: TMyDataSource;
    //modifica fine
    procedure FormShow(Sender: TObject);
    procedure v_griglia_clientiDblClick(Sender: TObject);
    procedure v_griglia_clientiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_griglia_fornitoriDblClick(Sender: TObject);
    procedure v_griglia_fornitoriKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tool_situazioneClick(Sender: TObject);
    procedure v_griglia_produzioneDblClick(Sender: TObject);
    procedure v_griglia_produzioneKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tab_controlChange(Sender: TObject);
    procedure v_griglia_assistenzaDblClick(Sender: TObject);
    procedure v_griglia_assistenzaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v_griglia_interventiDblClick(Sender: TObject);
    procedure v_griglia_interventiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v_griglia_preventivi_fornitoriDblClick(Sender: TObject);
    procedure v_griglia_preventivi_fornitoriKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    //modifica
    procedure v_ah6_griglia_preventivi_clientiDblClick(Sender: TObject);
    procedure v_ah6_griglia_preventivi_clientiKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    //modifica fine
  protected
    situazione: string;
    cms_codice, cmt_codice: string;

    procedure esegui_query;
    procedure esegui_clienti;
    procedure esegui_fornitori;
    procedure esegui_produzione;
    procedure esegui_assistenza;
    procedure esegui_interventi;
    procedure esegui_preventivi_fornitori;
    //modifica
    procedure ah6_esegui_preventivi_clienti;
    //modifica fine

    procedure gestione_clienti;
    procedure gestione_fornitori;
    procedure gestione_produzione;
    procedure gestione_assistenza;
    procedure gestione_interventi;
    procedure gestione_preventivi_fornitori;
    //modifica
    procedure ah6_gestione_preventivi_clienti;
    //modifica fine
  public
  end;

implementation

uses DMARC;

{$R *.dfm}

procedure TVISCMSOV.FormShow(Sender: TObject);
begin
  inherited;

  //self.windowstate := wsmaximized;
  massimizza_form;

  situazione := 'aperti';

  tool_ctrl_f2.enabled := false;

  tab_control.activepage := tab_clienti;

  cms_codice := codice[0];
  cmt_codice := codice[1];

  esegui_query;
end;

procedure TVISCMSOV.esegui_query;
begin
  if tab_control.activepage = tab_clienti then
  begin
    esegui_clienti;
  end
  else if tab_control.activepage = tab_fornitori then
  begin
    esegui_fornitori;
  end
  else if tab_control.activepage = tab_produzione then
  begin
    esegui_produzione;
  end
  else if tab_control.activepage = tab_assistenza then
  begin
    esegui_assistenza;
  end
  else if tab_control.activepage = tab_interventi then
  begin
    esegui_interventi;
  end
  else if tab_control.activepage = tab_preventivi_fornitori then
  begin
    esegui_preventivi_fornitori;
  //modifica
  //end;
  end
  else if tab_control.activepage = tab_ah6_preventivi_clienti then
  begin
    ah6_esegui_preventivi_clienti;
  end;
  //modifica fine
end;

procedure TVISCMSOV.esegui_clienti;
begin
  clienti.close;
  clienti.sql.clear;
  clienti.sql.add('select ovr.tipologia, ovt.data_documento, ovt.numero_documento, ovt.serie_documento,');
  clienti.sql.add('ovt.cli_codice codice_cli_for,');
  clienti.sql.add('concat(trim(cli.descrizione1), '' '', cli.citta) cli_for_descrizione,');
  clienti.sql.add('concat(trim(ovt.via), '' '', ovt.citta) descrizione, ovt.progressivo,');
  clienti.sql.add('ovr.importo importo, ovr.importo_evaso importo_evaso,');
  clienti.sql.add('ovr.art_codice, concat(trim(ovr.descrizione1), '' '', ovr.descrizione2) art_descrizione');
  clienti.sql.add('from ovr');
  clienti.sql.add('inner join ovt on ovt.progressivo = ovr.progressivo');
  clienti.sql.add('inner join cli on cli.codice = ovt.cli_codice');
  clienti.sql.add('where ovr.cms_codice = ' + quotedstr(cms_codice));
  if cmt_codice <> '' then
  begin
    clienti.sql.add('and ovr.tipologia = ' + quotedstr(cmt_codice));
  end;
  if situazione = 'aperti' then
  begin
    clienti.sql.add('and (ovr.situazione = ''inserito'' or ovr.situazione = ''evaso parziale'')');
  end;

  clienti.sql.add('order by 1, 2, 3, 4, 5, 6, 7, 8');
  clienti.open;

  (v_griglia_clienti.columns.items[7].field as tfloatfield).displayformat := formato_display_importo_zero;
  (v_griglia_clienti.columns.items[8].field as tfloatfield).displayformat := formato_display_importo_zero;

  if v_griglia_clienti.canfocus then
  begin
    v_griglia_clienti.setfocus;
  end;
end;

procedure TVISCMSOV.esegui_fornitori;
begin
  fornitori.close;
  fornitori.sql.clear;
  fornitori.sql.add('select oar.tipologia, oat.data_documento, oat.numero_documento, oat.serie_documento,');
  fornitori.sql.add('oat.frn_codice codice_cli_for,');
  fornitori.sql.add('concat(trim(frn.descrizione1), '' '', frn.citta) cli_for_descrizione,');
  fornitori.sql.add('concat(trim(oat.via), '' '', oat.citta) descrizione, oat.progressivo, oar.riga,');
  fornitori.sql.add('oar.importo importo, oar.importo_evaso importo_evaso,');
  fornitori.sql.add('oar.art_codice, concat(trim(oar.descrizione1), '' '', oar.descrizione2) art_descrizione');
  fornitori.sql.add('from oar');
  fornitori.sql.add('inner join oat on oat.progressivo = oar.progressivo');
  fornitori.sql.add('inner join frn on frn.codice = oat.frn_codice');
  fornitori.sql.add('where oar.cms_codice = ' + quotedstr(cms_codice));
  if cmt_codice <> '' then
  begin
    fornitori.sql.add('and oar.tipologia = ' + quotedstr(cmt_codice));
  end;
  if situazione = 'aperti' then
  begin
    fornitori.sql.add('and (oar.situazione = ''inserito'' or oar.situazione = ''evaso parziale'')');
  end;

  fornitori.sql.add('order by 1, 2, 3, 4, 5, 6, 7, 8');
  fornitori.open;

  (v_griglia_fornitori.columns.items[7].field as tfloatfield).displayformat := formato_display_importo_zero;
  (v_griglia_fornitori.columns.items[8].field as tfloatfield).displayformat := formato_display_importo_zero;

  if v_griglia_fornitori.canfocus then
  begin
    v_griglia_fornitori.setfocus;
  end;
end;

procedure TVISCMSOV.esegui_produzione;
begin
  produzione.close;
  produzione.sql.clear;
  produzione.sql.add('select opt.tipologia, opt.data_documento, opt.numero_documento, opt.progressivo,');
  produzione.sql.add('opt.art_codice, concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione,');
  produzione.sql.add('opt.quantita, opt.quantita_evasa, opt.lot_codice');
  produzione.sql.add('from opt');
  produzione.sql.add('inner join art on art.codice = opt.art_codice');
  produzione.sql.add('where opt.cms_codice = ' + quotedstr(cms_codice));
  if cmt_codice <> '' then
  begin
    produzione.sql.add('and opt.tipologia = ' + quotedstr(cmt_codice));
  end;
  if situazione = 'aperti' then
  begin
    produzione.sql.add('and (opt.situazione = ''inserito'' or opt.situazione = ''evaso parziale'')');
  end;

  produzione.sql.add('order by 1, 2, 3, 4');
  produzione.open;

  (v_griglia_produzione.columns.items[5].field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia_produzione.columns.items[6].field as tfloatfield).displayformat := formato_display_quantita_zero;

  if v_griglia_produzione.canfocus then
  begin
    v_griglia_produzione.setfocus;
  end;
end;

procedure TVISCMSOV.esegui_assistenza;
begin
  assistenza.close;
  assistenza.sql.clear;
  assistenza.sql.add('select att.cmt_codice tipologia, att.ind_codice, atr.mtr_codice, mtr.art_codice, att.progressivo,');
  assistenza.sql.add('concat(trim(mtr.descrizione1), '' '', mtr.descrizione2) art_descrizione, atr.data_fine_contratto');
  assistenza.sql.add('from atr');
  assistenza.sql.add('inner join att on att.progressivo = atr.progressivo');
  assistenza.sql.add('inner join mtr on mtr.codice = atr.mtr_codice');
  assistenza.sql.add('where att.cms_codice = ' + quotedstr(cms_codice));
  if cmt_codice <> '' then
  begin
    assistenza.sql.add('and att.cmt_codice = ' + quotedstr(cmt_codice));
  end;

  assistenza.sql.add('order by 1,2,atr.riga');
  assistenza.open;

  if v_griglia_assistenza.canfocus then
  begin
    v_griglia_assistenza.setfocus;
  end;
end;

procedure TVISCMSOV.esegui_interventi;
begin
  interventi.close;
  interventi.sql.clear;
  interventi.sql.add('select att.cmt_codice tipologia, att.ind_codice, cat.data_registrazione, atr.mtr_codice, mtr.art_codice,');
  interventi.sql.add('cat.progressivo, concat(trim(mtr.descrizione1), '' '', mtr.descrizione2) art_descrizione,');
  interventi.sql.add('cat.tipo_commessa');
  interventi.sql.add('from cat');
  interventi.sql.add('inner join atr on atr.progressivo = cat.atr_progressivo and atr.riga = cat.atr_riga');
  interventi.sql.add('inner join att on att.progressivo = atr.progressivo');
  interventi.sql.add('inner join mtr on mtr.codice = atr.mtr_codice');
  interventi.sql.add('where att.cms_codice = ' + quotedstr(cms_codice));
  if cmt_codice <> '' then
  begin
    interventi.sql.add('and att.cmt_codice = ' + quotedstr(cmt_codice));
  end;

  interventi.sql.add('order by 1,2,3');
  interventi.open;

  if v_griglia_interventi.canfocus then
  begin
    v_griglia_interventi.setfocus;
  end;
end;

procedure TVISCMSOV.esegui_preventivi_fornitori;
begin
  preventivi_fornitori.close;
  preventivi_fornitori.sql.clear;
  preventivi_fornitori.sql.add('select rar.tipologia, rat.data_documento, rat.numero_documento, rat.serie_documento,');
  preventivi_fornitori.sql.add('rat.frn_codice codice_cli_for,');
  preventivi_fornitori.sql.add('concat(trim(frn.descrizione1), '' '', frn.citta) cli_for_descrizione,');
  preventivi_fornitori.sql.add('concat(trim(rat.via), '' '', rat.citta) descrizione, rat.progressivo, rar.riga,');
  preventivi_fornitori.sql.add('rar.importo importo, rar.importo_evaso importo_evaso,');
  preventivi_fornitori.sql.add('rar.art_codice, concat(trim(rar.descrizione1), '' '', rar.descrizione2) art_descrizione');
  preventivi_fornitori.sql.add('from rar');
  preventivi_fornitori.sql.add('inner join rat on rat.progressivo = rar.progressivo');
  preventivi_fornitori.sql.add('inner join frn on frn.codice = rat.frn_codice');
  preventivi_fornitori.sql.add('where rar.cms_codice = ' + quotedstr(cms_codice));
  if cmt_codice <> '' then
  begin
    preventivi_fornitori.sql.add('and rar.tipologia = ' + quotedstr(cmt_codice));
  end;
  if situazione = 'aperti' then
  begin
    preventivi_fornitori.sql.add('and (rar.situazione = ''inserito'' or rar.situazione = ''evaso parziale'')');
  end;

  preventivi_fornitori.sql.add('order by 1, 2, 3, 4, 5, 6, 7, 8');
  preventivi_fornitori.open;

  (v_griglia_preventivi_fornitori.columns.items[7].field as tfloatfield).displayformat := formato_display_importo_zero;
  (v_griglia_preventivi_fornitori.columns.items[8].field as tfloatfield).displayformat := formato_display_importo_zero;

  if v_griglia_preventivi_fornitori.canfocus then
  begin
    v_griglia_preventivi_fornitori.setfocus;
  end;
end;

procedure TVISCMSOV.v_griglia_clientiDblClick(Sender: TObject);
begin
  inherited;
  gestione_clienti;
end;

procedure TVISCMSOV.v_griglia_clientiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_return) and (shift = []) then
  begin
    gestione_clienti;
  end;
end;

procedure TVISCMSOV.v_griglia_fornitoriDblClick(Sender: TObject);
begin
  inherited;
  gestione_fornitori;
end;

procedure TVISCMSOV.v_griglia_fornitoriKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_return) and (shift = []) then
  begin
    gestione_fornitori;
  end;
end;

procedure TVISCMSOV.v_griglia_interventiDblClick(Sender: TObject);
begin
  inherited;
  gestione_interventi;
end;

procedure TVISCMSOV.v_griglia_interventiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_return) and (shift = []) then
  begin
    gestione_interventi;
  end;
end;

procedure TVISCMSOV.v_griglia_preventivi_fornitoriDblClick(Sender: TObject);
begin
  inherited;
  gestione_preventivi_fornitori;
end;

procedure TVISCMSOV.v_griglia_preventivi_fornitoriKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_return) and (shift = []) then
  begin
    gestione_preventivi_fornitori;
  end;
end;

procedure TVISCMSOV.v_griglia_produzioneDblClick(Sender: TObject);
begin
  inherited;
  gestione_produzione;
end;

procedure TVISCMSOV.v_griglia_produzioneKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_return) and (shift = []) then
  begin
    gestione_produzione;
  end;
end;

procedure TVISCMSOV.gestione_clienti;
begin
  esegui_programma('GESORDV', clienti.fieldbyname('progressivo').asinteger, true);
end;

procedure TVISCMSOV.gestione_fornitori;
begin
  parametri_extra_programma_chiamato[29] := fornitori.fieldbyname('riga').asinteger;
  esegui_programma('GESORDA', fornitori.fieldbyname('progressivo').asinteger, true);
end;

procedure TVISCMSOV.gestione_preventivi_fornitori;
begin
  parametri_extra_programma_chiamato[29] := preventivi_fornitori.fieldbyname('riga').asinteger;
  esegui_programma('GESPREA', preventivi_fornitori.fieldbyname('progressivo').asinteger, true);
end;

procedure TVISCMSOV.gestione_produzione;
begin
  esegui_programma('GESORDP', produzione.fieldbyname('progressivo').asinteger, true);
end;

procedure TVISCMSOV.gestione_assistenza;
begin
  esegui_programma('GESAST', assistenza.fieldbyname('progressivo').asinteger, true);
end;

procedure TVISCMSOV.gestione_interventi;
begin
  esegui_programma('GESCAS', interventi.fieldbyname('progressivo').asinteger, true);
end;

procedure TVISCMSOV.v_griglia_assistenzaDblClick(Sender: TObject);
begin
  inherited;
  gestione_assistenza;
end;

procedure TVISCMSOV.v_griglia_assistenzaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_return) and (shift = []) then
  begin
    gestione_assistenza;
  end;
end;

procedure TVISCMSOV.tab_controlChange(Sender: TObject);
begin
  inherited;
  esegui_query;
end;

procedure TVISCMSOV.tool_situazioneClick(Sender: TObject);
begin
  inherited;
  if situazione = 'aperti' then
  begin
    tool_situazione.caption := 'solo ordini aperti';
    situazione := 'chiusi';
  end
  else
  begin
    tool_situazione.caption := 'anche ordini chiusi';
    situazione := 'aperti';
  end;
  esegui_query;
end;

//modifica
procedure TVISCMSOV.ah6_esegui_preventivi_clienti;
begin
  ah6_preventivi_clienti.close;
  ah6_preventivi_clienti.sql.clear;
  ah6_preventivi_clienti.sql.add('select pvr.tipologia, pvt.data_documento, pvt.numero_documento, pvt.serie_documento,');
  ah6_preventivi_clienti.sql.add('pvt.cli_codice codice_cli_for,');
  ah6_preventivi_clienti.sql.add('concat(trim(cli.descrizione1), '' '', cli.citta) cli_for_descrizione,');
  ah6_preventivi_clienti.sql.add('concat(trim(pvt.via), '' '', pvt.citta) descrizione, pvt.progressivo, pvr.riga,');
  ah6_preventivi_clienti.sql.add('pvr.importo importo, pvr.importo_evaso importo_evaso,');
  ah6_preventivi_clienti.sql.add('pvr.art_codice, concat(trim(pvr.descrizione1), '' '', pvr.descrizione2) art_descrizione');
  ah6_preventivi_clienti.sql.add('from pvr');
  ah6_preventivi_clienti.sql.add('inner join pvt on pvt.progressivo = pvr.progressivo');
  ah6_preventivi_clienti.sql.add('inner join cli on cli.codice = pvt.cli_codice');
  ah6_preventivi_clienti.sql.add('where pvr.cms_codice = ' + quotedstr(cms_codice));
  if cmt_codice <> '' then
  begin
    ah6_preventivi_clienti.sql.add('and pvr.tipologia = ' + quotedstr(cmt_codice));
  end;
  if situazione = 'aperti' then
  begin
    ah6_preventivi_clienti.sql.add('and (pvr.situazione = ''inserito'' or pvr.situazione = ''evaso parziale'')');
  end;

  ah6_preventivi_clienti.sql.add('order by 1, 2, 3, 4, 5, 6, 7, 8');
  ah6_preventivi_clienti.open;

  (v_ah6_griglia_preventivi_clienti.columns.items[7].field as tfloatfield).displayformat := formato_display_importo_zero;
  (v_ah6_griglia_preventivi_clienti.columns.items[8].field as tfloatfield).displayformat := formato_display_importo_zero;

  if v_ah6_griglia_preventivi_clienti.canfocus then
  begin
    v_ah6_griglia_preventivi_clienti.setfocus;
  end;
end;

procedure TVISCMSOV.v_ah6_griglia_preventivi_clientiDblClick(Sender: TObject);
begin
  inherited;
  ah6_gestione_preventivi_clienti;
end;

procedure TVISCMSOV.v_ah6_griglia_preventivi_clientiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_return) and (shift = []) then
  begin
    ah6_gestione_preventivi_clienti;
  end;
end;

procedure TVISCMSOV.ah6_gestione_preventivi_clienti;
begin
  parametri_extra_programma_chiamato[29] := ah6_preventivi_clienti.fieldbyname('riga').asinteger;
  esegui_programma('GESPREV', ah6_preventivi_clienti.fieldbyname('progressivo').asinteger, true);
end;
//modifica fine

initialization
  registerclass(tviscmsov);

end.

