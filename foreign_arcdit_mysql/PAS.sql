/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pas where not exists 
(select id from pat where progressivo = pas.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pas add constraint pas_foreign_key foreign key (progressivo)
references pat (progressivo)
on delete restrict
on update cascade
