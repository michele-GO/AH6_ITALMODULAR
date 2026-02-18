/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from olr where not exists 
(select id from olt where progressivo = olr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table olr add constraint olr_foreign_key foreign key (progressivo)
references olt (progressivo)
on delete restrict
on update cascade
