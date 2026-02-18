/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from rmr where not exists 
(select id from rmt where progressivo = rmr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table rmr add constraint rmr_foreign_key foreign key (progressivo)
references rmt (progressivo)
on delete restrict
on update cascade
