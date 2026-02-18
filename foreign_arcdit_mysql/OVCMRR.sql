/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from ovcmrr where not exists 
(select id from ovcmrt where progressivo = ovcmrr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table ovcmrr add constraint ovcmrr_foreign_key foreign key (progressivo)
references ovcmrt (progressivo)
on delete restrict
on update cascade
