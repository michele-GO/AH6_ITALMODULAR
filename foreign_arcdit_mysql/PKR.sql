/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from pkr where not exists 
(select id from pkt where progressivo = pkr.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table pkr add constraint pkr_foreign_key foreign key (progressivo)
references pkt (progressivo)
on delete restrict
on update cascade
