/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from dai where not exists 
(select id from dat where progressivo = dai.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table dai add constraint dai_foreign_key foreign key (progressivo)
references dat (progressivo)
on delete restrict
on update cascade
