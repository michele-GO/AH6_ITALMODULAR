/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from artmd where not exists 
(select id from artmr where progressivo = artmd.progressivo and riga = artmd.riga);

/*
tenere il nome del constraint in minuscolo
*/
alter table artmd add constraint artmd_foreign_key foreign key (progressivo,riga)
references artmr (progressivo,riga)
on delete restrict
on update cascade;
