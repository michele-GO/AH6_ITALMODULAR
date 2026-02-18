/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from mmr where not exists 
(select id from mmt where progressivo = mmr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table mmr add constraint mmr_foreign_key foreign key (progressivo)
references mmt (progressivo)
on delete restrict
on update cascade
