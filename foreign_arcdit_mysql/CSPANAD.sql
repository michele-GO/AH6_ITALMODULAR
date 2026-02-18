/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from cspanad where not exists 
(select id from cspanar where progressivo = cspanad.progressivo and riga = cspanad.riga);

/*
tenere il nome del constraint in minuscolo
*/
alter table cspanad add constraint cspanad_foreign_key foreign key (progressivo,riga)
references cspanar (progressivo,riga)
on delete restrict
on update cascade
