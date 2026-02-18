/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from bvr where not exists 
(select id from bvt where progressivo = bvr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table bvr add constraint bvr_foreign_key foreign key (progressivo)
references bvt (progressivo)
on delete restrict
on update cascade
