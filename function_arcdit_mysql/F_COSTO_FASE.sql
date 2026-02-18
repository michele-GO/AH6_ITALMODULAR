CREATE FUNCTION F_COSTO_FASE(i_fas_codice CHAR(20), i_mac_codice CHAR(8), i_attrezzaggio DECIMAL(18,6), i_quantita DECIMAL(18,6), i_fine_attrezzaggio DECIMAL(18,6))
	RETURNS decimal(18,6)
    DETERMINISTIC
    COMMENT 'calcola costo fase chiamando P_COSTO_FASE'
BEGIN
	DECLARE d_costo  decimal(18,6);

	CALL P_COSTO_FASE(i_fas_codice, i_mac_codice, i_attrezzaggio, i_quantita, i_fine_attrezzaggio, d_costo);

	RETURN d_costo;

END
