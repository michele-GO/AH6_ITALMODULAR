/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from ngv where not exists 
(select id from ngt where progressivo = ngv.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table ngv add constraint ngv_foreign_key foreign key (progressivo)
references ngt (progressivo)
on delete restrict
on update cascade
