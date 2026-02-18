/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from ntr where not exists 
(select id from ntt where progressivo = ntr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table ntr add constraint ntr_foreign_key foreign key (progressivo)
references ntt (progressivo)
on delete restrict
on update cascade
