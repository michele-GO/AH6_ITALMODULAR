CREATE FUNCTION F_FIDO_FATTURARE(i_cli_codice varchar(08)) 
	RETURNS decimal(18,6)
    DETERMINISTIC
    COMMENT 'calcola importo da fatturare per fido clienti'
BEGIN

DECLARE d_valore decimal(18,6);

select

coalesce((select sum(importo_totale_euro) importo from dvt
  where cli_codice = i_cli_codice and situazione <> 'consolidato' and
    tipo_documento = 'ddt' and tdo_codice_differite <> '' and non_fatturare <> 'si'), 0) +

coalesce((select sum(importo_totale_euro) importo from bvt
  where cli_codice = i_cli_codice and situazione <> 'consolidato' and
    tipo_documento = 'bolla' and tdo_codice_differite <> '' and non_fatturare <> 'si'), 0) +
  
coalesce((select sum(importo_totale_euro) importo from cvt
  where cli_codice = i_cli_codice and situazione <> 'consolidato' and
    tipo_documento = 'corrispettivo' and non_fatturare <> 'si'), 0) +
  
coalesce((select sum(importo_totale_euro) importo from fvt
  where cli_codice = i_cli_codice and situazione <> 'consolidato' and
  (select tipo_documento_fa from tdo where codice = fvt.tdo_codice) not between 'TD16' and 'TD19' and
    tipo_documento <> 'nota credito' and non_fatturare <> 'si'), 0) +

coalesce((select sum(importo_totale_euro * -1) importo from fvt
  where cli_codice = i_cli_codice and situazione <> 'consolidato' and
    tipo_documento = 'nota credito' and non_fatturare <> 'si'), 0)

from cli
  where cli.codice = i_cli_codice
  
into d_valore;

RETURN d_valore;

END
