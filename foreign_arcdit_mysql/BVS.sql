/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from bvs where not exists 
(select id from bvt where progressivo = bvs.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table bvs add constraint bvs_foreign_key foreign key (progressivo)
references bvt (progressivo)
on delete restrict
on update cascade
