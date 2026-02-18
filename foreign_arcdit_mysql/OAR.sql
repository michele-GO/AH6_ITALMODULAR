/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from oar where not exists 
(select id from oat where progressivo = oar.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table oar add constraint oar_foreign_key foreign key (progressivo)
references oat (progressivo)
on delete restrict
on update cascade
