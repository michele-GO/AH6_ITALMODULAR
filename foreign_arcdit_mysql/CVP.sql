/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from cvp where not exists 
(select id from cvt where progressivo = cvp.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table cvp add constraint cvp_foreign_key foreign key (progressivo)
references cvt (progressivo)
on delete restrict
on update cascade
