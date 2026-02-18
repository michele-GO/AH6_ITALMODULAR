CREATE PROCEDURE P_OTTIENI_VALORE_GENERATORE
(
	IN i_codice VARCHAR(80),
	IN i_codice_ditta VARCHAR(4),
	OUT o_valore INT
)
BEGIN
/*
	INSERT IGNORE INTO prs (codice, codice_ditta, valore) VALUES (i_codice, i_codice_ditta, 0);

	START TRANSACTION;
		SET @_no_output = (SELECT valore FROM prs WHERE codice = i_codice AND codice_ditta = i_codice_ditta FOR UPDATE);
		UPDATE prs SET valore = valore + 1 WHERE codice = i_codice AND codice_ditta = i_codice_ditta;
		SELECT valore FROM arc.prs WHERE codice = i_codice AND codice_ditta = i_codice_ditta INTO o_valore;
	COMMIT;
*/
END
