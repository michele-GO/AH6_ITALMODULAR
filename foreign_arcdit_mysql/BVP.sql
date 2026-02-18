/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from bvp where not exists 
(select id from bvt where progressivo = bvp.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table bvp add constraint bvp_foreign_key foreign key (progressivo)
references bvt (progressivo)
on delete restrict
on update cascade
