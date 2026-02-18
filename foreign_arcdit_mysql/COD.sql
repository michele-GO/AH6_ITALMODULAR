/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from cod where not exists 
(select id from cot where progressivo = cod.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table cod add constraint cod_foreign_key foreign key (progressivo)
references cot (progressivo)
on delete restrict
on update cascade
