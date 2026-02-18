CREATE PROCEDURE P_UBM_UBI
(
  IN  i_operazione             	varchar(1),
  IN  i_art_codice_old          varchar(50),
  IN  i_tub_codice_old          varchar(30),
  IN  i_tipo_movimento_old    	varchar(10),
  IN  i_quantita_old     		numeric(18,4),
  IN  i_art_codice_new          varchar(50),
  IN  i_tub_codice_new          varchar(30),
  IN  i_tipo_movimento_new    	varchar(10),
  IN  i_quantita_new     		numeric(18,4)
)
BEGIN 
  declare d_quantita 			numeric(18,4);
  declare d_art_codice 			varchar(50);
  declare d_tub_codice 			varchar(30);
  declare d_tipo_movimento		varchar(10);

  if (i_operazione = 'D') or (i_operazione = 'U') then
    set d_art_codice = i_art_codice_old;
    set d_tub_codice = i_tub_codice_old;
    set d_tipo_movimento = i_tipo_movimento_old;
    set d_quantita = i_quantita_old * -1;

    if d_tipo_movimento = 'scarico' then
      set d_quantita = d_quantita * -1;
    end if;

    if d_tipo_movimento = 'impegnato' then
	  update ubi set impegnato = impegnato + d_quantita where art_codice = d_art_codice and tub_codice = d_tub_codice;
    end if;
    if d_tipo_movimento = 'ordinato' then
	  update ubi set ordinato = ordinato + d_quantita where art_codice = d_art_codice and tub_codice = d_tub_codice;
    end if;
    if d_tipo_movimento = 'carico' or d_tipo_movimento = 'scarico' then
	  update ubi set esistenza = esistenza + d_quantita where art_codice = d_art_codice and tub_codice = d_tub_codice;
    end if;
  end if;

  if (i_operazione = 'I') or (i_operazione = 'U') then
    set d_art_codice = i_art_codice_new;
    set d_tub_codice = i_tub_codice_new;
    set d_tipo_movimento = i_tipo_movimento_new;
    set d_quantita = i_quantita_new;
	
    /* crea ubi se non esiste */
    if not exists(select id from ubi where art_codice = d_art_codice and tub_codice = d_tub_codice) then
      insert into ubi (art_codice, tub_codice) values (d_art_codice, d_tub_codice);
    end if;

    if d_tipo_movimento = 'scarico' then
      set d_quantita = d_quantita * -1;
    end if;

    if d_tipo_movimento = 'impegnato' then
	  update ubi set impegnato = impegnato + d_quantita where art_codice = d_art_codice and tub_codice = d_tub_codice;
    end if;
    if d_tipo_movimento = 'ordinato' then
	  update ubi set ordinato = ordinato + d_quantita where art_codice = d_art_codice and tub_codice = d_tub_codice;
    end if;
    if d_tipo_movimento = 'carico' or d_tipo_movimento = 'scarico' then
	  update ubi set esistenza = esistenza + d_quantita where art_codice = d_art_codice and tub_codice = d_tub_codice;
    end if;
  end if;


END
