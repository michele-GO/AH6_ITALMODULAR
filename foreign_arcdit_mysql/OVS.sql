/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from ovs where not exists 
(select id from ovt where progressivo = ovs.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table ovs add constraint ovs_foreign_key foreign key (progressivo)
references ovt (progressivo)
on delete restrict
on update cascade
