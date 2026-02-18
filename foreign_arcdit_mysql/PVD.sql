/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pvd where not exists 
(select id from pvt where progressivo = pvd.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pvd add constraint pvd_foreign_key foreign key (progressivo)
references pvt (progressivo)
on delete restrict
on update cascade
