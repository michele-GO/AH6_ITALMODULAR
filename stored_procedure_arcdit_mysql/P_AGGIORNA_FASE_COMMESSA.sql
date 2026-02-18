/*
CREATE PROCEDURE P_AGGIORNA_FASE_COMMESSA(IN i_codcom VARCHAR(20), IN i_tipolo VARCHAR(10), IN i_codfas VARCHAR(08), IN i_chiusa VARCHAR(02))
    COMMENT 'agiornamento fase commessa chiusa '
BEGIN
  declare l_id_cmd   integer;
  declare l_icmtpf   integer;
  declare l_chiusa   varchar(02);
	
  if i_chiusa = 'si' then 
    select cmt.id, cmtpf.id 
    from cmt 
    inner join cmtpf on cmtpf.id_cmt = cmt.id and
      cmtpf.fase_chiusa = 'no' and cmtpf.fas_codice = i_codfas 
    where cmt.cms_codice = i_codcom and cmt.tipologia = i_tipolo
	  order by cmtpf.sequenza limit 1 
		into l_id_cmd, l_icmtpf;
	   
    update cmtpf set cmtpf.fase_chiusa = 'si' where cmtpf.id = l_icmtpf; 
  end if;
	
END
*/
