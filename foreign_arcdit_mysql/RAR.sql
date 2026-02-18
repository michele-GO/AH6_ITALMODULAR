/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from rar where not exists 
(select id from rat where progressivo = rar.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table rar add constraint rar_foreign_key foreign key (progressivo)
references rat (progressivo)
on delete restrict
on update cascade
