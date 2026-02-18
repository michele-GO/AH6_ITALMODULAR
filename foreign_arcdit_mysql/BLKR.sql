/*
cancella record pendenti che causerebbero la non creazione della foreign
*/
delete from blkr where not exists 
(select id from blkt where progressivo = blkr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table blkr add constraint blkr_foreign_key foreign key (progressivo)
references blkt (progressivo)
on delete restrict
on update cascade
