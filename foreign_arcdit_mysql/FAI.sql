/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from fai where not exists 
(select id from fat where progressivo = fai.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table fai add constraint fai_foreign_key foreign key (progressivo)
references fat (progressivo)
on delete restrict
on update cascade
