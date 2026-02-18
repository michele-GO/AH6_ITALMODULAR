/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from ovd where not exists 
(select id from ovt where progressivo = ovd.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table ovd add constraint ovd_foreign_key foreign key (progressivo)
references ovt (progressivo)
on delete restrict
on update cascade
