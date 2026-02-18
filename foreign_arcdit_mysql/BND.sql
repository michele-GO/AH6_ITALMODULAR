/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from bnd where not exists 
(select id from bnr where progressivo = bnd.progressivo and riga = bnd.riga);

/*
tenere il nome del constraint in minuscolo
*/
alter table bnd add constraint bnd_foreign_key foreign key (progressivo,riga)
references bnr (progressivo,riga)
on delete restrict
on update cascade;
