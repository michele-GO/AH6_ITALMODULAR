/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from rai where not exists 
(select id from rat where progressivo = rai.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table rai add constraint rai_foreign_key foreign key (progressivo)
references rat (progressivo)
on delete restrict
on update cascade
