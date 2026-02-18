/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from oap where not exists 
(select id from oat where progressivo = oap.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table oap add constraint oap_foreign_key foreign key (progressivo)
references oat (progressivo)
on delete restrict
on update cascade
