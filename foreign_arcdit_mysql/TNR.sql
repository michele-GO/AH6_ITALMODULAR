/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from tnr where not exists 
(select id from tnt where progressivo = tnr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table tnr add constraint tnr_foreign_key foreign key (progressivo)
references tnt (progressivo)
on delete restrict
on update cascade
