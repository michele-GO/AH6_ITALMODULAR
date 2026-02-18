/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from bnr where not exists 
(select id from bnt where progressivo = bnr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table bnr add constraint bnr_foreign_key foreign key (progressivo)
references bnt (progressivo)
on delete restrict
on update cascade
