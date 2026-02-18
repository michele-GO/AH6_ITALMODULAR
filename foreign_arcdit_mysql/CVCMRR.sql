/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from cvcmrr where not exists 
(select id from cvcmrt where progressivo = cvcmrr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table cvcmrr add constraint cvcmrr_foreign_key foreign key (progressivo)
references cvcmrt (progressivo)
on delete restrict
on update cascade
