/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from ncr where not exists 
(select id from nct where progressivo = ncr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table ncr add constraint ncr_foreign_key foreign key (progressivo)
references nct (progressivo)
on delete restrict
on update cascade
