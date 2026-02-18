/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from dvs where not exists 
(select id from dvt where progressivo = dvs.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table dvs add constraint dvs_foreign_key foreign key (progressivo)
references dvt (progressivo)
on delete restrict
on update cascade
