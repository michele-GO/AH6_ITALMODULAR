/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from brr where not exists 
(select id from brt where progressivo = brr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table brr add constraint brr_foreign_key foreign key (progressivo)
references brt (progressivo)
on delete restrict
on update cascade
