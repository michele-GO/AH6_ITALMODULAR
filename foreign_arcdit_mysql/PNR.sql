/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pnr where not exists 
(select id from pnt where progressivo = pnr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pnr add constraint pnr_foreign_key foreign key (progressivo)
references pnt (progressivo)
on delete restrict
on update cascade
