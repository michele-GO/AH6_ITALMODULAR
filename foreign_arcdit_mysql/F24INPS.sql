/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from f24inps where not exists 
(select id from f24 where progressivo = f24inps.f24_progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table f24inps add constraint f24inps_foreign_key foreign key (f24_progressivo)
references f24 (progressivo)
on delete restrict
on update cascade
