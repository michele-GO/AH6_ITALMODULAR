/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pvr where not exists 
(select id from pvt where progressivo = pvr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pvr add constraint pvr_foreign_key foreign key (progressivo)
references pvt (progressivo)
on delete restrict
on update cascade
