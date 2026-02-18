/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from cvs where not exists 
(select id from cvt where progressivo = cvs.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table cvs add constraint cvs_foreign_key foreign key (progressivo)
references cvt (progressivo)
on delete restrict
on update cascade
