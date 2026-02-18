/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from ngr where not exists 
(select id from ngt where progressivo = ngr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table ngr add constraint ngr_foreign_key foreign key (progressivo)
references ngt (progressivo)
on delete restrict
on update cascade
