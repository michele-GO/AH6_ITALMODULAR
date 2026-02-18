/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pcr where not exists 
(select id from pct where progressivo = pcr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pcr add constraint pcr_foreign_key foreign key (progressivo)
references pct (progressivo)
on delete restrict
on update cascade
