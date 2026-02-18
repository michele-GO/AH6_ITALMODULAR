/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from dvcmrr where not exists 
(select id from dvcmrt where progressivo = dvcmrr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table dvcmrr add constraint dvcmrr_foreign_key foreign key (progressivo)
references dvcmrt (progressivo)
on delete restrict
on update cascade
