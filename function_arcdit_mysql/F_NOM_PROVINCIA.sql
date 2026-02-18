CREATE FUNCTION F_NOM_PROVINCIA(i_nom_codice varchar(08), i_data date) 
	RETURNS varchar(02)
    DETERMINISTIC
    COMMENT 'provincia NOM NMD'
BEGIN

DECLARE d_valore varchar(02) DEFAULT '';

select 
  case
  when (select nmd.provincia from nmd where nmd.nom_codice = nom.codice and nmd.data_fine <= i_data order by nmd.data_fine desc limit 1) is not null
  then (select nmd.provincia from nmd where nmd.nom_codice = nom.codice and nmd.data_fine <= i_data order by nmd.data_fine desc limit 1)
  else nom.provincia
  end
  from nom
  where nom.codice = i_nom_codice
into d_valore;

RETURN d_valore;

END
