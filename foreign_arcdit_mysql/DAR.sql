/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from dar where not exists 
(select id from dat where progressivo = dar.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table dar add constraint dar_foreign_key foreign key (progressivo)
references dat (progressivo)
on delete restrict
on update cascade
