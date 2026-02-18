CREATE PROCEDURE P_CALCOLA_PROVVIGIONI
(
IN p_tabella VARCHAR(6), 
IN p_progressivo INT, 
IN p_tag_codice VARCHAR(4), 
IN p_cli_codice VARCHAR(8), 
IN p_ind_codice VARCHAR(8), 
IN p_tp1_codice VARCHAR(4), 
IN p_art_codice VARCHAR(50), 
IN p_tp2_codice VARCHAR(4), 
IN p_tlv_codice VARCHAR(4), 
IN p_quantita DECIMAL(18,6), 
IN p_prezzo DECIMAL(18,6), 
IN p_tsm_codice VARCHAR(4), 
IN p_tsm_codice_art VARCHAR(4), 
IN p_importo_sconto DECIMAL(18,6), 
IN p_importo DECIMAL(18,6),
IN p_importo_provvigioni DECIMAL(18,6),
IN p_importo_provvigioni_ca DECIMAL(18,6),
IN p_percentuale_provvigioni DECIMAL(18,6),
IN p_percentuale_provvigioni_ca DECIMAL(18,6)
)
    COMMENT 'cerca nella tabella delle provvigioni una combinazione corrispondente ai parametri passati'
BEGIN


DECLARE stored_procedure VARCHAR(120) DEFAULT NULL;
DECLARE ricerca varchar(60);
DECLARE alt INT DEFAULT FALSE;

DECLARE cursore CURSOR FOR 
  select arc.dit03.PROVVIGIONI_01 from arc.dit03 where arc.dit03.CODICE = 
	  (select @temp := arc.utn.DIT_CODICE from arc .utn where arc.utn.CODICE = SUBSTRING(USER(), 1, LOCATE('@', USER()) - 1))
    union select arc.dit03.PROVVIGIONI_02 from arc.dit03 where arc.dit03.CODICE = @temp
    union select arc.dit03.PROVVIGIONI_03 from arc.dit03 where arc.dit03.CODICE = @temp
    union select arc.dit03.PROVVIGIONI_04 from arc.dit03 where arc.dit03.CODICE = @temp
    union select arc.dit03.PROVVIGIONI_05 from arc.dit03 where arc.dit03.CODICE = @temp
    union select arc.dit03.PROVVIGIONI_06 from arc.dit03 where arc.dit03.CODICE = @temp
    union select arc.dit03.PROVVIGIONI_07 from arc.dit03 where arc.dit03.CODICE = @temp
    union select arc.dit03.PROVVIGIONI_08 from arc.dit03 where arc.dit03.CODICE = @temp
    union select arc.dit03.PROVVIGIONI_09 from arc.dit03 where arc.dit03.CODICE = @temp
    union select arc.dit03.PROVVIGIONI_10 from arc.dit03 where arc.dit03.CODICE = @temp
    union select arc.dit03.PROVVIGIONI_11 from arc.dit03 where arc.dit03.CODICE = @temp;
	
DECLARE CONTINUE HANDLER FOR NOT FOUND SET alt = TRUE;

open cursore;
	
