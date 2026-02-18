CREATE PROCEDURE P_RCR_RCT
(
  IN  `i_progressivo`            int,
  IN  `i_quantita`         		 numeric(16,4)
)
BEGIN 
update rct
set totale_quantita = totale_quantita + i_quantita 
where progressivo = i_progressivo and tipologia = 'ricetta'; 

update rct
set totale_quantita = 1
where progressivo = i_progressivo and tipologia = 'struttura'; 
END
