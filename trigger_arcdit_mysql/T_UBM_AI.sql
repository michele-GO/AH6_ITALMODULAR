CREATE TRIGGER T_UBM_AI
  AFTER INSERT
  ON `ubm`
  FOR EACH ROW
BEGIN 

CALL p_ubm_ubi
('I',
'', '', 0, 0,

NEW.art_codice,
NEW.tub_codice,
NEW.tipo_movimento,
NEW.quantita);

END
