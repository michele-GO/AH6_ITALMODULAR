unit GGAH6GESCMS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGGESCMS, MyAccess, query_go, Data.DB,
  DBAccess, MemDS, Vcl.Menus, RzEdit, raizeedit_go, Vcl.ExtCtrls, Vcl.Buttons,
  RzSpnEdt, Vcl.StdCtrls, RzCmboBx, RzDBCmbo, RzDBEdit, RzButton, RzRadChk,
  RzDBChk, Vcl.DBCtrls, Vcl.Mask, RzTabs, RzLabel, RzPanel, Vcl.ComCtrls,
  Vcl.ToolWin;

type
  TAH6GESCMS = class(TGESCMS)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AH6GESCMS: TAH6GESCMS;

implementation

{$r *.dfm}


procedure TAH6GESCMS.FormShow(Sender: TObject);
begin
  inherited;
  label15.caption := 'codice disegno';
end;

initialization

registerclass(tAH6GESCMS);

end.
