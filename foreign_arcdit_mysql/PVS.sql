/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pvs where not exists 
(select id from pvt where progressivo = pvs.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pvs add constraint pvs_foreign_key foreign key (progressivo)
references pvt (progressivo)
on delete restrict
on update cascade
