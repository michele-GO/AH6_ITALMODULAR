CREATE PROCEDURE P_NGV_NGR_NGT
(
  IN  `i_progressivo`    	    int,
  IN  `i_quantita_vendite`  	numeric(18,4),
  IN  `i_importo_vendite`      	numeric(18,2),
  IN  `i_quantita_resi`  		numeric(18,4),
  IN  `i_importo_resi`      	numeric(18,2)
)
BEGIN 

  update ngt set 
    quantita_totale_vendite = quantita_totale_vendite + i_quantita_vendite,
    importo_totale_vendite = importo_totale_vendite + i_importo_vendite, 
    quantita_totale_resi = quantita_totale_resi + i_quantita_resi,
    importo_totale_resi = importo_totale_resi + i_importo_resi, 
	importo_totale = round((importo_totale_vendite - importo_totale_resi) *
		(1 - percentuale_sconto / 100) - importo_sconto, 2)
  where progressivo = i_progressivo; 

END
