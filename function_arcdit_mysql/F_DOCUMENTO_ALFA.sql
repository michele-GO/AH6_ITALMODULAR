CREATE FUNCTION F_DOCUMENTO_ALFA(i_documento_origine char(30), i_doc_progressivo_origine int, i_cfg_tipo char(1),
  i_numero_documento_alfa char(30), i_numero_documento dec(15,0), i_serie_documento char(08)) 
	RETURNS char(30)
    DETERMINISTIC
    COMMENT 'assegna numero documento completo'
BEGIN

DECLARE d_numero_documento char(15);
DECLARE d_serie_documento char(08);
DECLARE d_numero_documento_alfa char(30);

set d_numero_documento = i_numero_documento;
set d_serie_documento = i_serie_documento;
set d_numero_documento_alfa = i_numero_documento_alfa;

if d_numero_documento_alfa <> '' then
  set d_numero_documento_alfa = d_numero_documento_alfa;  
else
--  if i_documento_origine = '' then  **************************
  if i_documento_origine = '' or i_cfg_tipo = 'C' then
-- *************************************************************
    if i_cfg_tipo = 'C' then
      set d_numero_documento = lpad(d_numero_documento, 6, '0');
	end if;

    if d_serie_documento = '' then
      set d_numero_documento_alfa = d_numero_documento;
    else 
      set d_numero_documento_alfa = concat(d_numero_documento, '/', d_serie_documento);
    end if;    
  else
    if left(i_documento_origine, 9) = 'primanota' then
      select numero_documento_alfa, numero_documento, serie_documento from pnt where progressivo = i_doc_progressivo_origine
      into d_numero_documento_alfa, d_numero_documento, d_serie_documento;
    elseif right(i_documento_origine, 4) = ' acq' then
      if left(i_documento_origine, 3) = 'ddt' then
        select numero_documento_alfa, 0.0, '' from dat where progressivo = i_doc_progressivo_origine
        into d_numero_documento_alfa, d_numero_documento, d_serie_documento;
      else
        select numero_documento_alfa, 0.0, '' from fat where progressivo = i_doc_progressivo_origine
        into d_numero_documento_alfa, d_numero_documento, d_serie_documento;
      end if;
    end if;

    if d_numero_documento_alfa = '' then
/*
      if i_cfg_tipo = 'C' then
        set d_numero_documento = lpad(d_numero_documento, 6, '0');
      end if;
*/

      if d_serie_documento = '' then
        set d_numero_documento_alfa = d_numero_documento;
      else 
        set d_numero_documento_alfa = concat(d_numero_documento, '/', d_serie_documento);
      end if;
    end if;
  end if;    
end if;
if d_numero_documento_alfa = '0' then
  set d_numero_documento_alfa = '';
end if;

RETURN d_numero_documento_alfa;

END
