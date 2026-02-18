CREATE PROCEDURE P_CICLI
(
    IN I_PROGRESSIVO 				INT
)
BEGIN 
  delete from opc where progressivo = i_progressivo;
  
END
