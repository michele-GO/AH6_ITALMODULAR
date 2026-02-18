CREATE PROCEDURE P_PNR_PNT
(IN i_progressivo 			int, 
IN i_importo_dare 			numeric(18,2), 
IN i_importo_dare_euro 		numeric(18,2), 
IN i_importo_avere 			numeric(18,2),
IN i_importo_avere_euro 	numeric(18,2))
BEGIN 
update pnt set 
importo_totale_dare = importo_totale_dare + i_importo_dare, 
importo_totale_avere = importo_totale_avere + i_importo_avere, 
importo_sbilancio = importo_totale_dare - importo_totale_avere, 
importo_totale_dare_euro = importo_totale_dare_euro + i_importo_dare_euro, 
importo_totale_avere_euro = importo_totale_avere_euro + i_importo_avere_euro, 
importo_sbilancio_euro = importo_totale_dare_euro - importo_totale_avere_euro 
where progressivo = i_progressivo; 
END

