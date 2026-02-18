/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from oai where not exists 
(select id from oat where progressivo = oai.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table oai add constraint oai_foreign_key foreign key (progressivo)
references oat (progressivo)
on delete restrict
on update cascade
