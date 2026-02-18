CREATE TRIGGER T_CMD_AI
  AFTER INSERT
  ON `cmd`
  FOR EACH ROW
BEGIN 

/*
CALL P_AGGIORNA_FASE_COMMESSA(new.cms_codice, new.tipologia, new.fas_codice, new.fase_chiusa);
*/

END
