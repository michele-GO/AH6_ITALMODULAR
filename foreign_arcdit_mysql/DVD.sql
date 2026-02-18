/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from dvd where not exists 
(select id from dvt where progressivo = dvd.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table dvd add constraint dvd_foreign_key foreign key (progressivo)
references dvt (progressivo)
on delete restrict
on update cascade
