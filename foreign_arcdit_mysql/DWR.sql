/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from dwr where not exists 
(select id from dwt where progressivo = dwr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table dwr add constraint dwr_foreign_key foreign key (progressivo)
references dwt (progressivo)
on delete restrict
on update cascade
