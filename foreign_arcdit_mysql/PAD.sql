/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pad where not exists 
(select id from rat where progressivo = pad.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pad add constraint pad_foreign_key foreign key (progressivo)
references rat (progressivo)
on delete restrict
on update cascade
