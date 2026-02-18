/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from lcr where not exists 
(select id from lct where progressivo = lcr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table lcr add constraint lcr_foreign_key foreign key (progressivo)
references lct (progressivo)
on delete restrict
on update cascade
