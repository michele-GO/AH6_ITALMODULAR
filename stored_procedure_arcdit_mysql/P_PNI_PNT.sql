CREATE PROCEDURE P_PNI_PNT
(
  IN  `i_progressivo`                int,
  IN  `i_importo_imponibile`         numeric(18,2),
  IN  `i_importo_imponibile_euro`    numeric(18,2),
  IN  `i_importo_iva`                numeric(18,2),
  IN  `i_importo_iva_euro`           numeric(18,2),
  IN  `i_importo_indetraibile`       numeric(18,2),
  IN  `i_importo_indetraibile_euro`  numeric(18,2)
)
BEGIN 
update pnt 
set importo_totale_imponibile = importo_totale_imponibile + i_importo_imponibile, 
importo_totale_imponibile_euro = importo_totale_imponibile_euro + i_importo_imponibile_euro, 
importo_totale_iva = importo_totale_iva + i_importo_iva, 
importo_totale_iva_euro = importo_totale_iva_euro + i_importo_iva_euro, 
importo_totale_indetraibile = importo_totale_indetraibile + i_importo_indetraibile, 
importo_totale_indetraibile_eur = importo_totale_indetraibile_eur + i_importo_indetraibile_euro, 
importo_totale_documento = importo_totale_documento + i_importo_imponibile + i_importo_iva,
importo_totale_documento_euro = importo_totale_documento_euro + i_importo_imponibile_euro + i_importo_iva_euro
where progressivo = i_progressivo; 
END