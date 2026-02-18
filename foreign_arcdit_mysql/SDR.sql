/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from sdr where not exists 
(select id from sdt where progressivo = sdr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table sdr add constraint sdr_foreign_key foreign key (progressivo)
references sdt (progressivo)
on delete restrict
on update cascade
