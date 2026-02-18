/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from cor where not exists 
(select id from cot where progressivo = cor.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table cor add constraint cor_foreign_key foreign key (progressivo)
references cot (progressivo)
on delete restrict
on update cascade
