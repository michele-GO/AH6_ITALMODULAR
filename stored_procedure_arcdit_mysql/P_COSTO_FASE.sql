CREATE PROCEDURE P_COSTO_FASE
(
	IN i_fas_codice VARCHAR(20),
	IN i_mac_codice VARCHAR(8),
	IN i_attrezzaggio DECIMAL(18,6),
	IN i_quantita DECIMAL(18,6),
	IN i_fine_attrezzaggio DECIMAL(18,6),
	OUT o_costo DECIMAL(18,6)
)
BEGIN
	declare d_tipo_operazione char(20);
	declare d_costo_attrezzaggio decimal(18,6);
	declare d_costo_unitario decimal(18,6);
	declare d_costo_fine_attrezzaggio decimal(18,6);
	
	set o_costo = 0;
	
	select 
		tipo_operazione,

		case
		when mac.id is null or mac.costo_attrezzaggio = 0 then fas.costo_attrezzaggio
		else
			case 
			when fas.specifica_tum = 'minuti' then round(mac.costo_attrezzaggio / 60, 6)
			when fas.specifica_tum = 'secondi' then round(mac.costo_attrezzaggio / 3600, 6)
			else mac.costo_attrezzaggio
			end
		end costo_attrezzaggio,

		case
		when mac.id is null or mac.costo_orario = 0 then fas.costo_unitario
		else 
			case 
			when fas.specifica_tum = 'minuti' then round(mac.costo_orario / 60, 6)
			when fas.specifica_tum = 'secondi' then round(mac.costo_orario / 3600, 6)
			else mac.costo_orario
			end
		end costo_unitario,

		case
		when mac.id is null or mac.costo_fine_attrezzaggio = 0 then fas.costo_fine_attrezzaggio
		else
			case 
			when fas.specifica_tum = 'minuti' then round(mac.costo_fine_attrezzaggio / 60, 6)
			when fas.specifica_tum = 'secondi' then round(mac.costo_fine_attrezzaggio / 3600, 6)
			else mac.costo_fine_attrezzaggio
			end
		end costo_fine_attrezzaggio
	from fas
	left join mac on mac.codice = 
		case
		when i_mac_codice <> '' then i_mac_codice
		else fas.mac_codice
		end
	where fas.codice = i_fas_codice
	into d_tipo_operazione, d_costo_attrezzaggio, d_costo_unitario, d_costo_fine_attrezzaggio;
	
	if d_tipo_operazione = 'ignora' then
	  set o_costo = 0;
	else
	  set o_costo = i_attrezzaggio * d_costo_attrezzaggio + i_quantita * d_costo_unitario + i_fine_attrezzaggio * d_costo_fine_attrezzaggio;
   end if;  
   
END