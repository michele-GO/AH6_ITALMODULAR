CREATE PROCEDURE P_MMR_MMT 
(
  IN  `i_progressivo`         int,
  IN  `i_quantita`            numeric(18,4),
  IN  `i_importo`             numeric(18,2),
  IN  `i_importo_euro`        numeric(18,2),
  IN  `i_importo_spese`       numeric(18,2),
  IN  `i_importo_spese_euro`  numeric(18,2),
  IN  `i_tipo_movimento`  	  varchar(20)
)
BEGIN 

if i_tipo_movimento = 'normale' then
  update mmt set 
    totale_quantita = totale_quantita + i_quantita, 
    importo_totale_documento = importo_totale_documento + i_importo + i_importo_spese, 
    importo_totale_documento_euro = importo_totale_documento_euro + i_importo_euro + i_importo_spese_euro, 
    importo_totale_spese = importo_totale_spese + i_importo_spese, 
    importo_totale_spese_euro = importo_totale_spese_euro + i_importo_spese_euro
  where progressivo = i_progressivo; 
else
  update mmt set 
    totale_quantita = totale_quantita + i_quantita, 
    importo_totale_documento = importo_totale_documento + i_importo_spese, 
    importo_totale_documento_euro = importo_totale_documento_euro + i_importo_spese_euro, 
    importo_totale_spese = importo_totale_spese + i_importo_spese, 
    importo_totale_spese_euro = importo_totale_spese_euro + i_importo_spese_euro
  where progressivo = i_progressivo; 
end if;

END
