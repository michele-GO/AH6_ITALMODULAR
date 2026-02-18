CREATE TRIGGER T_LTM_AI
  AFTER INSERT
  ON `ltm`
  FOR EACH ROW
BEGIN 

CALL p_ltm_lot 
('I',
'', '', '', 0, '', 

NEW.art_codice,
NEW.lotto,
NEW.tma_codice,
NEW.quantita,
NEW.esistenza,
NEW.data_registrazione);

END
