/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pkpd where not exists 
(select id from pkpr where progressivo = pkpd.progressivo and riga = pkpd.riga);

/*
tenere il nome del constraint in minuscolo
*/
alter table pkpd add constraint pkpd_foreign_key foreign key (progressivo,riga)
references pkpr (progressivo,riga)
on delete restrict
on update cascade;
