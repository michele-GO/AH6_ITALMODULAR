/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from cad where not exists 
(select id from car where progressivo = cad.progressivo and riga = cad.riga);

/*
tenere il nome del constraint in minuscolo
*/
alter table cad add constraint cad_foreign_key foreign key (progressivo,riga)
references car (progressivo,riga)
on delete restrict
on update cascade
