inherited CREORDP: TCREORDP
  Caption = 'CREORDP'
  ClientHeight = 699
  ClientWidth = 1105
  ExplicitWidth = 1121
  ExplicitHeight = 758
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1105
    ExplicitWidth = 1105
    object tool_commessa: TToolButton
      Left = 234
      Top = 0
      Hint = 'assegna commessa e sottocommessa'
      Caption = 'tool_commessa'
      Enabled = False
      ImageIndex = 124
      OnClick = tool_commessaClick
    end
    object tool_inserimento_excel: TToolButton
      Left = 273
      Top = 0
      Hint = 'inserimento elementi da file excel'
      Caption = 'tool_inserimento_excel'
      Enabled = False
      ImageIndex = 125
      OnClick = tool_inserimento_excelClick
    end
  end
  inherited statusbar: TStatusBar
    Top = 679
    Width = 1105
    ExplicitTop = 679
    ExplicitWidth = 1105
  end
  object Panel1: TRzPanel [2]
    Left = 0
    Top = 144
    Width = 865
    Height = 535
    Align = alClient
    Color = 15987699
    TabOrder = 3
    object v_griglia: TRzTreeView
      Left = 2
      Top = 2
      Width = 861
      Height = 500
      SelectionPen.Color = clBtnShadow
      Align = alClient
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      HideSelection = False
      Images = ARC.immagine_16
      Indent = 19
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 0
      TabStop = False
      OnChange = v_grigliaChange
      OnEnter = v_grigliaEnter
      OnExit = v_grigliaExit
      OnGetImageIndex = v_grigliaGetImageIndex
      OnGetSelectedIndex = v_grigliaGetImageIndex
    end
    object Panel4: TRzPanel
      Left = 2
      Top = 502
      Width = 861
      Height = 31
      Align = alBottom
      BorderOuter = fsFlat
      ParentColor = True
      TabOrder = 1
      object v_art_codice_nodo: trzedit_go
        Left = 5
        Top = 5
        Width = 196
        Height = 21
        TabStop = False
        Text = ''
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        ReadOnly = True
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 0
        OnExit = v_art_codiceExit
      end
      object v_quantita_nodo: trznumericedit_go
        Left = 730
        Top = 5
        Width = 91
        Height = 21
        Hint = '[Alt+Gi'#249'=apre calcolatrice]'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ReadOnly = True
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 1
        AllowScientificNotation = False
        IntegersOnly = False
        DisplayFormat = ',0.0000;-,0.0000;#'
        decimalplaces = 4
      end
      object v_art_descrizione_nodo: trzedit_go
        Left = 205
        Top = 5
        Width = 521
        Height = 21
        TabStop = False
        Text = ''
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 2
        OnExit = v_art_codiceExit
      end
    end
  end
  object Panel2: TRzPanel [3]
    Left = 865
    Top = 144
    Width = 240
    Height = 535
    Align = alRight
    Color = 15987699
    TabOrder = 4
    object Label1: TRzLabel
      Left = 5
      Top = 458
      Width = 67
      Height = 13
      Caption = 'esist. deposito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label4: TRzLabel
      Left = 5
      Top = 493
      Width = 61
      Height = 13
      Caption = 'esist. globale'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label2: TRzLabel
      Left = 95
      Top = 493
      Width = 72
      Height = 13
      Caption = 'esist. principale'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label5: TRzLabel
      Left = 5
      Top = 423
      Width = 132
      Height = 13
      Caption = 'deposito finito/materia prima'
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
      Left = 95
      Top = 458
      Width = 64
      Height = 13
      Caption = 'app. deposito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object v_esistenza_tma: trznumericedit_go
      Left = 5
      Top = 473
      Width = 86
      Height = 21
      Hint = '[Alt+Gi'#249'=apre calcolatrice]'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 12
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      AllowScientificNotation = False
      IntegersOnly = False
      DisplayFormat = ',0.0000;-,0.0000;0.0000'
      decimalplaces = 5
    end
    object v_esistenza: trznumericedit_go
      Left = 5
      Top = 508
      Width = 86
      Height = 21
      Hint = '[Alt+Gi'#249'=apre calcolatrice]'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 12
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 1
      AllowScientificNotation = False
      IntegersOnly = False
      DisplayFormat = ',0.0000;-,0.0000;0.0000'
      decimalplaces = 4
    end
    object v_esistenza_principale: trznumericedit_go
      Left = 95
      Top = 508
      Width = 86
      Height = 21
      Hint = '[Alt+Gi'#249'=apre calcolatrice]'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 12
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 2
      AllowScientificNotation = False
      IntegersOnly = False
      DisplayFormat = ',0.0000;-,0.0000;0.0000'
      decimalplaces = 4
    end
    object v_tma_codice_finito: trzedit_go
      Left = 5
      Top = 438
      Width = 86
      Height = 21
      TabStop = False
      Text = ''
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 3
    end
    object v_tma_codice_materia_prima: trzedit_go
      Left = 95
      Top = 438
      Width = 86
      Height = 21
      TabStop = False
      Text = ''
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 4
    end
    object v_avanzamento_fasi: TRzCheckBox
      Left = 5
      Top = 401
      Width = 102
      Height = 15
      Caption = 'avanzamento fasi'
      Enabled = False
      State = cbUnchecked
      TabOrder = 5
      TabStop = False
    end
    object v_fasi_non_sequenziali: TRzCheckBox
      Left = 120
      Top = 401
      Width = 111
      Height = 15
      Caption = 'fasi non sequenziali'
      Enabled = False
      State = cbUnchecked
      TabOrder = 6
      TabStop = False
    end
    object v_approntato_tma: trznumericedit_go
      Left = 95
      Top = 473
      Width = 86
      Height = 21
      Hint = '[Alt+Gi'#249'=apre calcolatrice]'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 12
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 7
      AllowScientificNotation = False
      IntegersOnly = False
      DisplayFormat = ',0.0000;-,0.0000;0.0000'
      decimalplaces = 5
    end
    object pannello_destra_PanelGroup: TCategoryPanelGroup
      Left = 2
      Top = 2
      Width = 236
      Height = 394
      VertScrollBar.Tracking = True
      Align = alTop
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = True
      GradientBaseColor = clWhite
      GradientColor = 13608837
      GradientDirection = gdHorizontal
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -12
      HeaderFont.Name = 'Segoe UI'
      HeaderFont.Style = []
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 8
      object pannello_destra_01: TCategoryPanel
        Top = 306
        Height = 70
        Caption = 'cerca articolo alternativo'
        Color = clWindow
        TabOrder = 0
        object v_equivalenti_filtro: TRzRapidFireButton
          Left = 0
          Top = 20
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'alternativo - filtro finito'
          ImageIndex = 42
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_equivalenti_filtro_Click
          ExplicitTop = 5
          ExplicitWidth = 418
        end
        object v_equivalenti: TRzRapidFireButton
          Left = 0
          Top = 0
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'alternativo [F2]'
          ImageIndex = 42
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_equivalenti_Click
          ExplicitTop = 5
          ExplicitWidth = 418
        end
      end
      object CategoryPanel1: TCategoryPanel
        Top = 0
        Height = 306
        Caption = 'funzioni base'
        Color = clWindow
        TabOrder = 1
        object v_distinta_base: TRzRapidFireButton
          Left = 0
          Top = 0
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'distinta base [F1]'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_distinta_base_Click
          ExplicitLeft = 15
          ExplicitTop = -5
          ExplicitWidth = 288
        end
        object v_data_inizio_lavorazione: TRzRapidFireButton
          Left = 0
          Top = 260
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'data inizio lavorazione'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_data_inizio_lavorazione_Click
          ExplicitTop = 5
          ExplicitWidth = 288
        end
        object v_comprimi: TRzRapidFireButton
          Left = 0
          Top = 220
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'comprimi nodi'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_comprimi_Click
          ExplicitTop = 5
          ExplicitWidth = 288
        end
        object v_espandi: TRzRapidFireButton
          Left = 0
          Top = 200
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'espandi nodi'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_espandi_Click
          ExplicitTop = 5
          ExplicitWidth = 288
        end
        object v_crea_ordini: TRzRapidFireButton
          Left = 0
          Top = 180
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'crea ordini produzione [F12]'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_crea_ordini_Click
          ExplicitTop = 5
          ExplicitWidth = 288
        end
        object v_cruscotto: TRzRapidFireButton
          Left = 0
          Top = 160
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'cruscotto articolo [F11]'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_cruscotto_Click
          ExplicitTop = 5
          ExplicitWidth = 288
        end
        object v_modifica_quantita: TRzRapidFireButton
          Left = 0
          Top = 140
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'modifica quantit'#224' [F9]'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_modifica_quantita_Click
          ExplicitTop = 5
          ExplicitWidth = 288
        end
        object v_esplodi_tutto: TRzRapidFireButton
          Left = 0
          Top = 120
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'esplodi tutti i livelli [F8]'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_esplodi_tutto_Click
          ExplicitTop = 5
          ExplicitWidth = 288
        end
        object v_cancella_sottoelementi: TRzRapidFireButton
          Left = 0
          Top = 100
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'cancella sottoelementi [F7]'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_cancella_sottoelementi_Click
          ExplicitTop = 5
          ExplicitWidth = 288
        end
        object v_cancella: TRzRapidFireButton
          Left = 0
          Top = 80
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'cancella elemento [F6]'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_cancella_Click
          ExplicitTop = 5
          ExplicitWidth = 288
        end
        object v_inserisci_sottoelemento: TRzRapidFireButton
          Left = 0
          Top = 60
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'inserisci sottoelemento [F5]'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_inserisci_sottoelemento_Click
          ExplicitTop = 5
          ExplicitWidth = 288
        end
        object v_inserisci: TRzRapidFireButton
          Left = 0
          Top = 40
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'inserisci elemento [F4]'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_inserisci_Click
          ExplicitTop = 5
          ExplicitWidth = 288
        end
        object v_esplodi: TRzRapidFireButton
          Left = 0
          Top = 20
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'esplodi distinta base [F3]'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_esplodi_Click
          ExplicitTop = 5
          ExplicitWidth = 288
        end
        object v_varia_quantita: TRzRapidFireButton
          Left = 0
          Top = 240
          Width = 230
          Height = 20
          Cursor = crHandPoint
          Align = alTop
          Caption = 'varia quantit'#224' da produrre'
          ImageIndex = 39
          Images = ARC.immagine_16
          Flat = True
          Margin = 5
          Transparent = False
          OnClick = v_varia_quantita_Click
          ExplicitTop = 5
          ExplicitWidth = 288
        end
      end
    end
  end
  object RzPanel1: TRzPanel [4]
    Left = 0
    Top = 42
    Width = 1105
    Height = 102
    Align = alTop
    BorderOuter = fsNone
    ParentColor = True
    TabOrder = 2
    DesignSize = (
      1105
      102)
    object pannello_commessa: TRzPanel
      Left = 0
      Top = 0
      Width = 1105
      Height = 102
      Align = alClient
      BorderOuter = fsNone
      ParentColor = True
      TabOrder = 0
      OnEnter = pannello_commessaEnter
      OnExit = pannello_commessaExit
      object RzLabel2: TRzLabel
        Left = 5
        Top = 26
        Width = 34
        Height = 13
        Caption = 'articolo'
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
        Left = 705
        Top = 26
        Width = 38
        Height = 13
        Caption = 'quantit'#224
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
        Left = 815
        Top = 26
        Width = 71
        Height = 13
        Caption = 'data consegna'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object RzLabel5: TRzLabel
        Left = 5
        Top = 61
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
      object RzLabel6: TRzLabel
        Left = 470
        Top = 61
        Width = 38
        Height = 13
        Caption = 'variante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object RzLabel7: TRzLabel
        Left = 815
        Top = 61
        Width = 70
        Height = 13
        Caption = 'tipo esplosione'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object v_selezione: trzcombobox_go
        Left = 5
        Top = 5
        Width = 91
        Height = 21
        Hint = 'tipo selezione'
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        FlatButtons = True
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 0
        Text = 'articolo'
        OnClick = v_selezioneClick
        Items.Strings = (
          'articolo'
          'ordine')
        ItemIndex = 0
      end
      object v_quantita: trznumericedit_go
        Left = 705
        Top = 40
        Width = 101
        Height = 21
        Hint = 'quantit'#224' da produrre'
        Margins.Left = 1
        Margins.Top = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 6
        AllowScientificNotation = False
        IntegersOnly = False
        DisplayFormat = ',0.0000;-,0.0000;#'
        decimalplaces = 4
      end
      object v_ovr_progressivo: trznumericedit_go
        Left = 100
        Top = 5
        Width = 91
        Height = 21
        Hint = 'ordine cliente [F4 F5 F6]'
        Margins.Left = 1
        Margins.Top = 1
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 1
        OnEnter = v_ovr_progressivoEnter
        OnExit = v_ovr_progressivoExit
        AllowScientificNotation = False
        IntegersOnly = False
        DisplayFormat = '#'
        decimalplaces = 4
        lookcolldatabase = 'arc.arcdit'
        lookcolltable = 'OVT'
        lookcollvisname = 'OVTAPE'
      end
      object v_ovr_riga: trznumericedit_go
        Left = 195
        Top = 5
        Width = 51
        Height = 21
        Hint = 'riga ordine cliente [F4 F5 F6]'
        Margins.Left = 1
        Margins.Top = 1
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 2
        OnEnter = v_ovr_rigaEnter
        OnExit = v_ovr_rigaExit
        AllowScientificNotation = False
        IntegersOnly = False
        DisplayFormat = '#'
        decimalplaces = 4
        lookcolldatabase = 'arc.arcdit'
        lookcolltable = 'OVR'
        lookcollvisname = 'OVR'
      end
      object RzDBEditDescrizione_go4: trzdbeditdescrizione_go
        Left = 250
        Top = 5
        Width = 446
        Height = 21
        Hint = '-'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = ovt_ds
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
        TabOrder = 11
      end
      object v_art_codice: trzedit_go
        Left = 5
        Top = 40
        Width = 146
        Height = 21
        Hint = 'codice articolo [F4 F5 F6]'
        Text = ''
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 5
        OnExit = v_art_codiceExit
        lookcolldatabase = 'arc.arcdit'
        lookcollpopupmenu = ARC.pop_arc_art
        lookcolltable = 'ART'
        lookcollvisname = 'ART'
      end
      object v_art_descrizione: trzdbeditdescrizione_go
        Left = 155
        Top = 40
        Width = 541
        Height = 21
        Hint = '-'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = art_01_ds
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
        TabOrder = 12
      end
      object v_top_codice: trzedit_go
        Left = 5
        Top = 76
        Width = 50
        Height = 21
        Hint = 'codice documento di produzione [F4 F5 F6]'
        Text = ''
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 4
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 8
        OnExit = v_top_codiceExit
        lookcolldatabase = 'ARC.ARCDIT'
        lookcollpopupmenu = ARC.pop_arc
        lookcollprogram = 'GESTOP'
        lookcolltable = 'TOP'
        lookcollvisname = 'TOP'
      end
      object RzDBEditDescrizione_go5: trzdbeditdescrizione_go
        Left = 60
        Top = 76
        Width = 266
        Height = 21
        Hint = '-'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = top_ds
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
        TabOrder = 13
      end
      object v_data_consegna: trzdatetimeedit_go
        Left = 815
        Top = 40
        Width = 101
        Height = 21
        Hint = 'data consegna richiesta [Alt+Gi'#249' per aprire il calendario]'
        CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
        CaptionTodayBtn = 'oggi'
        CaptionClearBtn = 'annulla'
        EditType = etDate
        AutoSelect = False
        DropButtonVisible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 7
      end
      object v_anaordp: TRzCheckBox
        Left = 705
        Top = 8
        Width = 82
        Height = 15
        Hint = 
          'spunta per eseguire direttamente in programma di analisi ordini ' +
          'di produzione ANAORDP al termine della creazione dell'#39'ordine'
        Caption = 'esegui analisi'
        State = cbUnchecked
        TabOrder = 3
        TabStop = False
      end
      object v_usa_equivalenti: TRzCheckBox
        Left = 815
        Top = 8
        Width = 90
        Height = 15
        Hint = 
          'spunta per proporre automaticamente gli articoli equivalenti dei' +
          ' componenti'
        Caption = 'usa equivalenti'
        State = cbUnchecked
        TabOrder = 4
        TabStop = False
        Visible = False
      end
      object v_tvr_codice: trzedit_go
        Left = 470
        Top = 76
        Width = 91
        Height = 21
        Hint = 'codice variante [F4 F5 F6]'
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
        TabOrder = 10
        OnEnter = v_tvr_codiceEnter
        OnExit = v_tvr_codiceExit
        lookcolldatabase = 'ARC.ARCDIT'
        lookcollpopupmenu = ARC.pop_arc
        lookcollprogram = 'GESTVR'
        lookcolltable = 'TVR'
        lookcollvisname = 'TVRART'
      end
      object trzdbeditdescrizione_go1: trzdbeditdescrizione_go
        Left = 565
        Top = 76
        Width = 241
        Height = 21
        Hint = '-'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = tvr_ds
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
        TabOrder = 14
      end
      object v_tipo_esplosione: trzcombobox_go
        Left = 815
        Top = 75
        Width = 201
        Height = 21
        Hint = 'tipo esplosione'
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        FlatButtons = True
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 15
        Text = 'nessuno'
        Items.Strings = (
          'nessuno'
          'solo primo livello'
          'tutti i livelli fino alle materie prime'
          'generazione ordini per tutti i semilavorati')
        ItemIndex = 0
      end
      object v_top_codice_ordine: TRzCheckBox
        Left = 335
        Top = 79
        Width = 125
        Height = 15
        Hint = 'richiedi il codice documento per ogni ordine'
        Caption = 'richiedi per ogni ordine'
        State = cbUnchecked
        TabOrder = 9
      end
    end
    object v_conferma: TRzBitBtn
      Left = 1006
      Top = 0
      Width = 99
      Height = 61
      Hint = 'conferma l'#39'elaborazione'
      Anchors = [akTop, akRight]
      Caption = 'Conferma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = v_confermaClick
      ImageIndex = 80
      Images = ARC.immagine_24
      Layout = blGlyphTop
    end
  end
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select ovt.*, tdo.descrizione tdo_descrizione'
      'from ovt'
      'inner join tdo on tdo.codice = ovt.tdo_codice'
      
        'where ovt.cli_codice = :cli_codice and ovt.situazione = '#39'inserit' +
        'o'#39
      
        'order by ovt.tdo_codice, ovt.data_documento, ovt.numero_document' +
        'o')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end>
  end
  object cms: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select concat(trim(cli.descrizione1), '#39' '#39', trim(cli.citta), '#39' '#39',' +
        ' trim(cms.descrizione1), '#39' '#39', cms.descrizione2) descrizione,'
      'cms.tma_codice'
      'from cms'
      'inner join cli on cli.codice = cms.cli_codice'
      'where cms.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 305
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cms_ds: TMyDataSource
    DataSet = cms
    Left = 325
    Top = 65526
  end
  object cmt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, tma_codice'
      'from cmt'
      'where cms_codice = :cms_codice and tipologia = :tipologia')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 345
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cms_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipologia'
        Value = nil
      end>
  end
  object cmt_ds: TMyDataSource
    DataSet = cmt
    Left = 370
    Top = 65526
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select concat(trim(descrizione1), '#39' '#39', descrizione2) descrizione' +
        ', tcn_codice, tum_codice,'
      
        'tum_codice_dsb, operazione_coefficiente_dsb, tum_coefficiente_ds' +
        'b'
      'from art'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 415
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object dsb: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select dsb.art_codice_figlio, concat(trim(art.descrizione1), '#39' '#39 +
        ', art.descrizione2) art_descrizione,'
      
        'dsb.quantita, dsb.prezzo, dsb.descrizione, dsb.tma_codice, dsb.s' +
        'equenza, dsb.art_codice_padre'
      'from dsb'
      'inner join art on art.codice = dsb.art_codice_figlio'
      'where dsb.art_codice_padre = :art_codice_padre'
      
        'and (dsb.data_inizio <= current_date or data_inizio is null) and' +
        ' dsb.data_fine >= current_date'
      'order by dsb.sequenza, dsb.art_codice_figlio')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 445
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end>
  end
  object figli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id'
      'from dsb'
      'where art_codice_padre = :art_codice_padre'
      'limit 1'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 475
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end>
  end
  object art_01: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select art.*, concat(trim(descrizione1), '#39' '#39', descrizione2) desc' +
        'rizione'
      'from art'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 505
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_01_ds: TMyDataSource
    DataSet = art_01
    Left = 525
    Top = 65526
  end
  object ovt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select concat('#39'cliente '#39', ovt.cli_codice, '#39' data '#39', cast(ovt.dat' +
        'a_documento as char(10)), '#39' numero '#39','
      
        'cast(ovt.numero_documento as char(9))) descrizione, data_consegn' +
        'a'
      'from ovt'
      'where ovt.progressivo = :progressivo and'
      '(situazione = '#39'inserito'#39' or situazione = '#39'evaso parziale'#39')')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 600
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object ovt_ds: TMyDataSource
    DataSet = ovt
    Left = 620
    Top = 65526
  end
  object ovr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select progressivo, riga, art_codice, data_consegna,'
      'quantita - coalesce((select sum(quantita) from opt'
      
        'where documento_origine = '#39'ordine ven'#39' and doc_progressivo_origi' +
        'ne = ovr.progressivo and'
      'doc_riga_origine = ovr.riga), 0) quantita,'
      'cms_codice, tipologia, data_consegna,'
      '(select sum(quantita) from opt'
      
        'where documento_origine = '#39'ordine ven'#39' and doc_progressivo_origi' +
        'ne = ovr.progressivo and'
      'doc_riga_origine = ovr.riga) quantita_produzione,'
      '(select count(id) from opt'
      
        'where documento_origine = '#39'ordine ven'#39' and doc_progressivo_origi' +
        'ne = ovr.progressivo and'
      'doc_riga_origine = ovr.riga) numero, note'
      'from ovr'
      'where progressivo = :progressivo and riga = :riga and'
      '(situazione = '#39'inserito'#39' or situazione = '#39'evaso parziale'#39')')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 640
    Top = 65526
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
  object ovr_ds: TMyDataSource
    DataSet = ovr
    Left = 660
    Top = 65526
  end
  object opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'insert into opt'
      
        '(progressivo, art_codice, tmo_codice_finiti, tma_codice_finiti, ' +
        'tmo_codice_materie_prime, fasi_non_sequenziali,'
      
        'tma_codice_materie_prime, quantita, data_consegna, data_document' +
        'o, numero_documento, serie_documento,'
      
        'progressivo_semilavorato, art_codice_semilavorato, tipo_esplosio' +
        'ne, cms_codice, tipologia, frn_codice,'
      
        'ovr_progressivo, ovr_riga, tda_codice_ordine, art_codice_finito,' +
        ' progressivo_finito,'
      
        'documento_origine, doc_progressivo_origine, doc_riga_origine, de' +
        'scrizione, lot_codice, formula, avanzamento_fasi, top_codice)'
      'values'
      
        '(:progressivo, :art_codice, :tmo_codice_finiti, :tma_codice_fini' +
        'ti, :tmo_codice_materie_prime, :fasi_non_sequenziali,'
      
        ':tma_codice_materie_prime, :quantita, :data_consegna, :data_docu' +
        'mento, :numero_documento, :serie_documento,'
      
        ':progressivo_semilavorato, :art_codice_semilavorato, :tipo_esplo' +
        'sione, :cms_codice, :tipologia, :frn_codice,'
      
        ':ovr_progressivo, :ovr_riga, :tda_codice_ordine, :art_codice_fin' +
        'ito, :progressivo_finito,'
      
        ':documento_origine, :doc_progressivo_origine, :doc_riga_origine,' +
        ' :descrizione, :lot_codice, :formula, :avanzamento_fasi, :top_co' +
        'dice)')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 750
    Top = 65526
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
        Name = 'tmo_codice_finiti'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice_finiti'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tmo_codice_materie_prime'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fasi_non_sequenziali'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice_materie_prime'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_consegna'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'numero_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'serie_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo_semilavorato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_semilavorato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_esplosione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cms_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipologia'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'frn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_riga'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice_ordine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_finito'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo_finito'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'documento_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'doc_progressivo_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'doc_riga_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'descrizione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lot_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'formula'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'avanzamento_fasi'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'top_codice'
        Value = nil
      end>
  end
  object opr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'insert into opr'
      
        '(progressivo, riga, art_codice, quantita, semilavorato, tma_codi' +
        'ce, note, quantita_approntata,'
      'costo_unitario, assistenza_tecnica, sequenza_dsb)'
      'values'
      
        '(:progressivo, :riga, :art_codice, :quantita, :semilavorato, :tm' +
        'a_codice, :note, :quantita_approntata,'
      ':costo_unitario, :assistenza_tecnica, :sequenza_dsb)')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 780
    Top = 65526
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
        Name = 'semilavorato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'note'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita_approntata'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'costo_unitario'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'assistenza_tecnica'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sequenza_dsb'
        Value = nil
      end>
  end
  object cla: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select cla.*, fas.tipo_operazione fas_tipo_operazione, fas.mac_c' +
        'odice'
      'from cla'
      'inner join fas on fas.codice = cla.fas_codice'
      'where cla.art_codice = :art_codice'
      'order by cla.sequenza')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 810
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object opc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'insert into opc'
      
        '(progressivo, sequenza, fas_codice, frn_codice, quantita_attrezz' +
        'aggio, quantita, tipo_operazione, costo_totale, note, mac_codice' +
        ')'
      'values'
      
        '(:progressivo, :sequenza, :fas_codice, :frn_codice, :quantita_at' +
        'trezzaggio, :quantita, :tipo_operazione, :costo_totale, :note, :' +
        'mac_codice)')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 840
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sequenza'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fas_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'frn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita_attrezzaggio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_operazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'costo_totale'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'note'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mac_codice'
        Value = nil
      end>
  end
  object mag: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select art.codice,'
      
        '(select esistenza from mag where mag.art_codice = art.codice and' +
        ' mag.tma_codice = :tma_codice) esistenza_tma,'
      
        '(select approntato from mag where mag.art_codice = art.codice an' +
        'd mag.tma_codice = :tma_codice) approntato_tma,'
      
        '(select sum(esistenza) from mag inner join tma on tma.codice = m' +
        'ag.tma_codice'
      
        'where mag.art_codice = art.codice and tma.proprieta = '#39'si'#39') esis' +
        'tenza,'
      
        '(select esistenza from mag where mag.art_codice = art.codice and' +
        ' mag.tma_codice = :tma_codice_principale) esistenza_principale'
      'from art'
      'where art.codice = :art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 870
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice_principale'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object mag_approntato: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select esistenza, approntato'
      'from mag'
      'where art_codice = :art_codice and tma_codice = :tma_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 900
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end>
  end
  object art_costo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from art'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 930
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object frn_rda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from frn'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 955
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_lot: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select lotti'
      'from art'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 750
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_lot: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select lotti'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 780
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object OpenDialog: TOpenDialog
    Title = 'Importazione quotazioni fornitori'
    Left = 600
    Top = 15
  end
  object top: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from top'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 810
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object top_ds: TMyDataSource
    DataSet = top
    Left = 829
    Top = 15
  end
  object top_vista: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from vista_top'
      'where ditta = :ditta and top_codice = :top_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 855
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ditta'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'top_codice'
        Value = nil
      end>
  end
  object mag_art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select mag.tma_codice,mag.esistenza'
      'from mag'
      'inner join tma on tma.codice=mag.tma_codice'
      'where '
      'art_codice=:art_codice and'
      'tma.proprieta='#39'si'#39
      'order by mag.art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 885
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object equ: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id '
      'from equ'
      'where art_codice = :art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 915
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object dsb_equ: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select distinct equ.art_codice_equivalente, concat(trim(art.desc' +
        'rizione1), '#39' '#39', art.descrizione2) art_descrizione'
      'from equ'
      'inner join art on art.codice = equ.art_codice_equivalente'
      
        'inner join dsb on dsb.art_codice_padre = equ.art_codice_equivale' +
        'nte'
      'where equ.art_codice = :art_codice'
      'order by 1'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 940
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object art_opt_esiste: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select group_concat(opt.progressivo separator '#39' ; '#39') progressivo'
      'from opt'
      
        'where (opt.situazione = '#39'inserito'#39' or opt.situazione = '#39'evaso pa' +
        'rziale'#39')'
      'and opt.art_codice = :art_codice'
      'and opt.documento_origine <> '#39'ordine produzione'#39
      'and (:ovr_progressivo = 0 or (:ovr_progressivo <> 0 and'
      
        '(select ovt.cli_codice from ovt where ovt.progressivo = opt.ovr_' +
        'progressivo) = '
      
        '(select ovt.cli_codice from ovt where ovt.progressivo = :ovr_pro' +
        'gressivo)))'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 965
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo'
        Value = nil
      end>
  end
  object tvr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, art_codice'
      'from tvr'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 680
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tvr_ds: TMyDataSource
    DataSet = tvr
    Left = 700
    Top = 65526
  end
  object dsbv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select dsbv.art_codice, coalesce(concat(trim(art.descrizione1), ' +
        #39' '#39', art.descrizione2), '#39#39') art_descrizione'
      'from dsbv'
      'inner join dsb on dsb.id = dsbv.id_dsb'
      'left join art on art.codice = dsbv.art_codice'
      'where dsbv.tvr_codice = :tvr_codice'
      'and dsb.art_codice_padre = :art_codice_padre'
      'and dsb.sequenza = :sequenza'
      'and dsb.art_codice_figlio = :art_codice_figlio'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 675
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tvr_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sequenza'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_figlio'
        Value = nil
      end>
  end
  object artv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id'
      'from artv'
      'where art_codice = :art_codice and tvr_codice = :tvr_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 650
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tvr_codice'
        Value = nil
      end>
  end
  object opc_data: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select min(data_ora_inizio) data_inizio'
      'from opc'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 625
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
end
