/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from fvs where not exists 
(select id from fvt where progressivo = fvs.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table fvs add constraint fvs_foreign_key foreign key (progressivo)
references fvt (progressivo)
on delete restrict
on update cascade
