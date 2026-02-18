CREATE PROCEDURE P_MOVINR
(
  IN  I_STORNA                   			varchar(2),
  IN  I_SITUAZIONE               			varchar(20),
  IN  I_ART_CODICE               			varchar(50),
  IN  I_TMA_CODICE               			varchar(04),
  IN  I_QUANTITA                 			numeric(18,4)
)

BEGIN 

DECLARE D_TMA_CODICE                        varchar(04);
DECLARE D_QUANTITA                          decimal(18,4);


	select tma_codice_impegnato_ordinato from tma where codice = i_tma_codice into d_tma_codice;
	if d_tma_codice = '' then
		set d_tma_codice = i_tma_codice;
	end if;

	if (not exists(select id from mag where art_codice = i_art_codice and tma_codice = d_tma_codice)) then
		insert into mag (art_codice, tma_codice) values (i_art_codice, d_tma_codice);
	end if;

    set d_quantita = i_quantita;
	if i_situazione = 'evaso' then
	    set d_quantita = 0;
	end if;
	if i_storna = 'si' then
	    set d_quantita = d_quantita * -1;
	end if;

	update mag set impegnato = impegnato + d_quantita where art_codice = i_art_codice and tma_codice = d_tma_codice;
  
END
