/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from mlr where not exists 
(select id from mlt where progressivo = mlr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table mlr add constraint mlr_foreign_key foreign key (progressivo)
references mlt (progressivo)
on delete restrict
on update cascade
