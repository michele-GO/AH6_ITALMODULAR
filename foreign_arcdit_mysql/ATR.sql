/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from atr where not exists 
(select id from att where progressivo = atr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table atr add constraint atr_foreign_key foreign key (progressivo)
references att (progressivo)
on delete restrict
on update cascade
