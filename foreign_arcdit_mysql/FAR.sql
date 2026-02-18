/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from far where not exists 
(select id from fat where progressivo = far.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table far add constraint far_foreign_key foreign key (progressivo)
references fat (progressivo)
on delete restrict
on update cascade
