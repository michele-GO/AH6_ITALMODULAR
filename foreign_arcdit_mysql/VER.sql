/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from ver where not exists 
(select id from vet where progressivo = ver.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table ver add constraint ver_foreign_key foreign key (progressivo)
references vet (progressivo)
on delete restrict
on update cascade
