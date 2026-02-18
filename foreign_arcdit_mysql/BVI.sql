/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from bvi where not exists 
(select id from bvt where progressivo = bvi.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table bvi add constraint bvi_foreign_key foreign key (progressivo)
references bvt (progressivo)
on delete restrict
on update cascade