ciclo_provvigioni: LOOP
	FETCH cursore INTO ricerca;			

	if ricerca = 'cliente/articolo' then
		select if(count(prv.stored_procedure) > 0, prv.stored_procedure, NULL) from prv 
    where prv.tag_codice = p_tag_codice and prv.cli_codice = p_cli_codice and prv.ind_codice = '' 
      and prv.tp1_codice = ''	and prv.art_codice = '' and prv.tp2_codice = '' 
      and (prv.tlv_codice = p_tlv_codice or prv.tlv_codice = '') into stored_procedure;
		if (stored_procedure IS NOT NULL) and (stored_procedure <> '') then
      set alt = TRUE;
    END IF;
	
	elseif ricerca = 'cliente/categoria articoli' then
		select if(count(prv.stored_procedure) > 0, prv.stored_procedure, NULL) from prv
    where prv.tag_codice = p_tag_codice and prv.cli_codice = p_cli_codice and prv.ind_codice = '' 
		and prv.tp1_codice = ''	and prv.art_codice = '' and prv.tp2_codice = p_tp2_codice
      and (prv.tlv_codice = p_tlv_codice or prv.tlv_codice = '') into stored_procedure;		
		if (stored_procedure IS NOT NULL) and (stored_procedure <> '') then
      set alt = true; 
		end if;
	
	elseif ricerca = 'cliente' then
		select if(count(prv.stored_procedure) > 0, prv.stored_procedure, NULL) from prv
    where prv.tag_codice = p_tag_codice and prv.cli_codice = p_cli_codice and prv.ind_codice = '' 
		  and prv.tp1_codice = ''	and prv.art_codice = '' and prv.tp2_codice = ''
      and (prv.tlv_codice = p_tlv_codice or prv.tlv_codice = '') into stored_procedure;		
		if (stored_procedure IS NOT NULL) and (stored_procedure <> '') then
      set alt = true;
		end if;
		
	elseif ricerca = 'categoria clienti/articolo' then
		select if(count(prv.stored_procedure) > 0, prv.stored_procedure, NULL) from prv
    where prv.tag_codice = p_tag_codice and prv.cli_codice = '' and prv.ind_codice = '' 
		  and prv.tp1_codice = p_tp1_codice	and prv.art_codice = p_art_codice
	  	and prv.tp2_codice = '' and (prv.tlv_codice = p_tlv_codice or prv.tlv_codice = '') into stored_procedure;		
		if (stored_procedure IS NOT NULL) and (stored_procedure <> '') then 
      set alt = true;
		end if;
		
	elseif ricerca = 'categoria clienti/categoria articoli' then
		select if(count(prv.stored_procedure) > 0, prv.stored_procedure, NULL) from prv 
    where prv.tag_codice = p_tag_codice and prv.cli_codice = '' and prv.ind_codice = '' 
	  	and prv.tp1_codice = p_tp1_codice	and prv.art_codice = ''
		  and prv.tp2_codice = p_tp2_codice and (prv.tlv_codice = p_tlv_codice or prv.tlv_codice = '') into stored_procedure;		
		if (stored_procedure IS NOT NULL) and (stored_procedure <> '') then
      set alt = true;
		end if;
		
	elseif ricerca = 'categoria clienti' then
		select if(count(prv.stored_procedure) > 0, prv.stored_procedure, NULL) from prv 
    where prv.tag_codice = p_tag_codice and prv.cli_codice = '' and prv.ind_codice = '' 
		  and prv.tp1_codice = p_tp1_codice	and prv.art_codice = ''
		  and prv.tp2_codice = '' and (prv.tlv_codice = p_tlv_codice or prv.tlv_codice = '') into stored_procedure;		
		if (stored_procedure IS NOT NULL) and (stored_procedure <> '') then
      set alt = true;
		end if;

	elseif ricerca = 'articolo' then
		select if(count(prv.stored_procedure) > 0, prv.stored_procedure, NULL) from prv 
    where prv.tag_codice = p_tag_codice and prv.cli_codice = '' and prv.ind_codice = '' 
		  and prv.tp1_codice = ''	and prv.art_codice = p_art_codice
		  and prv.tp2_codice = '' and (prv.tlv_codice = p_tlv_codice or prv.tlv_codice = '') into stored_procedure;		
		if (stored_procedure IS NOT NULL) and (stored_procedure <> '') then 
      set alt = true;
		end if;
	
	elseif ricerca = 'categoria articoli' then
		select if(count(prv.stored_procedure) > 0, prv.stored_procedure, NULL) from prv
    where prv.tag_codice = p_tag_codice	and prv.cli_codice = '' and prv.ind_codice = '' 
		  and prv.tp1_codice = ''	and prv.art_codice = ''
		  and prv.tp2_codice = p_tp2_codice and (prv.tlv_codice = p_tlv_codice or prv.tlv_codice = '') into stored_procedure;		
		if (stored_procedure IS NOT NULL) and (stored_procedure <> '') then 
      set alt = true;
		end if;	
		
	elseif ricerca = 'tutti' then
		select if(count(prv.stored_procedure) > 0, prv.stored_procedure, NULL) from prv 
    where prv.tag_codice = p_tag_codice	and prv.cli_codice = '' and prv.ind_codice = '' 
		  and prv.tp1_codice = ''	and prv.art_codice = ''
		  and prv.tp2_codice = '' and (prv.tlv_codice = p_tlv_codice or prv.tlv_codice = '') into stored_procedure;		
		if (stored_procedure IS NOT NULL) and (stored_procedure <> '') then
      set alt = true;
		end if;

	elseif ricerca = 'filiale/articolo' then
		select if(count(prv.stored_procedure) > 0, prv.stored_procedure, NULL) from prv 
    where prv.tag_codice = p_tag_codice	and prv.cli_codice = p_cli_codice and prv.ind_codice = p_ind_codice 
		  and prv.tp1_codice = ''	and prv.art_codice = p_art_codice
		  and prv.tp2_codice = '' and (prv.tlv_codice = p_tlv_codice or prv.tlv_codice = '') into stored_procedure;		
		if (stored_procedure IS NOT NULL) and (stored_procedure <> '') then
      set alt = true;
		end if;	

	elseif ricerca = 'filiale/categoria articoli' then
		select if(count(prv.stored_procedure) > 0, prv.stored_procedure, NULL) from prv 
    where prv.tag_codice = p_tag_codice and prv.cli_codice = p_cli_codice and prv.ind_codice = p_ind_codice 
		  and prv.tp1_codice = ''	and prv.art_codice = ''
	  	and prv.tp2_codice = p_tp2_codice and (prv.tlv_codice = p_tlv_codice or prv.tlv_codice = '') into stored_procedure;		
		if (stored_procedure IS NOT NULL) and (stored_procedure <> '') then
      set alt = true; 
		end if;			
	end if;	
                   
  IF alt THEN
     	LEAVE ciclo_provvigioni;
  END IF;			
                    	
