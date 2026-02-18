CREATE PROCEDURE P_CAR_CAT_PTI
(
  IN  `i_cli_codice`							varchar(08),
  IN  `i_data`         						date,
  IN  `i_importo`    							numeric(18,2)
)
BEGIN 
update pti
set importo_utilizzato = importo_utilizzato + i_importo
where cli_codice = i_cli_codice and data_inizio = i_data;
END
