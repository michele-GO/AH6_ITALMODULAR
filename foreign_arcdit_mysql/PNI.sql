/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pni where not exists 
(select id from pnt where progressivo = pni.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pni add constraint pni_foreign_key foreign key (progressivo)
references pnt (progressivo)
on delete restrict
on update cascade
