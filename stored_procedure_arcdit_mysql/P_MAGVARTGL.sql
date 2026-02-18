CREATE PROCEDURE P_MAGVARTGL
(
	IN i_utn_codice 							VARCHAR(08),
	IN i_art_codice 							VARCHAR(50),
	IN i_tma_codice 							VARCHAR(04),
	IN i_ese_codice 							VARCHAR(04),
	IN i_data_inizio 							DATE,
	IN i_alla_data 								DATE,
	IN i_ese_codice_precedente 					VARCHAR(04),
	IN i_esercizio_chiuso_magazzino_precedente 	VARCHAR(02)
)
BEGIN 

DECLARE d_var_codice		CHAR(04);
DECLARE d_tgl_codice		CHAR(04);

delete from magvartgl where utn_codice = i_utn_codice and art_codice = i_art_codice;

select var_codice, tgl_codice from art where codice = i_art_codice into d_var_codice, d_tgl_codice;  

if d_tgl_codice = '' then

		/*  esistenza */
  insert into magvartgl (utn_codice, art_codice, var_codice, dettaglio, tma_codice, tipo, quantita)

  select i_utn_codice, i_art_codice, d_var_codice, q.dettaglio, q.tma_codice, 'esistenza', coalesce(sum(q.esistenza), 0)
		from (
		select mmr.dettaglio, mmr.tma_codice, coalesce(sum(mmr.quantita_entrate - mmr.quantita_uscite), 0) esistenza
		from mmr
		inner join mmt on mmt.progressivo = mmr.progressivo
		where mmr.art_codice = i_art_codice 
			and mmr.tma_codice = i_tma_codice
			and mmt.ese_codice = i_ese_codice 
			and mmt.data_registrazione between i_data_inizio and i_alla_data
		group by 1, 2
	    
		union all 
		
		select mmr.dettaglio, mmr.tma_codice, coalesce(sum(mmr.quantita_entrate - mmr.quantita_uscite), 0) esistenza
		from mmr
		inner join mmt on mmt.progressivo = mmr.progressivo
		inner join tma on tma.codice = mmr.tma_codice
		where i_esercizio_chiuso_magazzino_precedente = 'no' 
			and mmr.art_codice = i_art_codice 
			and mmr.tma_codice = i_tma_codice
			and mmt.ese_codice = i_ese_codice_precedente 
		group by 1, 2
		) as q
  group by 1, 2, 3, 4, 5;

	/*  ordinato */
  insert into magvartgl (utn_codice, art_codice, var_codice, dettaglio, tma_codice, tipo, quantita)

  select i_utn_codice, i_art_codice, d_var_codice, oar.dettaglio, oar.tma_codice, 'ordinato', 
  		coalesce(sum(oar.tum_quantita_base - oar.tum_quantita_evasa_base), 0) 
	from oar 
	where oar.art_codice = i_art_codice 
   	and oar.tma_codice = i_tma_codice
		and (oar.situazione = 'inserito' or oar.situazione = 'evaso parziale')
  group by 1, 2, 3, 4, 5;
  
	/*  impegnato */
  insert into magvartgl (utn_codice, art_codice, var_codice, dettaglio, tma_codice, tipo, quantita)

  select i_utn_codice, i_art_codice, d_var_codice, ovr.dettaglio, ovr.tma_codice, 'impegnato', 
		 coalesce(sum(ovr.tum_quantita_base - ovr.tum_quantita_evasa_base), 0) 
	from ovr 
   where ovr.art_codice = i_art_codice 
		and ovr.tma_codice = i_tma_codice
		and (ovr.situazione = 'inserito' or ovr.situazione = 'evaso parziale')
		and ovr.no_impegnato = 'no' 
  group by 1, 2, 3, 4, 5;

