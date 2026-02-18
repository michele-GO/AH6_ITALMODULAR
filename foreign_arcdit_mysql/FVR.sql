/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from fvr where not exists 
(select id from fvt where progressivo = fvr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table fvr add constraint fvr_foreign_key foreign key (progressivo)
references fvt (progressivo)
on delete restrict
on update cascade
