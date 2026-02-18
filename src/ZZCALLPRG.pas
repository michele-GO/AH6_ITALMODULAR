unit ZZCALLPRG;

interface

uses sysutils;

procedure assegna_programma_personalizzato(programma_da_eseguire: string; var codice_archivio: variant;
  var programma_personalizzato: boolean);

const
  elenco_programmi_personalizzati = 'GGCREORDP;GGGESACQ;GGGESORDP;GGGESTDA;GGGESTDO;' +
  'GGGESTOP;GGGESVEN;GGVISCMSOV;AH6IMPPREV;GESDIT05';
  prefisso_integrita = 'ah6';

implementation

uses variants;

procedure assegna_programma_personalizzato(programma_da_eseguire: string; var codice_archivio: variant;
var
  programma_personalizzato: boolean);
begin
  programma_personalizzato := false;

(*
  if uppercase(programma_da_eseguire) = 'xxxxxx' then
  begin
    if vartype(codice_archivio) = varustring then
    begin
      codice_archivio := vararrayof(['', '']);
    end;
    programma_personalizzato := true;
  end;
*)
end;

end.
