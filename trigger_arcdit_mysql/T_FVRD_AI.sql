CREATE TRIGGER T_FVRD_AI
  AFTER INSERT
  ON fvrd
  FOR EACH ROW
BEGIN 

if new.tipo_documento_origine = 'bolla' then
  if new.riga_origine = 0 then
    update bvr set situazione = 'consolidato' where progressivo = new.progressivo_origine;
    update bvt set situazione = 'consolidato' where progressivo = new.progressivo_origine;
  else
    update bvr set situazione = 'consolidato' where progressivo = new.progressivo_origine and riga = new.riga_origine;
  end if;  
end if;

if new.tipo_documento_origine = 'ddt' then
  if new.riga_origine = 0 then
    update dvr set situazione = 'consolidato' where progressivo = new.progressivo_origine;
    update dvt set situazione = 'consolidato' where progressivo = new.progressivo_origine;
  else
    update dvr set situazione = 'consolidato' 
	  where progressivo = new.progressivo_origine and riga = new.riga_origine;
  end if;  
end if;

if new.tipo_documento_origine = 'ddt fornitori' then
  if new.riga_origine = 0 then
    update dvr set situazione = 'consolidato' where progressivo = new.progressivo_origine;
    update dvt set situazione = 'consolidato' where progressivo = new.progressivo_origine;
  else
    update dvr set situazione = 'consolidato' 
	  where progressivo = new.progressivo_origine and riga = new.riga_origine;
  end if;  
end if;

END
