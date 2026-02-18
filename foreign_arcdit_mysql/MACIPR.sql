/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from macipr where not exists 
(select id from macipt where progressivo = macipr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table macipr add constraint macipr_foreign_key foreign key (progressivo)
references macipt (progressivo)
on delete restrict
on update cascade
