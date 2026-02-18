/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from ovr where not exists 
(select id from ovt where progressivo = ovr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table ovr add constraint ovr_foreign_key foreign key (progressivo)
references ovt (progressivo)
on delete restrict
on update cascade
