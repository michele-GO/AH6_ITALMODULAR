CREATE PROCEDURE P_ORS_ORE
(
  IN  `i_codice_sscc`            varchar(30),
  IN  `i_quantita`         		 numeric(16,4)
)
BEGIN 
update ore
set esistenza = esistenza + i_quantita 
where codice_sscc = i_codice_sscc; 
END
