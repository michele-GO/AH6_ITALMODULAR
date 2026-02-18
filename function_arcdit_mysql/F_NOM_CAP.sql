CREATE FUNCTION F_NOM_CAP(i_nom_codice varchar(08), i_data date) 
	RETURNS varchar(10)
    DETERMINISTIC
    COMMENT 'cap NOM NMD'
BEGIN

DECLARE d_valore varchar(10) DEFAULT '';

select 
  case
  when (select nmd.cap from nmd where nmd.nom_codice = nom.codice and nmd.data_fine <= i_data order by nmd.data_fine desc limit 1) is not null
  then (select nmd.cap from nmd where nmd.nom_codice = nom.codice and nmd.data_fine <= i_data order by nmd.data_fine desc limit 1)
  else nom.cap
  end
  from nom
  where nom.codice = i_nom_codice
into d_valore;

RETURN d_valore;

END
