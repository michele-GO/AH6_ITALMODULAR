CREATE FUNCTION F_COSTO_UNITARIO_FASE(i_fas_codice VARCHAR(20), i_mac_codice varchar(08)) 
	RETURNS decimal(18,6)
    DETERMINISTIC
    COMMENT 'calcolo costo unitario fase'
BEGIN

DECLARE d_mac_codice varchar(08);
DECLARE d_costo_unitario decimal(18,6);

if i_mac_codice <> '' then
  set d_mac_codice = i_mac_codice;
else 
  select mac_codice from fas where fas.codice = i_fas_codice into d_mac_codice;
end if;

select 
case when (mac.costo_orario is null or mac.costo_orario = 0 or fas.specifica_tum = '') then fas.costo_unitario
else
case when fas.specifica_tum = 'minuti' then round(mac.costo_orario / 60, 6)
else round(mac.costo_orario / 3600, 6)
end
end
from fas
left join mac on mac.codice = d_mac_codice
where fas.codice = i_fas_codice
into d_costo_unitario;

RETURN d_costo_unitario;

END
