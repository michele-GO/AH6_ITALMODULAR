/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from ngi where not exists 
(select id from ngt where progressivo = ngi.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table ngi add constraint ngi_foreign_key foreign key (progressivo)
references ngt (progressivo)
on delete restrict
on update cascade
