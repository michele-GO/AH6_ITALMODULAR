CREATE TRIGGER T_NOM_AU
  AFTER UPDATE
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

  update tsp
    set descrizione1 = new.descrizione1, 
    descrizione2 = new.descrizione2, 
    via  = new.via,
    cap = new.cap, 
    citta = new.citta, 
    provincia = new.provincia, 
    telefono = new.telefono, 
    cellulare = new.cellulare, 
    fax = new.fax, 
    partita_iva = new.partita_iva
  where codice = new.codice;

IF NEW.OBSOLETO <> OLD.OBSOLETO THEN
  UPDATE CLI SET CLI.OBSOLETO = NEW.OBSOLETO WHERE CLI.CODICE = NEW.CODICE;
  UPDATE FRN SET FRN.OBSOLETO = NEW.OBSOLETO WHERE FRN.CODICE = NEW.CODICE;
END IF;

END