END LOOP;		
	
close cursore;

if (stored_procedure IS NOT NULL) and (stored_procedure <> '') then
	if stored_procedure = 'P_PRV_PERSONAL_1' then
		call P_PRV_PERSONAL_1(p_tabella, p_progressivo, p_art_codice, p_quantita,  p_prezzo, p_tsm_codice, p_tsm_codice_art,
			p_importo_sconto, p_importo, p_importo_provvigioni, p_importo_provvigioni_ca, p_percentuale_provvigioni, p_percentuale_provvigioni_ca);
	elseif stored_procedure = 'P_PRV_PERSONAL_2' then
		call P_PRV_PERSONAL_2(p_tabella, p_progressivo, p_art_codice, p_quantita,  p_prezzo, p_tsm_codice, p_tsm_codice_art,
			p_importo_sconto, p_importo, p_importo_provvigioni, p_importo_provvigioni_ca, p_percentuale_provvigioni, p_percentuale_provvigioni_ca);
	elseif stored_procedure = 'P_PRV_PERSONAL_3' then
		call P_PRV_PERSONAL_3(p_tabella, p_progressivo, p_art_codice, p_quantita,  p_prezzo, p_tsm_codice, p_tsm_codice_art,
			p_importo_sconto, p_importo, p_importo_provvigioni, p_importo_provvigioni_ca, p_percentuale_provvigioni, p_percentuale_provvigioni_ca);
	elseif stored_procedure = 'P_PRV_PERSONAL_4' then
		call P_PRV_PERSONAL_4(p_tabella, p_progressivo, p_art_codice, p_quantita,  p_prezzo, p_tsm_codice, p_tsm_codice_art,
			p_importo_sconto, p_importo, p_importo_provvigioni, p_importo_provvigioni_ca, p_percentuale_provvigioni, p_percentuale_provvigioni_ca);
	elseif stored_procedure = 'P_PRV_PERSONAL_5' then
		call P_PRV_PERSONAL_5(p_tabella, p_progressivo, p_art_codice, p_quantita,  p_prezzo, p_tsm_codice, p_tsm_codice_art,
			p_importo_sconto, p_importo, p_importo_provvigioni, p_importo_provvigioni_ca, p_percentuale_provvigioni, p_percentuale_provvigioni_ca);
	elseif stored_procedure = 'P_PRV_PERSONAL_6' then
		call P_PRV_PERSONAL_6(p_tabella, p_progressivo, p_art_codice, p_quantita,  p_prezzo, p_tsm_codice, p_tsm_codice_art,
			p_importo_sconto, p_importo, p_importo_provvigioni, p_importo_provvigioni_ca, p_percentuale_provvigioni, p_percentuale_provvigioni_ca);
	elseif stored_procedure = 'P_PRV_PERSONAL_7' then
		call P_PRV_PERSONAL_7(p_tabella, p_progressivo, p_art_codice, p_quantita,  p_prezzo, p_tsm_codice, p_tsm_codice_art,
			p_importo_sconto, p_importo, p_importo_provvigioni, p_importo_provvigioni_ca, p_percentuale_provvigioni, p_percentuale_provvigioni_ca);
	elseif stored_procedure = 'P_PRV_PERSONAL_8' then
		call P_PRV_PERSONAL_8(p_tabella, p_progressivo, p_art_codice, p_quantita,  p_prezzo, p_tsm_codice, p_tsm_codice_art,
			p_importo_sconto, p_importo, p_importo_provvigioni, p_importo_provvigioni_ca, p_percentuale_provvigioni, p_percentuale_provvigioni_ca);
	elseif stored_procedure = 'P_PRV_PERSONAL_9' then
		call P_PRV_PERSONAL_9(p_tabella, p_progressivo, p_art_codice, p_quantita,  p_prezzo, p_tsm_codice, p_tsm_codice_art,
			p_importo_sconto, p_importo, p_importo_provvigioni, p_importo_provvigioni_ca, p_percentuale_provvigioni, p_percentuale_provvigioni_ca);
	elseif stored_procedure = 'P_PRV_PERSONAL_10' then
		call P_PRV_PERSONAL_10(p_tabella, p_progressivo, p_art_codice, p_quantita,  p_prezzo, p_tsm_codice, p_tsm_codice_art,
			p_importo_sconto, p_importo, p_importo_provvigioni, p_importo_provvigioni_ca, p_percentuale_provvigioni, p_percentuale_provvigioni_ca);																		
	end if;
end if;

END
