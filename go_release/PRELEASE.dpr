//
//  11.01
//
program PRELEASE;

{$R 'ZZVERSIONE_GO_EXE.res' '..\..\..\go_1301\src\ZZVERSIONE_GO_EXE.rc'}


uses
  madExcept,
  Forms,
  DMCLIENT_API_AGGIORNAMENTI in '..\..\..\go_1301\go_aggiorna\DMCLIENT_API_AGGIORNAMENTI.pas' {CLIENT_API_AGGIORNAMENTI: TDataModule} ,
  ZZCONFIGURAZIONE in '..\..\..\go_1301\src_120100\ZZCONFIGURAZIONE.pas',
  GGLOGIN in '..\..\..\go_1301\src_120100\GGLOGIN.pas' {LOGIN} ,
  ZZRELEASE in '..\..\..\go_1301\go_release\ZZRELEASE.pas',
  ZZACCESSO in '..\..\..\go_1301\go_release\ZZACCESSO.pas',
  GGRELEASE in '..\..\..\go_1301\go_release\GGRELEASE.pas' {RELEASE} ,
  ZZRELPERS in '..\src\ZZRELPERS.pas',
  GGPASSWD in '..\..\..\go_1301\go_release\GGPASSWD.pas' {PASSWD};

{$r *.res}


begin
  Application.Initialize;
  Application.Title := 'Aggiornamento struttura database';
  Application.CreateForm(TRELEASE, RELEASE);
  Application.CreateForm(Tclient_api_aggiornamenti, client_api_aggiornamenti);
  Application.Run;

end.
