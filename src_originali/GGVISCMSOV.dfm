inherited VISCMSOV: TVISCMSOV
  Left = 206
  Top = 164
  Caption = 'VISCMSOV'
  ClientHeight = 648
  ClientWidth = 992
  ExplicitWidth = 1008
  ExplicitHeight = 707
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 992
    ExplicitWidth = 992
    object tool_situazione: TRzRapidFireButton
      Left = 234
      Top = 0
      Width = 142
      Height = 38
      Caption = 'anche ordini chiusi'
      ImageIndex = 80
      Images = ARC.immagine_24
      OnClick = tool_situazioneClick
    end
  end
  inherited statusbar: TStatusBar
    Top = 628
    Width = 992
    ExplicitTop = 628
    ExplicitWidth = 992
  end
  object tab_control: TRzPageControl [2]
    Left = 0
    Top = 40
    Width = 992
    Height = 588
    Hint = ''
    ActivePage = tab_interventi
    Align = alClient
    CutCornerSize = 3
    ShowShadow = False
    TabIndex = 4
    TabOrder = 2
    TabStyle = tsCutCorner
    OnChange = tab_controlChange
    FixedDimension = 20
    object tab_clienti: TRzTabSheet
      Color = clWindow
      Caption = 'ordini clienti'
      object v_griglia_clienti: trzdbgrid_go
        Left = 0
        Top = 0
        Width = 990
        Height = 566
        Hint = '[Invio o doppio click = assegna progressivo]'
        Align = alClient
        DataSource = clienti_ds
        DrawingStyle = gdsClassic
        PopupMenu = Popup_griglia
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnDblClick = v_griglia_clientiDblClick
        OnKeyDown = v_griglia_clientiKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'tipologia'
            Title.Caption = 'sottocommessa'
            Title.Color = clYellow
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'data_documento'
            Title.Alignment = taCenter
            Title.Caption = 'data'
            Title.Color = clYellow
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero_documento'
            Title.Alignment = taRightJustify
            Title.Caption = 'numero'
            Title.Color = clYellow
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'serie_documento'
            Title.Caption = 'serie'
            Title.Color = clYellow
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codice_cli_for'
            Title.Caption = 'cliente'
            Title.Color = clYellow
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_for_descrizione'
            Title.Caption = 'descrizione'
            Title.Color = clYellow
            Width = 257
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descrizione'
            Title.Caption = 'localit'#224
            Title.Color = clYellow
            Width = 226
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'importo'
            Title.Alignment = taRightJustify
            Title.Color = clYellow
            Width = 75
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'importo_evaso'
            Title.Alignment = taRightJustify
            Title.Caption = 'importo evaso'
            Title.Color = clYellow
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'art_codice'
            Title.Caption = 'articolo'
            Title.Color = clYellow
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'art_descrizione'
            Title.Caption = 'descrizione'
            Title.Color = clYellow
            Width = 300
            Visible = True
          end>
      end
    end
    object tab_fornitori: TRzTabSheet
      Color = clWindow
      ImageIndex = 1
      Caption = 'ordini fornitori'
      object v_griglia_fornitori: trzdbgrid_go
        Left = 0
        Top = 0
        Width = 990
        Height = 566
        Hint = '[Invio o doppio click = assegna progressivo]'
        Align = alClient
        DataSource = fornitori_ds
        DrawingStyle = gdsClassic
        PopupMenu = Popup_griglia
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnDblClick = v_griglia_fornitoriDblClick
        OnKeyDown = v_griglia_fornitoriKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'tipologia'
            Title.Caption = 'sottocommessa'
            Title.Color = clYellow
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'data_documento'
            Title.Alignment = taCenter
            Title.Caption = 'data'
            Title.Color = clYellow
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero_documento'
            Title.Alignment = taRightJustify
            Title.Caption = 'numero'
            Title.Color = clYellow
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'serie_documento'
            Title.Caption = 'serie'
            Title.Color = clYellow
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codice_cli_for'
            Title.Caption = 'fornitore'
            Title.Color = clYellow
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_for_descrizione'
            Title.Caption = 'descrizione'
            Title.Color = clYellow
            Width = 257
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descrizione'
            Title.Caption = 'localit'#224
            Title.Color = clYellow
            Width = 226
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'importo'
            Title.Alignment = taRightJustify
            Title.Color = clYellow
            Width = 75
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'importo_evaso'
            Title.Alignment = taRightJustify
            Title.Caption = 'importo evaso'
            Title.Color = clYellow
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'art_codice'
            Title.Caption = 'articolo'
            Title.Color = clYellow
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'art_descrizione'
            Title.Caption = 'descrizione'
            Title.Color = clYellow
            Width = 300
            Visible = True
          end>
      end
    end
    object tab_produzione: TRzTabSheet
      Color = clWindow
      ImageIndex = 2
      Caption = 'ordini produzione'
      object v_griglia_produzione: trzdbgrid_go
        Left = 0
        Top = 0
        Width = 990
        Height = 566
        Hint = '[Invio o doppio click = assegna progressivo]'
        Align = alClient
        DataSource = produzione_ds
        DrawingStyle = gdsClassic
        PopupMenu = Popup_griglia
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnDblClick = v_griglia_produzioneDblClick
        OnKeyDown = v_griglia_produzioneKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'tipologia'
            Title.Caption = 'sottocommessa'
            Title.Color = clYellow
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'data_documento'
            Title.Alignment = taCenter
            Title.Caption = 'data'
            Title.Color = clYellow
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero_documento'
            Title.Alignment = taRightJustify
            Title.Caption = 'numero'
            Title.Color = clYellow
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'art_codice'
            Title.Caption = 'articolo produzione'
            Title.Color = clYellow
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'art_descrizione'
            Title.Caption = 'descrizione'
            Title.Color = clYellow
            Width = 307
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'quantita'
            Title.Alignment = taRightJustify
            Title.Caption = 'quantit'#224
            Title.Color = clYellow
            Width = 90
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'quantita_evasa'
            Title.Alignment = taRightJustify
            Title.Caption = 'quantit'#224' evasa'
            Title.Color = clYellow
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lot_codice'
            Title.Caption = 'lotto'
            Title.Color = clYellow
            Width = 121
            Visible = True
          end>
      end
    end
    object tab_assistenza: TRzTabSheet
      Color = clWindow
      ImageIndex = 3
      Caption = 'configurazioni assistenza'
      object v_griglia_assistenza: trzdbgrid_go
        Left = 0
        Top = 0
        Width = 990
        Height = 566
        Hint = '[Invio o doppio click = assegna progressivo]'
        Align = alClient
        DataSource = assistenza_ds
        DrawingStyle = gdsClassic
        PopupMenu = Popup_griglia
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnDblClick = v_griglia_assistenzaDblClick
        OnKeyDown = v_griglia_assistenzaKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'tipologia'
            Title.Caption = 'sottocommessa'
            Title.Color = clYellow
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ind_codice'
            Title.Caption = 'filiale'
            Title.Color = clYellow
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mtr_codice'
            Title.Caption = 'matricola'
            Title.Color = clYellow
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'art_codice'
            Title.Caption = 'articolo'
            Title.Color = clYellow
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'art_descrizione'
            Title.Caption = 'descrizione'
            Title.Color = clYellow
            Width = 447
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'data_fine_contratto'
            Title.Alignment = taCenter
            Title.Caption = 'fine contratto'
            Title.Color = clYellow
            Width = 75
            Visible = True
          end>
      end
    end
    object tab_interventi: TRzTabSheet
      Color = clWindow
      ImageIndex = 4
      Caption = 'interventi assistenza'
      object v_griglia_interventi: trzdbgrid_go
        Left = 0
        Top = 0
        Width = 990
        Height = 566
        Hint = '[Invio o doppio click = assegna progressivo]'
        Align = alClient
        DataSource = interventi_ds
        DrawingStyle = gdsClassic
        PopupMenu = Popup_griglia
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnDblClick = v_griglia_interventiDblClick
        OnKeyDown = v_griglia_interventiKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'tipologia'
            Title.Caption = 'sottocommessa'
            Title.Color = clYellow
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ind_codice'
            Title.Caption = 'filiale'
            Title.Color = clYellow
            Width = 85
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'data_registrazione'
            Title.Alignment = taCenter
            Title.Caption = 'data'
            Title.Color = clYellow
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mtr_codice'
            Title.Caption = 'matricola'
            Title.Color = clYellow
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'art_codice'
            Title.Caption = 'articolo'
            Title.Color = clYellow
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'art_descrizione'
            Title.Caption = 'descrizione'
            Title.Color = clYellow
            Width = 393
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo_commessa'
            Title.Caption = 'tipo intervento'
            Title.Color = clYellow
            Width = 74
            Visible = True
          end>
      end
    end
    object tab_preventivi_fornitori: TRzTabSheet
      Color = clWindow
      Caption = 'preventivi fornitori'
      object v_griglia_preventivi_fornitori: trzdbgrid_go
        Left = 0
        Top = 0
        Width = 990
        Height = 566
        Hint = '[Invio o doppio click = assegna progressivo]'
        Align = alClient
        DataSource = preventivi_fornitori_ds
        DrawingStyle = gdsClassic
        PopupMenu = Popup_griglia
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnDblClick = v_griglia_preventivi_fornitoriDblClick
        OnKeyDown = v_griglia_preventivi_fornitoriKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'tipologia'
            Title.Caption = 'sottocommessa'
            Title.Color = clYellow
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'data_documento'
            Title.Alignment = taCenter
            Title.Caption = 'data'
            Title.Color = clYellow
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero_documento'
            Title.Alignment = taRightJustify
            Title.Caption = 'numero'
            Title.Color = clYellow
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'serie_documento'
            Title.Caption = 'serie'
            Title.Color = clYellow
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codice_cli_for'
            Title.Caption = 'fornitore'
            Title.Color = clYellow
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_for_descrizione'
            Title.Caption = 'descrizione'
            Title.Color = clYellow
            Width = 257
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descrizione'
            Title.Caption = 'localit'#224
            Title.Color = clYellow
            Width = 226
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'importo'
            Title.Alignment = taRightJustify
            Title.Color = clYellow
            Width = 75
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'importo_evaso'
            Title.Alignment = taRightJustify
            Title.Caption = 'importo evaso'
            Title.Color = clYellow
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'art_codice'
            Title.Caption = 'articolo'
            Title.Color = clYellow
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'art_descrizione'
            Title.Caption = 'descrizione'
            Title.Color = clYellow
            Width = 300
            Visible = True
          end>
      end
    end
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      
        'select '#39#39' tipologia, 0 data_documento, 0 numero_documento, '#39#39' se' +
        'rie_documento, '#39#39' codice_cli_for,'
      
        #39#39' cli_for_descrizione, '#39#39' descrizione, 0 importo, 0 importo_eva' +
        'so'
      'from ovt'
      '')
  end
  object clienti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select '#39#39' tipologia, 0 data_documento, 0 numero_documento, '#39#39' se' +
        'rie_documento, '#39#39' codice_cli_for,'
      
        #39#39' cli_for_descrizione, '#39#39' descrizione, 0 importo, 0 importo_eva' +
        'so, '#39#39' art_codice, '#39#39' art_descrizione'
      'from ovt'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 310
    Top = 65526
  end
  object clienti_ds: TMyDataSource
    DataSet = clienti
    Left = 325
    Top = 65526
  end
  object fornitori: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select '#39#39' tipologia, 0 data_documento, 0 numero_documento, '#39#39' se' +
        'rie_documento, '#39#39' codice_cli_for,'
      
        #39#39' cli_for_descrizione, '#39#39' descrizione, 0 importo, 0 importo_eva' +
        'so, '#39#39' art_codice, '#39#39' art_descrizione'
      'from ovt'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 350
    Top = 65526
  end
  object fornitori_ds: TMyDataSource
    DataSet = fornitori
    Left = 365
    Top = 65526
  end
  object produzione: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select '#39#39' tipologia, 0 data_documento, 0 numero_documento, '#39#39' ar' +
        't_codice,'
      #39#39' art_descrizione, 0 quantita, 0 quantita_evasa, '#39#39' lot_codice'
      'from opt'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
    Top = 65526
  end
  object produzione_ds: TMyDataSource
    DataSet = produzione
    Left = 395
    Top = 65526
  end
  object assistenza: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select '#39#39' tipologia, '#39#39' ind_codice, '#39#39' mtr_codice, '#39#39' art_codice' +
        ', '#39#39' art_descrizione,'
      'null data_fine_contratto'
      'from atr'
      'inner join att on att.progressivo = atr.progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 410
    Top = 65526
  end
  object assistenza_ds: TMyDataSource
    DataSet = assistenza
    Left = 425
    Top = 65526
  end
  object interventi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select '#39#39' tipologia, '#39#39' ind_codice, null data_registrazione, '#39#39' ' +
        'mtr_codice, '#39#39' art_codice, '#39#39' art_descrizione,'
      #39#39' tipo_commessa'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 435
    Top = 65526
  end
  object interventi_ds: TMyDataSource
    DataSet = interventi
    Left = 455
    Top = 65526
  end
  object preventivi_fornitori: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select '#39#39' tipologia, 0 data_documento, 0 numero_documento, '#39#39' se' +
        'rie_documento, '#39#39' codice_cli_for,'
      
        #39#39' cli_for_descrizione, '#39#39' descrizione, 0 importo, 0 importo_eva' +
        'so, '#39#39' art_codice, '#39#39' art_descrizione'
      'from ovt'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 485
    Top = 65526
  end
  object preventivi_fornitori_ds: TMyDataSource
    DataSet = preventivi_fornitori
    Left = 505
    Top = 65526
  end
end
