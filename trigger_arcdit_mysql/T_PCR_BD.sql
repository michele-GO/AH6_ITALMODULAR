CREATE TRIGGER T_PCR_BD 
BEFORE DELETE ON PCR FOR EACH ROW 
BEGIN 

delete from cem
where documento_origine = 'primanota competenza'
and doc_progressivo_origine = old.progressivo
and doc_riga_origine = old.riga;

END

