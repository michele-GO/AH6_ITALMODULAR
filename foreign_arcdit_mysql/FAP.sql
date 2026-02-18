/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from fap where not exists 
(select id from fat where progressivo = fap.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table fap add constraint fap_foreign_key foreign key (progressivo)
references fat (progressivo)
on delete restrict
on update cascade
