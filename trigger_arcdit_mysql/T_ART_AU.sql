CREATE TRIGGER T_ART_AU
  AFTER UPDATE
  ON art
  FOR EACH ROW
BEGIN 

if OLD.DESCRIZIONE1 <> new.DESCRIZIONE1 or OLD.DESCRIZIONE2 <> new.DESCRIZIONE2 then

update mtr set descrizione1 = new.descrizione1, descrizione2 = new.descrizione2 where art_codice = new.codice;

update tpr set descrizione1 = new.descrizione1, descrizione2 = new.descrizione2 where art_codice = new.codice;

end if;

END
