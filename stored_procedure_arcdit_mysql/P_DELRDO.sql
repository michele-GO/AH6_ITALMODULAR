CREATE PROCEDURE P_DELRDO
(
    IN I_PROGRESSIVO 				INT
)
BEGIN 
  delete from rdo where progressivo = i_progressivo;
 
END
