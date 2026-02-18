CREATE TRIGGER T_BVRD_AD
  AFTER DELETE
  ON bvrd
  FOR EACH ROW
BEGIN 

if old.tipo_documento_origine = 'bolla' then
  if old.riga_origine = 0 then
    update bvr set situazione = 'evaso' where progressivo = old.progressivo_origine;
    update bvt set situazione = 'evaso' where progressivo = old.progressivo_origine;
  else
    update bvr set situazione = 'evaso' where progressivo = old.progressivo_origine and riga = old.riga_origine;
  end if;  
end if;

if old.tipo_documento_origine = 'ddt' then
  if old.riga_origine = 0 then
    update dvr set situazione = 'evaso' where progressivo = old.progressivo_origine;
    update dvt set situazione = 'evaso' where progressivo = old.progressivo_origine;
  else
    update dvr set situazione = 'evaso' where progressivo = old.progressivo_origine and riga = old.riga_origine;
  end if;  
end if;

if old.tipo_documento_origine = 'ddt fornitori' then
  if old.riga_origine = 0 then
    update dvr set situazione = 'evaso' where progressivo = old.progressivo_origine;
    update dvt set situazione = 'evaso' where progressivo = old.progressivo_origine;
  else
    update dvr set situazione = 'evaso' where progressivo = old.progressivo_origine and riga = old.riga_origine;
  end if;  
end if;

END
