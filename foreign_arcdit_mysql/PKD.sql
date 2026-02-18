/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pkd where not exists 
(select id from pkr where progressivo = pkd.progressivo and riga = pkd.riga);

/*
tenere il nome del constraint in minuscolo
*/
alter table pkd add constraint pkd_foreign_key foreign key (progressivo,riga)
references pkr (progressivo,riga)
on delete restrict
on update cascade;
