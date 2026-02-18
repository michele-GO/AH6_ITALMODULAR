/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pvvr where not exists 
(select id from pvvt where progressivo = pvvr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pvvr add constraint pvvr_foreign_key foreign key (progressivo)
references pvvt (progressivo)
on delete restrict
on update cascade
