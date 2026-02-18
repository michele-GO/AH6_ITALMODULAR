unit ZZLIBRERIE_ITALMODULAR;

interface

uses
  System.variants, System.Classes, System.dateutils, System.sysutils, System.IniFiles, System.Win.ComObj,
  winapi.Windows, WinApi.Messages, WinApi.ShellApi,
  Vcl.controls, Vcl.graphics, Vcl.forms, Vcl.menus, Vcl.Dialogs,
  VirtualTable, XLSSheetData5, XLSReadWriteII5,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, TlHelp32,
  DB, query_go, MyAccess,
  DMARC, ZZPROVV, ZZSPESCO, ZZTOTVEN, ZZTOTACQ, ZZCERCA_PREZZO, zzprzinv,
  ZZDICINT, ZZLIBRERIE;

type
  tdocprev_italmodular_righe = record
    riga: integer;
    articolo: string;
    art_codice: string;
    art_descrizione1: string;
    art_descrizione2: string;
    gen_codice: string;
    quantita: double;
    prezzo: double;
    importo: double;
    totale_documento_riga: double;
    perc_sconto: double;
    importo_sconto: double;
    totale_documento_netto_riga: double;

  end;

type
  tdocprev_italmodular_record = record
    tdo_codice: string;
    cli_codice: string;
    riferimento_cliente: string;
    art_codice_vendita: string;
    codice_commessa: string;
    codice_disegno: string;
    data_documento: tdatetime;
    totale_documento: double;
    arighe: array of tdocprev_italmodular_righe;
  end;

type
  tdocven_italmodular = class
  protected
    cerca_prezzi: tcerca_prezzo;
    spesco: tspesco;
    ass_provv: tprovv;
    totven: ttotven;
    twe, tst, tti, tsp, cli, ind, tdo, tmo, art, ovt, ovi, ovr, fvt, fvi, fvr, ltm, ultima_riga, cpv, query_check: tmyquery_go;
    cnt, cnf, ultimo_cnf: tmyquery_go;

    f_arcdit: tmyconnection_go;
    f_arc: tmyconnection_go;
    f_utente_codice_amministrazione: string;
    f_tipo_contatore: string;
    f_tipo_documento: string;
    f_tdo_codice: string;
    f_tva_codice: string;
    f_indirizzo: string;
    f_cms_codice: string;
    f_cmt_codice: string;
    f_riferimento: string;
    f_nostro_riferimento: string;
    f_committente: string;
    f_: string;
    f_aggiunta: boolean;
    f_nuova: boolean;
    f_assegna_numero_documento: boolean;
    f_progressivo_documento: integer;
    f_configurazione_documento: integer;
    f_data_documento: tdate;
    f_data_spedizione: tdate;
    f_data_riferimento: tdate;
    f_documento_origine: string;
    f_doc_progressivo_origine: integer;
    f_doc_riga_origine: integer;
    f_id_origine: integer;
    f_riga_id_origine: integer;
    f_tma_codice_riga: string;
    f_gen_codice_riga: string;

    f_xxt_sql: string;
    f_xxi_sql: string;
    f_xxr_sql: string;
    f_ultima_riga_sql: string;
    f_nome_generatore: string;
    f_cifre_decimali_prezzo: double;
    f_art_codice_spese_trasporto: string;

    f_tipo_inventario: string;

    dicint: tdicint;
    przinv: tprzinv;

  public

    property utente_codice_amministrazione: string read f_utente_codice_amministrazione write f_utente_codice_amministrazione;
    property tipo_contatore: string read f_tipo_contatore write f_tipo_contatore;
    property tipo_documento: string read f_tipo_documento write f_tipo_documento;
    property tdo_codice: string read f_tdo_codice write f_tdo_codice;
    property tva_codice: string read f_tva_codice write f_tva_codice;
    property progressivo_documento: integer read f_progressivo_documento write f_progressivo_documento;
    property configurazione_documento: integer read f_configurazione_documento write f_configurazione_documento;
    property assegna_numero_documento: boolean read f_assegna_numero_documento write f_assegna_numero_documento;
    property data_documento: tdate read f_data_documento write f_data_documento;
    property data_spedizione: tdate read f_data_spedizione write f_data_spedizione;
    property indirizzo: string read f_indirizzo write f_indirizzo;
    property cms_codice: string read f_cms_codice write f_cms_codice;
    property cmt_codice: string read f_cmt_codice write f_cmt_codice;
    property aggiunta: boolean read f_aggiunta write f_aggiunta;
    property nuova: boolean read f_nuova write f_nuova;
    property riferimento: string read f_riferimento write f_riferimento;
    property data_riferimento: tdate read f_data_riferimento write f_data_riferimento;
    property nostro_riferimento: string read f_nostro_riferimento write f_nostro_riferimento;
    property committente: string read f_committente write f_committente;
    property documento_origine: string read f_documento_origine write f_documento_origine;
    property doc_progressivo_origine: integer read f_doc_progressivo_origine write f_doc_progressivo_origine;
    property doc_riga_origine: integer read f_doc_riga_origine write f_doc_riga_origine;
    property id_origine: integer read f_id_origine write f_id_origine;
    property riga_id_origine: integer read f_riga_id_origine write f_riga_id_origine;
    property tma_codice_riga: string read f_tma_codice_riga write f_tma_codice_riga;
    property gen_codice_riga: string read f_gen_codice_riga write f_gen_codice_riga;

    constructor create(arc_go, arcdit: TMyConnection_go);
    destructor Destroy; override;

    procedure assegna_query;
    procedure crea_documento_vendita(cli_codice_doc, tdo_codice_doc: string; data_documento_doc: tdatetime);
    procedure crea_documento_vendita_riga(art_codice, art_descrizione1, art_descrizione2: string; qta_riga, prezzo_riga, importo_riga: double; storno: string = 'no');
    function ultima_riga_documento_vendita: integer;
    procedure crea_documento_vendita_riga_cnf(configurazione: integer; art_codice: string; qta_riga, prezzo_riga, importo_riga: double);
    procedure aggiorna_riga(art_descrizione1, art_descrizione2: string; qta_riga, prezzo_riga, importo_riga: double);
    procedure crea_documento_vendita_totale;

  end;

