CREATE FUNCTION F_FIDO_RICEVERE(i_frn_codice varchar(08)) 
	RETURNS decimal(18,6)
    DETERMINISTIC
    COMMENT 'calcola importo fatture da ricevere per fornitori'
BEGIN

DECLARE d_valore decimal(18,6);

select

coalesce((select sum(importo_totale_euro) importo from dat
  where frn_codice = i_frn_codice and situazione <> 'consolidato' and
    tipo_documento = 'ddt' and tda_codice_differite <> '' and non_fatturare <> 'si'), 0) +

coalesce((select sum(importo_totale_euro) importo from fat
  where frn_codice = i_frn_codice and situazione <> 'consolidato' and
    tipo_documento <> 'nota credito' and non_fatturare <> 'si'), 0) +

coalesce((select sum(importo_totale_euro * -1) importo from fat
  where frn_codice = i_frn_codice and situazione <> 'consolidato' and
    tipo_documento = 'nota credito' and non_fatturare <> 'si'), 0)

from frn
  where frn.codice = i_frn_codice
  
into d_valore;

RETURN d_valore;

END
