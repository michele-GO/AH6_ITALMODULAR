/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from opr where not exists 
(select id from opt where progressivo = opr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table opr add constraint opr_foreign_key foreign key (progressivo)
references opt (progressivo)
on delete restrict
on update cascade
