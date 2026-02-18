inherited GESORDP: TGESORDP
  Left = 354
  Top = 92
  Caption = 'GESORDP'
  ClientHeight = 727
  ClientWidth = 1109
  ExplicitWidth = 1125
  ExplicitHeight = 786
  DesignSize = (
    1109
    727)
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1109
    ExplicitWidth = 1109
    inherited tool_f2: TToolButton
      Enabled = False
    end
    inherited tool_f3: TToolButton
      Enabled = False
    end
    inherited tool_ctrl_f3: TToolButton
      Enabled = False
    end
    inherited v_tool_numero_record: TToolButton
      Enabled = False
    end
    inherited tool_ins_righe: TToolButton
      Hint = 'inserisce nuova riga (INS)'
      ExplicitWidth = 54
    end
    object tool_movmag: TToolButton
      Left = 795
      Top = 0
      Hint = 'gestione carico materie prime su magazzino di produzione'
      Caption = 'tool_movmag'
      Enabled = False
      ImageIndex = 76
      OnClick = tool_movmagClick
    end
    object tool_documenti_allegati: TToolButton
      Left = 834
      Top = 0
      Hint = 'documenti allegati'
      Caption = 'tool_documenti_allegati'
      Enabled = False
      ImageIndex = 172
      OnClick = tool_documenti_allegatiClick
    end
    object tool_lavorazione: TToolButton
      Left = 873
      Top = 0
      Hint = 'gestione lavorazione presso terzi'
      Caption = 'tool_lavorazione'
      DropdownMenu = meno_presso_terzi
      ImageIndex = 15
      Style = tbsDropDown
    end
    object tool_distinta_print: TToolButton
      Left = 927
      Top = 0
      Hint = 'stampa documenti di lavoro'
      Caption = 'tool_distinta_print'
      DropdownMenu = mnu_distinta
      ImageIndex = 165
      Style = tbsDropDown
    end
    object tool_rda_acquisto: TToolButton
      Left = 981
      Top = 0
      Hint = 'creazione richieste d'#39'acquisto'
      Caption = 'tool_rda_acquisto'
      DropdownMenu = menu_rda
      ImageIndex = 126
      Style = tbsDropDown
    end
    object v_totalizza: TToolButton
      Left = 1035
      Top = 0
      Hint = 'totalizza costo attuale ordine'
      Caption = 'v_totalizza'
      ImageIndex = 168
      OnClick = v_totalizzaClick
    end
  end
  inherited statusbar: TStatusBar
    Top = 707
    Width = 1109
    ExplicitTop = 707
    ExplicitWidth = 1109
  end
  inherited pannello_campi: TRzPanel
    Width = 918
    Height = 665
    ExplicitWidth = 918
    ExplicitHeight = 665
    DesignSize = (
      918
      665)
    object Label8: TRzLabel [0]
      Left = 435
      Top = 0
      Width = 77
      Height = 13
      Caption = 'data documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label10: TRzLabel [1]
      Left = 520
      Top = 0
      Width = 91
      Height = 13
      Caption = 'numero documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label53: TRzLabel [2]
      Left = 660
      Top = 0
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
    object RzLabel3: TRzLabel [3]
      Left = 100
      Top = 0
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
    object RzLabel4: TRzLabel [4]
      Left = 595
      Top = 20
      Width = 5
      Height = 13
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    inherited tab_control: TRzPageControl
      Width = 916
      Height = 273
      TabOrder = 4
      ExplicitWidth = 916
      ExplicitHeight = 273
      FixedDimension = 18
      inherited tab_pagina1: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 914
        ExplicitHeight = 253
        object Label21: TRzLabel
          Left = 5
          Top = 30
          Width = 108
          Height = 13
          Caption = 'movimento carico finito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label1: TRzLabel
          Left = 460
          Top = 30
          Width = 97
          Height = 13
          Caption = 'deposito carico finito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label7: TRzLabel
          Left = 5
          Top = 65
          Width = 153
          Height = 13
          Caption = 'movimento scarico materie prime'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label9: TRzLabel
          Left = 460
          Top = 65
          Width = 142
          Height = 13
          Caption = 'deposito scarico materie prime'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label14: TRzLabel
          Left = 5
          Top = 100
          Width = 91
          Height = 13
          Caption = 'articolo da produrre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label24: TRzLabel
          Left = 850
          Top = 100
          Width = 20
          Height = 13
          Caption = 'u.m.'
          FocusControl = v_art_codice_materie_prime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label11: TRzLabel
          Left = 5
          Top = 135
          Width = 38
          Height = 13
          Caption = 'quantit'#224
          FocusControl = v_art_codice_materie_prime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label13: TRzLabel
          Left = 170
          Top = 135
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
        object v_l_frn_codice: TRzLabel
          Left = 5
          Top = 170
          Width = 73
          Height = 13
          Caption = 'codice fornitore'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label34: TRzLabel
          Left = 280
          Top = 135
          Width = 20
          Height = 13
          Caption = 'lotto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_data_consegna_ovr: TRzRapidFireButton
          Left = 250
          Top = 150
          Width = 23
          Height = 22
          Hint = 'aggiorna data consegna della riga ordine collegata'
          ImageIndex = 155
          Images = ARC.immagine_16
          Enabled = False
          OnClick = v_data_consegna_ovrClick
        end
        object Label35: TRzLabel
          Left = 655
          Top = 135
          Width = 107
          Height = 13
          Caption = 'quantit'#224' ordini fornitore'
          FocusControl = v_art_codice_materie_prime
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
          Left = 655
          Top = 170
          Width = 78
          Height = 13
          Caption = 'cliente ordinante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel10: TRzLabel
          Left = 585
          Top = 135
          Width = 31
          Height = 13
          Caption = 'priorita'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_tmo_codice_finiti: trzdbedit_go
          Left = 5
          Top = 45
          Width = 50
          Height = 21
          Hint = 
            'codice della causale del movimento di carico del prodotto finito' +
            ' [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tmo_codice_finiti'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnExit = v_tmo_codice_finitiExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object v_tma_codice_finiti: trzdbedit_go
          Left = 460
          Top = 45
          Width = 50
          Height = 21
          Hint = 'codice del deposito di carico del prodotto finito [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tma_codice_finiti'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
          OnExit = v_tma_codice_finitiExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMA'
          lookcolltable = 'TMA'
          lookcollvisname = 'TMA'
        end
        object v_tmo_codice_materie_prime: trzdbedit_go
          Left = 5
          Top = 80
          Width = 50
          Height = 21
          Hint = 
            'codice della causale del movimento di scarico delle materie prim' +
            'e dal deposito di conto lavoro [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tmo_codice_materie_prime'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 4
          OnExit = v_tmo_codice_materie_primeExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object v_tma_codice_materie_prime: trzdbedit_go
          Left = 460
          Top = 80
          Width = 50
          Height = 21
          Hint = 
            'codice del deposito di conto lavoro da cui scaricare le materie ' +
            'prime [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'TMA_CODICE_MATERIE_PRIME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 5
          OnExit = v_tma_codice_materie_primeExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMA'
          lookcolltable = 'TMA'
          lookcollvisname = 'TMA'
        end
        object v_art_codice_finiti: trzdbedit_go
          Left = 5
          Top = 115
          Width = 161
          Height = 21
          Hint = 
            'codice articolo da produrre [F4 F5 F6]  [Alt+F9=gestione RMA] [F' +
            '9=ricerca equivalenti]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'art_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          OnEnter = v_art_codice_finitiEnter
          OnExit = v_art_codice_finitiExit
          OnKeyDown = v_art_codice_finitiKeyDown
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_art
          lookcollprogram = 'GESART'
          lookcolltable = 'ART'
          lookcollvisname = 'ART'
        end
        object v_quantita_finiti: trzdbnumericedit_go
          Left = 5
          Top = 150
          Width = 161
          Height = 21
          Hint = 'quantit'#224' [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'quantita'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 7
          OnEnter = v_quantita_finitiEnter
          OnExit = v_quantita_finitiExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
        object v_data_consegna: trzdbdatetimeedit_go
          Left = 170
          Top = 150
          Width = 80
          Height = 21
          Hint = 
            'data di registrazione fiscale del movimento [Alt+Gi'#249' per aprire ' +
            'il calendario]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_consegna'
          AutoSelect = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 8
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 46008.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_frn_codice: trzdbedit_go
          Left = 5
          Top = 185
          Width = 90
          Height = 21
          Hint = 'codice fornitore [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'frn_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 10
          OnEnter = v_frn_codiceEnter
          OnExit = v_frn_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_frn
          lookcollprogram = 'GESNOM'
          lookcolltable = 'FRN'
          lookcollvisname = 'FRN'
        end
        object RzDBEditDescrizione_go1: trzdbeditdescrizione_go
          Left = 60
          Top = 45
          Width = 386
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tmo_ds
          DataField = 'DESCRIZIONE'
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
        object RzDBEditDescrizione_go2: trzdbeditdescrizione_go
          Left = 515
          Top = 45
          Width = 386
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tma_ds
          DataField = 'DESCRIZIONE'
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
        object RzDBEditDescrizione_go3: trzdbeditdescrizione_go
          Left = 60
          Top = 80
          Width = 386
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tmo_codice_mp_ds
          DataField = 'DESCRIZIONE'
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
        object RzDBEditDescrizione_go4: trzdbeditdescrizione_go
          Left = 515
          Top = 80
          Width = 386
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tma_codice_mp_ds
          DataField = 'DESCRIZIONE'
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
        object Panel1: TRzPanel
          Left = 780
          Top = 135
          Width = 121
          Height = 46
          BorderOuter = fsNone
          Enabled = False
          ParentColor = True
          TabOrder = 15
          object Label15: TRzLabel
            Left = 0
            Top = 0
            Width = 70
            Height = 13
            Caption = 'quantit'#224' evasa'
            FocusControl = v_art_codice_materie_prime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object v_quantita_evasa: trzdbnumericedit_go
            Left = 0
            Top = 15
            Width = 121
            Height = 21
            Hint = 'quantit'#224' [Alt+Gi'#249' per aprire la calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'quantita_evasa'
            Alignment = taLeftJustify
            Color = clAqua
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 0
            OnExit = v_quantita_materie_primeExit
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.0000;-,0.0000;#'
            decimalplaces = 4
          end
        end
        object v_art_descrizione1: trzdbeditdescrizione_go
          Left = 170
          Top = 115
          Width = 671
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_finiti_ds
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
          TabOrder = 16
        end
        object RzDBEditDescrizione_go7: trzdbeditdescrizione_go
          Left = 850
          Top = 115
          Width = 51
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_finiti_ds
          DataField = 'TUM_CODICE'
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
          TabOrder = 17
        end
        object RzDBEditDescrizione_go8: trzdbeditdescrizione_go
          Left = 100
          Top = 185
          Width = 546
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = frn_ds
          DataField = 'DESCRIZIONE1'
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
          TabOrder = 18
        end
        object v_ovr_progressivo: trzdbedit_go
          Left = 795
          Top = 30
          Width = 31
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'OVR_PROGRESSIVO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 19
          Visible = False
        end
        object v_ovr_riga: trzdbedit_go
          Left = 820
          Top = 30
          Width = 31
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'OVR_RIGA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 20
          Visible = False
        end
        object v_lot_codice: trzdbedit_go
          Left = 280
          Top = 150
          Width = 296
          Height = 21
          Hint = 'codice lotto che verr'#224' assegnato al prodotto finito [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'lot_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 9
          OnEnter = v_lot_codiceEnter
          OnExit = v_lot_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESLOT'
          lookcolltable = 'LOT'
          lookcollvisname = 'LOT'
        end
        object v_quantita_ordinata: trzdbnumericedit_go
          Left = 655
          Top = 150
          Width = 121
          Height = 21
          Hint = 'quantit'#224' ordinata fornitore'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tabella_dettaglio_ds
          DataField = 'quantita_ordinata'
          ReadOnly = True
          Alignment = taLeftJustify
          Color = clLime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clLime
          ReadOnlyColorOnFocus = True
          TabOrder = 21
          OnExit = v_quantita_materie_primeExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
        object v_avanzamento_fasi: TRzDBCheckBox
          Left = 5
          Top = 8
          Width = 102
          Height = 15
          Hint = 
            'spunta per indicare che per l'#39'ordine '#232' gestito l'#39'avanzamento per' +
            ' fase'
          DataField = 'avanzamento_fasi'
          DataSource = tabella_ds
          ReadOnly = True
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'avanzamento fasi'
          TabOrder = 0
          TabStop = False
        end
        object v_esiste_oat: TRzDBCheckBox
          Left = 460
          Top = 8
          Width = 149
          Height = 15
          DataField = 'esiste_oat'
          DataSource = tabella_ds
          ReadOnly = True
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'emesso ordine conto lavoro'
          TabOrder = 22
          TabStop = False
          OnClick = v_semilavoratoClick
        end
        object RzDBEditDescrizione_go5: trzdbeditdescrizione_go
          Left = 655
          Top = 185
          Width = 246
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tabella_ds
          DataField = 'cli_descrizione'
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
          TabOrder = 23
        end
        object v_fasi_non_sequenziali: TRzDBCheckBox
          Left = 130
          Top = 8
          Width = 111
          Height = 15
          Hint = 
            'spunta per indicare che l'#39'evasione delle fasi pu'#242' non essere seq' +
            'uenziale'
          DataField = 'fasi_non_sequenziali'
          DataSource = tabella_ds
          ReadOnly = True
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'fasi non sequenziali'
          TabOrder = 1
          TabStop = False
        end
        object v_abilita_evasione: TRzDBCheckBox
          Left = 630
          Top = 8
          Width = 104
          Height = 15
          DataField = 'abilita_evasione'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'abilitata evasione '
          TabOrder = 24
          TabStop = False
          OnClick = v_semilavoratoClick
        end
        object v_priorita: trzdbcombobox_go
          Left = 585
          Top = 150
          Width = 61
          Height = 21
          Hint = 
            'priorit'#224' di evasione nel calcolo dell'#39'assegnazione data di conse' +
            'gna delle fasi [0=nessuna 3=massima]'
          DataField = 'priorita'
          DataSource = tabella_ds
          Style = csDropDownList
          FlatButtons = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 25
          TabStop = False
          Items.Strings = (
            '0'
            '1'
            '2'
            '3')
        end
      end
      object tab_pagina2: TRzTabSheet
        Color = clWindow
        ImageIndex = 1
        Caption = 'commessa / lavorazione'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label20: TRzLabel
          Left = 5
          Top = 5
          Width = 85
          Height = 13
          Caption = 'codice commessa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label22: TRzLabel
          Left = 5
          Top = 45
          Width = 73
          Height = 13
          Caption = 'sottocommessa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_gestione_collegato: TRzRapidFireButton
          Left = 303
          Top = 119
          Width = 23
          Height = 22
          Hint = 'esegue programma di gestione del documento di origine'
          ImageIndex = 40
          Images = ARC.immagine_16
          OnClick = v_gestione_collegatoClick
        end
        object RzLabel12: TRzLabel
          Left = 5
          Top = 155
          Width = 80
          Height = 13
          Caption = 'inizio lavorazione'
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
          Left = 120
          Top = 155
          Width = 91
          Height = 13
          Caption = 'ultima fase lavorata'
          FocusControl = v_art_codice_materie_prime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzRapidFireButton1: TRzRapidFireButton
          Left = 0
          Top = 232
          Width = 914
          Height = 21
          Hint = 'creazione non conformit'#224
          Align = alBottom
          Caption = 'crea non conformit'#224
          Enabled = False
          OnClick = v_non_conformitaClick
          ExplicitLeft = 5
          ExplicitTop = 123
        end
        object v_cms_codice: trzdbedit_go
          Left = 5
          Top = 20
          Width = 111
          Height = 21
          Hint = 'codice commessa [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'cms_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnEnter = v_cms_codiceEnter
          OnExit = v_cms_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_cms
          lookcollprogram = 'GESCMS'
          lookcolltable = 'CMS'
          lookcollvisname = 'CMS'
        end
        object v_tipologia: trzdbedit_go
          Left = 5
          Top = 60
          Width = 111
          Height = 21
          Hint = 'codice sottocommessa [f4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tipologia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnEnter = v_tipologiaEnter
          OnExit = v_tipologiaExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESCMT'
          lookcolltable = 'CMT'
          lookcollvisname = 'CMT'
        end
        object RzDBEditDescrizione_go10: trzdbeditdescrizione_go
          Left = 120
          Top = 20
          Width = 736
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = cms_ds
          DataField = 'DESCRIZIONE1'
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
          TabOrder = 2
        end
        object RzDBEditDescrizione_go11: trzdbeditdescrizione_go
          Left = 120
          Top = 60
          Width = 736
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = cmt_ds
          DataField = 'DESCRIZIONE'
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
        object GroupBox3: TGroupBox
          Left = 0
          Top = 90
          Width = 296
          Height = 61
          Caption = 'documento di origine'
          Enabled = False
          TabOrder = 4
          object Label30: TRzLabel
            Left = 5
            Top = 15
            Width = 87
            Height = 13
            Caption = 'documento origine'
            FocusControl = v_documento_origine
            ShowAccelChar = False
            Transparent = True
          end
          object Label31: TRzLabel
            Left = 165
            Top = 15
            Width = 54
            Height = 13
            Caption = 'progressivo'
            ShowAccelChar = False
            Transparent = True
          end
          object Label32: TRzLabel
            Left = 240
            Top = 15
            Width = 17
            Height = 13
            Caption = 'riga'
            ShowAccelChar = False
            Transparent = True
          end
          object v_documento_origine: trzdbedit_go
            Left = 5
            Top = 30
            Width = 156
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tabella_ds
            DataField = 'documento_origine'
            ReadOnly = True
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 0
            OnChange = v_documento_origineChange
          end
          object v_doc_progressivo_origine: trzdbnumericedit_go
            Left = 166
            Top = 30
            Width = 70
            Height = 21
            Hint = #13'Alt+Gi'#249' per aprire la calcolatrice'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tabella_ds
            DataField = 'doc_progressivo_origine'
            ReadOnly = True
            Alignment = taLeftJustify
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
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = '#'
            decimalplaces = 0
          end
          object v_doc_riga_origine: trzdbnumericedit_go
            Left = 240
            Top = 30
            Width = 51
            Height = 21
            Hint = #13'Alt+Gi'#249' per aprire la calcolatrice'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tabella_ds
            DataField = 'doc_riga_origine'
            ReadOnly = True
            Alignment = taLeftJustify
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 2
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = '#'
            decimalplaces = 0
          end
        end
        object v_data_inizio_lavorazione: trzdbdatetimeedit_go
          Left = 5
          Top = 170
          Width = 111
          Height = 21
          Hint = 'data inizio lavorazione in produzione'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_inizio_lavorazione'
          AutoSelect = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 5
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 46008.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_fas_codice: trzdbedit_go
          Left = 120
          Top = 169
          Width = 114
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tabella_ds
          DataField = 'fas_codice'
          ReadOnly = True
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          OnChange = v_fas_codiceChange
        end
      end
    end
    object v_data_documento: trzdbdatetimeedit_go
      Left = 435
      Top = 15
      Width = 80
      Height = 21
      Hint = 
        'data dell'#39'ordine di produzione [Alt+Gi'#249' per aprire il calendario' +
        ']'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'data_documento'
      AutoSelect = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 1
      OnExit = v_data_documentoExit
      CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
      CaptionTodayBtn = 'oggi'
      CaptionClearBtn = 'annulla'
      Date = 46008.000000000000000000
      EditType = etDate
      DropButtonVisible = False
    end
    object v_numero_documento: trzdbnumericedit_go
      Left = 520
      Top = 15
      Width = 71
      Height = 21
      Hint = 'numero documento'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'numero_documento'
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 9
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 2
      OnEnter = v_numero_documentoEnter
      OnExit = v_numero_documentoExit
      AllowBlank = False
      AllowScientificNotation = False
      IntegersOnly = False
      DisplayFormat = '0;0;0'
      decimalplaces = 0
    end
    object v_tipo_esplosione: trzdbcombobox_go
      Left = 660
      Top = 15
      Width = 211
      Height = 21
      Hint = 
        'modalit'#224' di esplosione della distinta base dell'#39'articolo in ordi' +
        'ne'
      DataField = 'tipo_esplosione'
      DataSource = tabella_ds
      Style = csDropDownList
      FlatButtons = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 3
      Items.Strings = (
        'nessuno'
        'solo primo livello'
        'tutti i livelli fino alle materie prime'
        'generazione ordini per tutti i semilavorati')
    end
    object v_top_codice: trzdbedit_go
      Left = 100
      Top = 15
      Width = 50
      Height = 21
      Hint = 'codice documento [F4 F5 F6]'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'top_codice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      OnEnter = v_top_codiceEnter
      OnExit = v_top_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTOP'
      lookcolltable = 'TOP'
      lookcollvisname = 'TOP'
    end
    object v_tdo_descrizione: trzdbeditdescrizione_go
      Left = 155
      Top = 15
      Width = 276
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
      TabOrder = 5
    end
    object v_serie_documento: trzdbedit_go
      Left = 605
      Top = 15
      Width = 51
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'serie_documento'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 6
    end
  end
  inherited pannello_codice: TRzPanel
    inherited v_progressivo: trzdbnumericedit_go
      lookupdatabase = 'arc.arcdit'
      lookuppopupmenu = ARC.pop_arc
      lookuptable = 'OPT'
      lookupvisname = 'OPT'
    end
  end
  inherited pannello_griglia_righe: TRzPanel
    Top = 335
    Width = 916
    Height = 222
    ExplicitTop = 335
    ExplicitWidth = 916
    ExplicitHeight = 222
    inherited v_griglia_righe: trzdbgrid_go
      Width = 916
      Height = 222
      Hint = 
        '[Invio o Ins=aggiunge riga] [Ctrl+Invio=torna al codice] [doppio' +
        ' click=esegue gestione ordine produzione semilavorato]'
      HelpType = htKeyword
      PopupMenu = Popup_griglia
      OnDblClick = v_griglia_righeDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'RIGA'
          Title.Caption = 'riga'
          Title.Color = clYellow
          Width = 32
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'sequenza'
          Title.Alignment = taRightJustify
          Title.Caption = 'seq.'
          Title.Color = clYellow
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ART_CODICE'
          Title.Caption = 'codice articolo'
          Title.Color = clYellow
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'art_descrizione'
          Title.Caption = 'descrizione'
          Title.Color = clYellow
          Width = 281
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTITA'
          Title.Alignment = taRightJustify
          Title.Caption = 'quantit'#224
          Title.Color = clYellow
          Width = 80
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'QUANTITA_APPRONTATA'
          Title.Alignment = taRightJustify
          Title.Caption = 'approntato'
          Title.Color = clYellow
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTITA_EVASA'
          Title.Alignment = taRightJustify
          Title.Caption = 'qt'#224' utilizzata'
          Title.Color = clYellow
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTITA_SPEDITA'
          Title.Alignment = taRightJustify
          Title.Caption = 'qt'#224' spedita'
          Title.Color = clYellow
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TMA_CODICE'
          Title.Caption = 'deposito'
          Title.Color = clYellow
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COSTO_UNITARIO'
          Title.Alignment = taRightJustify
          Title.Caption = 'costo'
          Title.Color = clYellow
          Width = 66
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'quantita_disposta'
          Title.Alignment = taRightJustify
          Title.Caption = 'qt'#224' disposta'
          Title.Color = clYellow
          Width = 80
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'numero_colli'
          Title.Alignment = taRightJustify
          Title.Caption = 'colli'
          Title.Color = clYellow
          Width = 60
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'numero_confezioni'
          Title.Alignment = taRightJustify
          Title.Caption = 'confezioni'
          Title.Color = clYellow
          Width = 60
          Visible = True
        end>
    end
  end
  inherited pannello_righe: TRzPanel
    Top = 561
    Width = 916
    Height = 146
    ExplicitTop = 561
    ExplicitWidth = 916
    ExplicitHeight = 146
    inherited tab_control_righe: TRzPageControl
      Width = 916
      Height = 146
      ExplicitWidth = 916
      ExplicitHeight = 146
      FixedDimension = 1
      inherited tab_pagina_righe: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 5
        ExplicitWidth = 914
        ExplicitHeight = 140
        object Label2: TRzLabel
          Left = 5
          Top = 0
          Width = 69
          Height = 13
          Caption = 'codice articolo'
          FocusControl = v_art_codice_materie_prime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label3: TRzLabel
          Left = 5
          Top = 40
          Width = 92
          Height = 13
          Caption = 'quantit'#224' necessaria'
          FocusControl = v_art_codice_materie_prime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label23: TRzLabel
          Left = 805
          Top = 0
          Width = 20
          Height = 13
          Caption = 'u.m.'
          FocusControl = v_art_codice_materie_prime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label6: TRzLabel
          Left = 445
          Top = 40
          Width = 63
          Height = 13
          Caption = 'costo unitario'
          FocusControl = v_art_codice_materie_prime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label27: TRzLabel
          Left = 115
          Top = 40
          Width = 75
          Height = 13
          Caption = 'codice deposito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel11: TRzLabel
          Left = 865
          Top = 0
          Width = 20
          Height = 13
          Caption = 'seq.'
          FocusControl = v_art_codice_materie_prime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_quantita_materie_prime: trzdbnumericedit_go
          Left = 5
          Top = 55
          Width = 101
          Height = 21
          Hint = 
            'quantit'#224' [Alt+Gi'#249' per aprire la calcolatrice] [F9 = moltiplica l' +
            'a quantit'#224' digitata per la quantit'#224' dell'#39'articolo da produrre]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'quantita'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnExit = v_quantita_materie_primeExit
          OnKeyDown = v_quantita_materie_primeKeyDown
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
        object v_art_codice_materie_prime: trzdbedit_go
          Left = 5
          Top = 15
          Width = 160
          Height = 21
          Hint = 
            'codice a barre dell'#39'articolo o codice dell'#39'anagrafica [F4 F5 F6]' +
            ' [Alt+F8=non conformit'#224']'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'art_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnEnter = v_art_codice_materie_primeEnter
          OnExit = v_art_codice_materie_primeExit
          OnKeyDown = v_art_codice_materie_primeKeyDown
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_art
          lookcollprogram = 'GESART'
          lookcolltable = 'ART'
          lookcollvisname = 'ART'
        end
        object Panel2: TRzPanel
          Left = 0
          Top = 80
          Width = 326
          Height = 56
          BorderOuter = fsNone
          ParentColor = True
          TabOrder = 4
          object GroupBox1: TGroupBox
            Left = 5
            Top = 0
            Width = 321
            Height = 56
            Caption = 'situazione esistenza finito'
            Enabled = False
            TabOrder = 0
            object Label18: TRzLabel
              Left = 5
              Top = 10
              Width = 40
              Height = 13
              Caption = 'deposito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              ShowAccelChar = False
              Transparent = True
            end
            object Label19: TRzLabel
              Left = 110
              Top = 10
              Width = 26
              Height = 13
              Caption = 'totale'
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
              Left = 215
              Top = 10
              Width = 45
              Height = 13
              Caption = 'principale'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              ShowAccelChar = False
              Transparent = True
            end
            object v_esistenza_deposito_finiti: trzdbnumericedit_go
              Left = 5
              Top = 25
              Width = 101
              Height = 21
              Hint = '[Alt+Gi'#249'=apre calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = esistenza_deposito_finiti_ds
              DataField = 'ESISTENZA'
              Alignment = taLeftJustify
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnlyColor = clBtnFace
              ReadOnlyColorOnFocus = True
              TabOrder = 0
              OnChange = v_esistenza_deposito_finitiChange
              AllowBlank = False
              AllowScientificNotation = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;#'
              decimalplaces = 4
            end
            object v_esistenza_totale_finiti: trzdbnumericedit_go
              Left = 110
              Top = 25
              Width = 101
              Height = 21
              Hint = '[Alt+Gi'#249'=apre calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = esistenza_totale_finiti_ds
              DataField = 'ESISTENZA'
              Alignment = taLeftJustify
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnlyColor = clBtnFace
              ReadOnlyColorOnFocus = True
              TabOrder = 1
              OnChange = v_esistenza_totale_finitiChange
              AllowBlank = False
              AllowScientificNotation = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;#'
              decimalplaces = 4
            end
            object v_esistenza_principale_finiti: trzdbnumericedit_go
              Left = 215
              Top = 25
              Width = 101
              Height = 21
              Hint = '[Alt+Gi'#249'=apre calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = esistenza_principale_finiti_ds
              DataField = 'esistenza'
              Alignment = taLeftJustify
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnlyColor = clBtnFace
              ReadOnlyColorOnFocus = True
              TabOrder = 2
              OnChange = v_esistenza_principale_finitiChange
              AllowBlank = False
              AllowScientificNotation = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;#'
              decimalplaces = 4
            end
          end
        end
        object Panel5: TRzPanel
          Left = 335
          Top = 80
          Width = 321
          Height = 56
          BorderOuter = fsNone
          ParentColor = True
          TabOrder = 3
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 321
            Height = 56
            Caption = 'situazione esistenza materia prima'
            Enabled = False
            TabOrder = 0
            object Label4: TRzLabel
              Left = 5
              Top = 10
              Width = 40
              Height = 13
              Caption = 'deposito'
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
              Left = 110
              Top = 10
              Width = 26
              Height = 13
              Caption = 'totale'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              ShowAccelChar = False
              Transparent = True
            end
            object Label29: TRzLabel
              Left = 215
              Top = 10
              Width = 45
              Height = 13
              Caption = 'principale'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              ShowAccelChar = False
              Transparent = True
            end
            object v_esistenza_deposito_materie_prime: trzdbnumericedit_go
              Left = 5
              Top = 25
              Width = 101
              Height = 21
              Hint = '[Alt+Gi'#249'=apre calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = esistenza_deposito_materie_prime_ds
              DataField = 'esistenza'
              Alignment = taLeftJustify
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnlyColor = clBtnFace
              ReadOnlyColorOnFocus = True
              TabOrder = 0
              OnChange = v_esistenza_deposito_materie_primeChange
              AllowBlank = False
              AllowScientificNotation = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;#'
              decimalplaces = 4
            end
            object v_esistenza_totale_materie_prime: trzdbnumericedit_go
              Left = 110
              Top = 25
              Width = 101
              Height = 21
              Hint = '[Alt+Gi'#249'=apre calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = esistenza_totale_materie_prime_ds
              DataField = 'ESISTENZA'
              Alignment = taLeftJustify
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnlyColor = clBtnFace
              ReadOnlyColorOnFocus = True
              TabOrder = 1
              OnChange = v_esistenza_totale_materie_primeChange
              AllowBlank = False
              AllowScientificNotation = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;#'
              decimalplaces = 4
            end
            object v_esistenza_principale_materie_prime: trzdbnumericedit_go
              Left = 215
              Top = 25
              Width = 101
              Height = 21
              Hint = '[Alt+Gi'#249'=apre calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = esistenza_principale_materie_prime_ds
              DataField = 'ESISTENZA'
              Alignment = taLeftJustify
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnlyColor = clBtnFace
              ReadOnlyColorOnFocus = True
              TabOrder = 2
              OnChange = v_esistenza_principale_materie_primeChange
              AllowBlank = False
              AllowScientificNotation = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;#'
              decimalplaces = 4
            end
          end
        end
        object Panel6: TRzPanel
          Left = 685
          Top = 35
          Width = 226
          Height = 101
          BorderOuter = fsNone
          Enabled = False
          ParentColor = True
          TabOrder = 5
          object Label17: TRzLabel
            Left = 0
            Top = 35
            Width = 81
            Height = 13
            Caption = 'quantit'#224' utilizzata'
            FocusControl = v_art_codice_materie_prime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label25: TRzLabel
            Left = 0
            Top = 67
            Width = 75
            Height = 13
            Caption = 'quantit'#224' spedita'
            FocusControl = v_art_codice_materie_prime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label33: TRzLabel
            Left = 0
            Top = 1
            Width = 92
            Height = 13
            Caption = 'quantit'#224' approntata'
            FocusControl = v_art_codice_materie_prime
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
            Left = 120
            Top = 1
            Width = 56
            Height = 13
            Caption = 'numero colli'
            FocusControl = v_art_codice_materie_prime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object RzLabel8: TRzLabel
            Left = 120
            Top = 34
            Width = 86
            Height = 13
            Caption = 'numero confezioni'
            FocusControl = v_art_codice_materie_prime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object v_quantita_evasa_righe: trzdbnumericedit_go
            Left = 0
            Top = 47
            Width = 116
            Height = 21
            Hint = 'quantit'#224' [Alt+Gi'#249' per aprire la calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_righe_ds
            DataField = 'quantita_evasa'
            Alignment = taLeftJustify
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 0
            OnExit = v_quantita_materie_primeExit
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.0000;-,0.0000;#'
            decimalplaces = 4
          end
          object v_quantita_spedita: trzdbnumericedit_go
            Left = 0
            Top = 80
            Width = 116
            Height = 21
            Hint = 'quantit'#224' [Alt+Gi'#249' per aprire la calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_righe_ds
            DataField = 'quantita_spedita'
            Alignment = taLeftJustify
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
            OnExit = v_quantita_materie_primeExit
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.0000;-,0.0000;#'
            decimalplaces = 4
          end
          object v_quantita_approntata: trzdbnumericedit_go
            Left = 0
            Top = 15
            Width = 116
            Height = 21
            Hint = 
              'quantit'#224' approntata per l'#39'utilizzo [Alt+Gi'#249' per aprire la calcol' +
              'atrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_righe_ds
            DataField = 'QUANTITA_APPRONTATA'
            Alignment = taLeftJustify
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 2
            OnExit = v_quantita_approntataExit
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.0000;-,0.0000;#'
            decimalplaces = 4
          end
          object trzdbnumericedit_go1: trzdbnumericedit_go
            Left = 120
            Top = 15
            Width = 96
            Height = 21
            Hint = 'quantit'#224' [Alt+Gi'#249' per aprire la calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_righe_ds
            DataField = 'numero_colli'
            Alignment = taLeftJustify
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
            OnExit = v_quantita_materie_primeExit
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = '#'
            decimalplaces = 0
          end
          object trzdbnumericedit_go2: trzdbnumericedit_go
            Left = 120
            Top = 47
            Width = 96
            Height = 21
            Hint = 'quantit'#224' [Alt+Gi'#249' per aprire la calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_righe_ds
            DataField = 'numero_confezioni'
            Alignment = taLeftJustify
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 4
            OnExit = v_quantita_materie_primeExit
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = '#'
            decimalplaces = 0
          end
        end
        object v_semilavorato: TRzDBCheckBox
          Left = 335
          Top = 56
          Width = 78
          Height = 15
          Hint = 'spunta per indicare che l'#39'articolo '#232' un semilavorato'
          DataField = 'semilavorato'
          DataSource = tabella_righe_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'semilavorato'
          Enabled = False
          TabOrder = 6
          TabStop = False
          OnClick = v_semilavoratoClick
        end
        object v_costo_unitario: trzdbnumericedit_go
          Left = 445
          Top = 55
          Width = 101
          Height = 21
          Hint = 
            'costo unitario dell'#39'articolo [Alt+Gi'#249' per aprire la calcolatrice' +
            ']'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'costo_unitario'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 7
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
        object RzDBEditDescrizione_go12: trzdbeditdescrizione_go
          Left = 170
          Top = 15
          Width = 631
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_materie_prime_ds
          DataField = 'DESCRIZIONE'
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
          TabOrder = 9
        end
        object RzDBEditDescrizione_go14: trzdbeditdescrizione_go
          Left = 805
          Top = 15
          Width = 56
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_materie_prime_ds
          DataField = 'TUM_CODICE'
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
          TabOrder = 10
        end
        object v_tma_codice: trzdbedit_go
          Left = 115
          Top = 55
          Width = 50
          Height = 21
          Hint = 
            'codice deposito da cui prelevare il meteriale per la produzione ' +
            '[F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'tma_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnExit = v_tma_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMA'
          lookcolltable = 'TMA'
          lookcollvisname = 'TMA'
        end
        object RzDBEditDescrizione_go15: trzdbeditdescrizione_go
          Left = 170
          Top = 55
          Width = 156
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tma_righe_ds
          DataField = 'DESCRIZIONE'
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
        object v_assistenza_tecnica: TRzDBCheckBox
          Left = 550
          Top = 56
          Width = 106
          Height = 15
          Hint = 
            'spunta per indicare che per l'#39'articolo '#232' possibile aprire un con' +
            'tratto di assistenza tecnica'
          DataField = 'assistenza_tecnica'
          DataSource = tabella_righe_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'assistenza tecnica'
          Enabled = False
          TabOrder = 8
          TabStop = False
          OnClick = v_semilavoratoClick
        end
        object v_sequenza: trzdbnumericedit_go
          Left = 865
          Top = 15
          Width = 36
          Height = 21
          Hint = 'sequenza'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tabella_righe_ds
          DataField = 'sequenza'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 12
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
      end
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    Left = 918
    Height = 665
    ExplicitLeft = 918
    ExplicitHeight = 665
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      Top = 662
      Height = 0
      ExplicitTop = 662
      ExplicitHeight = 0
      FixedDimension = 18
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
      end
      inherited tab_pannello_bottoni_nuovi_extra: TRzTabSheet
        ExplicitLeft = 0
        ExplicitTop = 1
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tab_pannello_bottoni_nuovi_storno: TRzTabSheet
        Color = 15987699
        Caption = 'X'
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
    inherited pannello_destra_pannello: TRzPanel
      Height = 630
      ExplicitHeight = 630
      inherited pannello_destra_PanelGroup: TCategoryPanelGroup
        Top = 113
        Height = 517
        ExplicitTop = 113
        ExplicitHeight = 517
        object CategoryPanel3: TCategoryPanel [0]
          Top = 482
          Height = 30
          Caption = 'collegamenti'
          Collapsed = True
          ParentColor = True
          TabOrder = 0
          ExpandedHeight = 105
          object v_modula: TRzRapidFireButton
            Left = 0
            Top = 60
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'collegamento con Modula'
            Align = alTop
            Caption = 'collegamento Modula'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            ExplicitLeft = 10
            ExplicitTop = 120
            ExplicitWidth = 166
          end
          object v_ordine_cliente: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione ordine cliente di origine'
            Align = alTop
            Caption = 'ordine cliente'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_ordine_clienteClick
            ExplicitTop = 40
            ExplicitWidth = 166
          end
          object v_gestione_movimenti_carico: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione movimenti di carico prodotto lavorato'
            Align = alTop
            Caption = 'movimento carico'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_gestione_movimenti_caricoClick
            ExplicitTop = 40
            ExplicitWidth = 166
          end
          object v_gestione_movimenti_scarico: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione movimenti di scarico materie prime'
            Align = alTop
            Caption = 'movimenti scarico'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_gestione_movimenti_scaricoClick
            ExplicitTop = 60
            ExplicitWidth = 166
          end
        end
        object pannello_destra_02: TCategoryPanel [1]
          Top = 452
          Height = 30
          Caption = 'righe'
          Collapsed = True
          ParentColor = True
          TabOrder = 7
          ExpandedHeight = 91
          object v_equivalenti: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'seleziona articoli alternativi per il componente'
            Align = alTop
            Caption = 'alternativo'
            ImageIndex = 171
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_equivalentiClick
            ExplicitTop = 20
          end
          object v_equivalenti_filtro: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 
              'seleziona articoli alternativi al componente con filtro articolo' +
              ' da produrre'
            Align = alTop
            Caption = 'alternativo - filtro finito'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_equivalenti_filtroClick
            ExplicitTop = 40
          end
          object v_non_conformita: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'creazione non conformit'#224
            Align = alTop
            Caption = 'crea non conformit'#224
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_non_conformitaClick
            ExplicitTop = 60
          end
        end
        inherited pannello_destra_01: TCategoryPanel
          Top = 422
          Height = 30
          Caption = 'testata'
          Collapsed = True
          TabOrder = 2
          ExplicitTop = 422
          ExplicitHeight = 30
          ExpandedHeight = 86
          object v_formula: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'assegna valori variabili per formula in distinta base'
            Align = alTop
            Caption = 'visualizza variabli'
            ImageIndex = 170
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_formulaClick
          end
          object v_visequ: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'seleziona articoli equivalenti multilivello'
            Align = alTop
            Caption = 'equivalenti finito [F9]'
            ImageIndex = 170
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_visequClick
          end
          object v_cancella_collegati: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'cancella ordine e tutti i collegati'
            Align = alTop
            Caption = 'cancella con ordini collegati'
            ImageIndex = 170
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_cancella_collegatiClick
            ExplicitTop = 80
          end
        end
        inherited pannello_funzioni: TCategoryPanel
          inherited v_visfunz: TRzRapidFireButton
            ExplicitWidth = 166
          end
        end
        object CategoryPanel1: TCategoryPanel
          Top = 392
          Height = 30
          Caption = 'storni'
          Collapsed = True
          ParentColor = True
          TabOrder = 3
          ExpandedHeight = 86
          object v_storno_evasione: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'storna l'#39'evasione del documento'
            Align = alTop
            Caption = 'storno evasione'
            ImageIndex = 41
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_storno_evasioneClick
            ExplicitWidth = 166
          end
          object v_storno_movimenti: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 
              'storna i movimenti di scarico materia prima eseguiti direttament' +
              'e con MOVORDP'
            Align = alTop
            Caption = 'storno movimenti'
            ImageIndex = 41
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_storno_movimentiClick
            ExplicitWidth = 166
          end
          object v_storno_scarico_diretto: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'effettua lo storno dello scarico diretto materie prime'
            Align = alTop
            Caption = 'storno scarico diretto'
            ImageIndex = 41
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_storno_scarico_direttoClick
            ExplicitWidth = 166
          end
        end
        object CategoryPanel4: TCategoryPanel
          Top = 362
          Height = 30
          Caption = 'conto lavoro'
          Collapsed = True
          ParentColor = True
          TabOrder = 4
          ExpandedHeight = 70
          object v_ordine: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione ordine fornitore di conto lavoro'
            Align = alTop
            Caption = 'ordine conto lavoro'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_ordineClick
            ExplicitWidth = 166
          end
          object v_ddt_fornitore: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 
              'analisi dei ddt con il materiale inviato al fornitore in conto l' +
              'avoro'
            Align = alTop
            Caption = 'ddt conto lavoro'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_ddt_fornitoreClick
            ExplicitWidth = 166
          end
        end
        object CategoryPanel5: TCategoryPanel
          Top = 332
          Height = 30
          Caption = 'utilit'#224
          Collapsed = True
          ParentColor = True
          TabOrder = 5
          ExpandedHeight = 129
          object v_datconfas: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'esegui programma di assegnazione delle date di lavoro alle fasi'
            Align = alTop
            Caption = 'assegna date lavoro'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_datconfasClick
            ExplicitTop = 0
            ExplicitWidth = 166
          end
          object v_aggiorna_dsb: TRzRapidFireButton
            Left = 0
            Top = 60
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'aggiorna distinta base articolo da produrre'
            Align = alTop
            Caption = 'aggiorna dsb articolo'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_aggiorna_dsbClick
            ExplicitTop = 20
            ExplicitWidth = 166
          end
          object v_annulla_rda: TRzRapidFireButton
            Left = 0
            Top = 80
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'annulla richiesta d'#39'acquisto per il materiale'
            Align = alTop
            Caption = 'annulla rda'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_annulla_rdaClick
            ExplicitTop = 40
            ExplicitWidth = 166
          end
          object v_scarichi_extra: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'effettua scarichi extra materie prime utilizzate alla prima fase'
            Align = alTop
            Caption = 'scarico extra prima fase'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_scarichi_extraClick
            ExplicitTop = -10
            ExplicitWidth = 166
          end
          object v_scarico_diretto: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'effettua scarico diretto materie prime'
            Align = alTop
            Caption = 'scarico diretto'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_scarico_direttoClick
            ExplicitTop = 10
            ExplicitWidth = 166
          end
        end
        object CategoryPanel2: TCategoryPanel
          Top = 46
          Height = 286
          Caption = 'funzioni base'
          ParentColor = True
          TabOrder = 6
          object v_lettore: TRzRapidFireButton
            Left = 0
            Top = 180
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'acquisizione movimenti da lettore laser portatile'
            Align = alTop
            Caption = 'lettore'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_lettoreClick
            ExplicitTop = 120
            ExplicitWidth = 166
          end
          object v_opc: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'ciclo di lavorazione'
            Align = alTop
            Caption = 'gestione ciclo lavorazione'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_opcClick
            ExplicitTop = 20
            ExplicitWidth = 166
          end
          object v_evasione: TRzRapidFireButton
            Left = 0
            Top = 140
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'evasione dell'#39'ordine'
            Align = alTop
            Caption = 'evadi'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_evasioneClick
            ExplicitTop = 100
            ExplicitWidth = 166
          end
          object v_evasione_fasi: TRzRapidFireButton
            Left = 0
            Top = 60
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'evasione delle fasi di lavoro'
            Align = alTop
            Caption = 'avanzamento fasi'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_evasione_fasiClick
            ExplicitTop = 40
            ExplicitWidth = 166
          end
          object v_genera_ordine_produzione: TRzRapidFireButton
            Left = 0
            Top = 80
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'genera ordine di produzione per il semilavorato'
            Align = alTop
            Caption = 'crea ordine produzione'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_genera_ordine_produzioneClick
            ExplicitTop = 60
            ExplicitWidth = 166
          end
          object v_cruscotto: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'attiva cruscotto articoli'
            Align = alTop
            Caption = 'cruscotto articolo [F6]'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_cruscottoClick
            ExplicitTop = 0
            ExplicitWidth = 166
          end
          object v_stampa_etichetta: TRzRapidFireButton
            Left = 0
            Top = 220
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'stampa etichetta'
            Align = alTop
            Caption = 'stampa etichetta'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_stampa_etichettaClick
            ExplicitLeft = 5
            ExplicitTop = 200
            ExplicitWidth = 166
          end
          object v_documento_originale: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'documento origine'
            Align = alTop
            Caption = 'documento origine'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_documento_originaleClick
            ExplicitTop = 5
            ExplicitWidth = 166
          end
          object v_evasione_saldo: TRzRapidFireButton
            Left = 0
            Top = 160
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'chiusura forzata dell'#39'ordine di produzione'
            Align = alTop
            Caption = 'chiusura ordine'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_evasione_saldoClick
            ExplicitTop = 155
            ExplicitWidth = 166
          end
          object v_lotti_globali: TRzRapidFireButton
            Left = 0
            Top = 120
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'approntamento componenti di tutto l'#39'ordine'
            Align = alTop
            Caption = 'approntamento globale'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_lotti_globaliClick
            ExplicitTop = 135
            ExplicitWidth = 166
          end
          object v_cambia_deposito: TRzRapidFireButton
            Left = 0
            Top = 200
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'varia automaticamente deposito a tutte le righe'
            Align = alTop
            Caption = 'varia deposito righe'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_cambia_depositoClick
            ExplicitTop = 190
            ExplicitWidth = 166
          end
          object v_lotti: TRzRapidFireButton
            Left = 0
            Top = 100
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'approntamento componenti'
            Align = alTop
            Caption = 'approntamento'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_lottiClick
            ExplicitLeft = 5
            ExplicitTop = 110
            ExplicitWidth = 166
          end
          object v_analisi: TRzRapidFireButton
            Left = 0
            Top = 240
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'analisi multilivello ordini'
            Align = alTop
            Caption = 'analisi ordini'
            ImageIndex = 39
            Images = ARC.immagine_16
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_analisiClick
            ExplicitLeft = 5
            ExplicitTop = 255
            ExplicitWidth = 166
          end
        end
      end
      inherited pannello_destra_dati: TRzPanel
        inherited RzPanel9_testata: TRzPanel
          inherited v_bottone_dati_extra_testata: TRzRapidFireButton
            ExplicitTop = 156
            ExplicitHeight = 21
          end
        end
        inherited RzPanel1_riga: TRzPanel
          inherited v_bottone_dati_extra_righe: TRzRapidFireButton
            ExplicitTop = 489
            ExplicitWidth = 116
            ExplicitHeight = 21
          end
        end
      end
      object RzPanel17: TRzPanel
        Left = 0
        Top = 78
        Width = 189
        Height = 35
        Align = alTop
        BorderOuter = fsNone
        ParentColor = True
        TabOrder = 3
        object RzPanel18: TRzPanel
          Left = 0
          Top = 0
          Width = 95
          Height = 35
          Align = alLeft
          BorderOuter = fsNone
          ParentColor = True
          TabOrder = 0
          object Label16: TRzLabel
            Left = 0
            Top = 0
            Width = 95
            Height = 13
            Align = alTop
            Caption = '  situazione ordine'
            FocusControl = v_art_codice_materie_prime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
            ExplicitWidth = 85
          end
          object v_situazione: trzdbedit_go
            Left = 0
            Top = 13
            Width = 95
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tabella_ds
            DataField = 'situazione'
            ReadOnly = True
            Align = alTop
            Color = clLime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clLime
            ReadOnlyColorOnFocus = True
            TabOrder = 0
          end
        end
        object RzPanel19: TRzPanel
          Left = 94
          Top = 0
          Width = 95
          Height = 35
          Align = alRight
          BorderOuter = fsNone
          ParentColor = True
          TabOrder = 1
          object RzLabel13: TRzLabel
            Left = 0
            Top = 0
            Width = 95
            Height = 13
            Align = alTop
            Caption = '  situazione riga'
            FocusControl = v_art_codice_materie_prime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
            ExplicitWidth = 73
          end
          object trzdbedit_go2: trzdbedit_go
            Left = 0
            Top = 13
            Width = 95
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tabella_righe_ds
            DataField = 'SITUAZIONE'
            ReadOnly = True
            Align = alTop
            Color = clLime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clLime
            ReadOnlyColorOnFocus = True
            TabOrder = 0
          end
        end
      end
    end
    inherited RzPanel2_bottoni_nuovi: TRzPanel
      Top = 662
      Height = 2
      ExplicitTop = 662
      ExplicitHeight = 2
    end
  end
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select opt.*,'
      'case'
      
        'when (select fas_codice from opc where progressivo = opt.progres' +
        'sivo and situazione = '#39'iniziata'#39' order by sequenza desc limit 1)' +
        ' is not null'
      
        'then (select fas_codice from opc where progressivo = opt.progres' +
        'sivo and situazione = '#39'iniziata'#39' order by sequenza desc limit 1)'
      
        'when (select fas_codice from opc where progressivo = opt.progres' +
        'sivo and situazione = '#39'completata'#39' order by sequenza desc limit ' +
        '1) is not null'
      
        'then (select fas_codice from opc where progressivo = opt.progres' +
        'sivo and situazione = '#39'completata'#39' order by sequenza desc limit ' +
        '1)'
      'else '#39#39
      'end fas_codice,'
      
        '(select fas_codice from opc where progressivo = opt.progressivo ' +
        'order by sequenza desc limit 1) fas_codice_ultima,'
      'case'
      
        'when exists(select id from oar where documento_origine = '#39'produz' +
        'ione'#39' and doc_progressivo_origine = opt.progressivo) then '#39'si'#39
      'else '#39'no'#39
      'end esiste_oat,'
      ''
      'case'
      'when opt.cms_codice = '#39#39' then'
      
        '(select concat(trim(cli.descrizione1), '#39' '#39', cli.citta) from opt ' +
        'o'
      'inner join ovt on ovt.progressivo = o.ovr_progressivo'
      'inner join cli on cli.codice = ovt.cli_codice'
      'where o.progressivo = opt.progressivo_finito)'
      'else'
      '(select concat(trim(cli.descrizione1), '#39' '#39', cli.citta) from cms'
      'inner join cli on cli.codice = cms.cli_codice'
      'where cms.codice = opt.cms_codice)'
      'end cli_descrizione'
      ''
      'from opt'
      'where opt.progressivo = :progressivo'
      '/*NON  MODIFICARE LA RIGA PRECEDENTE*/'
      '')
  end
  inherited tabella_righe: TMyQuery_go
    SQL.Strings = (
      
        'select opr.*, concat(trim(art.descrizione1), '#39' '#39', art.descrizion' +
        'e2) art_descrizione, art.lotti,'
      'case'
      
        'when exists(select id from rda where rda.tipo_richiesta = '#39'ordin' +
        'i produzione'#39' and rda.ovr_progressivo = opr.progressivo and rda.' +
        'ovr_riga = opr.riga'
      
        'and rda.situazione <> '#39'evaso'#39' and rda.situazione <> '#39'annullato'#39' ' +
        'and rda.autorizzata = '#39'si'#39') then '#39'autorizzata'#39
      
        'when exists(select id from rda where rda.tipo_richiesta = '#39'ordin' +
        'i produzione'#39' and rda.ovr_progressivo = opr.progressivo and rda.' +
        'ovr_riga = opr.riga'
      
        'and rda.situazione <> '#39'evaso'#39' and rda.situazione <> '#39'annullato'#39')' +
        ' then '#39'si'#39
      'else '#39'no'#39
      'end rda,'
      
        'case when exists(select id from oar where oar.ovr_tipo = '#39'produz' +
        'ione'#39' and oar.ovr_progressivo = opr.progressivo and oar.ovr_riga' +
        ' = opr.riga) then '#39'si'#39' else '#39'no'#39' end oar,'
      
        'case when nct.chiusa is null or nct.chiusa = '#39'si'#39' then '#39'no'#39' else' +
        ' '#39'si'#39' end nca,'
      
        'coalesce(ceiling(opr.quantita / art.quantita_collo), 0) numero_c' +
        'olli,'
      
        'coalesce(ceiling(opr.quantita / art.pezzi_confezione), 0) numero' +
        '_confezioni'
      ', (select id from opt o where opr.semilavorato = '#39'si'#39
      'and o.progressivo_semilavorato = opr.progressivo'
      'and o.art_codice = opr.art_codice limit 1) id_semilavorato, '
      
        '(select dsb.id from dsb where dsb.art_codice_padre = opt.art_cod' +
        'ice and dsb.art_codice_figlio = opr.art_codice limit 1) esiste_d' +
        'sb'
      'from opr'
      'inner join opt on opt.progressivo = opr.progressivo'
      'left join art on art.codice = opr.art_codice'
      
        'left join ncr on ncr.documento_origine = '#39'produzione'#39' and ncr.do' +
        'c_progressivo_origine = opr.progressivo'
      'and ncr.doc_riga_origine = opr.riga'
      'left join nct on nct.progressivo = ncr.progressivo'
      'where opr.progressivo = :progressivo'
      'order by opr.riga')
    MasterFields = 'progressivo'
  end
  object esistenza_deposito_materie_prime_ds: TMyDataSource [18]
    DataSet = esistenza_deposito_materie_prime
    Left = 725
    Top = 65526
  end
  inherited tabella_dettaglio: TMyQuery_go
    SQL.Strings = (
      'select sum(quantita) quantita_ordinata '
      'from oar'
      'where'
      'documento_origine = '#39'produzione'#39
      'and doc_progressivo_origine = :progressivo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object esistenza_totale_materie_prime_ds: TMyDataSource [20]
    DataSet = esistenza_totale_materie_prime
    Left = 740
    Top = 65526
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      
        'select sum(esistenza) - sum(impegnato) + sum(ordinato) - sum(sco' +
        'rta_minima) disponibilita'
      'from mag mag'
      'inner join tma tma on (tma.codice = mag.tma_codice)'
      'where mag.art_codice = :art_codice'
      'and tma.proprieta = '#39'si'#39
      'group by mag.art_codice')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  inherited query_righe: TMyQuery_go
    SQL.Strings = (
      '')
    ParamData = <>
  end
  object esistenza_deposito_materie_prime: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select esistenza'
      'from mag'
      'where art_codice = :codice and tma_codice = :codice1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 370
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice1'
        Value = nil
      end>
  end
  object esistenza_totale_materie_prime: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(mag.esistenza) esistenza'
      'from mag mag'
      'left outer join tma tma on (mag.tma_codice = tma.codice)'
      'where art_codice = :codice and tma.proprieta = '#39'si'#39
      'group by art_codice'
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object esistenza_deposito_finiti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select esistenza'
      'from mag'
      'where art_codice = :codice and tma_codice = :codice1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 390
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice1'
        Value = nil
      end>
  end
  object esistenza_deposito_finiti_ds: TMyDataSource
    DataSet = esistenza_deposito_finiti
    Left = 400
    Top = 65526
  end
  object esistenza_totale_finiti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(mag.esistenza) esistenza'
      'from mag mag'
      'left outer join tma tma on (mag.tma_codice = tma.codice)'
      'where art_codice = :codice and tma.proprieta = '#39'si'#39
      'group by art_codice'
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 410
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object esistenza_totale_finiti_ds: TMyDataSource
    DataSet = esistenza_totale_finiti
    Left = 420
    Top = 65526
  end
  object query_figlio: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from dsb'
      'where art_codice_padre = :art_codice_padre'
      
        'and (data_inizio <= :data or data_inizio is null) and data_fine ' +
        '>= :data'
      'limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 430
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data'
        Value = nil
      end>
  end
  object dsb: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select dsb.*, art.tipo_articolo'
      'from dsb'
      'inner join art on art.codice = dsb.art_codice_figlio'
      'where art_codice_padre = :art_codice_padre'
      
        '  and (data_inizio <= :data_inizio or data_inizio is null) and d' +
        'ata_fine >= :data_fine'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 440
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_inizio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_fine'
        Value = nil
      end>
  end
  object riga_padre: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from opr'
      'where progressivo = :progressivo and riga = :riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 450
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
  object esiste_oat: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select oar.progressivo, oat.numero_documento, oat.serie_document' +
        'o, oat.data_documento, '
      'oar.doc_riga_origine, tda.tdo_codice_presso_terzi'
      'from oar'
      'inner join oat on oat.progressivo = oar.progressivo'
      'inner join tda on tda.codice = oat.tda_codice'
      'where documento_origine = '#39'produzione'#39
      'and doc_progressivo_origine = :progressivo_origine')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 460
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo_origine'
        Value = nil
      end>
  end
  object frn: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select frn.*, concat(trim(frn.descrizione1), '#39' '#39', frn.citta) frn' +
        '_descrizione'
      'from frn'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 470
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object esiste_dvt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from dvr'
      'where documento_origine = '#39'produzione'#39
      'and doc_progressivo_origine = :progressivo_origine'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 480
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo_origine'
        Value = nil
      end>
  end
  object oat_esistente: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from oat'
      'where frn_codice = :frn_codice'
      'and tla_codice = :tla_codice'
      'and tda_codice = :tda_codice'
      'and situazione = '#39'inserito'#39
      'and stampato = '#39#39
      'order by progressivo desc limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 490
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'frn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tla_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end>
  end
  object dvt_esistente: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from dvt'
      'where cli_codice = :cli_codice'
      'and tdo_codice = :tdo_codice'
      'and data_documento = :data_documento'
      'and situazione = '#39'inserito'#39
      'order by progressivo desc limit 1'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 500
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_documento'
        Value = nil
      end>
  end
  object query_mmt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select mmr.progressivo'
      'from mmr'
      'inner join mmt on mmt.progressivo = mmr.progressivo'
      'where mmt.opt_progressivo = :opt_progressivo'
      'and mmt.tmo_codice = :tmo_codice'
      'and mmr.art_codice = :art_codice'
      'order by mmt.data_registrazione')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 510
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'opt_progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tmo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object query_ddt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select dvr.progressivo'
      'from dvr'
      'inner join dvt on dvt.progressivo = dvr.progressivo'
      'where documento_origine = '#39'produzione'#39
      
        'and doc_progressivo_origine = :progressivo_origine  and doc_riga' +
        '_origine = :doc_riga_origine'
      'and art_codice = :art_codice'
      'order by dvt.data_documento'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 520
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'doc_riga_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object query_oat: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select progressivo, riga'
      'from oar'
      'where documento_origine = '#39'produzione'#39
      
        'and doc_progressivo_origine = :progressivo_origine  and doc_riga' +
        '_origine = 0'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 530
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo_origine'
        Value = nil
      end>
  end
  object query_rda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select '#39'rda'#39' archivio, art_codice, rda.progressivo, rda.situazio' +
        'ne, 0 riga'
      'from rda'
      
        'where tipo_richiesta = '#39'ordini produzione'#39' and ovr_progressivo =' +
        ' :ovr_progressivo and ovr_riga = :ovr_riga'
      'union all'
      
        'select '#39'oar'#39' archivio, art_codice, oar.progressivo, oar.situazio' +
        'ne, oar.riga'
      'from oar'
      
        'where ovr_tipo = '#39'produzione'#39' and ovr_progressivo = :ovr_progres' +
        'sivo and ovr_riga = :ovr_riga'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 540
    Top = 65526
    ParamData = <
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
        Name = 'ovr_progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_riga'
        Value = nil
      end>
  end
  object msg: TMyQuery_go
    Connection = ARC.arc
    SQL.Strings = (
      'select * from msg'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 550
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object lsa: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select prezzo'
      'from lsa'
      'where art_codice = :codice and tla_codice = :codice1 and '
      '  (data_inizio <= :codice2 and data_fine >= :codice3)'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 560
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice3'
        Value = nil
      end>
  end
  object varia_dsb: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from dsb'
      'where art_codice_padre = :art_codice_padre'
      'and art_codice_figlio = :art_codice_figlio'
      'and (data_inizio <= :data_inizio and data_fine >= :data_fine)'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 570
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_figlio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_inizio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_fine'
        Value = nil
      end>
  end
  object varia_dsb_last: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sequenza'
      'from dsb'
      'where art_codice_padre = :art_codice_padre'
      'order by sequenza desc limit 1'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 580
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end>
  end
  object cpa: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select gen_codice'
      'from cpa'
      'where tcf_codice = :tcf_codice'
      'and taq_codice = :taq_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 590
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcf_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'taq_codice'
        Value = nil
      end>
  end
  object rda_delete: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'delete from rda'
      'where progressivo = :progressivo')
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
  object dvt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from dvt'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 630
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object dvr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from dvr'
      'where progressivo = :progressivo and riga = :riga'
      '')
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
  object dvr_ultimo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select max(riga) riga'
      'from dvr'
      'where progressivo = :progressivo and riga < 1000'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 650
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object oat: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from oat'
      'where progressivo = :progressivo'
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 660
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object oar: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from oar'
      'where progressivo = :progressivo and riga = :riga'
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 670
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
  object oar_ultimo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select max(riga) riga'
      'from oar'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 680
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object lavorazioni: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select dsb.art_codice_figlio, dsb.quantita, art.descrizione1, ar' +
        't.descrizione2'
      'from dsb'
      'inner join art on art.codice = dsb.art_codice_figlio'
      
        'where art_codice_padre = :art_codice_padre and art.tipo_articolo' +
        ' = '#39'non fiscale'#39
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 690
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end>
  end
  object tmo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, lotti'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 805
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_ds: TMyDataSource
    DataSet = tmo
    Left = 814
    Top = 65526
  end
  object tma: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice'
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 820
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_ds: TMyDataSource
    DataSet = tma
    Left = 829
    Top = 65526
  end
  object tmo_codice_mp: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, lotti, esistenza'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 835
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_codice_mp_ds: TMyDataSource
    DataSet = tmo_codice_mp
    Left = 844
    Top = 65526
  end
  object tma_codice_mp: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice'
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 850
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_codice_mp_ds: TMyDataSource
    DataSet = tma_codice_mp
    Left = 859
    Top = 65526
  end
  object art_finiti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select art.*, concat(trim(art.descrizione1), '#39' '#39', trim(art.descr' +
        'izione2), '#39' '#39', art.codice_alternativo)descrizione,'
      
        'frn.tma_codice_conto_terzi, coalesce((select id from arv where a' +
        'rt_codice = art.codice limit 1), 0) arv_id'
      'from art'
      'left join frn on frn.codice = art.frn_codice'
      'where art.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 865
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_finiti_ds: TMyDataSource
    DataSet = art_finiti
    Left = 874
    Top = 65526
  end
  object frn_ds: TMyDataSource
    DataSet = frn
    Left = 754
    Top = 65526
  end
  object cms: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione1, tma_codice, chiusa,'
      
        '(select tipologia from cmt where cms_codice = cms.codice order b' +
        'y 1 limit 1) cmt_codice'
      'from cms'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 880
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
    Left = 889
    Top = 65526
  end
  object cmt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, tma_codice'
      'from cmt'
      'where cms_codice = :cms_codice and tipologia = :tipologia'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 895
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
    Left = 904
    Top = 65526
  end
  object art_materie_prime: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select art.*, concat(trim(art.descrizione1), '#39' '#39', trim(art.descr' +
        'izione2), '#39' '#39', art.codice_alternativo) descrizione'
      'from art'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 910
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_materie_prime_ds: TMyDataSource
    DataSet = art_materie_prime
    Left = 919
    Top = 65526
  end
  object opr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update opr'
      'set ddtclav_quantita = 0'
      'where progressivo = :progressivo and ddtclav_quantita <> 0')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 950
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object tma_righe: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 820
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_righe_ds: TMyDataSource
    DataSet = tma_righe
    Left = 835
    Top = 30
  end
  object dsb_tma: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select tma_codice'
      'from dsb'
      
        'where art_codice_padre = :art_codice_padre and art_codice_figlio' +
        ' = :art_codice_figlio and'
      
        '(data_inizio <= :data_inizio or data_inizio is null) and data_fi' +
        'ne >= :data_fine'
      ''
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 850
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_figlio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_inizio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_fine'
        Value = nil
      end>
  end
  object cambia_deposito: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update opr'
      'set tma_codice = :tma_codice'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 945
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object evasione_saldo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update opr'
      'set tma_codice = :tma_codice'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 924
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object esistenza_principale_finiti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select esistenza'
      'from mag'
      'where art_codice = :codice and tma_codice = :codice1'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 310
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice1'
        Value = nil
      end>
  end
  object esistenza_principale_finiti_ds: TMyDataSource
    DataSet = esistenza_principale_finiti
    Left = 329
    Top = 30
  end
  object esistenza_principale_materie_prime: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select esistenza'
      'from mag'
      'where art_codice = :codice and tma_codice = :codice1'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 360
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice1'
        Value = nil
      end>
  end
  object esistenza_principale_materie_prime_ds: TMyDataSource
    DataSet = esistenza_principale_materie_prime
    Left = 379
    Top = 30
  end
  object esiste_opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select documento_origine, doc_progressivo_origine, doc_riga_orig' +
        'ine, sum(quantita) quantita, count(*) numero'
      'from opt'
      
        'where documento_origine = '#39'ordine produzione'#39' and doc_progressiv' +
        'o_origine = :progressivo and'
      'doc_riga_origine = :riga'
      
        'group by documento_origine, doc_progressivo_origine, doc_riga_or' +
        'igine'
      ''
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 880
    Top = 30
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
  object rda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from rda'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 555
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object query_abilita_rda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select art_codice'
      'from rda'
      
        'where tipo_richiesta = '#39'ordini produzione'#39' and ovr_progressivo =' +
        ' :ovr_progressivo and ovr_riga = :ovr_riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 580
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_riga'
        Value = nil
      end>
  end
  object cla: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select cla.*, fas.tipo_operazione fas_tipo_operazione, fas.mac_c' +
        'odice, '
      
        'case when cla.gg_anticipo = 0 then fas.gg_anticipo else cla.gg_a' +
        'nticipo end gg_anticipo_ciclo'
      'from cla'
      'inner join fas on fas.codice = cla.fas_codice'
      'left join mac on mac.codice = fas.mac_codice'
      'where cla.art_codice = :art_codice'
      'order by cla.sequenza'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 610
    Top = 30
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
        'aggio, quantita, quantita_fine_attrezzaggio,'
      'tipo_operazione, costo_totale, note, mac_codice)'
      'values'
      
        '(:progressivo, :sequenza, :fas_codice, :frn_codice, :quantita_at' +
        'trezzaggio, :quantita, :quantita_fine_attrezzaggio,'
      ':tipo_operazione, :costo_totale, :note, :mac_codice)')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 640
    Top = 30
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
        Name = 'quantita_fine_attrezzaggio'
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
  object opc_totalizza: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select coalesce(sum(opc.costo_totale), 0) costo'
      'from opc'
      'inner join opt on opt.progressivo = opc.progressivo'
      'where opc.progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 670
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
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
    Left = 700
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object opc_costo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select coalesce(sum(opc.costo_totale) / sum(opt.quantita), 0) pr' +
        'ezzo'
      'from opc'
      'inner join opt on opt.progressivo = opc.progressivo'
      'where opc.progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 720
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from art'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 465
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object opr_esplosione: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'insert into opr'
      '  (progressivo, riga, art_codice, quantita, semilavorato,'
      
        '   costo_unitario, tma_codice, formula, note, quantita_approntat' +
        'a, assistenza_tecnica, sequenza_dsb)'
      'values'
      '  (:progressivo, :riga, :art_codice, :quantita, :semilavorato,'
      
        '   :costo_unitario, :tma_codice, :formula, :note, :quantita_appr' +
        'ontata, :assistenza_tecnica, :sequenza_dsb)')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 495
    Top = 30
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
        Name = 'costo_unitario'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'formula'
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
        Name = 'assistenza_tecnica'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sequenza_dsb'
        Value = nil
      end>
  end
  object ltm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from ltm'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 740
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object mag_approntato: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from mag'
      'where art_codice = :art_codice and tma_codice = :tma_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 765
    Top = 30
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
  object opc_gesorda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select fas.descrizione, opc.note'
      'from opc'
      'inner join fas on fas.codice = opc.fas_codice'
      'where opc.progressivo = :progressivo'
      'order by opc.sequenza'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 640
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
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
    Left = 670
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object rda_oar: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select '#39'progressivo rda:'#39' archivio, progressivo, art_codice_rich' +
        'iesta art_codice'
      'from rda'
      
        'where tipo_richiesta = '#39'ordini produzione'#39' and ovr_progressivo =' +
        ' :progressivo'
      'and situazione <> '#39'evaso'#39' and situazione <> '#39'respinto'#39
      'union all'
      
        'select '#39'progressivo ordine fornitore:'#39' archivio, progressivo, ar' +
        't_codice'
      'from oar'
      'where ovr_tipo = '#39'produzione'#39' and ovr_progressivo = :progressivo'
      'and (situazione = '#39'inserito'#39' or situazione = '#39'evaso parziale'#39')')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 700
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object esiste_oat_mp: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select oar.riga, oar.art_codice'
      'from oar'
      'inner join oat on oat.progressivo = oar.progressivo'
      'where documento_origine = '#39'produzione'#39
      
        'and doc_progressivo_origine = :progressivo  and doc_riga_origine' +
        ' = :riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 740
    Top = 55
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
  object ovr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from ovr'
      'where progressivo = :progressivo and riga = :riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 770
    Top = 55
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
  object cnf: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from cnf'
      
        'where configurazione = :configurazione and art_codice = :art_cod' +
        'ice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 800
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'configurazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object ltm_approntato: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from ltm'
      
        'where documento_origine = '#39'ordine produzione'#39' and esistenza = '#39'a' +
        'pprontato'#39
      
        'and doc_progressivo_origine = :progressivo and doc_riga_origine ' +
        '= :riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 825
    Top = 55
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
  object tda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from tda'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 850
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tdo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from tdo'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 875
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object esistenza_deposito: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select esistenza, impegnato, scorta_minima'
      'from mag'
      'where art_codice = :art_codice and tma_codice = :tma_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 905
    Top = 50
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
  object art_quantita: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(quantita) quantita'
      'from ovr'
      
        'where progressivo = :progressivo and art_codice = :art_codice an' +
        'd tma_codice = :tma_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 935
    Top = 50
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
        Name = 'tma_codice'
        Value = nil
      end>
  end
  object dvr_art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select riga'
      'from dvr'
      'where progressivo = :progressivo and art_codice = :art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 960
    Top = 50
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
      end>
  end
  object cli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select concat(trim(cli.descrizione1), '#39' '#39', cli.citta) descrizion' +
        'e'
      'from opt '
      'left join ovt on ovt.progressivo = opt.ovr_progressivo  '
      'left join cli on cli.codice = ovt.cli_codice'
      'where opt.progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 640
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object ordini_collegati: TVirtualTable
    IndexFieldNames = 'progressivo'
    Left = 310
    Top = 80
    Data = {04000000000000000000}
    object ordini_collegatiprogressivo: TIntegerField
      FieldName = 'progressivo'
    end
    object ordini_collegatiquantita: TFloatField
      FieldName = 'quantita'
    end
    object ordini_collegatifrn_codice: TStringField
      FieldName = 'frn_codice'
      Size = 8
    end
  end
  object query_ordini_collegati: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 340
    Top = 80
  end
  object opc_chiuso: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select opc.id'
      'from opc '
      'inner join opt on opt.progressivo = opc.progressivo'
      
        'where opc.progressivo = :progressivo and opc.situazione <> '#39'comp' +
        'letata'#39
      'and opt.situazione <> '#39'evaso'#39
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 670
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object opc_quantita: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select quantita_prodotti'
      'from opc '
      'where progressivo = :progressivo and situazione = '#39'completata'#39
      'order by sequenza desc'
      'limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 700
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object arf: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select arf.art_codice_conto_lavoro, art.tiv_codice_acquisti, '
      'case'
      'when art.tum_codice_acquisti = '#39#39' then art.tum_codice'
      'else art.tum_codice_acquisti'
      'end tum_codice'
      'from arf '
      'inner join art on art.codice = arf.art_codice_conto_lavoro'
      
        'where arf.frn_codice = :frn_codice and arf.art_codice = :art_cod' +
        'ice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 740
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'frn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object top: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from top'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 590
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object top_ds: TMyDataSource
    DataSet = top
    Left = 609
    Top = 80
  end
  object mmr_costo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(importo + importo_spese) importo'
      'from mmr'
      'inner join mmt on mmt.progressivo = mmr.progressivo'
      
        'where mmt.documento_origine = '#39'ordini produzione'#39' and mmt.doc_pr' +
        'ogressivo_origine = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 770
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object opc_quantita_iniziata: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select max(quantita_iniziata) quantita_iniziata'
      'from opc'
      'where progressivo = :progressivo and situazione = '#39'iniziata'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 800
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object lot: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from lot'
      'where art_codice = :art_codice and lotto = :lotto')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 830
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lotto'
        Value = nil
      end>
  end
  object materie_prime: TVirtualTable
    IndexFieldNames = 'progressivo;riga'
    BeforeInsert = materie_primeBeforeInsert
    BeforeDelete = materie_primeBeforeDelete
    Left = 380
    Top = 80
    Data = {04000000000000000000}
    object materie_primeart_codice_finito: TStringField
      DisplayWidth = 50
      FieldName = 'art_codice_finito'
      Size = 50
    end
    object materie_primeart_codice: TStringField
      DisplayWidth = 50
      FieldName = 'art_codice'
      Size = 50
    end
    object materie_primeart_descrizione: TStringField
      DisplayWidth = 100
      FieldName = 'art_descrizione'
      Size = 100
    end
    object materie_primequantita_calcolata: TFloatField
      FieldName = 'quantita_calcolata'
    end
    object materie_primequantita: TFloatField
      FieldName = 'quantita'
    end
    object materie_primequantita_evasa: TFloatField
      FieldName = 'quantita_evasa'
    end
    object materie_primetma_codice: TStringField
      FieldName = 'tma_codice'
      Size = 4
    end
    object materie_primeprogressivo: TIntegerField
      FieldName = 'progressivo'
    end
    object materie_primeriga: TIntegerField
      FieldName = 'riga'
    end
    object materie_primeignora_articoli_produzione: TStringField
      FieldName = 'ignora_articoli_produzione'
      Size = 2
    end
  end
  object opc_fasi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id'
      'from opc '
      'where progressivo = :progressivo and situazione <> '#39'inserita'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 860
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object mmt_ordp: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select mmt.data_registrazione, mmt.progressivo, mmt.tmo_codice, ' +
        'tmo.descrizione tmo_descrizione, '
      'mmt.tma_codice, tma.descrizione tma_descrizione, '
      'mmt.numero_documento, mmt.serie_documento, mmt.data_documento,'
      
        'coalesce((select quantita from mmr where progressivo = mmt.progr' +
        'essivo and art_codice = :art_codice), 0) quantita'
      'from mmt '
      'inner join tmo on tmo.codice = mmt.tmo_codice'
      'inner join tma on tma.codice = mmt.tma_codice'
      'where mmt.documento_origine = '#39'ordini produzione'#39
      'and mmt.doc_progressivo_origine = :doc_progressivo_origine'
      '-- and mmt.ese_codice = :ese_codice'
      
        'and exists(select id from mmr where progressivo = mmt.progressiv' +
        'o and art_codice = :art_codice)'
      'order by 1,2')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 890
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'doc_progressivo_origine'
        Value = nil
      end
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
    Left = 920
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object art_opt: TMyQuery_go
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
    Left = 945
    Top = 80
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
  object utntop: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select top_codice'
      'from utntop'
      'where utn_codice = :utn_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 560
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end>
  end
  object fls: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select prezzo'
      'from fls'
      'where frn_codice = :frn_codice'
      'and art_codice = :art_codice'
      'and :data between data_inizio and data_fine'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 530
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'frn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data'
        Value = nil
      end>
  end
  object aggiorna_dsb: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 420
    Top = 80
  end
  object dsb_update: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from dsb'
      'where art_codice_padre = :art_codice_padre'
      'and sequenza = :sequenza'
      'and art_codice_figlio = :art_codice_figlio')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 445
    Top = 80
    ParamData = <
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
  object cla_update: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from cla'
      'where art_codice = :art_codice'
      'and sequenza = :sequenza'
      'and fas_codice = :fas_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 470
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
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
      end>
  end
  object opc_dsb: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select opc.*, fas.tipo_operazione'
      'from opc'
      'inner join fas on fas.codice = opc.fas_codice'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 495
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
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
    Left = 280
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object ltm_riga: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(quantita) quantita'
      'from ltm'
      'where documento_origine = '#39'ordine produzione'#39
      'and doc_progressivo_origine = :progressivo'
      'and doc_riga_origine = :riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 250
    Top = 80
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
  object fas: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id'
      'from opc'
      
        'where progressivo = :progressivo and frn_codice = '#39#39' and situazi' +
        'one = '#39'completata'#39
      'order by sequenza'
      'limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 220
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object meno_presso_terzi: TPopupMenu
    Images = ARC.immagine_16
    Left = 780
    Top = 7
    object tool_lavorazione_presso_terzi: TMenuItem
      Caption = 'emissione ordine di lavorazione al fornitore'
      Enabled = False
      Hint = 'emissione ordine di lavorazione al fornitore'
      ImageIndex = 90
      OnClick = tool_lavorazione_presso_terziClick
    end
    object tool_ddt_lavorazione_presso_terzi: TMenuItem
      Caption = 'emissione ddt di conto lavoro'
      Enabled = False
      Hint = 'emissione del ddt di conto lavoro'
      ImageIndex = 91
      OnClick = tool_ddt_lavorazione_presso_terziClick
    end
  end
  object menu_rda: TPopupMenu
    Images = ARC.immagine_16
    Left = 885
    Top = 7
    object tool_rda: TMenuItem
      Caption = 'creazione richiesta d'#39'acquisto'
      Enabled = False
      Hint = 'creazione richiesta d'#39'acquisto per la singo,a riga'
      ImageIndex = 35
      OnClick = tool_rdaClick
    end
    object tool_rda_totale: TMenuItem
      Caption = 'creazione richiesta d'#39'acquisto globale'
      Enabled = False
      Hint = 
        'creazione richiesta d'#39'acquisto per tutte le righe di materia pri' +
        'ma'
      ImageIndex = 156
      OnClick = tool_rda_totaleClick
    end
  end
  object mnu_distinta: TPopupMenu
    Images = ARC.immagine_16
    Left = 845
    Top = 7
    object tool_distinta: TMenuItem
      Caption = 'distinta di prelievo materiali'
      Enabled = False
      ImageIndex = 90
      OnClick = tool_distintaClick
    end
    object tool_staordfas: TMenuItem
      Caption = 'stampa riepilogo fasi'
      Enabled = False
      ImageIndex = 26
      OnClick = tool_staordfasClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object tool_etiart: TMenuItem
      Caption = 'stampa etichette ETIART'
      Enabled = False
      ImageIndex = 174
      OnClick = tool_etiartClick
    end
  end
end