else
  insert into magvartgl (utn_codice, art_codice, var_codice, dettaglio, tma_codice, tipo,
  qta_01, qta_02, qta_03, qta_04, qta_05, qta_06, qta_07, qta_08, qta_09, qta_10,
  qta_11, qta_12, qta_13, qta_14, qta_15, qta_16, qta_17, qta_18, qta_19, qta_20)

  select i_utn_codice, i_art_codice, d_var_codice, q.dettaglio, q.tma_codice, 'esistenza',
  sum(q.qta_01), sum(q.qta_02), sum(q.qta_03), sum(q.qta_04), sum(q.qta_05),
  sum(q.qta_06), sum(q.qta_07), sum(q.qta_08), sum(q.qta_09), sum(q.qta_10),
  sum(q.qta_11), sum(q.qta_12), sum(q.qta_13), sum(q.qta_14), sum(q.qta_15),
  sum(q.qta_16), sum(q.qta_17), sum(q.qta_18), sum(q.qta_19), sum(q.qta_20)
  

  from(

  select mmr.dettaglio, mmr.tma_codice,
  coalesce(sum(qtatgl.qta_01), 0)qta_01,
  coalesce(sum(qtatgl.qta_02), 0)qta_02,
  coalesce(sum(qtatgl.qta_03), 0)qta_03,
  coalesce(sum(qtatgl.qta_04), 0)qta_04,
  coalesce(sum(qtatgl.qta_05), 0)qta_05,
  coalesce(sum(qtatgl.qta_06), 0)qta_06,
  coalesce(sum(qtatgl.qta_07), 0)qta_07,
  coalesce(sum(qtatgl.qta_08), 0)qta_08,
  coalesce(sum(qtatgl.qta_09), 0)qta_09,
  coalesce(sum(qtatgl.qta_10), 0)qta_10,
  coalesce(sum(qtatgl.qta_11), 0)qta_11,
  coalesce(sum(qtatgl.qta_12), 0)qta_12,
  coalesce(sum(qtatgl.qta_13), 0)qta_13,
  coalesce(sum(qtatgl.qta_14), 0)qta_14,
  coalesce(sum(qtatgl.qta_15), 0)qta_15,
  coalesce(sum(qtatgl.qta_16), 0)qta_16,
  coalesce(sum(qtatgl.qta_17), 0)qta_17,
  coalesce(sum(qtatgl.qta_18), 0)qta_18,
  coalesce(sum(qtatgl.qta_19), 0)qta_19,
  coalesce(sum(qtatgl.qta_20), 0)qta_20
  from mmr
  inner join mmt on mmt.progressivo = mmr.progressivo
  inner join qtatgl on qtatgl.modulo = 'magazzino' and qtatgl.tipo_documento = ''
  and qtatgl.progressivo = mmr.progressivo and qtatgl.riga = mmr.riga
  where mmr.art_codice = i_art_codice
	and mmr.tma_codice = i_tma_codice
  and mmt.ese_codice = i_ese_codice
  and mmt.data_registrazione between i_data_inizio and i_alla_data
  and mmr.quantita_entrate <> 0
  group by 1, 2

  union all

  select mmr.dettaglio, mmr.tma_codice,
  coalesce(sum(qtatgl.qta_01 * -1), 0)qta_01,
  coalesce(sum(qtatgl.qta_02 * -1), 0)qta_02,
  coalesce(sum(qtatgl.qta_03 * -1), 0)qta_03,
  coalesce(sum(qtatgl.qta_04 * -1), 0)qta_04,
  coalesce(sum(qtatgl.qta_05 * -1), 0)qta_05,
  coalesce(sum(qtatgl.qta_06 * -1), 0)qta_06,
  coalesce(sum(qtatgl.qta_07 * -1), 0)qta_07,
  coalesce(sum(qtatgl.qta_08 * -1), 0)qta_08,
  coalesce(sum(qtatgl.qta_09 * -1), 0)qta_09,
  coalesce(sum(qtatgl.qta_10 * -1), 0)qta_10,
  coalesce(sum(qtatgl.qta_11 * -1), 0)qta_11,
  coalesce(sum(qtatgl.qta_12 * -1), 0)qta_12,
  coalesce(sum(qtatgl.qta_13 * -1), 0)qta_13,
  coalesce(sum(qtatgl.qta_14 * -1), 0)qta_14,
  coalesce(sum(qtatgl.qta_15 * -1), 0)qta_15,
  coalesce(sum(qtatgl.qta_16 * -1), 0)qta_16,
  coalesce(sum(qtatgl.qta_17 * -1), 0)qta_17,
  coalesce(sum(qtatgl.qta_18 * -1), 0)qta_18,
  coalesce(sum(qtatgl.qta_19 * -1), 0)qta_19,
  coalesce(sum(qtatgl.qta_20 * -1), 0)qta_20
  from mmr
  inner join mmt on mmt.progressivo = mmr.progressivo
  inner join qtatgl on qtatgl.modulo = 'magazzino' and qtatgl.tipo_documento = ''
  and qtatgl.progressivo = mmr.progressivo and qtatgl.riga = mmr.riga
  where mmr.art_codice = i_art_codice
	and mmr.tma_codice = i_tma_codice
  and mmt.ese_codice = i_ese_codice
  and mmt.data_registrazione between i_data_inizio and i_alla_data
  and mmr.quantita_uscite <> 0
  group by 1, 2

  union all

  select mmr.dettaglio, mmr.tma_codice,
  coalesce(sum(qtatgl.qta_01), 0)qta_01,
  coalesce(sum(qtatgl.qta_02), 0)qta_02,
  coalesce(sum(qtatgl.qta_03), 0)qta_03,
  coalesce(sum(qtatgl.qta_04), 0)qta_04,
  coalesce(sum(qtatgl.qta_05), 0)qta_05,
  coalesce(sum(qtatgl.qta_06), 0)qta_06,
  coalesce(sum(qtatgl.qta_07), 0)qta_07,
  coalesce(sum(qtatgl.qta_08), 0)qta_08,
  coalesce(sum(qtatgl.qta_09), 0)qta_09,
  coalesce(sum(qtatgl.qta_10), 0)qta_10,
  coalesce(sum(qtatgl.qta_11), 0)qta_11,
  coalesce(sum(qtatgl.qta_12), 0)qta_12,
  coalesce(sum(qtatgl.qta_13), 0)qta_13,
  coalesce(sum(qtatgl.qta_14), 0)qta_14,
  coalesce(sum(qtatgl.qta_15), 0)qta_15,
  coalesce(sum(qtatgl.qta_16), 0)qta_16,
  coalesce(sum(qtatgl.qta_17), 0)qta_17,
  coalesce(sum(qtatgl.qta_18), 0)qta_18,
  coalesce(sum(qtatgl.qta_19), 0)qta_19,
  coalesce(sum(qtatgl.qta_20), 0)qta_20
  from mmr
  inner join mmt on mmt.progressivo = mmr.progressivo
  inner join qtatgl on qtatgl.modulo = 'magazzino' and qtatgl.tipo_documento = ''
  and qtatgl.progressivo = mmr.progressivo and qtatgl.riga = mmr.riga
  where i_esercizio_chiuso_magazzino_precedente = 'no'
  and mmr.art_codice = i_art_codice
	and mmr.tma_codice = i_tma_codice
  and mmt.ese_codice = i_ese_codice_precedente
  and mmr.quantita_entrate <> 0
  group by 1, 2

  union all

  select mmr.dettaglio, mmr.tma_codice,
  coalesce(sum(qtatgl.qta_01 * -1), 0)qta_01,
  coalesce(sum(qtatgl.qta_02 * -1), 0)qta_02,
  coalesce(sum(qtatgl.qta_03 * -1), 0)qta_03,
  coalesce(sum(qtatgl.qta_04 * -1), 0)qta_04,
  coalesce(sum(qtatgl.qta_05 * -1), 0)qta_05,
  coalesce(sum(qtatgl.qta_06 * -1), 0)qta_06,
  coalesce(sum(qtatgl.qta_07 * -1), 0)qta_07,
  coalesce(sum(qtatgl.qta_08 * -1), 0)qta_08,
  coalesce(sum(qtatgl.qta_09 * -1), 0)qta_09,
  coalesce(sum(qtatgl.qta_10 * -1), 0)qta_10,
  coalesce(sum(qtatgl.qta_11 * -1), 0)qta_11,
  coalesce(sum(qtatgl.qta_12 * -1), 0)qta_12,
  coalesce(sum(qtatgl.qta_13 * -1), 0)qta_13,
  coalesce(sum(qtatgl.qta_14 * -1), 0)qta_14,
  coalesce(sum(qtatgl.qta_15 * -1), 0)qta_15,
  coalesce(sum(qtatgl.qta_16 * -1), 0)qta_16,
  coalesce(sum(qtatgl.qta_17 * -1), 0)qta_17,
  coalesce(sum(qtatgl.qta_18 * -1), 0)qta_18,
  coalesce(sum(qtatgl.qta_19 * -1), 0)qta_19,
  coalesce(sum(qtatgl.qta_20 * -1), 0)qta_20
  from mmr
  inner join mmt on mmt.progressivo = mmr.progressivo
  inner join qtatgl on qtatgl.modulo = 'magazzino' and qtatgl.tipo_documento = ''
  and qtatgl.progressivo = mmr.progressivo and qtatgl.riga = mmr.riga
  where i_esercizio_chiuso_magazzino_precedente = 'no'
  and mmr.art_codice = i_art_codice
	and mmr.tma_codice = i_tma_codice
  and mmt.ese_codice = i_ese_codice_precedente
  and mmr.quantita_uscite <> 0
  group by 1, 2

  ) as q

  group by 1, 2, 3, 4, 5;
  
	/*  ordinato */
  insert into magvartgl (utn_codice, art_codice, var_codice, dettaglio, tma_codice, tipo,
  qta_01, qta_02, qta_03, qta_04, qta_05, qta_06, qta_07, qta_08, qta_09, qta_10,
  qta_11, qta_12, qta_13, qta_14, qta_15, qta_16, qta_17, qta_18, qta_19, qta_20)

  select i_utn_codice, i_art_codice, d_var_codice, oar.dettaglio, oar.tma_codice, 'ordinato', 
  coalesce(sum(qtatgl.qta_01 - qtatgl.qta_01_evasa), 0) qta_01,
  coalesce(sum(qtatgl.qta_02 - qtatgl.qta_02_evasa), 0) qta_02,
  coalesce(sum(qtatgl.qta_03 - qtatgl.qta_03_evasa), 0) qta_03,
  coalesce(sum(qtatgl.qta_04 - qtatgl.qta_04_evasa), 0) qta_04,
  coalesce(sum(qtatgl.qta_05 - qtatgl.qta_05_evasa), 0) qta_05,
  coalesce(sum(qtatgl.qta_06 - qtatgl.qta_06_evasa), 0) qta_06,
  coalesce(sum(qtatgl.qta_07 - qtatgl.qta_07_evasa), 0) qta_07,
  coalesce(sum(qtatgl.qta_08 - qtatgl.qta_08_evasa), 0) qta_08,
  coalesce(sum(qtatgl.qta_09 - qtatgl.qta_09_evasa), 0) qta_09,
  coalesce(sum(qtatgl.qta_10 - qtatgl.qta_10_evasa), 0) qta_10,
  coalesce(sum(qtatgl.qta_11 - qtatgl.qta_11_evasa), 0) qta_11,
  coalesce(sum(qtatgl.qta_12 - qtatgl.qta_12_evasa), 0) qta_12,
  coalesce(sum(qtatgl.qta_13 - qtatgl.qta_13_evasa), 0) qta_13,
  coalesce(sum(qtatgl.qta_14 - qtatgl.qta_14_evasa), 0) qta_14,
  coalesce(sum(qtatgl.qta_15 - qtatgl.qta_15_evasa), 0) qta_15,
  coalesce(sum(qtatgl.qta_16 - qtatgl.qta_16_evasa), 0) qta_16,
  coalesce(sum(qtatgl.qta_17 - qtatgl.qta_17_evasa), 0) qta_17,
  coalesce(sum(qtatgl.qta_18 - qtatgl.qta_18_evasa), 0) qta_18,
  coalesce(sum(qtatgl.qta_19 - qtatgl.qta_19_evasa), 0) qta_19,
  coalesce(sum(qtatgl.qta_20 - qtatgl.qta_20_evasa), 0) qta_20
	from oar 
   inner join qtatgl on qtatgl.modulo = 'acquisti' and qtatgl.tipo_documento = 'ordine'
	  and qtatgl.progressivo = oar.progressivo and qtatgl.riga = oar.riga
	where oar.art_codice = i_art_codice 
		and oar.tma_codice = i_tma_codice
		and (oar.situazione = 'inserito' or oar.situazione = 'evaso parziale')
  group by 1, 2, 3, 4, 5;
  
	/*  impegnato */
  insert into magvartgl (utn_codice, art_codice, var_codice, dettaglio, tma_codice, tipo,
  qta_01, qta_02, qta_03, qta_04, qta_05, qta_06, qta_07, qta_08, qta_09, qta_10,
  qta_11, qta_12, qta_13, qta_14, qta_15, qta_16, qta_17, qta_18, qta_19, qta_20)

  select i_utn_codice, i_art_codice, d_var_codice, ovr.dettaglio, ovr.tma_codice, 'impegnato', 
  coalesce(sum(qtatgl.qta_01 - qtatgl.qta_01_evasa), 0) qta_01,
  coalesce(sum(qtatgl.qta_02 - qtatgl.qta_02_evasa), 0) qta_02,
  coalesce(sum(qtatgl.qta_03 - qtatgl.qta_03_evasa), 0) qta_03,
  coalesce(sum(qtatgl.qta_04 - qtatgl.qta_04_evasa), 0) qta_04,
  coalesce(sum(qtatgl.qta_05 - qtatgl.qta_05_evasa), 0) qta_05,
  coalesce(sum(qtatgl.qta_06 - qtatgl.qta_06_evasa), 0) qta_06,
  coalesce(sum(qtatgl.qta_07 - qtatgl.qta_07_evasa), 0) qta_07,
  coalesce(sum(qtatgl.qta_08 - qtatgl.qta_08_evasa), 0) qta_08,
  coalesce(sum(qtatgl.qta_09 - qtatgl.qta_09_evasa), 0) qta_09,
  coalesce(sum(qtatgl.qta_10 - qtatgl.qta_10_evasa), 0) qta_10,
  coalesce(sum(qtatgl.qta_11 - qtatgl.qta_11_evasa), 0) qta_11,
  coalesce(sum(qtatgl.qta_12 - qtatgl.qta_12_evasa), 0) qta_12,
  coalesce(sum(qtatgl.qta_13 - qtatgl.qta_13_evasa), 0) qta_13,
  coalesce(sum(qtatgl.qta_14 - qtatgl.qta_14_evasa), 0) qta_14,
  coalesce(sum(qtatgl.qta_15 - qtatgl.qta_15_evasa), 0) qta_15,
  coalesce(sum(qtatgl.qta_16 - qtatgl.qta_16_evasa), 0) qta_16,
  coalesce(sum(qtatgl.qta_17 - qtatgl.qta_17_evasa), 0) qta_17,
  coalesce(sum(qtatgl.qta_18 - qtatgl.qta_18_evasa), 0) qta_18,
  coalesce(sum(qtatgl.qta_19 - qtatgl.qta_19_evasa), 0) qta_19,
  coalesce(sum(qtatgl.qta_20 - qtatgl.qta_20_evasa), 0) qta_20
	from ovr 
   inner join qtatgl on qtatgl.modulo = 'vendite' and qtatgl.tipo_documento = 'ordine'
	  and qtatgl.progressivo = ovr.progressivo and qtatgl.riga = ovr.riga
	where ovr.art_codice = i_art_codice 
		and ovr.tma_codice = i_tma_codice
		and (ovr.situazione = 'inserito' or ovr.situazione = 'evaso parziale')
		and ovr.no_impegnato = 'no' 
  group by 1, 2, 3, 4, 5;
  
end if;
    
END
