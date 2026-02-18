/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from fvp where not exists 
(select id from fvt where progressivo = fvp.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table fvp add constraint fvp_foreign_key foreign key (progressivo)
references fvt (progressivo)
on delete restrict
on update cascade
