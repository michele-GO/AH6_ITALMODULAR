/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from cspanar where not exists 
(select id from cspanat where progressivo = cspanar.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table cspanar add constraint cspanar_foreign_key foreign key (progressivo)
references cspanat (progressivo)
on delete restrict
on update cascade