implementation

constructor tdocven_italmodular.create(arc_go, arcdit: TMyConnection_go);
begin
  f_cifre_decimali_prezzo := arc.dit.fieldbyname('decimali_max_prezzo').asinteger;
  f_art_codice_spese_trasporto := arc.dit.fieldbyname('art_codice_spese_trasporto').asstring;

  f_arcdit := arcdit;

  cerca_prezzi := tcerca_prezzo.create(arc.arc, arc.arcdit);
  ass_provv := tprovv.create;
  spesco := tspesco.create(f_arcdit, arc.dit);
  totven := ttotven.create;

  twe := tmyquery_go.create(nil);
  twe.connection := f_arcdit;
  twe.sql.add('select * from twe ');
  twe.sql.add('where twe.codice=:codice ');

  tst := tmyquery_go.create(nil);
  tst.connection := f_arcdit;
  tst.sql.add('select * from tst ');
  tst.sql.add('where tst.codice=:codice ');

  tti := tmyquery_go.create(nil);
  tti.connection := f_arcdit;
  tti.sql.add('select * from tti ');
  tti.sql.add('where tti.tst_codice=:codice and tti.data_inizio <= current_date and tti.data_fine >=current_date  ');

  tsp := tmyquery_go.create(nil);
  tsp.connection := f_arcdit;
  tsp.sql.add('select * from tsp ');
  tsp.sql.add('where tsp.codice=:codice ');

  cli := tmyquery_go.create(nil);
  cli.connection := f_arcdit;
  cli.sql.add('select nom.tva_codice,nom.lingua, cli.* from cli ');
  cli.sql.add('inner join nom on nom.codice=cli.codice ');
  cli.sql.add('where cli.codice=:codice');

  ind := tmyquery_go.create(nil);
  ind.connection := f_arcdit;
  ind.sql.add('select ind.* from ind ');
  ind.sql.add('where ind.cli_codice=:cli_codice and ind.indirizzo=:codice ');

  art := tmyquery_go.create(nil);
  art.connection := f_arcdit;
  art.sql.add('select art.* from art ');
  art.sql.add('where art.codice=:codice');

  tdo := tmyquery_go.create(nil);
  tdo.connection := f_arcdit;
  tdo.sql.add('select * from tdo where codice=:codice');

  tmo := tmyquery_go.create(nil);
  tmo.connection := f_arcdit;
  tmo.sql.add('select * from tmo where codice=:codice');

  ovt := tmyquery_go.create(nil);
  ovt.connection := f_arcdit;
  ovt.sql.add('select * from ovt where progressivo=:progressivo');

  ovi := tmyquery_go.create(nil);
  ovi.connection := f_arcdit;
  ovi.sql.add('select * from ovi where progressivo=:progressivo');

  ovr := tmyquery_go.create(nil);
  ovr.connection := f_arcdit;
  ovr.sql.add('select * from ovr where progressivo=:progressivo and art_codice <>'''' order by riga');

  fvt := tmyquery_go.create(nil);
  fvt.connection := f_arcdit;
  fvt.sql.add('select * from xxt where progressivo=:progressivo');

  fvi := tmyquery_go.create(nil);
  fvi.connection := f_arcdit;
  fvi.sql.add('select * from xxi where progressivo=:progressivo and tiv_codice=:tiv_codice and tipo_movimento=:tipo_movimento');

  fvr := tmyquery_go.create(nil);
  fvr.connection := f_arcdit;
  fvr.sql.add('select * from xxr where progressivo=:progressivo and riga=:riga');

  cnt := tmyquery_go.create(nil);
  cnt.connection := f_arcdit;
  cnt.sql.add('select * from cnt where tipo = :tipo ');

  cnf := tmyquery_go.create(nil);
  cnf.connection := f_arcdit;
  cnf.sql.add('select * from cnf where configurazione = :configurazione and sequenza = :sequenza');

  ultimo_cnf := tmyquery_go.create(nil);
  ultimo_cnf.connection := f_arcdit;
  ultimo_cnf.sql.add('select coalesce(max(sequenza),0) nr_sequenza from cnf where configurazione=:configurazione ');

  ltm := tmyquery_go.create(nil);
  ltm.connection := f_arcdit;
  ltm.sql.add('select * from ltm where documento_origine=:documento_origine and doc_progressivo_origine=:progressivo and doc_riga_origine=:riga');

  ultima_riga := tmyquery_go.create(nil);
  ultima_riga.connection := f_arcdit;
  ultima_riga.sql.add('select coalesce(max(riga),0) nr_riga from xxr where progressivo=:progressivo ');

  cpv := tmyquery_go.create(nil);
  cpv.connection := f_arcdit;
  cpv.sql.add('select * from cpv where tcc_codice=:tcc_codice and tca_codice=:tca_codice');

  query_check := tmyquery_go.create(nil);
  query_check.connection := f_arcdit;

  f_xxt_sql := fvt.sql.text;
  f_xxi_sql := fvi.sql.text;
  f_xxr_sql := fvr.sql.text;
  f_ultima_riga_sql := ultima_riga.sql.text;
end;

destructor tdocven_italmodular.destroy;
begin
  freeandnil(dicint);
  freeandnil(przinv);
  freeandnil(cerca_prezzi);
  freeandnil(ass_provv);
  freeandnil(spesco);
  freeandnil(totven);

  freeandnil(twe);
  freeandnil(tst);
  freeandnil(tsp);
  freeandnil(cli);
  freeandnil(ind);
  freeandnil(art);
  freeandnil(tdo);
  freeandnil(tmo);
  freeandnil(ovt);
  freeandnil(ovi);
  freeandnil(ovr);
  freeandnil(fvt);
  freeandnil(fvi);
  freeandnil(fvr);
  freeandnil(cnt);
  freeandnil(cnf);
  freeandnil(ltm);
  freeandnil(ultima_riga);
end;

procedure tdocven_italmodular.assegna_query;
begin

  // controllo che progressivo non esista in GO
  if tdo.fieldbyname('tipo_documento').asstring = 'ordine' then
  begin
    f_nome_generatore := 'OVT';
    fvt.sql.text := strtran(f_xxt_sql, 'xxt', 'ovt', true);
    fvi.sql.text := strtran(f_xxi_sql, 'xxi', 'ovi', true);
    fvr.sql.text := strtran(f_xxr_sql, 'xxr', 'ovr', true);
    ultima_riga.sql.text := strtran(f_ultima_riga_sql, 'xxr', 'ovr', true);
  end
  else if tdo.fieldbyname('tipo_documento').asstring = 'bolla' then
  begin
    f_nome_generatore := 'BVT';
    fvt.sql.text := strtran(f_xxt_sql, 'xxt', 'bvt', true);
    fvi.sql.text := strtran(f_xxi_sql, 'xxi', 'bvi', true);
    fvr.sql.text := strtran(f_xxr_sql, 'xxr', 'bvr', true);
    ultima_riga.sql.text := strtran(f_ultima_riga_sql, 'xxr', 'bvr', true);
  end
  else if tdo.fieldbyname('tipo_documento').asstring = 'ddt' then
  begin
    f_nome_generatore := 'DVT';
    fvt.sql.text := strtran(f_xxt_sql, 'xxt', 'dvt', true);
    fvi.sql.text := strtran(f_xxi_sql, 'xxi', 'dvi', true);
    fvr.sql.text := strtran(f_xxr_sql, 'xxr', 'dvr', true);
    ultima_riga.sql.text := strtran(f_ultima_riga_sql, 'xxr', 'dvr', true);
  end
  else if tdo.fieldbyname('tipo_documento').asstring = 'ddt fornitori' then
  begin
    f_nome_generatore := 'DVT';
    fvt.sql.text := strtran(f_xxt_sql, 'xxt', 'dvt', true);
    fvi.sql.text := strtran(f_xxi_sql, 'xxi', 'dvi', true);
    fvr.sql.text := strtran(f_xxr_sql, 'xxr', 'dvr', true);
    ultima_riga.sql.text := strtran(f_ultima_riga_sql, 'xxr', 'dvr', true);
  end
  else if (copy(tdo.fieldbyname('tipo_documento').asstring, 1, 7) = 'fattura') or (tdo.fieldbyname('tipo_documento').asstring = 'nota credito') then
  begin
    f_nome_generatore := 'FVT';
    fvt.sql.text := strtran(f_xxt_sql, 'xxt', 'fvt', true);
    fvi.sql.text := strtran(f_xxi_sql, 'xxi', 'fvi', true);
    fvr.sql.text := strtran(f_xxr_sql, 'xxr', 'fvr', true);
    ultima_riga.sql.text := strtran(f_ultima_riga_sql, 'xxr', 'fvr', true);
  end;
end;

procedure tdocven_italmodular.crea_documento_vendita(cli_codice_doc, tdo_codice_doc: string;
  data_documento_doc: tdatetime);
var
  data, data_precedente: tdatetime;
  fvt_numero, fvt_numero_precedente: double;
  i, riga: integer;
  nome_generatore: string;
begin
  dicint := tdicint.create('C');
  przinv := tprzinv.create;

  f_tipo_inventario := arc.dit.fieldbyname('costo_produzione').asstring;

  // controllo che progressivo non esista in GO

  f_tdo_codice := tdo_codice_doc;
  f_data_documento := data_documento_doc;

  read_tabella(tdo, f_tdo_codice);
  read_tabella(tmo, tdo.fieldbyname('tmo_codice').asstring);

  assegna_query;

  f_progressivo_documento := 0;

  fvt.close;
  fvt.parambyname('progressivo').asfloat := f_progressivo_documento;
  fvt.open;

  while f_progressivo_documento = 0 do
  begin
    f_progressivo_documento := arc.setta_valore_generatore(arc.arcdit, f_nome_generatore + '_PROGRESSIVO');
    // Result := progressivo;
    read_tabella(arc.arcdit, f_nome_generatore, 'progressivo', f_progressivo_documento);
    if not archivio.eof then
    begin
      f_progressivo_documento := 0;

    end;
  end;

  fvt.close;
  fvt.parambyname('progressivo').asfloat := f_progressivo_documento;
  fvt.open;
  if fvt.eof then
  begin
    if f_assegna_numero_documento then
    begin
      arc.assegna_numerazione(ditta, f_tipo_contatore, tdo.fieldbyname('numerazione').asstring, f_data_documento, data_precedente, fvt_numero, fvt_numero_precedente, true, false);
    end
    else
    begin
      fvt_numero := 0;
    end;

    fvt.append;
    fvt.fieldbyname('progressivo').asfloat := f_progressivo_documento;
    fvt.fieldbyname('tdo_codice').asstring := f_tdo_codice;

    fvt.fieldbyname('tipo_documento').asstring := tdo.fieldbyname('tipo_documento').asstring;
    fvt.fieldbyname('tcd_codice_apertura').asstring := tdo.fieldbyname('tcd_codice_inizio').asstring;
    fvt.fieldbyname('tcd_codice_chiusura').asstring := tdo.fieldbyname('tcd_codice_fine').asstring;
    fvt.fieldbyname('tco_codice').asstring := tdo.fieldbyname('tco_codice').asstring;

    fvt.fieldbyname('tmo_codice').asstring := tdo.fieldbyname('tmo_codice').asstring;
    fvt.fieldbyname('tma_codice').asstring := tdo.fieldbyname('tma_codice').asstring;

    read_tabella(arc.arcdit, 'tmo', 'codice', tdo.fieldbyname('tmo_codice').asstring);
    if archivio.fieldbyname('tmo_codice_collegato').asstring <> '' then
    begin
      fvt.fieldbyname('tmo_codice_collegato').asstring := archivio.fieldbyname('tmo_codice_collegato').asstring;
      fvt.fieldbyname('tma_codice_collegato').asstring := archivio.fieldbyname('tma_codice_collegato').asstring;
    end;

    fvt.fieldbyname('data_documento').asdatetime := f_data_documento;
    if copy(tdo.fieldbyname('tipo_documento').asstring, 1, 7) = 'fattura' then
    begin
      if f_data_spedizione >= f_data_documento then
      begin
        fvt.fieldbyname('data_inizio_trasporto').asdatetime := f_data_spedizione;
      end;
    end;
    fvt.fieldbyname('numero_documento').asfloat := fvt_numero;
    fvt.fieldbyname('serie_documento').asstring := tdo.fieldbyname('numerazione').asstring;

    if f_riferimento <> '' then
    begin
      fvt.fieldbyname('riferimento').asstring := f_riferimento;
    end;

    if f_data_riferimento > 0 then
    begin
      fvt.fieldbyname('data_riferimento').asdatetime := f_data_riferimento;
    end;

    if f_nostro_riferimento <> '' then
    begin
      fvt.fieldbyname('nostro_riferimento').asstring := f_nostro_riferimento;
    end;

    if f_committente <> '' then
    begin
      fvt.fieldbyname('committente').asstring := f_committente;
    end;

    read_tabella(cli, cli_codice_doc);
    fvt.fieldbyname('cli_codice').asstring := cli.fieldbyname('codice').asstring;
    fvt.fieldbyname('tlv_codice').asstring := cli.fieldbyname('tlv_codice').asstring;
    fvt.fieldbyname('tpa_codice').asstring := cli.fieldbyname('tpa_codice').asstring;
    fvt.fieldbyname('tag_codice').asstring := cli.fieldbyname('tag_codice').asstring;
    // 18/10/2022 non assegnare sconto sulla nota di credito
    fvt.fieldbyname('tsm_codice').asstring := ''; // cli.fieldbyname('tsm_codice').asstring;
    if tdo.fieldbyname('tipo_documento').asstring <> 'nota credito' then
    begin
      fvt.fieldbyname('tsm_codice').asstring := cli.fieldbyname('tsm_codice').asstring;
    end;

    fvt.fieldbyname('tva_codice').asstring := cli.fieldbyname('tva_codice').asstring;
    if (cli.fieldbyname('tiv_codice').asstring <> '') and (cli.fieldbyname('data_esenzione_iva').asdatetime >= fvt.fieldbyname('data_documento').asdatetime) then
    begin
      fvt.fieldbyname('tiv_codice').asstring := cli.fieldbyname('tiv_codice').asstring;
    end;

    if f_tva_codice > '' then
    begin
      fvt.fieldbyname('tva_codice').asstring := f_tva_codice;
    end;

    fvt.fieldbyname('cambio').asfloat := 1;
    fvt.fieldbyname('ese_codice').asstring := formatdatetime('yyyy', fvt.fieldbyname('data_documento').asdatetime);

    if f_indirizzo <> '' then
    begin
      read_tabella(ind, vararrayof([cli_codice_doc, indirizzo]));
      fvt.fieldbyname('indirizzo').asstring := f_indirizzo;
      fvt.fieldbyname('descrizione1').asstring := ind.fieldbyname('descrizione1').asstring;
      fvt.fieldbyname('descrizione2').asstring := ind.fieldbyname('descrizione2').asstring;
      fvt.fieldbyname('via').asstring := ind.fieldbyname('via').asstring;
      fvt.fieldbyname('cap').asstring := ind.fieldbyname('cap').asstring;
      fvt.fieldbyname('citta').asstring := ind.fieldbyname('citta').asstring;
      fvt.fieldbyname('provincia').asstring := ind.fieldbyname('provincia').asstring;
      fvt.fieldbyname('tna_codice').asstring := ind.fieldbyname('tna_codice').asstring;
    end;

    if f_cms_codice <> '' then
    begin
      fvt.fieldbyname('cms_codice').asstring := f_cms_codice;
      fvt.fieldbyname('tipologia').asstring := f_cmt_codice;
    end;

    fvt.fieldbyname('addebito_spese_fattura').asstring := cli.fieldbyname('addebito_spese_fattura').asstring;
    //fvt.fieldbyname('addebito_spese_trasporto').asstring := archivio.fieldbyname('addebito_spese_trasporto').asstring;
    //      fvt.fieldbyname('spese_manuali').asstring := ovt.fieldbyname('spese_manuali').asstring;
    //      fvt.fieldbyname('spese_manuali_incasso').asstring := ovt.fieldbyname('spese_manuali_incasso').asstring;
    //      fvt.fieldbyname('spese_manuali_trasporto').asstring := ovt.fieldbyname('spese_manuali_trasporto').asstring;
    //      fvt.fieldbyname('importo_spese_extra').asfloat := 0;
    fvt.fieldbyname('importo_spese_incasso').asfloat := 0;
    fvt.fieldbyname('importo_spese_trasporto').asfloat := 0;
    if tdo.fieldbyname('tipo_documento').asstring <> 'nota credito' then
    begin
      fvt.fieldbyname('tsp_codice').asstring := cli.fieldbyname('tsp_codice').asstring;
      fvt.fieldbyname('tpo_codice').asstring := cli.fieldbyname('tpo_codice').asstring;
      fvt.fieldbyname('tst_codice').asstring := cli.fieldbyname('tst_codice').asstring;
      // fvt.fieldbyname('tab_codice').asstring := cli.fieldbyname('tab_codice').asstring;
    end;
    // conti automatici

    spesco.p_tabella := fvt;
    spesco.assegna;
    fvt := spesco.p_tabella;

    dicint.assegna_tiv_codice(0, fvt);

    if (cli.fieldbyname('tiv_codice').asstring <> '') and (cli.fieldbyname('data_esenzione_iva').asdatetime >= fvt.fieldbyname('data_documento').asdatetime) then
    begin
      fvt.fieldbyname('tiv_codice').asstring := cli.fieldbyname('tiv_codice').asstring;
    end;
    if f_id_origine > 0 then
    begin
      fvt.fieldbyname('id_origine').asinteger := f_id_origine;
    end;
    fvt.post;
  end;

end;

procedure tdocven_italmodular.crea_documento_vendita_riga(art_codice, art_descrizione1, art_descrizione2: string;
  qta_riga, prezzo_riga, importo_riga: double;
  storno:
  string = 'no');
var
  i, riga: integer;
  importo_sconto, importo, importo_euro, importo_iva, importo_iva_euro, imponibile, importo_non_arrotondato, quantita, prezzo, sconto_massimo_art, provvigioni, provvigioni_ca, importo_provvigioni: double;
  stringa, tca_codice, tiv_codice, tum_codice, tsm_codice, tsm_codice_art, blocco_sconto_massimo_art, conteggio_su_margine: string;
  data_prezzo: TDateTime;
  codice_passato: variant;
begin
  ultima_riga.close;
  ultima_riga.parambyname('progressivo').asinteger := f_progressivo_documento;
  ultima_riga.open;

  riga := ultima_riga.fieldbyname('nr_riga').asinteger + 10;
  ultima_riga.close;

  fvr.close;
  fvr.parambyname('progressivo').asinteger := f_progressivo_documento;
  fvr.parambyname('riga').asinteger := riga;
  fvr.open;
  if fvr.eof then
  begin
    fvr.append;
    fvr.fieldbyname('progressivo').asinteger := f_progressivo_documento;
    fvr.fieldbyname('riga').asinteger := riga;

    if storno = 'no' then
    begin
      fvr.fieldbyname('art_codice').asstring := art_codice;
    end
    else
    begin
      fvr.fieldbyname('art_codice').asstring := f_art_codice_spese_trasporto;
    end;

    if fvr.fieldbyname('art_codice').asstring <> '' then
    begin
      fvr.fieldbyname('tma_codice').asstring := fvt.fieldbyname('tma_codice').asstring;
    end;

    if f_tma_codice_riga <> '' then
    begin
      fvr.fieldbyname('tma_codice').asstring := f_tma_codice_riga;
    end;

    fvr.fieldbyname('evadere_note').asstring := 'no';

    read_tabella(art, fvr.fieldbyname('art_codice').asstring);
    tiv_codice := art.fieldbyname('tiv_codice_vendite').asstring;
    tum_codice := art.fieldbyname('tum_codice').asstring;
    tca_codice := art.fieldbyname('tca_codice').asstring;

    if fvt.fieldbyname('tiv_codice').asstring <> '' then
    begin
      tiv_codice := fvt.fieldbyname('tiv_codice').asstring;
    end;

    fvr.fieldbyname('tiv_codice').asstring := tiv_codice;
    fvr.fieldbyname('kit').asstring := art.fieldbyname('kit').asstring;

    if storno = 'no' then
    begin
      fvr.fieldbyname('descrizione1').asstring := art_descrizione1;
      fvr.fieldbyname('descrizione2').asstring := art_descrizione2;
    end
    else
    begin
      fvr.fieldbyname('descrizione1').asstring := 'ADDEBITO ' + art.fieldbyname('descrizione1').asstring;
      fvr.fieldbyname('descrizione2').asstring := art.fieldbyname('descrizione2').asstring;

      // cerca prezzo tti
      read_tabella(tti, cli.fieldbyname('tst_codice').asstring);
      if fvt.fieldbyname('importo_totale_imponibile_euro').asfloat < tti.fieldbyname('importo_minimo').asfloat then
      begin
        prezzo := tti.fieldbyname('importo_assoluto').asfloat * -1;
      end;
    end;

    if qta_riga > 0 then
    begin

      fvr.fieldbyname('quantita').asfloat := qta_riga;
      fvr.fieldbyname('tum_quantita_base').asfloat := fvr.fieldbyname('quantita').asfloat;

      if ((copy(tdo.fieldbyname('tipo_documento').asstring, 1, 7) = 'fattura') or (tdo.fieldbyname('tipo_documento').asstring = 'nota credito')) and
        (prezzo_riga = 0) then
      begin

        if tdo.fieldbyname('tipo_documento').asstring = 'nota credito' then
        begin
          fvr.fieldbyname('tma_codice').asstring := '';
        end;

        // -------------------------------------------------------------------------
        // cerca prezzo e sconti
        // -----------------------------------------------------------------------
        data_prezzo := fvt.fieldbyname('data_documento').asdatetime;

        tsm_codice := fvt.fieldbyname('tsm_codice').asstring;
        tsm_codice_art := '';

        fvr.fieldbyname('prezzo').asfloat := prezzo;
        fvr.fieldbyname('tsm_codice').asstring := tsm_codice;
        fvr.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;

        read_tabella(arc.arcdit, 'tag', 'codice', fvt.fieldbyname('tag_codice').asstring);
        if archivio.fieldbyname('prezzo_netto_sconti').asstring = 'si' then
        begin
          fvr.fieldbyname('prezzo_netto').asfloat := fvr.fieldbyname('prezzo').asfloat;
        end
        else
        begin
          fvr.fieldbyname('prezzo_netto').asfloat := arrotonda(fvr.fieldbyname('prezzo').asfloat * sconto(fvr.fieldbyname('tsm_codice').asstring) * sconto(fvr.fieldbyname('tsm_codice_art').asstring) / 10000, decimali_max_prezzo);
        end;
        calcola_importo_documento(fvr.fieldbyname('quantita').asfloat, fvr.fieldbyname('prezzo').asfloat, 1, 0, 'si', 'no', tum_codice, tiv_codice, tsm_codice, '', importo, importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato);

        fvr.fieldbyname('importo').asfloat := importo;
        fvr.fieldbyname('importo_euro').asfloat := importo_euro;

      end
      else
      begin
        fvr.fieldbyname('prezzo').asfloat := prezzo_riga;
        fvr.fieldbyname('importo').asfloat := importo_riga;
        fvr.fieldbyname('importo_euro').asfloat := importo_riga;
      end;
    end
    else
    begin
      fvr.fieldbyname('importo').asfloat := importo_riga;
      fvr.fieldbyname('importo_euro').asfloat := importo_riga;
    end;

    // ------------------------------------------------------------------------------------------------
    // totale documento
    // ------------------------------------------------------------------------------------------------
    tsm_codice := fvr.fieldbyname('tsm_codice').asstring;

    // ------------------------------------------------------------------------------------------------
    // assegna provvigioni
    // ------------------------------------------------------------------------------------------------
    provvigioni := 0;
    provvigioni_ca := 0;
    importo_provvigioni := 0;

    ass_provv.assegna_provvigioni(
      fvt.fieldbyname('tag_codice').asstring,
      fvt.fieldbyname('cli_codice').asstring,
      fvt.fieldbyname('indirizzo').asstring,
      cli.fieldbyname('tp1_codice').asstring,
      fvr.fieldbyname('art_codice').asstring,
      art.fieldbyname('tp2_codice').asstring,
      fvr.fieldbyname('tipo_movimento').asstring,
      fvt.fieldbyname('tlv_codice').asstring,
      fvr.fieldbyname('quantita').asfloat,
      fvr.fieldbyname('prezzo').asfloat,
      fvr.fieldbyname('prezzo_netto').asfloat,
      fvr.fieldbyname('importo').asfloat,
      provvigioni, provvigioni_ca, importo_provvigioni,
      conteggio_su_margine, fvt.fieldbyname('data_documento').asdatetime);

    fvr.fieldbyname('percentuale_provvigioni').asfloat := provvigioni;
    fvr.fieldbyname('percentuale_provvigioni_ca').asfloat := provvigioni_ca;
    fvr.fieldbyname('importo_provvigioni').asfloat := importo_provvigioni;
    // ------------------------------------------------------------------------------------------------

    if f_cms_codice <> '' then
    begin
      fvr.fieldbyname('cms_codice').asstring := f_cms_codice;
      fvr.fieldbyname('tipologia').asstring := f_cmt_codice;
    end;

    if f_gen_codice_riga <> '' then
    begin
      fvr.fieldbyname('gen_codice').asstring := f_gen_codice_riga;
    end
    else
    begin
      read_tabella(cli, fvt.fieldbyname('cli_codice').asstring);
      cpv.params[0].asstring := cli.fieldbyname('tcc_codice').asstring;
      cpv.params[1].asstring := tca_codice;
      cpv.close;
      cpv.open;
      fvr.fieldbyname('gen_codice').asstring := cpv.fieldbyname('gen_codice').asstring;
    end;

    if read_tabella(arc.arcdit, 'tiv', 'codice', fvr.fieldbyname('tiv_codice').asstring) then
    begin
      if fvt.fieldbyname('listino_con_iva').asstring = 'no' then
      begin
        fvr.fieldbyname('importo_iva').asfloat := arrotonda(fvr.fieldbyname('importo').asfloat * archivio.fieldbyname('percentuale').asfloat / 100);
        fvr.fieldbyname('importo_iva_euro').asfloat := fvr.fieldbyname('importo_iva').asfloat;
      end
      else
      begin
        imponibile := arrotonda(fvr.fieldbyname('importo').asfloat / (1 + archivio.fieldbyname('percentuale').asfloat / 100));
        fvr.fieldbyname('importo_iva').asfloat := arrotonda(fvr.fieldbyname('importo').asfloat - imponibile);
        fvr.fieldbyname('importo_iva_euro').asfloat := fvr.fieldbyname('importo_iva').asfloat;
      end;
    end;

    // ------------------------------------------------------
    // assegno riferimento tabella riga origine
    // ------------------------------------------------------
    fvr.fieldbyname('documento_origine').asstring := '';
    fvr.fieldbyname('doc_progressivo_origine').asinteger := 0;
    fvr.fieldbyname('doc_riga_origine').asinteger := 0;

    if f_documento_origine <> '' then
    begin
      fvr.fieldbyname('documento_origine').asstring := f_documento_origine;
      fvr.fieldbyname('doc_progressivo_origine').asinteger := f_doc_progressivo_origine;
      fvr.fieldbyname('doc_riga_origine').asinteger := f_doc_riga_origine;
    end;

    if f_riga_id_origine > 0 then
    begin
      fvr.fieldbyname('id_origine').asinteger := f_riga_id_origine;
    end;

    fvr.post;

    // gestione lotti
    if (tdo.fieldbyname('lotti').asstring = 'si') and
      (art.fieldbyname('lotti').asstring = 'si') then
    begin

      codice_passato := vararrayof([fvt.FIELDBYNAME('tipo_documento').ASSTRING + ' ven', fvr.fieldbyname('progressivo').asfloat,
        fvr.fieldbyname('riga').asinteger, 0]);

      esegui_carltm(codice_passato, fvt.fieldbyname('numero_documento').asfloat,
        'C', fvt.fieldbyname('cli_codice').asstring, fvr.fieldbyname('art_codice').asstring, fvr.fieldbyname('tma_codice').asstring, fvt.fieldbyname('tmo_codice').asstring,
        tmo.fieldbyname('esistenza').asstring, fvt.fieldbyname('serie_documento').asstring,
        fvt.fieldbyname('data_documento').asdatetime, fvt.fieldbyname('data_documento').asdatetime, tmo.fieldbyname('descrizione').asstring,
        arrotonda(fvr.fieldbyname('tum_quantita_base').asfloat, 4), 0, 0, '', false, true);
    end;

    if arc.arcdit.intransaction then
    begin
      arc.arcdit.commit;
    end;

  end;

end;

function tdocven_italmodular.ultima_riga_documento_vendita: Integer;
begin
  result := fvr.fieldbyname('riga').asinteger;
end;

procedure tdocven_italmodular.crea_documento_vendita_riga_cnf(configurazione: integer; art_codice: string; qta_riga, prezzo_riga, importo_riga: double);
var
  sequenza: integer;
  prezzo: double;
  tma_codice: string;
begin
  try
    if configurazione = 0 then
    begin
      cnt.close;
      cnt.parambyname('tipo').asstring := 'CONFIGURAZIONE';
      cnt.open;
      if cnt.eof then
      begin
        cnt.append;
        cnt.fieldbyname('anno').asstring := '';
        cnt.fieldbyname('tipo').asstring := 'CONFIGURAZIONE';
        cnt.fieldbyname('sottotipo').asstring := '';
        cnt.post;
        cnt.close;
        cnt.open;
      end;
      cnt.edit;

      cnt.fieldbyname('progressivo').asfloat := arrotonda(cnt.fieldbyname('progressivo').asfloat + 1, 0);
      cnt.fieldbyname('data_aggiornamento').asdatetime := now;
      cnt.post;

      f_configurazione_documento := cnt.fieldbyname('progressivo').asinteger;
      configurazione := f_configurazione_documento;

      tabella_edit(fvr);
      fvr.fieldbyname('configurazione').asinteger := configurazione;
      fvr.post;
    end;

    prezzo := 0;

    przinv.przinv(art_codice, tma_codice, f_tipo_inventario, esercizio, date, qta_riga, prezzo);

    ultimo_cnf.close;
    ultimo_cnf.params[0].asinteger := configurazione;
    ultimo_cnf.open;

    sequenza := ultimo_cnf.fieldbyname('nr_sequenza').asinteger + 1;
    ultimo_cnf.close;

    cnf.close;
    cnf.parambyname('configurazione').asinteger := configurazione;
    cnf.parambyname('sequenza').asinteger := sequenza;
    cnf.open;
    if cnf.eof then
    begin
      cnf.append;
      cnf.fieldbyname('configurazione').asinteger := configurazione;
      cnf.fieldbyname('sequenza').asinteger := sequenza;
      cnf.fieldbyname('art_codice').asstring := art_codice;
      cnf.fieldbyname('quantita').asfloat := qta_riga;
      cnf.fieldbyname('prezzo').asfloat := prezzo_riga;
      cnf.fieldbyname('importo').asfloat := importo_riga;
      cnf.fieldbyname('prezzo_netto').asfloat := prezzo_riga;
      cnf.fieldbyname('prezzo_netto_listino').asfloat := importo_riga;
      cnf.fieldbyname('costo_unitario').asfloat := prezzo;
      cnf.fieldbyname('costo_globale').asfloat := arrotonda(qta_riga * prezzo, 2);
      cnf.post;
    end;
  finally
    cnt.close;
    cnf.close;
  end;
end;

procedure tdocven_italmodular.aggiorna_riga(art_descrizione1, art_descrizione2: string; qta_riga, prezzo_riga, importo_riga: double);
var
  tum_codice, tiv_codice, tsm_codice: string;
  importo_sconto, importo, importo_euro, importo_iva, importo_iva_euro, imponibile, importo_non_arrotondato, quantita, prezzo, sconto_massimo_art, provvigioni, provvigioni_ca, importo_provvigioni: double;
begin
  tabella_edit(fvr);
  tum_codice := art.fieldbyname('tum_codice').asstring;
  tiv_codice := fvr.fieldbyname('tiv_codice').asstring;
  tsm_codice := fvt.fieldbyname('tsm_codice').asstring;

  fvr.fieldbyname('descrizione1').asstring := art_descrizione1;
  fvr.fieldbyname('descrizione2').asstring := art_descrizione2;
  fvr.fieldbyname('quantita').asfloat := qta_riga;
  fvr.fieldbyname('tum_quantita_base').asfloat := fvr.fieldbyname('quantita').asfloat;
  fvr.fieldbyname('prezzo').asfloat := prezzo_riga;
  read_tabella(arc.arcdit, 'tag', 'codice', fvt.fieldbyname('tag_codice').asstring);

  if archivio.fieldbyname('prezzo_netto_sconti').asstring = 'si' then
  begin
    fvr.fieldbyname('prezzo_netto').asfloat := fvr.fieldbyname('prezzo').asfloat;
  end
  else
  begin
    fvr.fieldbyname('prezzo_netto').asfloat := arrotonda(fvr.fieldbyname('prezzo').asfloat * sconto(fvr.fieldbyname('tsm_codice').asstring) * sconto(fvr.fieldbyname('tsm_codice_art').asstring) / 10000, decimali_max_prezzo);
  end;
  calcola_importo_documento(fvr.fieldbyname('quantita').asfloat, fvr.fieldbyname('prezzo').asfloat, 1, 0, 'si', 'no', tum_codice, tiv_codice, tsm_codice, '', importo, importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato);

  fvr.fieldbyname('importo').asfloat := importo;
  fvr.fieldbyname('importo_euro').asfloat := importo_euro;

  fvr.post;
end;

procedure tdocven_italmodular.crea_documento_vendita_totale;
begin
  if fvt.fieldbyname('tipo_documento').asstring = 'nota credito' then
  begin
    fvt.edit;
    fvt.fieldbyname('numero_colli').asfloat := 0;
    fvt.fieldbyname('peso_lordo').asfloat := 0;
    fvt.fieldbyname('peso_netto').asfloat := 0;
    fvt.post;
  end;

  totven.movven_testata(f_arcdit, fvt.fieldbyname('tipo_documento').asstring, fvt.fieldbyname('progressivo').asinteger);
end;

end.
