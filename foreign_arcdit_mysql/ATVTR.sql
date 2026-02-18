/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from atvtr where not exists 
(select id from atvtt where progressivo = atvtr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table atvtr add constraint atvtr_foreign_key foreign key (progressivo)
references atvtt (progressivo)
on delete restrict
on update cascade
