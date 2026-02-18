CREATE PROCEDURE P_ENASARCO
(
    IN I_PROGRESSIVO		INT
)
BEGIN 

  delete from ena where pnr_progressivo = i_progressivo;
  
END
