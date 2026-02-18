unit ZZRELPERS;

interface

uses
  Windows, Classes, Menus, Controls, Graphics, Dialogs, SysUtils, ShellApi, Forms, idGlobal,
  DB, variants, math, StdCtrls, ComCtrls, RzTabs,
  myaccess, query_go, inifiles, Rzedit, RzLabel;

var
  stringa: string;

const
  codice_accesso_personalizzato = 'ITALMODULAR';

procedure personalizzazioni_tabella(v_archivio: TRzlabel; database: tmyconnection_go);

implementation

uses ZZRELEASE;

procedure personalizzazioni_tabella(v_archivio: TRzlabel; database: tmyconnection_go);
begin
  if (lowercase(database.database)='arc') and (pos('arc_ordinamento', lowercase(database.database)) = 0) then
  begin
    aggiungi(v_archivio, arc, 'dit05', 'ah6_tin_codice', 'd_stringa_04', '');
  end;

  if (pos('arc_', lowercase(database.database)) <> 0) and (pos('arc_ordinamento', lowercase(database.database)) = 0) then
  begin
    aggiungi(v_archivio, arcdit, 'tdo', 'ah6_commessa_obbligatoria', 'd_stringa_02', 'no');
    aggiungi(v_archivio, arcdit, 'tda', 'ah6_commessa_obbligatoria', 'd_stringa_02', 'no');
    aggiungi(v_archivio, arcdit, 'top', 'ah6_commessa_obbligatoria', 'd_stringa_02', 'no');

    //aggiunti a mano nel database (PRELEASE non può aggiungere varchar da 1)
    //
    (*aggiungi(v_archivio, arcdit, 'bvt', 'ah6_stato_produzione', 'd_stringa_01', '');
    aggiungi(v_archivio, arcdit, 'cvt', 'ah6_stato_produzione', 'd_stringa_01', '');
    aggiungi(v_archivio, arcdit, 'dvt', 'ah6_stato_produzione', 'd_stringa_01', '');
    aggiungi(v_archivio, arcdit, 'fvt', 'ah6_stato_produzione', 'd_stringa_01', '');
    aggiungi(v_archivio, arcdit, 'ovt', 'ah6_stato_produzione', 'd_stringa_01', '');
    aggiungi(v_archivio, arcdit, 'pvt', 'ah6_stato_produzione', 'd_stringa_01', '');*)
  end;

  if pos('arc_ordinamento', lowercase(database.database)) <> 0 then
  begin
  end;

end;

end.
