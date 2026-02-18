CREATE FUNCTION F_NUMERO_DOCUMENTO_ALFA(i_progressivo_pnt int, i_cfg_tipo char(01), i_numero_documento dec(15,0), i_serie_documento char(08)) 
	RETURNS char(30)
    DETERMINISTIC
    COMMENT 'assegna numero documento completo'
BEGIN

DECLARE d_numero_documento char(15);
DECLARE d_serie_documento char(08);
DECLARE d_numero_documento_alfa char(30);

select numero_documento_alfa, numero_documento, serie_documento from pnt where progressivo = i_progressivo_pnt
into d_numero_documento_alfa, d_numero_documento, d_serie_documento;

if d_numero_documento_alfa is null or d_numero_documento_alfa = '' then
  set d_numero_documento = i_numero_documento;
  set d_serie_documento = i_serie_documento;

  if i_cfg_tipo = 'C' then
    set d_numero_documento = lpad(d_numero_documento, 6, '0');
  end if;

  if d_serie_documento = '' then
    set d_numero_documento_alfa = d_numero_documento;
  else 
    set d_numero_documento_alfa = concat(d_numero_documento, '/', d_serie_documento);
  end if;    
end if;

RETURN d_numero_documento_alfa;

END
