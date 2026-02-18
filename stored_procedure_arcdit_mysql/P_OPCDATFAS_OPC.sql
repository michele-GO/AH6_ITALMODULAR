CREATE PROCEDURE P_OPCDATFAS_OPC
(
  IN  i_id	                int
)
BEGIN 
/*
  update opc
    set data_ora_inizio = (select min(data) from opcdatfas where id_opc = i_id),
    data_ora_fine = (select max(data) from opcdatfas where id_opc = i_id)
  where id = i_id;
*/
END