/*
cancella record pendenti che causerebbero la non creazioen della foreign
*/
delete from car where not exists 
(select id from cat where progressivo = car.progressivo);

/*
tenere il nome del constraint in minuscolo
*/
alter table car add constraint car_foreign_key foreign key (progressivo)
references cat (progressivo)
on delete restrict
on update cascade
