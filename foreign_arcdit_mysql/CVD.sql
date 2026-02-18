/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from cvd where not exists 
(select id from cvt where progressivo = cvd.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table cvd add constraint cvd_foreign_key foreign key (progressivo)
references cvt (progressivo)
on delete restrict
on update cascade
