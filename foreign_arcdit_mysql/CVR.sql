/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from cvr where not exists 
(select id from cvt where progressivo = cvr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table cvr add constraint cvr_foreign_key foreign key (progressivo)
references cvt (progressivo)
on delete restrict
on update cascade
