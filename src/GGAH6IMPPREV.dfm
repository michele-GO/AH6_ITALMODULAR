inherited AH6IMPPREV: TAH6IMPPREV
  Caption = 'AH6IMPPREV'
  ClientHeight = 810
  ClientWidth = 903
  ExplicitWidth = 919
  ExplicitHeight = 869
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 903
    ExplicitWidth = 903
  end
  inherited statusbar: TStatusBar
    Top = 790
    Width = 903
    ExplicitTop = 790
    ExplicitWidth = 903
  end
  object pannello_conferma: TRzPanel [2]
    Left = 0
    Top = 752
    Width = 903
    Height = 38
    Align = alBottom
    BorderOuter = fsNone
    ParentColor = True
    TabOrder = 3
    object v_esci: TRzRapidFireButton
      Left = 100
      Top = 8
      Width = 86
      Height = 26
      Hint = 'esci dal programma'
      Caption = 'Esci'
      ImageIndex = 151
      Images = ARC.immagine_16
    end
    object v_conferma: TRzBitBtn
      Left = 5
      Top = 8
      Width = 86
      Height = 26
      Hint = 'conferma l'#39'elaborazione'
      Caption = 'Conferma'
      TabOrder = 0
      OnClick = v_confermaClick
      ImageIndex = 114
      Images = ARC.immagine_16
    end
  end
  object pannello_file: TRzPanel [3]
    Left = 0
    Top = 42
    Width = 903
    Height = 79
    Align = alTop
    BorderOuter = fsFlat
    Color = clWindow
    TabOrder = 1
    object v_nome_file: TRzDBEdit
      Left = 5
      Top = 13
      Width = 861
      Height = 21
      TabStop = False
      ReadOnly = True
      Color = clBtnFace
      ReadOnlyColor = clBtnFace
      TabOrder = 0
    end
    object v_sfoglia: TRzBitBtn
      Left = 5
      Top = 40
      Width = 110
      Caption = 'sfoglia'
      TabOrder = 1
      OnClick = v_sfogliaClick
    end
  end
  object pannello_righe: TRzPanel [4]
    Left = 0
    Top = 121
    Width = 903
    Height = 631
    Align = alClient
    BorderInner = fsFlat
    BorderOuter = fsFlat
    Color = clWindow
    TabOrder = 2
    object pannello_campi: TRzPanel
      Left = 2
      Top = 2
      Width = 899
      Height = 627
      Align = alClient
      BorderOuter = fsFlat
      Color = clWindow
      TabOrder = 0
      object tab_controllo: TRzPageControl
        Left = 1
        Top = 211
        Width = 897
        Height = 415
        Hint = ''
        ActivePage = TabSheet2
        Align = alClient
        TabIndex = 1
        TabOrder = 1
        FixedDimension = 19
        object TabSheet1: TRzTabSheet
          Color = clWindow
          Caption = 'log'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object v_log: TMemo
            Left = 0
            Top = 0
            Width = 893
            Height = 392
            Align = alClient
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
            Visible = False
            ExplicitLeft = 2
            ExplicitTop = 275
            ExplicitWidth = 895
            ExplicitHeight = 139
          end
        end
        object TabSheet2: TRzTabSheet
          Color = clWindow
          Caption = 'righe '
          object v_griglia: trzdbgrid_go
            Left = 0
            Top = 0
            Width = 893
            Height = 345
            Align = alClient
            DataSource = fdrighe_ds
            DrawingStyle = gdsClassic
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
          end
          object panno_righe_piede: TRzPanel
            Left = 0
            Top = 345
            Width = 893
            Height = 47
            Align = alBottom
            BorderOuter = fsFlat
            Color = clWindow
            TabOrder = 1
            object RzLabel5: TRzLabel
              Left = 490
              Top = 15
              Width = 154
              Height = 16
              Caption = 'totale preventivo netto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ShowAccelChar = False
              Transparent = True
            end
            object v_totale_preventivo_netto: trznumericedit_go
              Left = 680
              Top = 10
              Width = 90
              Height = 21
              Hint = '[Alt+Gi'#249'=apre calcolatrice]'
              TabStop = False
              Color = clLime
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              ReadOnlyColor = clLime
              ReadOnlyColorOnFocus = True
              TabOrder = 0
              AllowScientificNotation = False
              IntegersOnly = False
              DisplayFormat = ',0.00;-,0.00;#'
            end
          end
        end
      end
      object panno_righe_testata: TRzPanel
        Left = 1
        Top = 1
        Width = 897
        Height = 210
        Align = alTop
        BorderOuter = fsFlat
        Color = clWindow
        TabOrder = 0
        object Label14: TRzLabel
          Left = 5
          Top = 0
          Width = 31
          Height = 13
          Caption = 'cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label28: TRzLabel
          Left = 5
          Top = 40
          Width = 23
          Height = 13
          Caption = 'filiale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel1: TRzLabel
          Left = 5
          Top = 80
          Width = 50
          Height = 13
          Caption = 'commessa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel2: TRzLabel
          Left = 215
          Top = 165
          Width = 72
          Height = 13
          Caption = 'codice disegno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel3: TRzLabel
          Left = 5
          Top = 165
          Width = 74
          Height = 13
          Caption = 'data preventivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel4: TRzLabel
          Left = 355
          Top = 165
          Width = 82
          Height = 13
          Caption = 'riferimento cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel6: TRzLabel
          Left = 5
          Top = 120
          Width = 88
          Height = 13
          Caption = 'codice documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_cli_descrizione: trzdbeditdescrizione_go
          Left = 100
          Top = 15
          Width = 765
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = cli_ds
          DataField = 'descrizione'
          ReadOnly = True
          AutoSize = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
        end
        object v_ind_descrizione: trzdbeditdescrizione_go
          Left = 100
          Top = 55
          Width = 765
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = ind_ds
          DataField = 'descrizione'
          ReadOnly = True
          AutoSize = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
        end
        object v_cms_descrizione: trzdbeditdescrizione_go
          Left = 210
          Top = 95
          Width = 656
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = cms_ds
          DataField = 'descrizione'
          ReadOnly = True
          AutoSize = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 5
        end
        object v_cli_codice: trzedit_go
          Left = 5
          Top = 15
          Width = 90
          Height = 21
          Hint = 'codice cliente [F4 F5 F6]'
          Text = ''
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 8
          ParentFont = False
          ReadOnly = True
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnExit = v_cli_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_cli
          lookcollprogram = 'GESNOM'
          lookcolltable = 'CLI'
          lookcollvisname = 'CLI'
        end
        object v_cms_codice: trzedit_go
          Left = 5
          Top = 95
          Width = 196
          Height = 21
          Hint = 'codice commessa [F4 F5 F6]'
          Text = ''
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 8
          ParentFont = False
          ReadOnly = True
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 4
          OnExit = v_cms_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_cms
          lookcollprogram = 'GESCMS'
          lookcolltable = 'CMS'
          lookcollvisname = 'CMS'
        end
        object v_codice_disegno: TRzEdit
          Left = 210
          Top = 180
          Width = 121
          Height = 21
          Text = ''
          Color = clBtnFace
          ReadOnly = True
          ReadOnlyColor = clBtnFace
          TabOrder = 9
        end
        object v_data_preventivo: trzdatetimeedit_go
          Left = 5
          Top = 180
          Width = 81
          Height = 21
          Hint = '[Alt+Gi'#249'=apre calendario]'
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          EditType = etDate
          AutoSelect = False
          Color = clBtnFace
          DropButtonVisible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 8
        end
        object v_ind_codice: trzedit_go
          Left = 5
          Top = 55
          Width = 90
          Height = 21
          Hint = 'codice filiale [F4 F5 F6]'
          Text = ''
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 8
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnEnter = v_ind_codiceEnter
          OnExit = v_ind_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESINDINH'
          lookcolltable = 'IND'
          lookcollvisname = 'INDCLI'
        end
        object v_riferimento_cliente: TRzEdit
          Left = 355
          Top = 180
          Width = 511
          Height = 21
          Text = ''
          Color = clBtnFace
          ReadOnly = True
          ReadOnlyColor = clBtnFace
          TabOrder = 10
        end
        object v_tdo_codice: trzedit_go
          Left = 5
          Top = 135
          Width = 90
          Height = 21
          Hint = 'codice documento [F4 F5 F6]'
          Text = ''
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 8
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          OnExit = v_tdo_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTDO'
          lookcolltable = 'TDO'
          lookcollvisname = 'TDO'
        end
        object v_tdo_descrizione: trzdbeditdescrizione_go
          Left = 100
          Top = 135
          Width = 765
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tdo_ds
          DataField = 'descrizione'
          ReadOnly = True
          AutoSize = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 7
        end
      end
    end
  end
  inherited query: TMyQuery_go
    Left = 470
    Top = 5
  end
  inherited query_ds: TMyDataSource
    Left = 525
    Top = 10
  end
  object OpenDialog1: TOpenDialog
    Left = 705
    Top = 45
  end
  object cms: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select codice, concat(descrizione1,'#39' '#39', descrizione2) descrizion' +
        'e , cli_codice '
      'from cms'
      'where'
      'codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 400
    Top = 135
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select concat(descrizione1, '#39' '#39', descrizione2) descrizione , ind' +
        '_codice, obsoleto'
      'from cli'
      'where codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 445
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cli_ds: TMyDataSource
    DataSet = cli
    Left = 485
    Top = 115
  end
  object ind: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select concat(descrizione1, '#39' '#39', descrizione2) descrizione, obso' +
        'leto'
      'from ind'
      'where '
      'cli_codice=:cli_codice and'
      'indirizzo=:indirizzo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 565
    Top = 145
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'indirizzo'
        Value = nil
      end>
  end
  object ind_ds: TMyDataSource
    DataSet = ind
    Left = 600
    Top = 150
  end
  object cms_ds: TMyDataSource
    DataSet = cms
    Left = 505
    Top = 160
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select codice, descrizione1, obsoleto'
      'from art'
      'where codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 440
    Top = 350
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object FDrighe: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'riga'
        DataType = ftInteger
      end
      item
        Name = 'articolo'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'art_codice'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'quantita'
        DataType = ftFloat
      end
      item
        Name = 'prezzo'
        DataType = ftFloat
      end
      item
        Name = 'importo'
        DataType = ftFloat
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 590
    Top = 345
    Content = {
      4144425310000000E7020000FF00010001FF02FF0304000E0000004600440072
      00690067006800650005000E0000004600440072006900670068006500060000
      000000070000080032000000090000FF0AFF0B04000800000072006900670061
      0005000800000072006900670061000C00010000000E000D000F000110000111
      00011200011300011400011500080000007200690067006100FEFF0B04001000
      0000610072007400690063006F006C006F000500100000006100720074006900
      63006F006C006F000C00020000000E0016001700500000000F00011000011100
      01120001130001140001150010000000610072007400690063006F006C006F00
      180050000000FEFF0B0400140000006100720074005F0063006F006400690063
      0065000500140000006100720074005F0063006F0064006900630065000C0003
      0000000E0016001700320000000F000110000111000119001E00000063006F00
      64006900630065002000610072007400690063006F006C006F00120001130001
      1400011500140000006100720074005F0063006F006400690063006500180032
      000000FEFF0B0400100000007100750061006E00740069007400610005001000
      00007100750061006E0074006900740061000C00040000000E001A000F000110
      00011100011900100000007100750061006E00740069007400E0001200011300
      011400011500100000007100750061006E007400690074006100FEFF0B04000C
      0000007000720065007A007A006F0005000C0000007000720065007A007A006F
      000C00050000000E001A000F000110000111000112000113000114000115000C
      0000007000720065007A007A006F00FEFF0B04000E00000069006D0070006F00
      720074006F0005000E00000069006D0070006F00720074006F000C0006000000
      0E001A000F000110000111000112000113000114000115000E00000069006D00
      70006F00720074006F00FEFEFF1BFEFF1CFEFF1DFEFEFEFF1EFEFF1F20000100
      0000FF21FEFEFE0E004D0061006E0061006700650072001E0055007000640061
      007400650073005200650067006900730074007200790012005400610062006C
      0065004C006900730074000A005400610062006C00650008004E0061006D0065
      00140053006F0075007200630065004E0061006D0065000A0054006100620049
      004400240045006E0066006F0072006300650043006F006E0073007400720061
      0069006E00740073001E004D0069006E0069006D0075006D0043006100700061
      006300690074007900180043006800650063006B004E006F0074004E0075006C
      006C00140043006F006C0075006D006E004C006900730074000C0043006F006C
      0075006D006E00100053006F007500720063006500490044000E006400740049
      006E007400330032001000440061007400610054007900700065001400530065
      006100720063006800610062006C006500120041006C006C006F0077004E0075
      006C006C000800420061007300650014004F0041006C006C006F0077004E0075
      006C006C0012004F0049006E0055007000640061007400650010004F0049006E
      00570068006500720065001A004F0072006900670069006E0043006F006C004E
      0061006D00650018006400740041006E007300690053007400720069006E0067
      000800530069007A006500140053006F007500720063006500530069007A0065
      000E00430061007000740069006F006E0010006400740044006F00750062006C
      0065001C0043006F006E00730074007200610069006E0074004C006900730074
      00100056006900650077004C006900730074000E0052006F0077004C00690073
      0074001800520065006C006100740069006F006E004C006900730074001C0055
      007000640061007400650073004A006F00750072006E0061006C001200530061
      007600650050006F0069006E0074000E004300680061006E00670065007300}
    object FDrigheriga: TIntegerField
      DisplayWidth = 10
      FieldName = 'riga'
    end
    object FDrigheart_codice: TStringField
      DisplayLabel = 'codice articolo'
      DisplayWidth = 30
      FieldName = 'art_codice'
      Size = 50
    end
    object FDrighearticolo: TStringField
      DisplayWidth = 48
      FieldName = 'articolo'
      Size = 80
    end
    object FDrighequantita: TFloatField
      DisplayLabel = 'quantit'#224
      DisplayWidth = 10
      FieldName = 'quantita'
    end
    object FDrigheprezzo: TFloatField
      DisplayWidth = 10
      FieldName = 'prezzo'
    end
    object FDrigheimporto: TFloatField
      DisplayWidth = 10
      FieldName = 'importo'
    end
  end
  object FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink
    Left = 745
    Top = 433
  end
  object FDManager1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Left = 775
    Top = 373
  end
  object fdrighe_ds: TDataSource
    DataSet = FDrighe
    Left = 495
    Top = 418
  end
  object ovt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select ovt.progressivo, ovt.riferimento, ovt.cli_codice'
      'from ovt'
      'where '
      'ovt.ese_codice=:esercizio and'
      'ovt.cli_codice=:cli_codice and'
      'ovt.riferimento'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 385
    Top = 350
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'esercizio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end>
  end
  object tdo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tdo'
      'where '
      'codice=:codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 510
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tdo_ds: TMyDataSource
    DataSet = tdo
    Left = 545
    Top = 245
  end
end
