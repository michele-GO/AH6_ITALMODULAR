CREATE TRIGGER T_LTM_BD
  BEFORE DELETE
  ON `ltm`
  FOR EACH ROW
BEGIN 

CALL p_ltm_lot 
('D',
OLD.art_codice,
OLD.lotto,
OLD.tma_codice,
OLD.quantita,
OLD.esistenza,

'', '', '', 0, '', null);


END
