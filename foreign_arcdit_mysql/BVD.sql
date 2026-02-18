/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from bvd where not exists 
(select id from bvt where progressivo = bvd.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table bvd add constraint bvd_foreign_key foreign key (progressivo)
references bvt (progressivo)
on delete restrict
on update cascade
