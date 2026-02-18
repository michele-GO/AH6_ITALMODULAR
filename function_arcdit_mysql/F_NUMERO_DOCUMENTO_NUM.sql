CREATE FUNCTION F_NUMERO_DOCUMENTO_NUM(i_numero_documento_alfa char(20)) 
	RETURNS decimal(15,0)
    DETERMINISTIC
    COMMENT 'estrae parte numerica'
BEGIN

DECLARE d_numero_documento decimal(15,0);
DECLARE d_numero_documento_alfa char(20);
DECLARE d_i integer;

set d_numero_documento = 0;
set d_i = 1;
set d_numero_documento_alfa = '';
while d_i <= length(i_numero_documento_alfa) do
  if mid(i_numero_documento_alfa, d_i, 1) >= '0' and mid(i_numero_documento_alfa, d_i, 1) <= '9' then
    set d_numero_documento_alfa = concat(d_numero_documento_alfa, mid(i_numero_documento_alfa, d_i, 1));
  end if;
  set d_i = d_i + 1;
end while;

if length(i_numero_documento_alfa) > 0 then
  set d_numero_documento = cast(d_numero_documento_alfa as decimal(15,0));
end if;

RETURN d_numero_documento;

END
