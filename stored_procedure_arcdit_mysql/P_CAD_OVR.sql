CREATE PROCEDURE P_CAD_OVR
(
  IN  i_operazione    	    char(1),
  IN  i_progressivo 	      int,
  IN  i_riga				        int
)
BEGIN
  if i_operazione = 'I' then
    update ovr set quantita_evasa = quantita, importo_evaso = importo, importo_sconto_evaso = importo_sconto, situazione = 'evaso'
      where progressivo = i_progressivo and riga = i_riga;
  end if;

  if i_operazione = 'D' then
    update ovr set quantita_evasa = 0, importo_evaso = 0, importo_sconto_evaso = 0, situazione = 'inserito'
      where progressivo = i_progressivo and riga = i_riga;
  end if;
END
