/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pvvd where not exists 
(select id from pvvr where progressivo = pvvd.progressivo and riga = pvvd.riga);

/*
tenere il nome del constraint in minuscolo
*/
alter table pvvd add constraint pvvd_foreign_key foreign key (progressivo,riga)
references pvvr (progressivo,riga)
on delete restrict
on update cascade
