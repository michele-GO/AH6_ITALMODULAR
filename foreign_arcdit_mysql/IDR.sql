/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from idr where not exists 
(select id from idt where progressivo = idr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table idr add constraint idr_foreign_key foreign key (progressivo)
references idt (progressivo)
on delete restrict
on update cascade
