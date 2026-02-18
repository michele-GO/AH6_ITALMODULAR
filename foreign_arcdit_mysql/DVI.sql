	/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from dvi where not exists 
(select id from dvt where progressivo = dvi.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table dvi add constraint dvi_foreign_key foreign key (progressivo)
references dvt (progressivo)
on delete restrict
on update cascade
