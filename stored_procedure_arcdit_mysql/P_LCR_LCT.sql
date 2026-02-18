CREATE PROCEDURE P_LCR_LCT 
(
  IN  `i_progressivo`        int,
  IN  `i_quantita_tum`       int,
  IN  `i_quantita`           numeric(18,4)
)
BEGIN 

update lct 
set quantita_evasa_tum = quantita_evasa_tum + i_quantita_tum, 
quantita_evasa = quantita_evasa + i_quantita 
where progressivo = i_progressivo; 

update lct 
set chiuso = 'si'
where progressivo = i_progressivo and ((quantita_tum <> 0 and quantita_evasa_tum >= quantita_tum) or
(quantita_tum = 0 and quantita_evasa >= quantita));

update lct 
set chiuso = 'no'
where progressivo = i_progressivo and ((quantita_tum <> 0 and quantita_evasa_tum < quantita_tum) or
(quantita_tum = 0 and quantita_evasa < quantita));

END
