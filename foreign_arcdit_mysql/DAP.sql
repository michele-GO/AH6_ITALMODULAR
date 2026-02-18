/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from dap where not exists 
(select id from dat where progressivo = dap.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table dap add constraint dap_foreign_key foreign key (progressivo)
references dat (progressivo)
on delete restrict
on update cascade
