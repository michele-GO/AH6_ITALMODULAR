/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pvp where not exists 
(select id from pvt where progressivo = pvp.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pvp add constraint pvp_foreign_key foreign key (progressivo)
references pvt (progressivo)
on delete restrict
on update cascade
