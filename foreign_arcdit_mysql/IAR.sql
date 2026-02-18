/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from iar where not exists 
(select id from iat where progressivo = iar.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table iar add constraint iar_foreign_key foreign key (progressivo)
references iat (progressivo)
on delete restrict
on update cascade
