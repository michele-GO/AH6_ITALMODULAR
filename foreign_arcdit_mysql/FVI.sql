/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from fvi where not exists 
(select id from fvt where progressivo = fvi.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table fvi add constraint fvi_foreign_key foreign key (progressivo)
references fvt (progressivo)
on delete restrict
on update cascade
