/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from bvcmrr where not exists 
(select id from bvcmrt where progressivo = bvcmrr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table bvcmrr add constraint bvcmrr_foreign_key foreign key (progressivo)
references bvcmrt (progressivo)
on delete restrict
on update cascade
