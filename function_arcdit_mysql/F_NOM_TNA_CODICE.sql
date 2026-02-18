CREATE FUNCTION F_NOM_TNA_CODICE(i_nom_codice varchar(08), i_data date) 
	RETURNS varchar(04)
    DETERMINISTIC
    COMMENT 'tna_codice NOM NMD'
BEGIN

DECLARE d_valore varchar(04) DEFAULT '';

select 
  case
  when (select nmd.tna_codice from nmd where nmd.nom_codice = nom.codice and nmd.data_fine <= i_data order by nmd.data_fine desc limit 1) is not null
  then (select nmd.tna_codice from nmd where nmd.nom_codice = nom.codice and nmd.data_fine <= i_data order by nmd.data_fine desc limit 1)
  else nom.tna_codice
  end
  from nom
  where nom.codice = i_nom_codice
into d_valore;

RETURN d_valore;

END
