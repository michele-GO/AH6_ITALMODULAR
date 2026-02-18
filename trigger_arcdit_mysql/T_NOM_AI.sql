CREATE TRIGGER T_NOM_AI
  AFTER INSERT
  ON `nom`
  FOR EACH ROW
BEGIN 
  update cli 
    set descrizione1 = new.descrizione1, 
    descrizione2 = new.descrizione2, 
    via  = new.via,
    citta = new.citta, 
    partita_iva = new.partita_iva, 
    codice_fiscale = new.codice_fiscale,
    tna_codice = new.tna_codice 
  where codice = new.codice;

  update frn 
    set descrizione1 = new.descrizione1, 
    descrizione2 = new.descrizione2, 
    via  = new.via,
    citta = new.citta, 
    partita_iva = new.partita_iva, 
    codice_fiscale = new.codice_fiscale,
    tna_codice = new.tna_codice 
  where codice = new.codice;
END
