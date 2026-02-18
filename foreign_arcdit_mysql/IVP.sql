/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from ivp where not exists 
(select id from ivd where progressivo = ivp.ivd_progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table ivp add constraint ivp_foreign_key foreign key (ivd_progressivo)
references ivd (progressivo)
on delete restrict
on update cascade
