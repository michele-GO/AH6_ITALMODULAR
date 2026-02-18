CREATE PROCEDURE P_NCR_NCT
(
  IN  `i_progressivo`           int,
  IN  `i_data`           				date
)
BEGIN 
DECLARE d_chiusa								VARCHAR(02);
DECLARE d_data						 			date;

select 
case
when (select ncr.id from ncr
inner join nct on nct.progressivo = ncr.progressivo
inner join tncac on tncac.tnc_codice = nct.tnc_codice and tncac.tac_codice = ncr.tac_codice 
where ncr.progressivo = i_progressivo and tncac.chiusura = 'si') is null then 'no'
else 'si'
end chiusa into d_chiusa;

if d_chiusa = 'si' then
  set d_data = i_data;
else
  set d_data = null;
end if;

update nct 
	set chiusa = d_chiusa, data_chiusura = d_data
where progressivo = i_progressivo;

END
