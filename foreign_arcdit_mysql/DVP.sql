/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from dvp where not exists 
(select id from dvt where progressivo = dvp.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table dvp add constraint dvp_foreign_key foreign key (progressivo)
references dvt (progressivo)
on delete restrict
on update cascade
