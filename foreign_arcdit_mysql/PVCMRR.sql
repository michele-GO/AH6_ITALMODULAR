/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from pvcmrr where not exists 
(select id from pvcmrt where progressivo = pvcmrr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pvcmrr add constraint pvcmrr_foreign_key foreign key (progressivo)
references pvcmrt (progressivo)
on delete restrict
on update cascade
