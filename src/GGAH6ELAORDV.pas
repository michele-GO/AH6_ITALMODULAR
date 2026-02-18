unit GGAH6ELAORDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGELABORA, VirtualTable, MyAccess,
  query_go, Data.DB, DBAccess, MemDS, Vcl.Menus, RzButton, Vcl.Buttons,
  RzSpnEdt, Vcl.ExtCtrls, Vcl.ComCtrls, RzPanel, RzTabs, Vcl.ToolWin, Vcl.Grids,
  Vcl.DBGrids, RzDBGrid, Vcl.StdCtrls;

type
  TAH6ELAORDV = class(TELABORA)
    ovr: TMyQuery_go;
    ovr_os1: TMyQuery_go;
    ovt_os1: TMyQuery_go;
    v_griglia: TRzDBGrid;
    tsm: TMyQuery_go;
    Memo1: TMemo;
    query_cafi: TMyQuery_go;
    mmt: TMyQuery_go;
    mmr: TMyQuery_go;
    procedure v_confermaClick(Sender: TObject);
  private
    { Private declarations }
    procedure converti_ordini;
    procedure converti_cafi(tmo_codice: string);
  public
    { Public declarations }
  end;

var
  AH6ELAORDV: TAH6ELAORDV;

implementation

{$r *.dfm}


uses DMARC;

procedure TAH6ELAORDV.v_confermaClick(Sender: TObject);
begin
  tab_pagina2_abilitata := true;
  inherited;

  converti_cafi('050');
  converti_cafi('051');
end;

procedure TAH6ELAORDV.converti_cafi(tmo_codice: string);
var
  progressivo_test: string;
  progressivo, riga: integer;
begin
  query_ds.dataset := query_cafi;

  query_cafi.close;
  query_cafi.parambyname('tmo_codice').asstring := tmo_codice;
  query_cafi.open;
  while not query_cafi.eof do
  begin
    if progressivo_test <> query_cafi.fieldbyname('progressivo').asstring then
    begin
      progressivo_test := query_cafi.fieldbyname('progressivo').asstring;

      progressivo := arc.setta_valore_generatore(arc.arcdit, 'MMT_PROGRESSIVO');

      mmt.close;
      mmt.parambyname('progressivo').asinteger := progressivo;
      mmt.open;

      mmt.append;
      mmt.fieldbyname('progressivo').asinteger := progressivo;
      mmt.fieldbyname('tmo_codice').asstring := tmo_codice;
      mmt.fieldbyname('tma_codice').asstring := '1';
      mmt.fieldbyname('data_registrazione').asdatetime := query_cafi.fieldbyname('mmt_data_registrazione').asdatetime;
      mmt.fieldbyname('data_documento').asdatetime := query_cafi.fieldbyname('mmt_data_documento').asdatetime;
      mmt.fieldbyname('ese_codice').asstring := query_cafi.fieldbyname('mmt_ese_codice').asstring;
      mmt.fieldbyname('tva_codice').asstring := query_cafi.fieldbyname('mmt_tva_codice').asstring;
      mmt.fieldbyname('cambio').asfloat := query_cafi.fieldbyname('mmt_cambio').asfloat;
      mmt.post;

      riga := 0;
    end;
    riga := riga + 10;

    mmr.close;
    mmr.parambyname('progressivo').asinteger := progressivo;
    mmr.parambyname('riga').asinteger := riga;
    mmr.open;

    mmr.append;
    mmr.fieldbyname('progressivo').asinteger := progressivo;
    mmr.fieldbyname('riga').asinteger := riga;
    mmr.fieldbyname('art_codice').asstring := query_cafi.fieldbyname('mmr_art_codice').asstring;
    if query_cafi.fieldbyname('mmr_quantita_entrate').asfloat > 0 then
    begin
      mmr.fieldbyname('quantita').asfloat := query_cafi.fieldbyname('mmr_quantita_entrate').asfloat;
      mmr.fieldbyname('quantita_entrate').asfloat := query_cafi.fieldbyname('mmr_quantita_entrate').asfloat;
    end
    else
    begin
      mmr.fieldbyname('quantita').asfloat := query_cafi.fieldbyname('mmr_quantita_uscite').asfloat;
      mmr.fieldbyname('quantita_uscite').asfloat := query_cafi.fieldbyname('mmr_quantita_uscite').asfloat;
    end;
    mmr.fieldbyname('prezzo').asfloat := query_cafi.fieldbyname('mmr_prezzo').asfloat;
    mmr.fieldbyname('importo').asfloat := arrotonda(mmr.fieldbyname('quantita').asfloat * mmr.fieldbyname('prezzo').asfloat, 2);
    mmr.fieldbyname('importo_euro').asfloat := arrotonda(mmr.fieldbyname('quantita').asfloat * mmr.fieldbyname('prezzo').asfloat, 2);
    mmr.fieldbyname('tma_codice').asstring := '1';
    mmr.post;

    query_cafi.next;
  end;

  messaggio(100, 'cafi creati');
