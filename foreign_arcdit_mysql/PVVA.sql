/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pvva where not exists 
(select id from pvvd where id = pvva.id_pvvd);

/*
tenere il nome del constraint in minuscolo
*/
alter table pvva add constraint pvva_foreign_key foreign key (id_pvvd)
references pvvd (id)
on delete restrict
on update cascade
