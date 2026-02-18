inherited AH6ELAORDV: TAH6ELAORDV
  Caption = 'AH6ELAORDV'
  TextHeight = 13
  inherited tab_control: TRzPageControl
    ActivePage = tab_pagina2
    TabIndex = 1
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 986
      ExplicitHeight = 469
    end
    inherited tab_pagina2: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 986
      ExplicitHeight = 469
      inherited pannello_esposizione: TRzPanel
        object v_griglia: TRzDBGrid
          Left = 0
          Top = 0
          Width = 986
          Height = 330
          Align = alClient
          DataSource = query_ds
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Microsoft Sans Serif'
          TitleFont.Style = []
        end
        object Memo1: TMemo
          Left = 0
          Top = 330
          Width = 986
          Height = 139
          Align = alBottom
          Lines.Strings = (
            'Memo1')
          TabOrder = 1
        end
      end
    end
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      'SELECT '
      'OVT.PROGRESSIVO,'
      'OVT.ESE_CODICE,'
      'OVT.NUMERO_DOCUMENTO'
      'FROM OVT'
      'WHERE '
      'ovt.data_documento <='#39'2025-09-02'#39
      'ORDER BY OVT.PROGRESSIVO')
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {04000000000000000000}
  end
  object ovr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from ovr'
      'where'
      'progressivo=:progressivo and'
      'art_codice=:art_codice and'
      'quantita=:quantita and '
      'prezzo=:prezzo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 430
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'prezzo'
        Value = nil
      end>
  end
  object ovr_os1: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      'ovr.*'
      'FROM arc_conversioni.ordiniclirighe ovr'
      
        'inner join arc_conversioni.ordinicliteste ovt ON ovt.KOrdiniCliT' +
        '=ovr.KOrdiniCliT'
      'WHERE'
      'ovt.Anno=:ese_codice and'
      'ovt.Numero=:numero_documento'
      'ORDER BY ovr.Numerorigo'
      ''
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 578
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ese_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'numero_documento'
        Value = nil
      end>
  end
  object ovt_os1: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT'
      'OVT.KOrdiniCliT AS PROGRESSIVO'
      'FROM arc_conversioni.ordinicliteste ovt'
      'WHERE'
      'ovt.Anno=:esercizio and'
      'ovt.Numero=:numero_documento')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 513
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'esercizio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'numero_documento'
        Value = nil
      end>
  end
  object tsm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * '
      'from tsm'
      'WHERE'
      'tsm.PERCENTUALE_01=:perc_1 and'
      'tsm.PERCENTUALE_02=:perc_2 and'
      'tsm.PERCENTUALE_03=:perc_3 and'
      'tsm.PERCENTUALE_04=:perc_4 and'
      'tsm.PERCENTUALE_05=:perc_5 ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 668
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'perc_1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'perc_2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'perc_3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'perc_4'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'perc_5'
        Value = nil
      end>
  end
  object query_cafi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT'
      'mmr.KMovmag,'
      
        'CAST(CONCAT(truncate(mmt.ESERCIZIO,0),truncate(mmt.Protocollo,0)' +
        ') AS CHAR(20)) AS PROGRESSIVO,'
      'round(mmr.NumOrdine/1024,0)  AS RIGA,'
      'MMR.SubNumordine,'
      'mmt.IdCausale as MMT_tmo_codice,'
      'mmt.IdMagazzino1 as MMT_tma_codice,'
      'mmt.esercizio as MMT_ese_codice,'
      'mmt.DataMovimento as MMT_DATA_REGISTRAZIONE,'
      'mmt.DataDocumento as MMT_DATA_DOCUMENTO,'
      'mmt.rifdocumento AS MMT_DESCRIZIONE,'
      #39#39' as MMT_serie_documento,'
      'case'
      'when mmt.IdContoTp='#39'CL'#39'  then '#39'C'#39
      'when mmt.IdContoTp='#39'FO'#39'  then '#39'F'#39
      'ELSE '#39#39' END AS MMT_CFG_TIPO,'
      'case'
      'when mmt.IdContoTp='#39'CL'#39'  then cocc.codice_go'
      'when mmt.IdContoTp='#39'FO'#39'  then cocf.codice_go'
      'ELSE '#39#39' END AS MMT_CFG_CODICE,'
      'mmt.IdDivisa as MMT_TVA_codice,'
      'mmt.cambio MMT_cambio,'
      '0 as MMT_DOCUMENTO_ORIGINE,'
      '0 as MMT_DOC_PROGRESSIVO_ORIGINE,'
      #39'normale'#39' as MMT_tipo_movimento,'
      'mmr.IdProdotto AS MMR_ART_CODICE,'
      'mmr.Quantita AS MMR_QUANTITA,'
      'mmr.Quantita2 AS MMR_QUANTITA2,'
      'mmr.PrezzoMov AS MMR_PREZZO,'
      'MMD.ImportoDivisa AS MMR_IMPORTO,'
      'MMD.Importo AS MMR_IMPORTO_EURO,'
      
        'case when tmor.FlEsistenza = 1 then  mmr.Quantita ELSE 0  end AS' +
        ' MMR_QUANTITA_ENTRATE,'
      
        'case when tmor.FlEsistenza = -1 then  mmr.Quantita ELSE 0  end A' +
        'S MMR_QUANTITA_USCITE,'
      #39'NORMALE'#39' AS MMR_TIPO_MOVIMENTO,'
      'MMR.SCONTO1,'
      'MMR.SCONTO2,'
      '0 AS MMR_IMPORTO_SCONTO,'
      '0 AS MMR_IMPORTO_SPESE,'
      '0 AS MMR_IMPORTO_SPESE_EURO,'
      #39#39' AS MMR_TSM_CODICE,'
      #39#39' AS MMR_TSM_CODICE_ART,'
      'mmr.SubNumOrdine,'
      'mmr.IdMagazzino1,'
      'mmr.IdMagazzino2,'
      'case'
      'when mmr.SubNumOrdine = 0 then mmr.IdMagazzino1'
      'when mmr.SubNumOrdine = 1 then mmr.IdMagazzino2'
      'end AS MMR_TMA_CODICE,'
      #39#39' AS MMR_DESCRIZIONE'
      'FROM arc_conversioni.movmagazzinot mmt'
      
        'INNER JOIN arc_conversioni.movmagazzino mmr ON mmr.esercizio = m' +
        'mt.esercizio AND mmr.protocollo=mmt.protocollo'
      
        'LEFT JOIN arc_conversioni.movmagazzinod mmd ON mmd.kmovmag=mmr.K' +
        'Movmag'
      
        'LEFT JOIN ARC.COC cocc on cocc.codice_originale =CONCAT(mmt.IdCo' +
        'ntoTp, mmt.IdConto) AND cocc.tabella = '#39'cli'#39
      
        'LEFT JOIN ARC.COC cocf on cocf.codice_originale =CONCAT(mmt.IdCo' +
        'ntoTp, mmt.IdConto) AND cocf.tabella = '#39'frn'#39
      
        'INNER JOIN arc_conversioni.causalimagaz tmo ON tmo.IdCausale=mmt' +
        '.IdCausale'
      
        'INNER JOIN arc_conversioni.causalimagaz tmor ON tmor.IdCausale=m' +
        'mr.IdCausale'
      'WHERE'
      'MMT.ESERCIZIO>=2025  AND'
      'mmt.IdCausale='#39'050'#39' AND'
      'mmr.IdCausale=:tmo_codice'
      ''
      'ORDER BY mmt.DataMovimento, 2,3')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 435
    Top = 90
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tmo_codice'
        Value = nil
      end>
  end
  object mmt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from mmt'
      'where'
      'progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 520
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object mmr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from mmr'
      'where'
      'progressivo=:progressivo and'
      'riga=:riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 580
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'riga'
        Value = nil
      end>
  end
end
