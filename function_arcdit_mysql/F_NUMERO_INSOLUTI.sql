CREATE FUNCTION F_NUMERO_INSOLUTI(i_cfg_tipo varchar(01), i_cfg_codice varchar(08), i_ese_codice varchar(04)) 
	RETURNS int
    DETERMINISTIC
    COMMENT 'calcola numero insoluti da PNR'
BEGIN

DECLARE d_valore int;

select count(*) numero_insoluti
  from pnr
  inner join pnt on pnt.progressivo = pnr.progressivo
  where pnr.cfg_tipo = i_cfg_tipo
	and pnr.cfg_codice = i_cfg_codice
    and pnt.ese_codice = i_ese_codice 
	and pnr.partite = 'I'
into d_valore;

RETURN d_valore;

END
