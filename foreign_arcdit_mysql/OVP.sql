/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from ovp where not exists 
(select id from ovt where progressivo = ovp.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table ovp add constraint ovp_foreign_key foreign key (progressivo)
references ovt (progressivo)
on delete restrict
on update cascade
