/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from artmr where not exists 
(select id from artmt where progressivo = artmr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table artmr add constraint artmr_foreign_key foreign key (progressivo)
references artmt (progressivo)
on delete restrict
on update cascade
