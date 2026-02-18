/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from oad where not exists 
(select id from oat where progressivo = oad.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table oad add constraint oad_foreign_key foreign key (progressivo)
references oat (progressivo)
on delete restrict
on update cascade
