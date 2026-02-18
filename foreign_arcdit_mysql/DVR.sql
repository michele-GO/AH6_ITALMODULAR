/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from dvr where not exists 
(select id from dvt where progressivo = dvr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table dvr add constraint dvr_foreign_key foreign key (progressivo)
references dvt (progressivo)
on delete restrict
on update cascade
