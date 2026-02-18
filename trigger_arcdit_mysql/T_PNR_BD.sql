CREATE TRIGGER T_PNR_BD 
BEFORE DELETE ON PNR FOR EACH ROW 
BEGIN 

delete from mima where pnr_progressivo = old.progressivo and pnr_riga = old.riga;

delete from cem where documento_origine = 'primanota contabilita' and doc_progressivo_origine = old.progressivo and doc_riga_origine = old.riga;

delete from mcs where documento_origine = 'primanota' and doc_progressivo_origine = old.progressivo and doc_riga_origine = old.riga;

if old.riconciliato = 'si' then
  update tbamov set riconciliato = 'no', pnr_id = 0 where pnr_id = old.id;
end if;

CALL p_pnr_pnt (OLD.PROGRESSIVO, 
OLD.IMPORTO_DARE * -1, 
OLD.IMPORTO_DARE_EURO * -1, 
OLD.IMPORTO_AVERE * -1, 
OLD.IMPORTO_AVERE_EURO * -1); 

CALL p_pnr_cfg ('D', 
OLD.PROGRESSIVO, 
OLD.CFG_TIPO, 
OLD.CFG_CODICE, 
OLD.PARTITE, 
OLD.IMPORTO_DARE_EURO, 
OLD.IMPORTO_AVERE_EURO, 
OLD.IMPORTO_DARE, 
OLD.IMPORTO_AVERE, 
0, '', '', '', 0, 0, 0, 0);

END

