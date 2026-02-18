/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pkpr where not exists 
(select id from pkpt where progressivo = pkpr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pkpr add constraint pkpr_foreign_key foreign key (progressivo)
references pkpt (progressivo)
on delete restrict
on update cascade
