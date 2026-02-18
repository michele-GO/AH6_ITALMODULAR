/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from fvd where not exists 
(select id from fvt where progressivo = fvd.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table fvd add constraint fvd_foreign_key foreign key (progressivo)
references fvt (progressivo)
on delete restrict
on update cascade