end;

procedure TAH6ELAORDV.converti_ordini;
var
  ovr_progressivo: integer;
  riga: integer;
begin
  memo1.lines.clear;

  query.close;
  query.open;
  ovr_progressivo := 0;
  while not query.eof do
  begin
    if ovr_progressivo <> query.fieldbyname('progressivo').asinteger then
    begin
      application.processmessages;
      ovr_progressivo := query.fieldbyname('progressivo').asinteger;

      if ovr_progressivo > 0 then
      begin
        // totalizza
      end;

      ovr_os1.close;
      ovr_os1.parambyname('ese_codice').asinteger := query.fieldbyname('ese_codice').asinteger;
      ovr_os1.parambyname('numero_documento').asinteger := query.fieldbyname('numero_documento').asinteger;
      ovr_os1.open;
    end;

    riga := 0;
    while not ovr_os1.eof do
    begin
      riga := riga + 10;
      ovr.close;
      ovr.parambyname('progressivo').asinteger := query.fieldbyname('progressivo').asinteger;
      ovr.parambyname('art_codice').asstring := ovr_os1.fieldbyname('idProdotto').asstring;
      ovr.parambyname('quantita').asfloat := ovr_os1.fieldbyname('quantitaOrd').asfloat;
      ovr.parambyname('prezzo').asfloat := ovr_os1.fieldbyname('prezzo').asfloat;
      ovr.open;
      while not ovr.eof do
      begin

        if (ovr.fieldbyname('art_codice').asstring <> 'ZZCONV') and
          (ovr.fieldbyname('art_codice').asstring <> ovr_os1.fieldbyname('idProdotto').asstring) then
        begin
          messaggio(000, 'errore riga ' + ovr.fieldbyname('riga').asstring + ' articolo ' + ovr.fieldbyname('art_codice').asstring +
            ' os1: ' + ovr_os1.fieldbyname('idProdotto').asstring + ' ' + ovr_os1.fieldbyname('numordine').asstring);
        end;

        ovr.edit;
        if (ovr.fieldbyname('art_codice').asstring = '') or
          (ovr_os1.fieldbyname('sconto1').asfloat +
          ovr_os1.fieldbyname('sconto2').asfloat +
          ovr_os1.fieldbyname('sconto3').asfloat +
          ovr_os1.fieldbyname('sconto4').asfloat +
          ovr_os1.fieldbyname('sconto5').asfloat = 0) then
        begin
          ovr.fieldbyname('tsm_codice').asstring := '';
        end
        else
        begin
          tsm.close;
          tsm.parambyname('perc_1').asfloat := ovr_os1.fieldbyname('sconto1').asfloat;
          tsm.parambyname('perc_2').asfloat := ovr_os1.fieldbyname('sconto2').asfloat;
          tsm.parambyname('perc_3').asfloat := ovr_os1.fieldbyname('sconto3').asfloat;
          tsm.parambyname('perc_4').asfloat := ovr_os1.fieldbyname('sconto4').asfloat;
          tsm.parambyname('perc_5').asfloat := ovr_os1.fieldbyname('sconto5').asfloat;
          tsm.open;
          if tsm.eof then
          begin
            memo1.lines.add('manca sconto:' +
              ovr_os1.fieldbyname('sconto1').asstring + ' ' +
              ovr_os1.fieldbyname('sconto2').asstring + ' ' +
              ovr_os1.fieldbyname('sconto3').asstring + ' ' +
              ovr_os1.fieldbyname('sconto4').asstring + ' ' +
              ovr_os1.fieldbyname('sconto5').asstring);
          end
          else
          begin
            ovr.fieldbyname('tsm_codice').asstring := tsm.fieldbyname('codice').asstring;
          end;
        end;
        ovr.post;
        ovr.next;
      end; // while
      ovr_os1.next;
    end; //while

    //totalizza
    query.next;
  end; // while

  messaggio(100, ' elaborazione terminata');
end;

initialization

registerclass(tah6elaordv);

end.
