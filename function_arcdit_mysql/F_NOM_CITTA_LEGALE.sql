CREATE FUNCTION F_NOM_CITTA_LEGALE(i_nom_codice varchar(08), i_data date) 
	RETURNS varchar(30)
    DETERMINISTIC
    COMMENT 'città legale NOM NMD'
BEGIN

DECLARE d_valore varchar(30) DEFAULT '';

select 
  case
  when (select nmd.citta_legale from nmd where nmd.nom_codice = nom.codice and nmd.data_fine <= i_data order by nmd.data_fine desc limit 1) is not null
  then (select nmd.citta_legale from nmd where nmd.nom_codice = nom.codice and nmd.data_fine <= i_data order by nmd.data_fine desc limit 1)
  else nom.citta_legale
  end
  from nom
  where nom.codice = i_nom_codice
into d_valore;

RETURN d_valore;

END
