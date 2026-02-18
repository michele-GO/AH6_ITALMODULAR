CREATE TRIGGER T_UBM_BD
  BEFORE DELETE
  ON `ubm`
  FOR EACH ROW
BEGIN 

CALL p_ubm_ubi
('D',
OLD.art_codice,
OLD.tub_codice,
OLD.tipo_movimento,
OLD.quantita,

'', '', 0, 0);

END
