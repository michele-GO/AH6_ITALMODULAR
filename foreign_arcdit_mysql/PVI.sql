/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pvi where not exists 
(select id from pvt where progressivo = pvi.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pvi add constraint pvi_foreign_key foreign key (progressivo)
references pvt (progressivo)
on delete restrict
on update cascade
