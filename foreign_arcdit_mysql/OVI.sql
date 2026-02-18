	/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from ovi where not exists 
(select id from ovt where progressivo = ovi.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table ovi add constraint ovi_foreign_key foreign key (progressivo)
references ovt (progressivo)
on delete restrict
on update cascade
