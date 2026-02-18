/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from ats where not exists 
(select id from atr where progressivo = ats.progressivo and riga = ats.riga);

/*
tenere il nome del constraint in minuscolo
*/
alter table ats add constraint ats_foreign_key foreign key (progressivo,riga)
references atr (progressivo,riga)
on delete restrict
on update cascade;
