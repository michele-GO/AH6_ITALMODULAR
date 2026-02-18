CREATE PROCEDURE P_RMR_RMT 
(
  IN  `i_progressivo`         int
)
BEGIN 
DECLARE D_SITUAZIONE 					VARCHAR(20);

set d_situazione = 'inserito';
if exists(select id from rmr where tipo_documento = 'n.credito cliente' and progressivo = i_progressivo) then
	set d_situazione = 'accredito cliente';
elseif exists(select id from rmr where (tipo_documento = 'ddt a cliente' or tipo_documento = 'fattura a cliente') and progressivo = i_progressivo) then
	set d_situazione = 'inviato a cliente';
elseif exists(select id from rmr where tipo_documento = 'n.credito fornitore' and progressivo = i_progressivo) then
	set d_situazione = 'accredito fornitore';
elseif exists(select id from rmr where (tipo_documento = 'ddt da fornitore' or tipo_documento = 'fattura da fornitore') and progressivo = i_progressivo) then
	set d_situazione = 'reso da fornitore';
elseif exists(select id from rmr where tipo_documento = 'ddt a fornitore' and progressivo = i_progressivo) then
	set d_situazione = 'inviato a fornitore';
elseif exists(select id from rmr where tipo_documento = 'ddt da cliente' and progressivo = i_progressivo) then
	set d_situazione = 'reso da cliente';
end if;
update rmt set situazione = d_situazione where progressivo = i_progressivo and chiuso = 'no';

END
