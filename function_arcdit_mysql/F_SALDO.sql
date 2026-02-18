CREATE FUNCTION F_SALDO(i_cfg_tipo varchar(01), i_cfg_codice varchar(08), i_ese_codice varchar(04), 
    i_data_inizio date, i_data_fine date) 
	RETURNS decimal(18,6)
    DETERMINISTIC
    COMMENT 'calcola saldo sottoconto da PNR'
BEGIN

DECLARE d_saldo decimal(18,6) DEFAULT 0;

select coalesce(sum(pnr.importo_dare_euro - pnr.importo_avere_euro), 0) from pnr
  inner join pnt on pnt.progressivo = pnr.progressivo
  where pnr.cfg_tipo = i_cfg_tipo and pnr.cfg_codice = i_cfg_codice and
    pnt.data_registrazione between i_data_inizio and i_data_fine and
    (pnt.ese_codice = i_ese_codice or i_ese_codice = '')
into d_saldo;

RETURN d_saldo;

END
