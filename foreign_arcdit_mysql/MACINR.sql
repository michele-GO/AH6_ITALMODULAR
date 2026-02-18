/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from macinr where not exists 
(select id from macint where progressivo = macinr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table macinr add constraint macinr_foreign_key foreign key (progressivo)
references macint (progressivo)
on delete restrict
on update cascade
