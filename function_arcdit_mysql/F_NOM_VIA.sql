CREATE FUNCTION F_NOM_VIA(i_nom_codice varchar(08), i_data date) 
	RETURNS varchar(40)
    DETERMINISTIC
    COMMENT 'via NOM NMD'
BEGIN

DECLARE d_valore varchar(40) DEFAULT '';

select 
  case
  when (select nmd.via from nmd where nmd.nom_codice = nom.codice and nmd.data_fine <= i_data order by nmd.data_fine desc limit 1) is not null
  then (select nmd.via from nmd where nmd.nom_codice = nom.codice and nmd.data_fine <= i_data order by nmd.data_fine desc limit 1)
  else nom.via
  end
  from nom
  where nom.codice = i_nom_codice
into d_valore;

RETURN d_valore;

END
