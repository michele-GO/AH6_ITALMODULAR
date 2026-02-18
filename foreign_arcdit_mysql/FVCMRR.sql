/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from fvcmrr where not exists 
(select id from fvcmrt where progressivo = fvcmrr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table fvcmrr add constraint fvcmrr_foreign_key foreign key (progressivo)
references fvcmrt (progressivo)
on delete restrict
on update cascade
