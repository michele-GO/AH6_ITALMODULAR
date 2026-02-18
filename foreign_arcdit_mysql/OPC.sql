/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from opc where not exists 
(select id from opt where progressivo = opc.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table opc add constraint opc_foreign_key foreign key (progressivo)
references opt (progressivo)
on delete restrict
on update cascade
