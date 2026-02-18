/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from cvi where not exists 
(select id from cvt where progressivo = cvi.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table cvi add constraint cvi_foreign_key foreign key (progressivo)
references cvt (progressivo)
on delete restrict
on update cascade
