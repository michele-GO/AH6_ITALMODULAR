inherited GESACQ: TGESACQ
  Left = 190
  Top = 56
  Caption = 'GESACQ'
  ClientWidth = 1079
  ExplicitWidth = 1095
  DesignSize = (
    1079
    701)
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1079
    ExplicitWidth = 1079
    inherited tool_ins_righe: TToolButton
      ExplicitWidth = 54
    end
    object tool_evasione: TToolButton
      Left = 795
      Top = 0
      Hint = 'evasione documento'
      Caption = 'tool_evasione'
      Enabled = False
      ImageIndex = 137
      OnClick = tool_evasioneClick
    end
    object tool_etiart: TToolButton
      Left = 834
      Top = 0
      Hint = 'stampa etichette'
      Caption = 'tool_etiart'
      Enabled = False
      ImageIndex = 115
      OnClick = tool_etiartClick
    end
    object tool_sequenza: TToolButton
      Left = 873
      Top = 0
      Hint = 'cambia sequenza riga'
      Caption = 'tool_sequenza'
      Enabled = False
      ImageIndex = 101
      Style = tbsCheck
      OnClick = tool_sequenzaClick
    end
    object tool_documenti_collegati: TToolButton
      Left = 912
      Top = 0
      Hint = 'gestione documenti collegati ed esportazione file Excel'
      Caption = 'tool_documenti_collegati'
      DropdownMenu = PopupMenu_documenti
      ImageIndex = 170
      Style = tbsDropDown
    end
    object v_totalizza: TToolButton
      Left = 966
      Top = 0
      Hint = 'totalizza il documento'
      Caption = 'v_totalizza'
      Enabled = False
      ImageIndex = 168
      OnClick = v_totalizzaClick
    end
  end
  inherited statusbar: TStatusBar
    Width = 1079
    ExplicitWidth = 1079
  end
  inherited pannello_campi: TRzPanel
    Width = 888
    ExplicitWidth = 888
    DesignSize = (
      888
      639)
    object Label4: TRzLabel [0]
      Left = 85
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
    object Label_revisione: TRzLabel [1]
      Left = 850
      Top = 0
      Width = 25
      Height = 13
      Caption = 'revis.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label11: TRzLabel [2]
      Left = 788
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
    object Label13: TRzLabel [3]
      Left = 500
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
    object Label28: TRzLabel [4]
      Left = 385
      Top = 0
      Width = 83
      Height = 13
      Caption = 'data registrazione'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object v_l_frn_codice: TRzLabel [5]
      Left = 86
      Top = 37
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
    object l_numero_documento_alfa: TRzLabel [6]
      Left = 585
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
    object Label86: TRzLabel [7]
      Left = 700
      Top = 35
      Width = 75
      Height = 13
      Caption = 'totale imponibile'
      ShowAccelChar = False
      Transparent = True
    end
    object Label85: TRzLabel [8]
      Left = 795
      Top = 35
      Width = 82
      Height = 13
      Caption = 'totale documento'
      ShowAccelChar = False
      Transparent = True
    end
    object l_numero_documento: TRzLabel [9]
      Left = 700
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
    inherited tab_control: TRzPageControl
      Top = 75
      Width = 886
      Height = 171
      ActivePage = tab_testata_magazzino
      TabIndex = 3
      TabOrder = 7
      ExplicitTop = 75
      ExplicitWidth = 886
      ExplicitHeight = 171
      FixedDimension = 18
      inherited tab_pagina1: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 884
        ExplicitHeight = 151
        object Label6: TRzLabel
          Left = 5
          Top = 2
          Width = 26
          Height = 13
          Caption = 'listino'
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
          Left = 5
          Top = 37
          Width = 53
          Height = 13
          Caption = 'pagamento'
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
          Left = 430
          Top = 37
          Width = 63
          Height = 13
          Caption = 'sconto cassa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label15: TRzLabel
          Left = 5
          Top = 72
          Width = 29
          Height = 13
          Caption = 'valuta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label16: TRzLabel
          Left = 430
          Top = 72
          Width = 34
          Height = 13
          Caption = 'cambio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label57: TRzLabel
          Left = 520
          Top = 72
          Width = 94
          Height = 13
          Caption = 'gg / data consegna'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label8: TRzLabel
          Left = 640
          Top = 72
          Width = 57
          Height = 13
          Caption = 'data validit'#224
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label60: TRzLabel
          Left = 720
          Top = 72
          Width = 63
          Height = 13
          Caption = 'importo totale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label73: TRzLabel
          Left = 795
          Top = 72
          Width = 68
          Height = 13
          Caption = 'data conferma'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_tla_codice: trzdbedit_go
          Left = 5
          Top = 15
          Width = 50
          Height = 21
          Hint = 'codice listino [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tla_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnExit = v_tla_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTLA'
          lookcolltable = 'TLA'
          lookcollvisname = 'TLA'
        end
        object v_tpa_codice: trzdbedit_go
          Left = 5
          Top = 50
          Width = 50
          Height = 21
          Hint = 'codice pagamento [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tpa_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnEnter = v_tpa_codiceEnter
          OnExit = v_tpa_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTPA'
          lookcolltable = 'TPA'
          lookcollvisname = 'TPA'
        end
        object v_tsm_codice: trzdbedit_go
          Left = 430
          Top = 50
          Width = 50
          Height = 21
          Hint = 'codice sconto cassa [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tsm_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
          OnExit = v_tsm_codiceExit
          OnKeyDown = v_tsm_codiceKeyDown
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTSM'
          lookcolltable = 'TSM'
          lookcollvisname = 'TSM'
        end
        object v_tva_codice: trzdbedit_go
          Left = 5
          Top = 85
          Width = 50
          Height = 21
          Hint = 'codice valuta [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tva_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 4
          OnChange = v_tva_codiceChange
          OnEnter = v_tva_codiceEnter
          OnExit = v_tva_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTVA'
          lookcolltable = 'TVA'
          lookcollvisname = 'TVA'
        end
        object v_cambio: trzdbnumericedit_go
          Left = 430
          Top = 85
          Width = 86
          Height = 21
          Hint = 'cambio del giorno [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'cambio'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 5
          OnEnter = v_cambioEnter
          OnExit = v_cambioExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.000000'
          decimalplaces = 6
          lookcolltable = 'TVF'
          lookcollvisname = 'TVZ'
        end
        object Panel7: TRzPanel
          Left = 430
          Top = 15
          Width = 96
          Height = 21
          BorderOuter = fsNone
          Enabled = False
          ParentColor = True
          TabOrder = 6
          object v_listino_con_iva: TRzDBCheckBox
            Left = 1
            Top = 2
            Width = 83
            Height = 15
            DataField = 'listino_con_iva'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'listino con iva'
            Enabled = False
            TabOrder = 0
          end
        end
        object v_data_consegna: trzdbdatetimeedit_go
          Left = 560
          Top = 85
          Width = 76
          Height = 21
          Hint = 'data consegna richiesta [Alt+Gi'#249' per aprire il calendario]'
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
          OnExit = v_data_consegnaExit
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 46070.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_data_validita: trzdbdatetimeedit_go
          Left = 640
          Top = 85
          Width = 76
          Height = 21
          Hint = 'data validit'#224' comunicata [Alt+Gi'#249' per aprire il calendario]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_validita'
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
          TabOrder = 9
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 46070.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object Panel1: TRzPanel
          Left = 0
          Top = 110
          Width = 429
          Height = 36
          BorderOuter = fsNone
          Enabled = False
          ParentColor = True
          TabOrder = 10
          object v_l_esercizio: TRzLabel
            Left = 5
            Top = 0
            Width = 41
            Height = 13
            Caption = 'esercizio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label32: TRzLabel
            Left = 60
            Top = 0
            Width = 72
            Height = 13
            Caption = 'stato emissione'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object RzLabel2: TRzLabel
            Left = 140
            Top = 0
            Width = 30
            Height = 13
            Caption = 'utente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object v_esercizio: trzdbedit_go
            Left = 5
            Top = 15
            Width = 46
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'ese_codice'
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
          end
          object v_iva_sospensione: TRzDBCheckBox
            Left = 235
            Top = 18
            Width = 70
            Height = 15
            DataField = 'iva_sospensione'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'iva differita'
            Enabled = False
            TabOrder = 1
          end
          object v_percipienti: TRzDBCheckBox
            Left = 367
            Top = 18
            Width = 54
            Height = 15
            DataField = 'percipienti'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'ritenuta'
            Enabled = False
            TabOrder = 2
          end
          object v_stampato: trzdbedit_go
            Left = 60
            Top = 15
            Width = 76
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'STAMPATO'
            Color = clYellow
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
          object v_utn_codice_inviato: trzdbedit_go
            Left = 140
            Top = 15
            Width = 81
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tabella_ds
            DataField = 'utn_codice_inviato'
            ReadOnly = True
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clYellow
            ReadOnlyColorOnFocus = True
            TabOrder = 4
          end
          object v_intra: TRzDBCheckBox
            Left = 315
            Top = 18
            Width = 39
            Height = 15
            DataField = 'intra'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'intra'
            Enabled = False
            TabOrder = 5
          end
        end
        object v_tla_descrizione: trzdbeditdescrizione_go
          Left = 60
          Top = 15
          Width = 361
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tla_ds
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
        object RzDBEditDescrizione_go1: trzdbeditdescrizione_go
          Left = 60
          Top = 50
          Width = 361
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tpa_ds
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
        object RzDBEditDescrizione_go2: trzdbeditdescrizione_go
          Left = 60
          Top = 85
          Width = 361
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tva_ds
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
        object RzDBEditDescrizione_go3: trzdbeditdescrizione_go
          Left = 485
          Top = 50
          Width = 386
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tsm_ds
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
        object v_importo_totale_digitato: trzdbnumericedit_go
          Left = 720
          Top = 85
          Width = 71
          Height = 21
          Hint = 'importo totale documento per controllo quadratura'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'importo_totale_digitato'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 15
          OnExit = v_cambioExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
          decimalplaces = 6
        end
        object v_data_consegna_confermata: trzdbdatetimeedit_go
          Left = 795
          Top = 85
          Width = 76
          Height = 21
          Hint = 'data consegna confermata dal fornitore [Alt+Gi'#249'=apre calendario]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_consegna_confermata'
          AutoSelect = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 16
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 46070.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_non_fatturare: TRzDBCheckBox
          Left = 540
          Top = 18
          Width = 79
          Height = 15
          Hint = 
            'spunta per indicare che il documento di vendita non '#232' da fattura' +
            're'
          DataField = 'NON_FATTURARE'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'non fatturare'
          TabOrder = 1
          TabStop = False
        end
        object v_giorni_consegna: trzdbnumericedit_go
          Left = 520
          Top = 85
          Width = 36
          Height = 21
          Hint = 'giorni di consegna del fornitore'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'giorni_consegna'
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
          OnEnter = v_giorni_consegnaEnter
          OnExit = v_giorni_consegnaExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_no_ordinato: TRzDBCheckBox
          Left = 645
          Top = 18
          Width = 72
          Height = 15
          Hint = 
            'spunta per indicare che il documento non deve aggiornare l'#39'ordin' +
            'ato a fornitori'
          DataField = 'no_ordinato'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'no ordinato'
          TabOrder = 18
          TabStop = False
        end
        object v_accettato: TRzDBCheckBox
          Left = 640
          Top = 128
          Width = 120
          Height = 15
          DataField = 'ACCETTATO'
          DataSource = tabella_ds
          ReadOnly = True
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'documento accettato'
          ParentColor = False
          TabOrder = 17
          TabStop = False
          OnClick = v_accettatoClick
        end
      end
      object tab_testata_riferimento: TRzTabSheet
        Color = clWindow
        Caption = 'riferimento'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label47: TRzLabel
          Left = 80
          Top = 2
          Width = 14
          Height = 13
          Caption = 'iva'
          ShowAccelChar = False
          Transparent = True
        end
        object Label49: TRzLabel
          Left = 5
          Top = 37
          Width = 65
          Height = 13
          Caption = 'ns. riferimento'
          FocusControl = v_riferimento
          ShowAccelChar = False
          Transparent = True
        end
        object Label50: TRzLabel
          Left = 350
          Top = 37
          Width = 14
          Height = 13
          Caption = 'del'
          ShowAccelChar = False
          Transparent = True
        end
        object Label51: TRzLabel
          Left = 5
          Top = 72
          Width = 63
          Height = 13
          Caption = 'note apertura'
          ShowAccelChar = False
          Transparent = True
        end
        object Label53: TRzLabel
          Left = 435
          Top = 72
          Width = 64
          Height = 13
          Caption = 'note chiusura'
          ShowAccelChar = False
          Transparent = True
        end
        object Label65: TRzLabel
          Left = 550
          Top = 107
          Width = 131
          Height = 13
          Caption = 'mese trimestre anno rettifica'
          ShowAccelChar = False
          Transparent = True
        end
        object Label71: TRzLabel
          Left = 5
          Top = 107
          Width = 60
          Height = 13
          Caption = 'nazione intra'
          ShowAccelChar = False
          Transparent = True
        end
        object Label81: TRzLabel
          Left = 435
          Top = 37
          Width = 95
          Height = 13
          Caption = 'riferimento (persona)'
          FocusControl = v_contatto_commerciale
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel1: TRzLabel
          Left = 6
          Top = 2
          Width = 58
          Height = 13
          Caption = 'dich. intento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_tiv_codice: trzdbedit_go
          Left = 80
          Top = 15
          Width = 50
          Height = 21
          Hint = 'codice iva di esenzione o non imponibilit'#224' [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tiv_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnExit = v_tiv_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTIV'
          lookcolltable = 'TIV'
          lookcollvisname = 'TIV'
        end
        object v_riferimento: trzdbedit_go
          Left = 5
          Top = 50
          Width = 341
          Height = 21
          Hint = 'riferimento'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'riferimento'
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
        object v_data_riferimento: trzdbdatetimeedit_go
          Left = 350
          Top = 50
          Width = 75
          Height = 21
          Hint = 'data del riferimento [Alt+Gi'#249' per aprire il calendario]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_riferimento'
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
          TabOrder = 3
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 46070.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_tcd_codice_apertura: trzdbedit_go
          Left = 5
          Top = 85
          Width = 50
          Height = 21
          Hint = 'codice note di apertura documento [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tcd_codice_apertura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          OnExit = v_tcd_codice_aperturaExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTCD'
          lookcolltable = 'TCD'
          lookcollvisname = 'TCD'
        end
        object v_tcd_codice_chiusura: trzdbedit_go
          Left = 435
          Top = 85
          Width = 50
          Height = 21
          Hint = 'codice note di chiusura documento [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tcd_codice_chiusura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 7
          OnExit = v_tcd_codice_chiusuraExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTCD'
          lookcolltable = 'TCD'
          lookcollvisname = 'TCD'
        end
        object v_rettifica_intra: TRzDBCheckBox
          Left = 435
          Top = 122
          Width = 76
          Height = 15
          Hint = 
            'spunta se il documento rettifica una dichiarazione intrastat pre' +
            'cedente'
          DataField = 'rettifica_intra'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'rettifica intra'
          Enabled = False
          TabOrder = 9
          OnClick = v_rettifica_intraClick
          OnExit = v_rettifica_intraExit
        end
        object v_tna_codice_intra: trzdbedit_go
          Left = 5
          Top = 120
          Width = 50
          Height = 21
          Hint = 'codice nazione intrastat da cui proviene la merce [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tna_codice_intra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 8
          OnExit = v_tna_codice_intraExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTNA'
          lookcolltable = 'TNA'
          lookcollvisname = 'TNA'
        end
        object v_mese_rettifica_intra: trzdbnumericedit_go
          Left = 550
          Top = 120
          Width = 36
          Height = 21
          Hint = 'mese da rettificare [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'mese_rettifica_intra'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 2
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 10
          OnExit = v_mese_rettifica_intraExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_trimestre_rettifica_intra: trzdbnumericedit_go
          Left = 590
          Top = 120
          Width = 26
          Height = 21
          Hint = 'trimestre da rettificare [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'trimestre_rettifica_intra'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 1
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 11
          OnExit = v_trimestre_rettifica_intraExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_anno_rettifica_intra: trzdbnumericedit_go
          Left = 620
          Top = 120
          Width = 61
          Height = 21
          Hint = 'anno da rettificare [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'anno_rettifica_intra'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 4
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 12
          OnExit = v_anno_rettifica_intraExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_reverse_change: TRzDBCheckBox
          Left = 435
          Top = 18
          Width = 90
          Height = 15
          Hint = 
            'spunta per attivare la modalit'#224' di reverse charge sulle fatture ' +
            'del fornitore (es. nei subappalti)'
          DataField = 'reverse_change'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'reverse charge'
          TabOrder = 4
          TabStop = False
          OnClick = v_reverse_changeClick
        end
        object RzDBEditDescrizione_go8: trzdbeditdescrizione_go
          Left = 135
          Top = 15
          Width = 291
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tiv_ds
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
        object RzDBEditDescrizione_go10: trzdbeditdescrizione_go
          Left = 60
          Top = 85
          Width = 366
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tcd_apertura_ds
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
        object RzDBEditDescrizione_go11: trzdbeditdescrizione_go
          Left = 495
          Top = 85
          Width = 361
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tcd_chiusura_ds
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
          TabOrder = 15
        end
        object RzDBEditDescrizione_go12: trzdbeditdescrizione_go
          Left = 60
          Top = 120
          Width = 366
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tna_intra_ds
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
          TabOrder = 16
        end
        object v_contatto_commerciale: trzdbedit_go
          Left = 435
          Top = 50
          Width = 421
          Height = 21
          Hint = 
            'persona di riferimento commerciale del cliente [F4=cerca riferim' +
            'ento]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'CONTATTO_COMMERCIALE'
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
        object v_intra_testata: TRzDBCheckBox
          Left = 540
          Top = 18
          Width = 39
          Height = 15
          Hint = 'spunta per attivare la gestione intrastat'
          DataField = 'INTRA'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'intra'
          TabOrder = 17
          TabStop = False
          OnClick = v_intra_testataClick
        end
        object v_lti_progressivo: trzdbnumericedit_go
          Left = 6
          Top = 15
          Width = 70
          Height = 21
          Hint = 'progressivo di riferimento della dichiarazione d'#39'intento [F4]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'lti_progressivo'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnEnter = v_lti_progressivoEnter
          OnExit = v_lti_progressivoExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESLTI'
          lookcolltable = 'LTI'
          lookcollvisname = 'LTICFG'
        end
        object v_cfg_tipo: trzedit_go
          Left = 100
          Top = 0
          Width = 16
          Height = 21
          Text = 'F'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 18
          Visible = False
        end
      end
      object tab_testata_finanziario: TRzTabSheet
        Color = clWindow
        ImageIndex = 2
        Caption = 'pagamento'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label20: TRzLabel
          Left = 6
          Top = 37
          Width = 185
          Height = 13
          Caption = 'codice ABI vs. banca appoggio bonifici'
          ShowAccelChar = False
          Transparent = True
        end
        object Label21: TRzLabel
          Left = 435
          Top = 37
          Width = 189
          Height = 13
          Caption = 'codice CAB vs. banca appoggio bonifici'
          ShowAccelChar = False
          Transparent = True
        end
        object Label42: TRzLabel
          Left = 6
          Top = 107
          Width = 123
          Height = 13
          Caption = 'ns. banca appoggio effetti'
          ShowAccelChar = False
          Transparent = True
        end
        object Label63: TRzLabel
          Left = 6
          Top = 72
          Width = 69
          Height = 13
          Caption = 'conto corrente'
          ShowAccelChar = False
          Transparent = True
        end
        object Label64: TRzLabel
          Left = 120
          Top = 72
          Width = 14
          Height = 13
          Caption = 'cin'
          ShowAccelChar = False
          Transparent = True
        end
        object Label34: TRzLabel
          Left = 145
          Top = 70
          Width = 20
          Height = 13
          Caption = 'iban'
          ShowAccelChar = False
          Transparent = True
        end
        object Label35: TRzLabel
          Left = 435
          Top = 70
          Width = 14
          Height = 13
          Caption = 'bic'
          ShowAccelChar = False
          Transparent = True
        end
        object Label75: TRzLabel
          Left = 6
          Top = 2
          Width = 97
          Height = 13
          Caption = 'data inizio conteggio'
          ShowAccelChar = False
          Transparent = True
        end
        object Label79: TRzLabel
          Left = 591
          Top = 2
          Width = 137
          Height = 13
          Caption = 'date inizio e fine competenza'
          ShowAccelChar = False
          Transparent = True
        end
        object Label54: TRzLabel
          Left = 436
          Top = 107
          Width = 123
          Height = 13
          Caption = 'codice blocco pagamento'
          ShowAccelChar = False
          Transparent = True
        end
        object Label14: TRzLabel
          Left = 435
          Top = 2
          Width = 70
          Height = 13
          Caption = 'importo pagato'
          FocusControl = v_art_codice
          ShowAccelChar = False
          Transparent = True
        end
        object v_scadenze: TRzRapidFireButton
          Left = 745
          Top = 85
          Width = 111
          Height = 21
          Hint = 'dettaglio scadenze'
          Caption = 'dettaglio scadenze'
          OnClick = v_scadenzeClick
        end
        object v_codice_abi: trzdbedit_go
          Left = 6
          Top = 50
          Width = 60
          Height = 21
          Hint = 
            'codice ABI banca di appoggio effetti se diverso da quello in ana' +
            'grafica [F4 F5 F6] [Ctrl+F11=banche extra]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'codice_abi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          OnExit = v_codice_abiExit
          OnKeyDown = v_codice_abiKeyDown
          lookcolldatabase = 'arc.arc'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESABI'
          lookcolltable = 'ABI'
          lookcollvisname = 'ABI'
        end
        object v_codice_cab: trzdbedit_go
          Left = 435
          Top = 50
          Width = 61
          Height = 21
          Hint = 
            'codice cab della banca del fornitore su cui appoggiare i bonific' +
            'i [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'codice_cab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 7
          OnEnter = v_codice_cabEnter
          OnExit = v_codice_cabExit
          lookcolldatabase = 'arc.arc'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESABI'
          lookcolltable = 'ABI'
          lookcollvisname = 'ABICAB'
        end
        object v_tba_codice: trzdbedit_go
          Left = 6
          Top = 120
          Width = 60
          Height = 21
          Hint = 
            'codice banca su cui fare appoggiare gli effetti dal fornitore [F' +
            '4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tba_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 12
          OnExit = v_tba_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTBA'
          lookcolltable = 'TBA'
          lookcollvisname = 'TBA'
        end
        object v_conto_corrente: trzdbedit_go
          Left = 6
          Top = 85
          Width = 111
          Height = 21
          Hint = 
            'conto corrente della banca d'#39'appoggio bonifici se diverso da que' +
            'llo in anagrafica'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'conto_corrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 8
          OnExit = v_conto_correnteExit
        end
        object v_cin: trzdbedit_go
          Left = 120
          Top = 85
          Width = 20
          Height = 21
          Hint = 
            'codice cin del conto corrente della banca d'#39'appoggio bonifici se' +
            ' diverso da quello in anagrafica'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'cin'
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
        object v_iban: trzdbedit_go
          Left = 145
          Top = 85
          Width = 281
          Height = 21
          Hint = 
            'IBAN della banca d'#39'appoggio bonifici se diverso da quello in ana' +
            'grafica'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'iban'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 10
          OnExit = v_ibanExit
        end
        object v_bic: trzdbedit_go
          Left = 435
          Top = 85
          Width = 116
          Height = 21
          Hint = 
            'BIC (SWIFT) della banca d'#39'appoggio bonifici se diverso da quello' +
            ' in anagrafica'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'bic'
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
        object v_data_inizio_conteggio: trzdbdatetimeedit_go
          Left = 6
          Top = 15
          Width = 80
          Height = 21
          Hint = 
            'data inizio conteggio per il calcolo scadenze se diversa da data' +
            ' fattura [Alt+Gi'#249' per aprire il calendario]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_inizio_conteggio'
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
          TabOrder = 0
          OnExit = v_data_inizio_conteggioExit
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 46070.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_data_inizio_competenza: trzdbdatetimeedit_go
          Left = 591
          Top = 15
          Width = 80
          Height = 21
          Hint = 
            'data inizio competenza contabile per il calcolo dei risconti att' +
            'ivi [Alt+Gi'#249' per aprire il calendario]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_inizio_competenza'
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
          TabOrder = 4
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 46070.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_data_fine_competenza: trzdbdatetimeedit_go
          Left = 676
          Top = 15
          Width = 80
          Height = 21
          Hint = 
            'data fine competenza contabile per il calcolo dei risconti attiv' +
            'i [Alt+Gi'#249' per aprire il calendario]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_fine_competenza'
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
          Date = 46070.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_scadenziario_manuale: TRzDBCheckBox
          Left = 125
          Top = 17
          Width = 121
          Height = 15
          Hint = 
            'spunta se l'#39'aggiornamento dello scadenziario deve avvenire con m' +
            'odalit'#224' manuale'
          DataField = 'scadenziario_manuale'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'scadenziario manuale'
          TabOrder = 1
        end
        object v_tbp_codice: trzdbedit_go
          Left = 435
          Top = 120
          Width = 61
          Height = 21
          Hint = 
            'codice blocco pagamento in situazione di contestazione merce [F4' +
            ' F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tbp_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 13
          OnExit = v_tbp_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTBP'
          lookcolltable = 'TBP'
          lookcollvisname = 'TBP'
        end
        object v_importo_pagato: trzdbnumericedit_go
          Left = 435
          Top = 15
          Width = 76
          Height = 21
          Hint = 'importo pagato come anticipo o acconto'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'importo_pagato'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnExit = v_importo_scontoExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object RzDBEditDescrizione_go21: trzdbeditdescrizione_go
          Left = 70
          Top = 50
          Width = 356
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = abi_ds
          DataField = 'BANCA'
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
        object RzDBEditDescrizione_go22: trzdbeditdescrizione_go
          Left = 500
          Top = 50
          Width = 356
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = cab_ds
          DataField = 'SPORTELLO'
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
          TabOrder = 15
        end
        object RzDBEditDescrizione_go6: trzdbeditdescrizione_go
          Left = 70
          Top = 120
          Width = 356
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tba_ds
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
          TabOrder = 16
        end
        object RzDBEditDescrizione_go7: trzdbeditdescrizione_go
          Left = 500
          Top = 120
          Width = 356
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tbp_ds
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
          TabOrder = 17
        end
        object v_incasso_saldo: TRzDBCheckBox
          Left = 520
          Top = 17
          Width = 44
          Height = 15
          Hint = 
            'spunta per indicare che l'#39'importo PAGATO '#232' a saldo, anche se div' +
            'erso dal totale documento'
          DataField = 'incasso_saldo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'saldo'
          TabOrder = 3
        end
      end
      object tab_testata_magazzino: TRzTabSheet
        Color = clWindow
        ImageIndex = 1
        Caption = 'magazzino/contabilit'#224
        object Label9: TRzLabel
          Left = 6
          Top = 2
          Width = 51
          Height = 13
          Caption = 'movimento'
          ShowAccelChar = False
          Transparent = True
        end
        object Label3: TRzLabel
          Left = 436
          Top = 2
          Width = 88
          Height = 13
          Caption = 'deposito principale'
          ShowAccelChar = False
          Transparent = True
        end
        object Label7: TRzLabel
          Left = 436
          Top = 37
          Width = 86
          Height = 13
          Caption = 'deposito collegato'
          ShowAccelChar = False
          Transparent = True
        end
        object Label22: TRzLabel
          Left = 6
          Top = 37
          Width = 97
          Height = 13
          Caption = 'movimento collegato'
          ShowAccelChar = False
          Transparent = True
        end
        object Label39: TRzLabel
          Left = 6
          Top = 72
          Width = 50
          Height = 13
          Caption = 'commessa'
          ShowAccelChar = False
          Transparent = True
        end
        object Label41: TRzLabel
          Left = 435
          Top = 72
          Width = 73
          Height = 13
          Caption = 'sottocommessa'
          ShowAccelChar = False
          Transparent = True
        end
        object v_l_descrizione_primanota: TRzLabel
          Left = 6
          Top = 107
          Width = 102
          Height = 13
          Caption = 'descrizione primanota'
          FocusControl = v_descrizione_primanota
          ShowAccelChar = False
          Transparent = True
        end
        object v_l_data_competenza_plafond: TRzLabel
          Left = 435
          Top = 107
          Width = 96
          Height = 13
          Caption = 'competenza plafond'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel3: TRzLabel
          Left = 550
          Top = 107
          Width = 75
          Height = 13
          Caption = 'competenza iva'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel8: TRzLabel
          Left = 665
          Top = 107
          Width = 97
          Height = 13
          Caption = 'competenza bilancio'
          ShowAccelChar = False
          Transparent = True
        end
        object v_tmo_codice: trzdbedit_go
          Left = 6
          Top = 15
          Width = 50
          Height = 21
          Hint = 'codice movimento di entrata merce [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tmo_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnEnter = v_tmo_codiceEnter
          OnExit = v_tmo_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object v_tma_codice: trzdbedit_go
          Left = 436
          Top = 15
          Width = 50
          Height = 21
          Hint = 'codice deposito di entrata merce [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tma_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnExit = v_tma_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMA'
          lookcolltable = 'TMA'
          lookcollvisname = 'TMA'
        end
        object v_tma_codice_collegato: trzdbedit_go
          Left = 436
          Top = 50
          Width = 50
          Height = 21
          Hint = 'codice deposito collegato per giroconto automatico [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tma_codice_collegato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
          OnExit = v_tma_codice_collegatoExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMA'
          lookcolltable = 'TMA'
          lookcollvisname = 'TMA'
        end
        object v_tmo_codice_collegato: trzdbedit_go
          Left = 6
          Top = 50
          Width = 50
          Height = 21
          Hint = 'codice movimento collegato per giroconto automatico [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tmo_codice_collegato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnExit = v_tmo_codice_collegatoExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object RzDBEditDescrizione_go9: trzdbeditdescrizione_go
          Left = 60
          Top = 15
          Width = 366
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
          TabOrder = 4
        end
        object RzDBEditDescrizione_go13: trzdbeditdescrizione_go
          Left = 490
          Top = 15
          Width = 371
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
          TabOrder = 5
        end
        object RzDBEditDescrizione_go14: trzdbeditdescrizione_go
          Left = 60
          Top = 50
          Width = 366
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tmo_collegato_ds
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
          TabOrder = 6
        end
        object RzDBEditDescrizione_go15: trzdbeditdescrizione_go
          Left = 490
          Top = 50
          Width = 371
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tma_collegato_ds
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
          TabOrder = 7
        end
        object v_cms_codice: trzdbedit_go
          Left = 6
          Top = 85
          Width = 110
          Height = 21
          Hint = 'codice della commessa di riferimento [F4 F5 F6]'
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
          TabOrder = 8
          OnEnter = v_cms_codiceEnter
          OnExit = v_cms_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_cms
          lookcollprogram = 'GESCMS'
          lookcolltable = 'CMS'
          lookcollvisname = 'CMS'
        end
        object v_tipologia: trzdbedit_go
          Left = 435
          Top = 85
          Width = 111
          Height = 21
          Hint = 'codice sottocommessa [F4 F5 F6]'
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
          TabOrder = 9
          OnEnter = v_tipologiaEnter
          OnExit = v_tipologiaExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESCMT'
          lookcolltable = 'CMT'
          lookcollvisname = 'CMT'
        end
        object RzDBEditDescrizione_go4: trzdbeditdescrizione_go
          Left = 120
          Top = 85
          Width = 306
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
          TabOrder = 10
        end
        object RzDBEditDescrizione_go5: trzdbeditdescrizione_go
          Left = 550
          Top = 85
          Width = 311
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
          TabOrder = 11
        end
        object v_descrizione_primanota: trzdbedit_go
          Left = 6
          Top = 120
          Width = 420
          Height = 21
          Hint = 'descrizione da utilizzare in primanota contabile (se presente)'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'descrizione_primanota'
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
        object v_data_competenza_plafond: trzdbdatetimeedit_go
          Left = 435
          Top = 120
          Width = 111
          Height = 21
          Hint = 'data competenza plafond [Alt+Gi'#249' per aprire il calendario]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_competenza_plafond'
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
          TabOrder = 13
          OnExit = v_data_competenza_plafondExit
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 46070.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_data_competenza_iva: trzdbdatetimeedit_go
          Left = 550
          Top = 120
          Width = 110
          Height = 21
          Hint = 'data competenza iva [Alt+Gi'#249' per aprire il calendario]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_competenza_iva'
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
          TabOrder = 14
          OnExit = v_data_competenza_ivaExit
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 46070.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_data_competenza_bilancio: trzdbdatetimeedit_go
          Left = 665
          Top = 120
          Width = 109
          Height = 21
          Hint = 
            'data di competenza per bilancio di verifica [Alt+Gi'#249' per aprire ' +
            'il calendario]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_competenza_bilancio'
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
          TabOrder = 15
          OnExit = v_data_competenza_bilancioExit
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 46070.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
      end
      object tab_testata_destinazione: TRzTabSheet
        Color = clWindow
        ImageIndex = 6
        Caption = 'consegna'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label40: TRzLabel
          Left = 6
          Top = 2
          Width = 59
          Height = 13
          Caption = 'indirizzo ritiro'
          ShowAccelChar = False
          Transparent = True
        end
        object Label43: TRzLabel
          Left = 95
          Top = 2
          Width = 126
          Height = 13
          Caption = 'ragione sociale / cognome'
          FocusControl = v_descrizione1
          ShowAccelChar = False
          Transparent = True
        end
        object Label44: TRzLabel
          Left = 495
          Top = 0
          Width = 108
          Height = 13
          Caption = 'ragione sociale / nome'
          FocusControl = v_descrizione2
          ShowAccelChar = False
          Transparent = True
        end
        object Label45: TRzLabel
          Left = 95
          Top = 37
          Width = 123
          Height = 13
          Caption = 'indirizzo (via, piazza, ecc.)'
          FocusControl = v_via
          ShowAccelChar = False
          Transparent = True
        end
        object Label46: TRzLabel
          Left = 495
          Top = 37
          Width = 18
          Height = 13
          Caption = 'cap'
          ShowAccelChar = False
          Transparent = True
        end
        object Label48: TRzLabel
          Left = 550
          Top = 37
          Width = 33
          Height = 13
          Caption = 'localit'#224
          ShowAccelChar = False
          Transparent = True
        end
        object Label52: TRzLabel
          Left = 810
          Top = 37
          Width = 43
          Height = 13
          Caption = 'provincia'
          ShowAccelChar = False
          Transparent = True
        end
        object Label55: TRzLabel
          Left = 95
          Top = 72
          Width = 72
          Height = 13
          Caption = 'codice nazione'
          ShowAccelChar = False
          Transparent = True
        end
        object Label56: TRzLabel
          Left = 95
          Top = 107
          Width = 113
          Height = 13
          Caption = 'cliente consegna diretta'
          ShowAccelChar = False
          Transparent = True
        end
        object v_indirizzo: trzdbedit_go
          Left = 6
          Top = 15
          Width = 85
          Height = 21
          Hint = 'codice filiale per il ritiro della merce [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'indirizzo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnEnter = v_indirizzoEnter
          OnExit = v_indirizzoExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESINF'
          lookcolltable = 'INF'
          lookcollvisname = 'INFFRN'
        end
        object v_descrizione1: trzdbedit_go
          Left = 95
          Top = 15
          Width = 396
          Height = 21
          Hint = 
            'ragione sociale del destinatario diverso [prima parte] [F4=ricer' +
            'ca cliente destinatario (solo per ordini)]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'descrizione1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          lookcolldatabase = 'arc.arcdit'
          lookcolltable = 'NOM'
        end
        object v_descrizione2: trzdbedit_go
          Left = 495
          Top = 15
          Width = 366
          Height = 21
          Hint = 'ragione sociale del destinatario diverso [seconda parte]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'descrizione2'
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
        object v_via: trzdbedit_go
          Left = 95
          Top = 50
          Width = 396
          Height = 21
          Hint = 'via del destinatario diverso '
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'via'
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
        object v_cap: trzdbedit_go
          Left = 495
          Top = 50
          Width = 50
          Height = 21
          Hint = 'cap del destinatario diverso '
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'cap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 4
        end
        object v_citta: trzdbedit_go
          Left = 550
          Top = 50
          Width = 256
          Height = 21
          Hint = 'localit'#224' del destinatario diverso '
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'citta'
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
        object v_provincia: trzdbedit_go
          Left = 810
          Top = 50
          Width = 51
          Height = 21
          Hint = 'provincia del destinatario diverso '
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'provincia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          lookcolldatabase = 'arc.arc'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTPV'
          lookcolltable = 'TPV'
          lookcollvisname = 'TPV'
        end
        object v_tna_codice: trzdbedit_go
          Left = 95
          Top = 85
          Width = 50
          Height = 21
          Hint = 'codice nazione del destinatario diverso [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tna_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 7
          OnExit = v_tna_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTNA'
          lookcolltable = 'TNA'
          lookcollvisname = 'TNA'
        end
        object v_tna_descrizione: trzdbeditdescrizione_go
          Left = 150
          Top = 85
          Width = 396
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tna_ds
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
          TabOrder = 8
        end
        object v_cli_codice: trzdbedit_go
          Left = 95
          Top = 120
          Width = 91
          Height = 21
          Hint = 
            'cliente a cui '#232' stata consegnata la merce direttamente dal forni' +
            'tore [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'CLI_CODICE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 9
          OnExit = v_cli_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_cli
          lookcollprogram = 'GESCLI'
          lookcolltable = 'CLI'
          lookcollvisname = 'CLI'
        end
        object RzDBEditDescrizione_go23: trzdbeditdescrizione_go
          Left = 190
          Top = 120
          Width = 671
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = cli_01_ds
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
          TabOrder = 10
        end
      end
      object tab_testata_spedizione: TRzTabSheet
        Color = clWindow
        ImageIndex = 3
        Caption = 'spedizione/sconti'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label23: TRzLabel
          Left = 6
          Top = 2
          Width = 50
          Height = 13
          Caption = 'spedizione'
          ShowAccelChar = False
          Transparent = True
        end
        object Label25: TRzLabel
          Left = 435
          Top = 2
          Width = 24
          Height = 13
          Caption = 'porto'
          ShowAccelChar = False
          Transparent = True
        end
        object Label58: TRzLabel
          Left = 6
          Top = 37
          Width = 119
          Height = 13
          Caption = 'sconto finale percentuale'
          ShowAccelChar = False
          Transparent = True
        end
        object Label59: TRzLabel
          Left = 435
          Top = 37
          Width = 138
          Height = 13
          Caption = 'importo sconto extra in valore'
          FocusControl = v_art_codice
          ShowAccelChar = False
          Transparent = True
        end
        object Label61: TRzLabel
          Left = 436
          Top = 72
          Width = 56
          Height = 13
          Caption = 'numero colli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label78: TRzLabel
          Left = 535
          Top = 72
          Width = 86
          Height = 13
          Caption = 'numero confezioni'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label62: TRzLabel
          Left = 635
          Top = 107
          Width = 34
          Height = 13
          Caption = 'volume'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label66: TRzLabel
          Left = 435
          Top = 107
          Width = 49
          Height = 13
          Caption = 'peso lordo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label70: TRzLabel
          Left = 535
          Top = 107
          Width = 50
          Height = 13
          Caption = 'peso netto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_tsp_codice: trzdbedit_go
          Left = 6
          Top = 15
          Width = 50
          Height = 21
          Hint = 'codice spedizione [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tsp_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnExit = v_tsp_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTSP'
          lookcolltable = 'TSP'
          lookcollvisname = 'TSP'
        end
        object v_tpo_codice: trzdbedit_go
          Left = 435
          Top = 15
          Width = 50
          Height = 21
          Hint = 'codice porto [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tpo_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnExit = v_tpo_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTPO'
          lookcolltable = 'TPO'
          lookcollvisname = 'TPO'
        end
        object v_tsm_codice_sconto: trzdbedit_go
          Left = 6
          Top = 50
          Width = 50
          Height = 21
          Hint = 'codice sconto globale extra [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tsm_codice_sconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnExit = v_tsm_codice_scontoExit
          OnKeyDown = v_tsm_codice_scontoKeyDown
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTSM'
          lookcolltable = 'TSM'
          lookcollvisname = 'TSM'
        end
        object v_importo_sconto: trzdbnumericedit_go
          Left = 435
          Top = 50
          Width = 186
          Height = 21
          Hint = 'importo sconto extra [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'importo_sconto'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
          OnExit = v_importo_scontoExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object Panel5: TRzPanel
          Left = 0
          Top = 90
          Width = 426
          Height = 56
          BorderOuter = fsNone
          Enabled = False
          ParentColor = True
          TabOrder = 4
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 421
            Height = 55
            Caption = 'sconti in fattura'
            ParentBackground = False
            TabOrder = 0
            object Label67: TRzLabel
              Left = 5
              Top = 12
              Width = 97
              Height = 13
              Caption = 'sconto finale importo'
              FocusControl = v_art_codice
              ShowAccelChar = False
              Transparent = True
            end
            object Label68: TRzLabel
              Left = 130
              Top = 12
              Width = 63
              Height = 13
              Caption = 'sconto cassa'
              FocusControl = v_art_codice
              ShowAccelChar = False
              Transparent = True
            end
            object v_importo_sconto_finale: trzdbnumericedit_go
              Left = 5
              Top = 25
              Width = 113
              Height = 21
              Hint = #13'Alt+Gi'#249' per aprire la calcolatrice'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = tabella_ds
              DataField = 'importo_sconto_finale'
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
              AllowBlank = False
              AllowScientificNotation = False
              IntegersOnly = False
              DisplayFormat = ',0.00;-,0.00;#'
            end
            object v_importo_sconto_cassa: trzdbnumericedit_go
              Left = 130
              Top = 25
              Width = 113
              Height = 21
              Hint = #13'Alt+Gi'#249' per aprire la calcolatrice'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = tabella_ds
              DataField = 'importo_sconto_cassa'
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
              DisplayFormat = ',0.00;-,0.00;#'
            end
          end
        end
        object RzDBEditDescrizione_go16: trzdbeditdescrizione_go
          Left = 60
          Top = 15
          Width = 361
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tsp_ds
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
          TabOrder = 5
        end
        object RzDBEditDescrizione_go17: trzdbeditdescrizione_go
          Left = 490
          Top = 15
          Width = 366
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tpo_ds
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
          TabOrder = 6
        end
        object RzDBEditDescrizione_go18: trzdbeditdescrizione_go
          Left = 60
          Top = 50
          Width = 361
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tsm_sconto_ds
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
          TabOrder = 7
        end
        object v_numero_colli: trzdbnumericedit_go
          Left = 436
          Top = 85
          Width = 86
          Height = 21
          Hint = 'numero colli totali [F11 = totalizza colli delle righe]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'numero_colli'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 8
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_numero_confezioni_totali: trzdbnumericedit_go
          Left = 535
          Top = 85
          Width = 86
          Height = 21
          Hint = 
            'numero confezioni totali [F11 = totalizza confezioni delle righe' +
            ']'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'numero_confezioni'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 9
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_volume: trzdbnumericedit_go
          Left = 635
          Top = 120
          Width = 86
          Height = 21
          Hint = 'volume totale [F11 = totalizza volume articoli delle righe]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'volume'
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
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
        object v_peso_lordo: trzdbnumericedit_go
          Left = 435
          Top = 120
          Width = 86
          Height = 21
          Hint = 
            'peso lordo totale [F11 = totalizza peso lordo articoli delle rig' +
            'he]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'peso_lordo'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 10
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
        object v_peso_netto: trzdbnumericedit_go
          Left = 535
          Top = 120
          Width = 86
          Height = 21
          Hint = 
            'peso netto totale [F11 = totalizza peso netto articoli delle rig' +
            'he]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'peso_netto'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 11
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
      end
      object tab_testata_spese: TRzTabSheet
        Color = clWindow
        ImageIndex = 6
        Caption = 'spese'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label27: TRzLabel
          Left = 5
          Top = 2
          Width = 84
          Height = 13
          Caption = 'descrizione spesa'
          FocusControl = v_descrizione_spese_01
          ShowAccelChar = False
          Transparent = True
        end
        object Label29: TRzLabel
          Left = 155
          Top = 2
          Width = 37
          Height = 13
          Caption = 'importo '
          FocusControl = v_art_codice
          ShowAccelChar = False
          Transparent = True
        end
        object Label30: TRzLabel
          Left = 345
          Top = 2
          Width = 49
          Height = 13
          Caption = 'codice iva'
          ShowAccelChar = False
          Transparent = True
        end
        object Label31: TRzLabel
          Left = 505
          Top = 2
          Width = 85
          Height = 13
          Caption = 'codice sottoconto'
          ShowAccelChar = False
          Transparent = True
        end
        object Label1: TRzLabel
          Left = 5
          Top = 112
          Width = 91
          Height = 13
          Caption = 'importo spese extra'
          FocusControl = v_art_codice
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel4: TRzLabel
          Left = 155
          Top = 112
          Width = 92
          Height = 13
          Caption = 'modalit'#224' ripartizione'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_descrizione_spese_01: trzdbedit_go
          Left = 5
          Top = 15
          Width = 145
          Height = 21
          Hint = 'descrizione della spesa'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'descrizione_spese_01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnChange = v_descrizione_spese_01Change
          OnExit = v_descrizione_spese_01Exit
        end
        object v_importo_spese_01: trzdbnumericedit_go
          Left = 155
          Top = 15
          Width = 81
          Height = 21
          Hint = 'importo della spesa [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'importo_spese_01'
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
          OnExit = v_importo_spese_01Exit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object v_iva_ripartita_spese_01: TRzDBCheckBox
          Left = 250
          Top = 17
          Width = 82
          Height = 15
          Hint = 
            'spunta se l'#39'I.V.A. va addebitata proporzionalmente su tutte le a' +
            'liquote'
          DataField = 'iva_ripartita_spese_01'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'I.V.A. ripartita'
          Enabled = False
          TabOrder = 2
          OnClick = v_iva_ripartita_spese_01Click
          OnExit = v_iva_ripartita_spese_01Exit
        end
        object v_tiv_codice_spese_01: trzdbedit_go
          Left = 345
          Top = 15
          Width = 50
          Height = 21
          Hint = 'codice I.V.A. della spesa [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tiv_codice_spese_01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
          OnExit = v_tiv_codice_spese_01Exit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTIV'
          lookcolltable = 'TIV'
          lookcollvisname = 'TIV'
        end
        object v_costo_ripartito_spese_01: TRzDBCheckBox
          Left = 410
          Top = 17
          Width = 82
          Height = 15
          Hint = 
            'spunta se il costo va addebitato proporzionalmente su tutte le c' +
            'ontropartite'
          DataField = 'costo_ripartito_spese_01'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'costo ripartito'
          Enabled = False
          TabOrder = 4
          OnClick = v_costo_ripartito_spese_01Click
          OnExit = v_costo_ripartito_spese_01Exit
        end
        object v_gen_codice_spese_01: trzdbedit_go
          Left = 505
          Top = 15
          Width = 90
          Height = 21
          Hint = 
            'codice del sottoconto contabile su cui imputare l'#39'importo della ' +
            'spesa [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'gen_codice_spese_01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 5
          OnExit = v_gen_codice_spese_01Exit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_gen
          lookcollprogram = 'GESGEN'
          lookcolltable = 'GEN'
          lookcollvisname = 'GEN'
        end
        object v_descrizione_spese_02: trzdbedit_go
          Left = 5
          Top = 40
          Width = 145
          Height = 21
          Hint = 'descrizione della spesa'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'descrizione_spese_02'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          OnChange = v_descrizione_spese_02Change
          OnExit = v_descrizione_spese_02Exit
        end
        object v_importo_spese_02: trzdbnumericedit_go
          Left = 155
          Top = 40
          Width = 81
          Height = 21
          Hint = 'importo della spesa [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'importo_spese_02'
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
          OnExit = v_importo_spese_02Exit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object v_iva_ripartita_spese_02: TRzDBCheckBox
          Left = 250
          Top = 42
          Width = 82
          Height = 15
          Hint = 
            'spunta se l'#39'I.V.A. va addebitata proporzionalmente su tutte le a' +
            'liquote'
          DataField = 'iva_ripartita_spese_02'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'I.V.A. ripartita'
          Enabled = False
          TabOrder = 8
          OnClick = v_iva_ripartita_spese_02Click
          OnExit = v_iva_ripartita_spese_02Exit
        end
        object v_tiv_codice_spese_02: trzdbedit_go
          Left = 345
          Top = 40
          Width = 50
          Height = 21
          Hint = 'codice I.V.A. della spesa [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tiv_codice_spese_02'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 9
          OnExit = v_tiv_codice_spese_02Exit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTIV'
          lookcolltable = 'TIV'
          lookcollvisname = 'TIV'
        end
        object v_costo_ripartito_spese_02: TRzDBCheckBox
          Left = 410
          Top = 42
          Width = 82
          Height = 15
          Hint = 
            'spunta se il costo va addebitato proporzionalmente su tutte le c' +
            'ontropartite'
          DataField = 'costo_ripartito_spese_02'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'costo ripartito'
          Enabled = False
          TabOrder = 10
          OnClick = v_costo_ripartito_spese_02Click
          OnExit = v_costo_ripartito_spese_02Exit
        end
        object v_gen_codice_spese_02: trzdbedit_go
          Left = 505
          Top = 40
          Width = 90
          Height = 21
          Hint = 
            'codice del sottoconto contabile su cui imputare l'#39'importo della ' +
            'spesa [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'gen_codice_spese_02'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 11
          OnExit = v_gen_codice_spese_02Exit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_gen
          lookcollprogram = 'GESGEN'
          lookcolltable = 'GEN'
          lookcollvisname = 'GEN'
        end
        object v_descrizione_spese_03: trzdbedit_go
          Left = 5
          Top = 65
          Width = 145
          Height = 21
          Hint = 'descrizione della spesa'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'descrizione_spese_03'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 12
          OnChange = v_descrizione_spese_03Change
          OnExit = v_descrizione_spese_03Exit
        end
        object v_importo_spese_03: trzdbnumericedit_go
          Left = 155
          Top = 65
          Width = 81
          Height = 21
          Hint = 'importo della spesa [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'importo_spese_03'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 13
          OnExit = v_importo_spese_03Exit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object v_iva_ripartita_spese_03: TRzDBCheckBox
          Left = 250
          Top = 67
          Width = 82
          Height = 15
          Hint = 
            'spunta se l'#39'I.V.A. va addebitata proporzionalmente su tutte le a' +
            'liquote'
          DataField = 'iva_ripartita_spese_03'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'I.V.A. ripartita'
          Enabled = False
          TabOrder = 14
          OnClick = v_iva_ripartita_spese_03Click
          OnExit = v_iva_ripartita_spese_03Exit
        end
        object v_tiv_codice_spese_03: trzdbedit_go
          Left = 345
          Top = 65
          Width = 50
          Height = 21
          Hint = 'codice I.V.A. della spesa [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tiv_codice_spese_03'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 15
          OnExit = v_tiv_codice_spese_03Exit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTIV'
          lookcolltable = 'TIV'
          lookcollvisname = 'TIV'
        end
        object v_costo_ripartito_spese_03: TRzDBCheckBox
          Left = 410
          Top = 67
          Width = 82
          Height = 15
          Hint = 
            'spunta se il costo va addebitato proporzionalmente su tutte le c' +
            'ontropartite'
          DataField = 'costo_ripartito_spese_03'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'costo ripartito'
          Enabled = False
          TabOrder = 16
          OnClick = v_costo_ripartito_spese_03Click
          OnExit = v_costo_ripartito_spese_03Exit
        end
        object v_gen_codice_spese_03: trzdbedit_go
          Left = 505
          Top = 65
          Width = 90
          Height = 21
          Hint = 
            'codice del sottoconto contabile su cui imputare l'#39'importo della ' +
            'spesa [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'gen_codice_spese_03'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 17
          OnExit = v_gen_codice_spese_03Exit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_gen
          lookcollprogram = 'GESGEN'
          lookcolltable = 'GEN'
          lookcollvisname = 'GEN'
        end
        object v_descrizione_spese_04: trzdbedit_go
          Left = 5
          Top = 90
          Width = 145
          Height = 21
          Hint = 'descrizione della spesa'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'descrizione_spese_04'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 18
          OnChange = v_descrizione_spese_04Change
          OnExit = v_descrizione_spese_04Exit
        end
        object v_importo_spese_04: trzdbnumericedit_go
          Left = 155
          Top = 90
          Width = 81
          Height = 21
          Hint = 'importo della spesa [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'importo_spese_04'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 19
          OnExit = v_importo_spese_04Exit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object v_iva_ripartita_spese_04: TRzDBCheckBox
          Left = 250
          Top = 92
          Width = 82
          Height = 15
          Hint = 
            'spunta se l'#39'I.V.A. va addebitata proporzionalmente su tutte le a' +
            'liquote'
          DataField = 'iva_ripartita_spese_04'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'I.V.A. ripartita'
          Enabled = False
          TabOrder = 20
          OnClick = v_iva_ripartita_spese_04Click
          OnExit = v_iva_ripartita_spese_04Exit
        end
        object v_tiv_codice_spese_04: trzdbedit_go
          Left = 345
          Top = 90
          Width = 50
          Height = 21
          Hint = 'codice I.V.A. della spesa [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tiv_codice_spese_04'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 21
          OnExit = v_tiv_codice_spese_04Exit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTIV'
          lookcolltable = 'TIV'
          lookcollvisname = 'TIV'
        end
        object v_costo_ripartito_spese_04: TRzDBCheckBox
          Left = 410
          Top = 92
          Width = 82
          Height = 15
          Hint = 
            'spunta se il costo va addebitato proporzionalmente su tutte le c' +
            'ontropartite'
          DataField = 'costo_ripartito_spese_04'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'costo ripartito'
          Enabled = False
          TabOrder = 22
          OnClick = v_costo_ripartito_spese_04Click
          OnExit = v_costo_ripartito_spese_04Exit
        end
        object v_gen_codice_spese_04: trzdbedit_go
          Left = 505
          Top = 90
          Width = 90
          Height = 21
          Hint = 
            'codice del sottoconto contabile su cui imputare l'#39'importo della ' +
            'spesa [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'gen_codice_spese_04'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 23
          OnExit = v_gen_codice_spese_04Exit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_gen
          lookcollprogram = 'GESGEN'
          lookcolltable = 'GEN'
          lookcollvisname = 'GEN'
        end
        object v_importo_spese_extra: trzdbnumericedit_go
          Left = 5
          Top = 125
          Width = 146
          Height = 21
          Hint = 
            'importo delle spese extra non presenti in fattura ma da addebita' +
            're agli articoli del documento [Alt+Gi'#249' per aprire la calcolatri' +
            'ce]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'importo_spese_extra'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 24
          OnChange = v_importo_spese_extraChange
          OnEnter = v_importo_spese_extraEnter
          OnExit = v_importo_spese_extraExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object RzDBEditDescrizione_go26: trzdbeditdescrizione_go
          Left = 600
          Top = 15
          Width = 256
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = gen_spese_01_ds
          DataField = 'descrizione1'
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
          TabOrder = 25
        end
        object RzDBEditDescrizione_go27: trzdbeditdescrizione_go
          Left = 600
          Top = 40
          Width = 256
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = gen_spese_02_ds
          DataField = 'descrizione1'
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
          TabOrder = 26
        end
        object RzDBEditDescrizione_go28: trzdbeditdescrizione_go
          Left = 600
          Top = 65
          Width = 256
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = gen_spese_03_ds
          DataField = 'descrizione1'
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
          TabOrder = 27
        end
        object RzDBEditDescrizione_go29: trzdbeditdescrizione_go
          Left = 600
          Top = 90
          Width = 256
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = gen_spese_04_ds
          DataField = 'descrizione1'
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
          TabOrder = 28
        end
        object v_modalita_ripartizione: trzdbcombobox_go
          Left = 155
          Top = 125
          Width = 241
          Height = 21
          Hint = 'modalit'#224' di ripartizione delle spese extra'
          DataField = 'modalita_ripartizione'
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
          TabOrder = 29
          Items.Strings = (
            ''
            'peso'
            'quantit'#224
            'valore'
            'volume')
        end
      end
      object tab_testata_note: TRzTabSheet
        Color = 15987699
        ImageIndex = 7
        Caption = 'note'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object v_note: trzdbmemo_go
          Left = 0
          Top = 0
          Width = 884
          Height = 151
          Hint = 'annotazioni [F4=inserisce tabella descrizioni documenti]'
          Align = alClient
          DataField = 'note'
          DataSource = tabella_ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
        end
      end
      object tab_testata_analitica: TRzTabSheet
        Color = clWindow
        ImageIndex = 8
        Caption = 'analitica'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label74: TRzLabel
          Left = 5
          Top = 2
          Width = 30
          Height = 13
          Caption = 'centro'
          ShowAccelChar = False
          Transparent = True
        end
        object Label76: TRzLabel
          Left = 5
          Top = 37
          Width = 24
          Height = 13
          Caption = 'voce'
          ShowAccelChar = False
          Transparent = True
        end
        object v_cen_codice: trzdbedit_go
          Left = 5
          Top = 15
          Width = 91
          Height = 21
          Hint = 
            'codice centro contabilit'#224' analitica spese e sconti in testata [F' +
            '4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'cen_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnExit = v_cen_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESCEN'
          lookcolltable = 'CEN'
          lookcollvisname = 'CEN'
        end
        object RzDBEditDescrizione_go24: trzdbeditdescrizione_go
          Left = 100
          Top = 15
          Width = 556
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = cen_ds
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
        object v_tvc_codice: trzdbedit_go
          Left = 5
          Top = 50
          Width = 51
          Height = 21
          Hint = 
            'codice voce contabilit'#224' analitica spese e sconti in testata [F3 ' +
            'F4 F5]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tvc_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnExit = v_tvc_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTVC'
          lookcolltable = 'TVC'
          lookcollvisname = 'TVC'
        end
        object RzDBEditDescrizione_go25: trzdbeditdescrizione_go
          Left = 60
          Top = 50
          Width = 596
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tvc_ds
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
        object v_analitica_spese: TGroupBox
          Left = 5
          Top = 75
          Width = 651
          Height = 46
          Caption = 'analitica sconti e spese'
          TabOrder = 4
          object v_analitica_spese_01: TRzRapidFireButton
            Left = 5
            Top = 19
            Width = 91
            Height = 21
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Caption = '1'#39' spesa'
            Enabled = False
            OnClick = v_analitica_spese_01Click
          end
          object v_analitica_spese_02: TRzRapidFireButton
            Left = 115
            Top = 19
            Width = 91
            Height = 21
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Caption = '2'#39' spesa'
            Enabled = False
            OnClick = v_analitica_spese_02Click
          end
          object v_analitica_spese_03: TRzRapidFireButton
            Left = 225
            Top = 20
            Width = 91
            Height = 21
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Caption = '3'#39' spesa'
            Enabled = False
            OnClick = v_analitica_spese_03Click
          end
          object v_analitica_spese_04: TRzRapidFireButton
            Left = 335
            Top = 20
            Width = 91
            Height = 21
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Caption = '4'#39' spesa'
            Enabled = False
            OnClick = v_analitica_spese_04Click
          end
          object v_analitica_sconto_cassa: TRzRapidFireButton
            Left = 445
            Top = 20
            Width = 91
            Height = 21
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Caption = 'sconto cassa'
            Enabled = False
            OnClick = v_analitica_sconto_cassaClick
          end
          object v_analitica_sconto_finale: TRzRapidFireButton
            Left = 555
            Top = 20
            Width = 91
            Height = 21
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Caption = 'sconto finale'
            Enabled = False
            OnClick = v_analitica_sconto_finaleClick
          end
        end
      end
    end
    object v_tda_codice: trzdbedit_go
      Left = 85
      Top = 15
      Width = 50
      Height = 21
      Hint = 'codice documento [F4 F5 F6]'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'tda_codice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      OnEnter = v_tda_codiceEnter
      OnExit = v_tda_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTDA'
      lookcolltable = 'TDA'
      lookcollvisname = 'TDZ'
    end
    object v_numero_documento: trzdbnumericedit_go
      Left = 700
      Top = 15
      Width = 86
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
      MaxLength = 15
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 4
      OnEnter = v_numero_documentoEnter
      OnExit = v_numero_documentoExit
      AllowBlank = False
      AllowScientificNotation = False
      IntegersOnly = False
      DisplayFormat = '0'
      decimalplaces = 0
    end
    object v_serie_documento: trzdbedit_go
      Left = 795
      Top = 15
      Width = 51
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'serie_documento'
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
    object v_data_documento: trzdbdatetimeedit_go
      Left = 500
      Top = 15
      Width = 80
      Height = 21
      Hint = 'data documento [Alt+Gi'#249' per aprire il calendario]'
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
      TabOrder = 2
      OnEnter = v_data_documentoEnter
      OnExit = v_data_documentoExit
      CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
      CaptionTodayBtn = 'oggi'
      CaptionClearBtn = 'annulla'
      Date = 46070.000000000000000000
      EditType = etDate
      DropButtonVisible = False
    end
    object v_data_registrazione: trzdbdatetimeedit_go
      Left = 385
      Top = 15
      Width = 80
      Height = 21
      Hint = 
        'data di registrazione del documento [Alt+Gi'#249' per aprire il calen' +
        'dario]'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'DATA_REGISTRAZIONE'
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
      OnChange = v_data_registrazioneChange
      OnEnter = v_data_registrazioneEnter
      OnExit = v_data_registrazioneExit
      CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
      CaptionTodayBtn = 'oggi'
      CaptionClearBtn = 'annulla'
      Date = 46070.000000000000000000
      EditType = etDate
      DropButtonVisible = False
    end
    object v_frn_codice: trzdbedit_go
      Left = 86
      Top = 50
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
      TabOrder = 6
      OnEnter = v_frn_codiceEnter
      OnExit = v_frn_codiceExit
      OnKeyDown = v_frn_codiceKeyDown
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc_frn
      lookcollprogram = 'GESNOM'
      lookcolltable = 'FRN'
      lookcollvisname = 'FRN'
    end
    object v_tda_descrizione: trzdbeditdescrizione_go
      Left = 140
      Top = 15
      Width = 241
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tda_ds
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
      TabOrder = 8
    end
    object v_frn_descrizione: trzdbeditdescrizione_go
      Left = 180
      Top = 50
      Width = 516
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = frn_ds
      DataField = 'frn_descrizione'
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
    object v_giorno: trzedit_go
      Left = 466
      Top = 15
      Width = 31
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
      TabOrder = 10
    end
    object v_revisione: trzdbnumericedit_go
      Left = 850
      Top = 15
      Width = 26
      Height = 21
      Hint = 'numero revisione'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'revisione'
      Alignment = taLeftJustify
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 9
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 11
      AllowBlank = False
      AllowScientificNotation = False
      IntegersOnly = False
      DisplayFormat = '#'
      decimalplaces = 0
    end
    object v_numero_documento_alfa: trzdbedit_go
      Left = 585
      Top = 15
      Width = 111
      Height = 21
      Hint = 'numero documento alfanumerico'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'numero_documento_alfa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 3
      OnEnter = v_numero_documento_alfaEnter
      OnExit = v_numero_documento_alfaExit
    end
    object v_IMPORTO_TOTALE_IMPONIBILE: trzdbnumericedit_go
      Left = 700
      Top = 50
      Width = 91
      Height = 21
      Hint = '[Alt+Gi'#249'=apre calcolatrice]'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tabella_ds
      DataField = 'IMPORTO_TOTALE_IMPONIBILE'
      ReadOnly = True
      Alignment = taLeftJustify
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      FocusColor = clBtnFace
      ParentFont = False
      ReadOnlyColor = clLime
      ReadOnlyColorOnFocus = True
      TabOrder = 12
      OnExit = v_cambioExit
      AllowBlank = False
      AllowScientificNotation = False
      IntegersOnly = False
      DisplayFormat = ',0.00;-,0.00;0'
    end
    object v_IMPORTO_TOTALE: trzdbnumericedit_go
      Left = 795
      Top = 50
      Width = 81
      Height = 21
      Hint = '[Alt+Gi'#249'=apre calcolatrice]'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tabella_ds
      DataField = 'IMPORTO_TOTALE'
      ReadOnly = True
      Alignment = taLeftJustify
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      FocusColor = clBtnFace
      ParentFont = False
      ReadOnlyColor = clLime
      ReadOnlyColorOnFocus = True
      TabOrder = 13
      OnExit = v_cambioExit
      AllowBlank = False
      AllowScientificNotation = False
      IntegersOnly = False
      DisplayFormat = ',0.00;-,0.00;0'
    end
  end
  inherited pannello_codice: TRzPanel
    Width = 76
    ExplicitWidth = 76
    inherited v_progressivo: trzdbnumericedit_go
      Width = 71
      lookupdatabase = 'arc.arcdit'
      lookuppopupmenu = ARC.pop_arc
      lookuptable = 'DAT'
      lookupvisname = 'DAT'
      ExplicitWidth = 71
    end
  end
  inherited pannello_griglia_righe: TRzPanel
    Top = 290
    Width = 886
    Height = 226
    ExplicitTop = 290
    ExplicitWidth = 886
    ExplicitHeight = 226
    inherited v_griglia_righe: trzdbgrid_go
      Width = 886
      Height = 181
      Hint = 
        '[Invio o Ins=aggiunge riga] [Ctrl+Ins=inserisce riga] [Alt+Ins=i' +
        'nserisce riga dopo] [F9=evade documento] [Ctrl+F7=RMA collegata]' +
        ' [Ctrl+F2=ricerca per codice articolo cli/frn] [F8=note acquisti' +
        '] [Ctrl+F9=note acquisti]'
      options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
      PopupMenu = Popup_griglia
      multiselect = True
      Columns = <
        item
          Expanded = False
          FieldName = 'RIGA'
          Title.Caption = 'riga'
          Title.Color = clYellow
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ART_CODICE'
          Title.Caption = 'codice articolo'
          Title.Color = clYellow
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'art_descrizione'
          Title.Caption = 'descrizione'
          Title.Color = clYellow
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTITA'
          Title.Alignment = taRightJustify
          Title.Caption = 'quantit'#224
          Title.Color = clYellow
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREZZO'
          Title.Alignment = taRightJustify
          Title.Caption = 'prezzo'
          Title.Color = clYellow
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TSM_CODICE'
          Title.Alignment = taCenter
          Title.Caption = 's/m'
          Title.Color = clYellow
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TSM_CODICE_ART'
          Title.Caption = 's/m'
          Title.Color = clYellow
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTO_SCONTO'
          Title.Caption = 'sconto'
          Title.Color = clYellow
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTO'
          Title.Alignment = taRightJustify
          Title.Caption = 'importo'
          Title.Color = clYellow
          Width = 67
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_CONSEGNA'
          Title.Alignment = taCenter
          Title.Caption = 'consegna'
          Title.Color = clYellow
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITUAZIONE'
          Title.Caption = 'situazione'
          Title.Color = clYellow
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_MOVIMENTO'
          Title.Caption = 'tipo'
          Title.Color = clYellow
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codice_alternativo'
          Title.Caption = 'codice alternativo'
          Title.Color = clYellow
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GEN_CODICE'
          Title.Caption = 'contropartita'
          Title.Color = clYellow
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIV_CODICE'
          Title.Caption = 'iva'
          Title.Color = clYellow
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cen_codice'
          Title.Caption = 'centro'
          Title.Color = clYellow
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'var_codice'
          Title.Caption = 'variante'
          Title.Color = clYellow
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dettaglio'
          Title.Color = clYellow
          Width = 89
          Visible = True
        end>
    end
    object v_note_righe: trzdbmemo_go
      Left = 0
      Top = 181
      Width = 886
      Height = 45
      TabStop = False
      Align = alBottom
      Color = clBtnFace
      DataField = 'NOTE'
      DataSource = tabella_righe_ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
      Visible = False
      FocusColor = clInfoBk
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
    end
  end
  inherited pannello_righe: TRzPanel
    Top = 520
    Width = 886
    Height = 161
    ExplicitTop = 520
    ExplicitWidth = 886
    ExplicitHeight = 161
    inherited tab_control_righe: TRzPageControl
      Width = 886
      Height = 156
      Align = alNone
      ExplicitWidth = 886
      ExplicitHeight = 156
      FixedDimension = 1
      inherited tab_pagina_righe: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 5
        ExplicitWidth = 884
        ExplicitHeight = 150
        object Label19: TRzLabel
          Left = 5
          Top = 0
          Width = 69
          Height = 13
          Caption = 'codice articolo'
          FocusControl = v_art_codice
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
          Left = 780
          Top = 0
          Width = 20
          Height = 13
          Caption = 'u.m.'
          FocusControl = v_art_codice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label26: TRzLabel
          Left = 129
          Top = 68
          Width = 38
          Height = 13
          Caption = 'quantit'#224
          FocusControl = v_art_codice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_l_prezzo: TRzLabel
          Left = 222
          Top = 68
          Width = 31
          Height = 13
          Caption = 'prezzo'
          FocusControl = v_art_codice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_l_tsm_codice_righe: TRzLabel
          Left = 320
          Top = 68
          Width = 104
          Height = 13
          Caption = 'sconti o maggiorazioni'
          FocusControl = v_tsm_codice_righe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_l_tipo_movimento: TRzLabel
          Left = 685
          Top = 68
          Width = 71
          Height = 13
          Caption = 'tipo movimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_l_importo: TRzLabel
          Left = 780
          Top = 68
          Width = 34
          Height = 13
          Caption = 'importo'
          FocusControl = v_art_codice
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
          Left = 120
          Top = 106
          Width = 69
          Height = 13
          Caption = 'saldo/acconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label37: TRzLabel
          Left = 195
          Top = 106
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
        object Label38: TRzLabel
          Left = 80
          Top = 68
          Width = 20
          Height = 13
          Caption = 'u.m.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label72: TRzLabel
          Left = 170
          Top = 0
          Width = 53
          Height = 13
          Caption = 'descrizione'
          FocusControl = v_descrizione1_riga
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label36: TRzLabel
          Left = 820
          Top = 0
          Width = 51
          Height = 13
          Caption = 'ubicazione'
          FocusControl = v_art_codice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_esistenza: TRzRapidFireButton
          Left = 545
          Top = 119
          Width = 23
          Height = 22
          Hint = 'verifica situazione magazzino'
          ImageIndex = 40
          Images = ARC.immagine_16
          OnClick = v_esistenzaClick
        end
        object Label17: TRzLabel
          Left = 618
          Top = 68
          Width = 32
          Height = 13
          Caption = 'sconto'
          FocusControl = v_art_codice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_l_colli: TRzLabel
          Left = 5
          Top = 68
          Width = 18
          Height = 13
          Caption = 'colli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_l_confezioni: TRzLabel
          Left = 43
          Top = 68
          Width = 35
          Height = 13
          Caption = 'confez.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel24: TRzLabel
          Left = 170
          Top = 35
          Width = 38
          Height = 13
          Caption = 'variante'
          FocusControl = v_var_codice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel25: TRzLabel
          Left = 495
          Top = 35
          Width = 40
          Height = 13
          Caption = 'dettaglio'
          FocusControl = v_var_codice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_art_codice: trzdbedit_go
          Left = 5
          Top = 13
          Width = 160
          Height = 21
          Hint = 
            '[Ctrl+F8=equivalenti][Ctrl+F9=analisi listini][Ctrl+F11=ult.prz.' +
            'for.][Alt+F9=RMA][F9=art.for.][Alt+F8=non conformit'#224'][Ctrl+F7=ar' +
            'ticoli potenziali][Ctrl+F2=articoli dell'#39'intestatario documento]'
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
          OnChange = v_art_codiceChange
          OnEnter = v_art_codiceEnter
          OnExit = v_art_codiceExit
          OnKeyDown = v_art_codiceKeyDown
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_art
          lookcollprogram = 'GESART'
          lookcolltable = 'ART'
          lookcollvisname = 'ART'
        end
        object v_quantita: trzdbnumericedit_go
          Left = 129
          Top = 81
          Width = 91
          Height = 21
          Hint = 
            'quantit'#224' [Alt+Gi'#249' per aprire la calcolatrice] [CTRL+F11=quantit'#224 +
            ' u.m. base]'
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
          TabOrder = 9
          OnEnter = v_quantitaEnter
          OnExit = v_quantitaExit
          OnKeyDown = v_quantitaKeyDown
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
        object v_prezzo: trzdbnumericedit_go
          Left = 222
          Top = 81
          Width = 96
          Height = 21
          Hint = 
            'prezzo unitario [F11=iva/no iva][Ctrl+F9=listini acquisto][Ctrl+' +
            'F10=listini vendita][Ctrl+F11=ultimo prezzo]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'prezzo'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 10
          OnChange = v_prezzoChange
          OnEnter = v_prezzoEnter
          OnExit = v_prezzoExit
          OnKeyDown = v_prezzoKeyDown
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
        object v_tsm_codice_righe: trzdbedit_go
          Left = 320
          Top = 81
          Width = 50
          Height = 21
          Hint = 'codice sconto previsto nella gestione listini [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'tsm_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 11
          OnChange = v_tsm_codice_righeChange
          OnEnter = v_tsm_codice_righeEnter
          OnExit = v_tsm_codice_righeExit
          OnKeyDown = v_tsm_codice_righeKeyDown
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTSM'
          lookcolltable = 'TSM'
          lookcollvisname = 'TSM'
        end
        object v_tipo_movimento: trzdbcombobox_go
          Left = 685
          Top = 81
          Width = 91
          Height = 21
          Hint = 
            'tipo movimento [normale, omaggio (addebita solo I.V.A.), sconto ' +
            'merce (completamente gratuito)]'
          DataField = 'tipo_movimento'
          DataSource = tabella_righe_ds
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
          TabOrder = 14
          OnChange = v_tipo_movimentoChange
          OnEnter = v_tipo_movimentoEnter
          OnExit = v_tipo_movimentoExit
          Items.Strings = (
            'normale'
            'omaggio'
            'sconto merce')
        end
        object v_importo: trzdbnumericedit_go
          Left = 780
          Top = 81
          Width = 101
          Height = 21
          Hint = 'importo della riga [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'importo'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 15
          OnChange = v_importoChange
          OnEnter = v_importoEnter
          OnExit = v_importoExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object Panel2: TRzPanel
          Left = 275
          Top = 104
          Width = 271
          Height = 42
          BorderOuter = fsNone
          ParentColor = True
          TabOrder = 18
          object box_esistenza_disponibilita: TGroupBox
            Left = 0
            Top = 0
            Width = 266
            Height = 41
            Caption = 'esistenza deposito totale e principale'
            Enabled = False
            ParentBackground = False
            TabOrder = 0
            object v_esistenza_deposito: trzdbnumericedit_go
              Left = 5
              Top = 15
              Width = 86
              Height = 21
              Hint = '[Alt+Gi'#249'=apre calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = esistenza_deposito_ds
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
              OnChange = v_esistenza_depositoChange
              AllowBlank = False
              AllowScientificNotation = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;0.0000'
              decimalplaces = 4
            end
            object v_esistenza_totale: trzdbnumericedit_go
              Left = 90
              Top = 15
              Width = 86
              Height = 21
              Hint = '[Alt+Gi'#249'=apre calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = esistenza_totale_ds
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
              TabOrder = 1
              OnChange = v_esistenza_totaleChange
              AllowBlank = False
              AllowScientificNotation = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;0.0000'
              decimalplaces = 4
            end
            object v_esistenza_principale: trzdbnumericedit_go
              Left = 175
              Top = 15
              Width = 86
              Height = 21
              Hint = '[Alt+Gi'#249'=apre calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = esistenza_principale_ds
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
              OnChange = v_esistenza_principaleChange
              AllowBlank = False
              AllowScientificNotation = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;0.0000'
              decimalplaces = 4
            end
          end
        end
        object Panel4: TRzPanel
          Left = 780
          Top = 104
          Width = 101
          Height = 43
          BorderOuter = fsNone
          Enabled = False
          ParentColor = True
          TabOrder = 19
          object v_l_quantita_residua: TRzLabel
            Left = 0
            Top = 0
            Width = 75
            Height = 13
            Caption = 'quantit'#224' residua'
            FocusControl = v_art_codice
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object v_quantita_residua: trzdbnumericedit_go
            Left = 0
            Top = 15
            Width = 101
            Height = 21
            Hint = '[Alt+Gi'#249'=apre calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_righe_ds
            DataField = 'QUANTITA_RESIDUA'
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
            OnExit = v_quantitaExit
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.0000;-,0.0000;#'
            decimalplaces = 4
          end
        end
        object v_saldo_acconto: trzdbcombobox_go
          Left = 120
          Top = 119
          Width = 71
          Height = 21
          Hint = 'tipo di evasione del documento di livello superiore'
          DataField = 'saldo_acconto'
          DataSource = tabella_righe_ds
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
          TabOrder = 16
          OnEnter = v_saldo_accontoEnter
          OnExit = v_saldo_accontoExit
          Items.Strings = (
            'acconto'
            'saldo')
        end
        object v_data_consegna_righe: trzdbdatetimeedit_go
          Left = 195
          Top = 119
          Width = 76
          Height = 21
          Hint = 
            'data di consegna richiesta o confermata [Alt+Gi'#249' per aprire il c' +
            'alendario]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
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
          TabOrder = 17
          OnExit = v_data_consegna_righeExit
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 46070.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_descrizione1_riga: trzdbedit_go
          Left = 170
          Top = 13
          Width = 321
          Height = 21
          Hint = 'descrizione della riga (prima parte)'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'descrizione1'
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
        object v_descrizione2_riga: trzdbedit_go
          Left = 495
          Top = 13
          Width = 281
          Height = 21
          Hint = 'descrizione della riga (seconda parte)'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'descrizione2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnEnter = v_descrizione2_rigaEnter
        end
        object v_tsm_codice_art: trzdbedit_go
          Left = 469
          Top = 81
          Width = 50
          Height = 21
          Hint = 'codice sconto extra [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'tsm_codice_art'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 12
          OnChange = v_tsm_codice_artChange
          OnEnter = v_tsm_codice_artEnter
          OnExit = v_tsm_codice_artExit
          OnKeyDown = v_tsm_codice_artKeyDown
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTSM'
          lookcolltable = 'TSM'
          lookcollvisname = 'TSM'
        end
        object v_art_tub_codice: trzdbeditdescrizione_go
          Left = 820
          Top = 13
          Width = 61
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
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
          TabOrder = 20
        end
        object v_art_tum_codice: trzdbeditdescrizione_go
          Left = 780
          Top = 13
          Width = 36
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
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
          TabOrder = 21
        end
        object v_importo_sconto_righe: trzdbnumericedit_go
          Left = 618
          Top = 81
          Width = 65
          Height = 21
          Hint = 
            'importo sconto in valore assoluto [Alt+Gi'#249' per aprire la calcola' +
            'trice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'importo_sconto'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 13
          OnChange = v_importo_sconto_righeChange
          OnEnter = v_importo_sconto_righeEnter
          OnExit = v_importo_sconto_righeExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object RzDBEditDescrizione_go19: trzdbeditdescrizione_go
          Left = 372
          Top = 81
          Width = 94
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tsm_righe_ds
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
          TabOrder = 22
        end
        object RzDBEditDescrizione_go20: trzdbeditdescrizione_go
          Left = 522
          Top = 81
          Width = 94
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tsm_art_ds
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
          TabOrder = 23
        end
        object v_tum_codice: trzdbedit_go
          Left = 80
          Top = 81
          Width = 47
          Height = 21
          Hint = 'codice unit'#224' di misura [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'TUM_CODICE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 7
          OnEnter = v_tum_codiceEnter
          OnExit = v_tum_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTUM'
          lookcolltable = 'TUM'
          lookcollvisname = 'TUM'
        end
        object Panel11: TRzPanel
          Left = 725
          Top = 104
          Width = 51
          Height = 41
          BorderOuter = fsNone
          Enabled = False
          ParentColor = True
          TabOrder = 24
          object Label80: TRzLabel
            Left = 2
            Top = 0
            Width = 40
            Height = 13
            Caption = 'deposito'
            FocusControl = v_art_codice
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object RxDBComboEdit1: trzdbedit_go
            Left = 2
            Top = 15
            Width = 49
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_righe_ds
            DataField = 'TMA_CODICE'
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
          end
        end
        object Panel9: TRzPanel
          Left = 575
          Top = 104
          Width = 151
          Height = 46
          BorderOuter = fsNone
          ParentColor = True
          TabOrder = 25
          object GroupBox4: TGroupBox
            Left = 0
            Top = 0
            Width = 146
            Height = 41
            Caption = 'listino di vendita'
            Enabled = False
            ParentBackground = False
            TabOrder = 0
            object RxDBCalcEdit1: trzdbnumericedit_go
              Left = 5
              Top = 15
              Width = 91
              Height = 21
              Hint = '[Alt+Gi'#249'=apre calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = lsv_ds
              DataField = 'prezzo'
              Alignment = taLeftJustify
              Color = clLime
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnlyColor = clBtnFace
              ReadOnlyColorOnFocus = True
              TabOrder = 0
              AllowBlank = False
              AllowScientificNotation = False
              IntegersOnly = False
              DisplayFormat = ',0.00;-,0.00;#'
              decimalplaces = 4
            end
            object RxDBComboEdit2: trzdbedit_go
              Left = 100
              Top = 15
              Width = 41
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              DataSource = lsv_ds
              DataField = 'tsm_codice'
              Color = clLime
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
          end
        end
        object pannello_quantita_base: TRzPanel
          Left = 5
          Top = 104
          Width = 111
          Height = 42
          BorderOuter = fsNone
          ParentColor = True
          TabOrder = 8
          object box_quantita_base: TGroupBox
            Left = 0
            Top = 0
            Width = 106
            Height = 41
            Caption = 'quantit'#224' base'
            ParentBackground = False
            TabOrder = 0
            object v_tum_quantita_base: trzdbnumericedit_go
              Left = 5
              Top = 15
              Width = 96
              Height = 21
              Hint = '[Alt+Gi'#249'=apre calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = tabella_righe_ds
              DataField = 'TUM_QUANTITA_BASE'
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
              OnEnter = v_tum_quantita_baseEnter
              OnExit = v_tum_quantita_baseExit
              AllowBlank = False
              AllowScientificNotation = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;0.0000'
              decimalplaces = 4
            end
          end
        end
        object v_numero_colli_riga: trzdbnumericedit_go
          Left = 5
          Top = 81
          Width = 36
          Height = 21
          Hint = 'numero colli [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'numero_colli'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 5
          OnEnter = v_numero_colli_rigaEnter
          OnExit = v_numero_colli_rigaExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_numero_confezioni: trzdbnumericedit_go
          Left = 43
          Top = 81
          Width = 35
          Height = 21
          Hint = 'numero confezioni [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'numero_confezioni'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          OnEnter = v_numero_confezioniEnter
          OnExit = v_numero_confezioniExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_art_codice_barcode: trzedit_go
          Left = 100
          Top = 5
          Width = 51
          Height = 21
          Text = ''
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 26
          Visible = False
        end
        object v_var_codice: trzdbedit_go
          Left = 170
          Top = 48
          Width = 51
          Height = 21
          Hint = 'codice variante'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataField = 'var_codice'
          ReadOnly = True
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          FramingPreference = fpCustomFraming
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
        end
        object v_var_descrizione: trzdbeditdescrizione_go
          Left = 225
          Top = 48
          Width = 266
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = artvardet_ds
          DataField = 'var_descrizione'
          ReadOnly = True
          AutoSize = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          FramingPreference = fpCustomFraming
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 27
        end
        object v_dettaglio: trzdbedit_go
          Left = 495
          Top = 48
          Width = 91
          Height = 21
          Hint = 'dettaglio variante [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'dettaglio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          FramingPreference = fpCustomFraming
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 4
          OnEnter = v_dettaglioEnter
          OnExit = v_dettaglioExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcolltable = 'ARTVARDET'
          lookcollvisname = 'ARTVARDET'
        end
        object trzdbeditdescrizione_go7: trzdbeditdescrizione_go
          Left = 590
          Top = 48
          Width = 291
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = artvardet_ds
          DataField = 'descrizione'
          ReadOnly = True
          AutoSize = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          FramingPreference = fpCustomFraming
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 28
        end
      end
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    Left = 888
    ExplicitLeft = 888
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      Top = 635
      Height = 0
      ExplicitTop = 605
      ExplicitHeight = 0
      FixedDimension = 18
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
      end
      inherited tab_pannello_bottoni_nuovi_extra: TRzTabSheet
        ExplicitLeft = 0
        ExplicitHeight = 7
      end
      object tab_pannello_bottoni_nuovi_storni: TRzTabSheet
        Color = 15987699
        Caption = 'X'
        ExplicitLeft = 0
        ExplicitTop = 22
        ExplicitHeight = 7
      end
    end
    inherited RzPanel1_bottoni_nuovi: TRzPanel
      inherited tool_f9: TRzRapidFireButton
        ExplicitLeft = 40
      end
    end
    inherited pannello_destra_pannello: TRzPanel
      Height = 603
      ExplicitHeight = 573
      inherited pannello_destra_PanelGroup: TCategoryPanelGroup
        Top = 86
        Height = 517
        ExplicitTop = 86
        ExplicitHeight = 487
        object CategoryPanel3: TCategoryPanel [0]
          Top = 363
          Height = 30
          Caption = 'collegamenti'
          Collapsed = True
          ParentColor = True
          TabOrder = 0
          ExpandedHeight = 166
          object v_analitica: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Align = alTop
            Caption = 'analitica [F1]'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_analiticaClick
            ExplicitWidth = 145
          end
          object v_commesse: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione commesse'
            Align = alTop
            Caption = 'commesse [F2]'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_commesseClick
            ExplicitTop = 31
            ExplicitWidth = 128
          end
          object v_conto_terzi: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione commesse'
            Align = alTop
            Caption = 'conto terzi [F3]'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_conto_terziClick
            ExplicitTop = 196
            ExplicitWidth = 145
          end
          object v_lotti: TRzRapidFireButton
            Left = 0
            Top = 60
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione lotti articoli'
            Align = alTop
            Caption = 'lotti/matricole [F4]'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_lottiClick
            ExplicitLeft = 5
            ExplicitTop = 301
            ExplicitWidth = 145
          end
          object v_ubicazioni: TRzRapidFireButton
            Left = 0
            Top = 100
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione multiubicazione'
            Align = alTop
            Caption = 'ubicazioni'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_ubicazioniClick
            ExplicitTop = 120
            ExplicitWidth = 145
          end
          object v_modula: TRzRapidFireButton
            Left = 0
            Top = 120
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'collegamento con Modula'
            Align = alTop
            Caption = 'collegamento Modula'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            StyleName = 'Windows'
            OnClick = v_modulaClick
            ExplicitTop = 160
            ExplicitWidth = 145
          end
          object v_distinta_base: TRzRapidFireButton
            Left = 0
            Top = 80
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'selezione componenti distinta base dell'#39'articolo'
            Align = alTop
            Caption = 'distinta base [F6]'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_distinta_baseClick
            ExplicitLeft = 5
            ExplicitTop = 85
          end
        end
        object CategoryPanel1: TCategoryPanel [1]
          Top = 333
          Height = 30
          Caption = 'righe'
          Collapsed = True
          ParentColor = True
          TabOrder = 1
          ExpandedHeight = 226
          object v_accessori: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'selezione accessori dell'#39'articolo'
            Align = alTop
            Caption = 'accessori [F5]'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_accessoriClick
            ExplicitTop = 5
            ExplicitWidth = 145
          end
          object v_non_conformita: TRzRapidFireButton
            Left = 0
            Top = 100
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'creazione non conformit'#224
            Align = alTop
            Caption = 'crea non conformit'#224
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_non_conformitaClick
            ExplicitLeft = 5
            ExplicitTop = 110
          end
          object v_crea_listino_fornitore: TRzRapidFireButton
            Left = 0
            Top = 60
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'creazione listino fornitore'
            Align = alTop
            Caption = 'listino fornitore [F7]'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_crea_listino_fornitoreClick
            ExplicitTop = 223
            ExplicitWidth = 114
          end
          object v_crea_listino_vendita: TRzRapidFireButton
            Left = 0
            Top = 80
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'creazione listino di vendita'
            Align = alTop
            Caption = 'listino vendita [F11]'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_crea_listino_venditaClick
            ExplicitTop = 244
            ExplicitWidth = 114
          end
          object v_produzione_conto_terzi: TRzRapidFireButton
            Left = 0
            Top = 120
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'produzione per conto terzi'
            Align = alTop
            Caption = 'produzione conto terzi'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_produzione_conto_terziClick
            ExplicitTop = 307
            ExplicitWidth = 114
          end
          object v_manutezione_macchinari: TRzRapidFireButton
            Left = 0
            Top = 140
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'assegna riga documento a macchinario in manutenzione'
            Align = alTop
            Caption = 'acquisto macchine'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_manutezione_macchinariClick
            ExplicitLeft = 5
          end
          object v_manutezione_interventi: TRzRapidFireButton
            Left = 0
            Top = 160
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'assegna riga documento a interventi di manutenzione'
            Align = alTop
            Caption = 'intervento manutenzione'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_manutezione_interventiClick
            ExplicitLeft = 5
            ExplicitTop = 215
            ExplicitWidth = 145
          end
          object v_annulla_riga_documento: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'annulla riga documento'
            Align = alTop
            Caption = 'annulla riga'
            ImageIndex = 169
            Images = ARC.immagine_16
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_annulla_riga_documentoClick
            ExplicitLeft = 5
            ExplicitTop = 0
            ExplicitWidth = 145
          end
          object v_evadi_riga_documento: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'considera la riga del documento evasa a saldo'
            Align = alTop
            Caption = 'evadi riga a saldo'
            ImageIndex = 39
            Images = ARC.immagine_16
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_evadi_riga_documentoClick
            ExplicitTop = -5
            ExplicitWidth = 166
          end
          object v_dettaglio_taglie: TRzRapidFireButton
            Left = 0
            Top = 180
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'visualizza dettaglio quantit'#224' per taglia'
            Align = alTop
            Caption = 'dettaglio taglie'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_dettaglio_taglieClick
            ExplicitTop = 225
          end
        end
        object pannello_destra_02: TCategoryPanel [2]
          Top = 303
          Height = 30
          Caption = 'testata'
          Color = clWindow
          Collapsed = True
          TabOrder = 2
          ExpandedHeight = 125
          object v_log_revisione: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'analisi delle versioni precedenti del documento'
            Align = alTop
            Caption = 'log revisioni'
            ImageIndex = 41
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_log_revisioneClick
            ExplicitTop = 40
            ExplicitWidth = 145
          end
          object v_annulla_documento: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'annulla tutte le righe inevase'
            Align = alTop
            Caption = 'annulla tutto documento'
            ImageIndex = 41
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_annulla_documentoClick
            ExplicitTop = 60
            ExplicitWidth = 145
          end
          object v_bottone_percipienti: TRzRapidFireButton
            Left = 0
            Top = 80
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione ritenuta d'#39'acconto'
            Align = alTop
            Caption = 'percipienti'
            ImageIndex = 41
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_bottone_percipientiClick
            ExplicitTop = 60
            ExplicitWidth = 145
          end
          object v_situazione_acconto: TRzRapidFireButton
            Left = 0
            Top = 60
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'situazione acconto versato su ordine'
            Align = alTop
            Caption = 'situazione acconto'
            ImageIndex = 41
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_situazione_accontoClick
            ExplicitTop = 80
            ExplicitWidth = 145
          end
          object v_revisione_documento: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'creare revisione per il documento'
            Align = alTop
            Caption = 'revisione'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_revisione_documentoClick
            ExplicitLeft = 5
            ExplicitWidth = 166
          end
        end
        object CategoryPanel2: TCategoryPanel [3]
          Top = 273
          Height = 30
          Caption = 'storni'
          Collapsed = True
          ParentColor = True
          TabOrder = 3
          ExpandedHeight = 85
          object v_storno_evasione: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'storna l'#39'evasione del documento'
            Align = alTop
            Caption = 'storno evasione'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_storno_evasioneClick
            ExplicitWidth = 145
          end
          object v_storno_consolidamento: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'storna il consolidamento del documento'
            Align = alTop
            Caption = 'storno consolidamento'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_storno_consolidamentoClick
            ExplicitWidth = 145
          end
          object v_storno_differite: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'storna la fattura differita o la nota credito'
            Align = alTop
            Caption = 'storno differite / n.c.'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_storno_differiteClick
            ExplicitWidth = 145
          end
        end
        inherited pannello_destra_01: TCategoryPanel
          Height = 227
          TabOrder = 4
          ExplicitHeight = 227
          object v_bloccato: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Align = alTop
            Caption = 'libero'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_bloccatoClick
            ExplicitTop = 0
            ExplicitWidth = 145
          end
          object v_consolida: TRzRapidFireButton
            Left = 0
            Top = 140
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'consolidamento del documento'
            Align = alTop
            Caption = 'consolidamento'
            ImageIndex = 39
            Images = ARC.immagine_16
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_consolidaClick
            ExplicitWidth = 145
          end
          object v_evadere: TRzRapidFireButton
            Left = 0
            Top = 80
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'visualizza solo righe da evadere'
            Align = alTop
            GroupIndex = 90
            Caption = 'filtra righe da evadere'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_evadereClick
            ExplicitTop = 55
          end
          object v_tutte: TRzRapidFireButton
            Left = 0
            Top = 100
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'visualizza tutte le righe'
            Align = alTop
            Caption = 'visualizza tutte le righe'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_tutteClick
            ExplicitLeft = 5
            ExplicitTop = 75
          end
          object v_senza_prezzo: TRzRapidFireButton
            Left = 0
            Top = 120
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'valorizza righe documento'
            Align = alTop
            Caption = 'valorizzazione righe'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_senza_prezzoClick
            ExplicitWidth = 145
          end
          object v_pagper: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'pagamento personalizzato per il documento'
            Align = alTop
            Caption = 'pagamento'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            HotImageIndex = 39
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_pagperClick
            ExplicitTop = 30
            ExplicitWidth = 145
          end
          object v_codice_articolo_fornitore: TRzRapidFireButton
            Left = 0
            Top = 160
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'creazione codice articolo fornitore'
            Align = alTop
            Caption = 'articolo fornitore [F8]'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_codice_articolo_fornitoreClick
            ExplicitTop = 155
          end
          object v_lettore: TRzRapidFireButton
            Left = 0
            Top = 180
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'acquisizione dati tramite lettore barcode'
            Align = alTop
            Caption = 'lettore [F10]'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_lettoreClick
            ExplicitTop = 210
            ExplicitWidth = 128
          end
          object v_gestione_collegato: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione del documento di origine'
            Align = alTop
            Caption = 'documento origine'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_gestione_collegatoClick
            ExplicitLeft = 5
          end
          object v_rdo: TRzRapidFireButton
            Left = 0
            Top = 60
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'analisi delle richieste d'#39'offerta'
            Align = alTop
            Caption = 'richieste d'#39'offerta'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_rdoClick
            ExplicitTop = 70
            ExplicitWidth = 166
          end
        end
        inherited pannello_funzioni: TCategoryPanel
          TabOrder = 5
          inherited v_visfunz: TRzRapidFireButton
            ExplicitWidth = 166
          end
        end
      end
      inherited pannello_cerca_salva: TRzPanel
        inherited pannello_destra_pannelli: TRzRapidFireButton
          ExplicitLeft = 40
        end
      end
      inherited pannello_destra_dati: TRzPanel
        Height = 26
        ExplicitHeight = 26
        inherited RzPanel9_testata: TRzPanel
          Width = 95
          Align = alLeft
          ExplicitWidth = 95
          inherited v_bottone_dati_extra_testata: TRzRapidFireButton
            Width = 95
            Caption = 'testata [F12]'
            ExplicitLeft = 0
            ExplicitWidth = 95
          end
        end
        inherited RzPanel1_riga: TRzPanel
          Left = 94
          Top = 0
          Width = 95
          Align = alRight
          ExplicitLeft = 94
          ExplicitTop = 0
          ExplicitWidth = 95
          inherited v_bottone_dati_extra_righe: TRzRapidFireButton
            Width = 95
            ExplicitTop = 0
            ExplicitWidth = 95
          end
        end
      end
      object RzPanel3: TRzPanel
        Left = 0
        Top = 52
        Width = 189
        Height = 34
        Align = alTop
        BorderOuter = fsNone
        ParentColor = True
        TabOrder = 3
        object RzPanel4: TRzPanel
          Left = 0
          Top = 0
          Width = 95
          Height = 34
          Align = alLeft
          BorderOuter = fsNone
          ParentColor = True
          TabOrder = 0
          object Label18: TRzLabel
            Left = 0
            Top = 0
            Width = 95
            Height = 13
            Align = alTop
            Caption = ' situaz. documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ExplicitWidth = 89
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
        object RzPanel5: TRzPanel
          Left = 94
          Top = 0
          Width = 95
          Height = 34
          Align = alRight
          BorderOuter = fsNone
          ParentColor = True
          TabOrder = 1
          object RzLabel5: TRzLabel
            Left = 0
            Top = 0
            Width = 95
            Height = 13
            Align = alTop
            Caption = ' situazione riga'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ExplicitWidth = 70
          end
          object v_situazione_riga_documento: trzdbedit_go
            Left = 0
            Top = 13
            Width = 95
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tabella_righe_ds
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
      end
    end
    inherited RzPanel2_bottoni_nuovi: TRzPanel
      Top = 635
      Height = 3
      ExplicitTop = 635
      ExplicitHeight = 3
    end
  end
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select *'
      'from oat'
      'where progressivo = :progressivo')
  end
  inherited tabella_iva: TMyQuery_go
    SQL.Strings = (
      '')
    MasterSource = tabella_ds
    MasterFields = 'progressivo'
  end
  inherited tabella_righe: TMyQuery_go
    SQL.Strings = (
      
        'select rar.*, rar.descrizione1 art_descrizione, '#39#39' codice_altern' +
        'ativo,'
      
        'case when situazione = '#39'evaso'#39' or situazione = '#39'annullato'#39' or si' +
        'tuazione = '#39'consolidato'#39' then 0.0'
      'else quantita - quantita_evasa'
      'end quantita_residua,'
      
        'artna.id, artna.ddt, artna.fatture, artna.ordini, artna.preventi' +
        'vi, '#39#39' var_codice'
      'from rar'
      'left join artna on artna.codice = rar.art_codice'
      'where progressivo = :progressivo'
      'order by riga'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' ')
    BeforeCancel = tabella_righeBeforeCancel
  end
  inherited query_righe: TMyQuery_go
    SQL.Strings = (
      '')
    ParamData = <>
  end
  object esistenza_deposito: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select esistenza,'
      'case'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'esistenza'#39' then esistenza'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'esistenza - impegnato'#39' then esistenza - impe' +
        'gnato'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'esistenza + ordinato'#39' then esistenza + ordin' +
        'ato'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'esistenza + ordinato - impegnato'#39' then esist' +
        'enza + ordinato - impegnato'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'ordinato'#39' then ordinato'
      'else esistenza + ordinato - impegnato'
      'end disponibilita'
      'from mag'
      'where art_codice = :art_codice and tma_codice = :tma_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 370
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice'
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
  object esistenza_deposito_ds: TMyDataSource
    DataSet = esistenza_deposito
    Left = 390
    Top = 65526
  end
  object esistenza_totale: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(mag.esistenza) esistenza,'
      'case'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'esistenza'#39' then sum(esistenza)'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'esistenza - impegnato'#39' then sum(esistenza - ' +
        'impegnato)'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'esistenza + ordinato'#39' then sum(esistenza + o' +
        'rdinato)'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'esistenza + ordinato - impegnato'#39' then sum(e' +
        'sistenza + ordinato - impegnato)'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'ordinato'#39' then sum(ordinato)'
      'else sum(esistenza + ordinato - impegnato)'
      'end disponibilita'
      'from mag'
      'left outer join tma on mag.tma_codice = tma.codice'
      'where art_codice = :art_codice and tma.proprieta = '#39'si'#39
      'group by art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object esistenza_totale_ds: TMyDataSource
    DataSet = esistenza_totale
    Left = 420
    Top = 65526
  end
  object cmm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from cmm'
      
        'where tipo_documento = :codice0 and modulo_utilizzo = :codice1 a' +
        'nd'
      '  doc_progressivo = :codice2 and doc_riga = :codice3')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 435
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice0'
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
  object tda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select tda.*, tco.commesse tco_commesse, tco.analitica tco_anali' +
        'tica,'
      'd.commesse d_commesse, d.analitica d_analitica, d.lotti d_lotti,'
      'c.commesse c_commesse, c.analitica c_analitica, '
      'tmo.lotti tmo_lotti, tmo.commesse tmo_commesse'
      'from tda'
      'left join tco on tco.codice = tda.tco_codice'
      'left join tda d on d.codice = tda.tda_codice_differite'
      'left join tco c on c.codice = d.tco_codice'
      'left join tmo on tmo.codice = tda.tmo_codice'
      'where tda.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 465
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object frn: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select frn.*, '
      
        'concat(trim(frn.descrizione1), '#39' '#39', trim(frn.descrizione2), '#39' '#39',' +
        ' trim(frn.via), '#39' '#39', frn.citta) frn_descrizione  '
      'from frn'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 480
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object nom: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select nom.*, tna.intra'
      'from nom'
      'inner join tna on tna.codice = nom.tna_codice'
      'where nom.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 495
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object ltm: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 510
    Top = 65526
  end
  object pat: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(importo_saldo) importo_saldo'
      'from pat'
      'where pat.cfg_tipo = '#39'F'#39' and pat.cfg_codice = :cfg_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfg_codice'
        Value = nil
      end>
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select art.*'
      'from art'
      'where codice = :codice'
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 390
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object prv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from prv'
      
        'where tag_codice = :tag_codice and tp1_codice = :tp1_codice and ' +
        'tp2_codice = :tp2_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 400
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tag_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tp1_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tp2_codice'
        Value = nil
      end>
  end
  object testata_documento_evaso: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 410
    Top = 65526
  end
  object riga_documento_evaso: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 425
    Top = 65526
  end
  object saldo_acconto: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select quantita, quantita_evasa from ovr'
      'where progressivo = :progressivo and riga = :riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 440
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
  object cpa: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 455
    Top = 65526
  end
  object duplica_righe: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select gen_codice from cpa'
      'where tcf_codice = :tcf_codice and taq_codice = :taq_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 470
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
  object mmt: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 485
    Top = 65526
  end
  object mmr: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 475
    Top = 25
  end
  object cli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select cli.*,'
      
        'concat(trim(cli.descrizione1), '#39' '#39', trim(cli.descrizione2), '#39' '#39',' +
        ' trim(cli.via), '#39' '#39', cli.citta) frn_descrizione'
      'from cli'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 520
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object lct: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 530
    Top = 65526
  end
  object lcr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * '
      'from lcr'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 545
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object totalizza_quantita: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from cec'
      'where doc_progressivo_origine = :doc_progressivo_origine')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 575
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'doc_progressivo_origine'
        Value = nil
      end>
  end
  object inf: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 590
    Top = 65526
  end
  object arf: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from arf'
      'where frn_codice = :frn_codice and art_codice = :art_codice'
      ''
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 605
    Top = 65526
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
  object art_preventivi_ordini: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 620
    Top = 65526
  end
  object controllo_documenti_evasi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 635
    Top = 65526
  end
  object controllo_nota_credito: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select progressivo'
      'from far'
      'where progressivo = :progressivo'
      'and documento_origine = '#39'ddt fornitori ven'#39)
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
  object rda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from rda'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 665
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object abi: TMyQuery_go
    Connection = ARC.arc
    SQL.Strings = (
      'select banca'
      'from abi'
      'where codice_abi = :codice_abi limit 1'
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 680
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_abi'
        Value = nil
      end>
  end
  object abi_ds: TMyDataSource
    DataSet = abi
    Left = 695
    Top = 65526
  end
  object cab: TMyQuery_go
    Connection = ARC.arc
    SQL.Strings = (
      'select sportello'
      'from abi'
      'where codice_abi = :codice_abi and codice_cab = :codice_cab'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 710
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_abi'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice_cab'
        Value = nil
      end>
  end
  object cab_ds: TMyDataSource
    DataSet = cab
    Left = 705
    Top = 65526
  end
  object frn_ds: TMyDataSource
    DataSet = frn
    Left = 715
    Top = 65526
  end
  object cancella_iva: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 935
    Top = 65526
  end
  object tda_ds: TMyDataSource
    DataSet = tda
    Left = 725
    Top = 65526
  end
  object tsm_righe: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tsm'
      'where codice = :codice'
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 735
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tsm_righe_ds: TMyDataSource
    DataSet = tsm_righe
    Left = 744
    Top = 65526
  end
  object tsm_art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tsm'
      'where codice = :codice'
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 750
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tsm_art_ds: TMyDataSource
    DataSet = tsm_art
    Left = 759
    Top = 65526
  end
  object tla: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, tva_codice, iva_inclusa'
      'from tla'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 765
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tla_ds: TMyDataSource
    DataSet = tla
    Left = 774
    Top = 65526
  end
  object tpa: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, tsm_codice'
      'from tpa'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 780
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tpa_ds: TMyDataSource
    DataSet = tpa
    Left = 789
    Top = 65526
  end
  object tva: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, cambio'
      'from tva'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 795
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tva_ds: TMyDataSource
    DataSet = tva
    Left = 804
    Top = 65526
  end
  object tsm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tsm'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 810
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tsm_ds: TMyDataSource
    DataSet = tsm
    Left = 819
    Top = 65526
  end
  object tiv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tiv'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 825
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tiv_ds: TMyDataSource
    DataSet = tiv
    Left = 834
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
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 840
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
    Left = 849
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
    Left = 855
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
    Left = 864
    Top = 65526
  end
  object tcd_apertura: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tcd'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 870
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tcd_apertura_ds: TMyDataSource
    DataSet = tcd_apertura
    Left = 879
    Top = 65526
  end
  object tcd_chiusura: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tcd'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 885
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tcd_chiusura_ds: TMyDataSource
    DataSet = tcd_chiusura
    Left = 894
    Top = 65526
  end
  object tna_intra: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tna'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 900
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tna_intra_ds: TMyDataSource
    DataSet = tna_intra
    Left = 909
    Top = 65526
  end
  object tba: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tba'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 275
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tba_ds: TMyDataSource
    DataSet = tba
    Left = 284
    Top = 30
  end
  object tbp: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tbp'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 290
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tbp_ds: TMyDataSource
    DataSet = tbp
    Left = 299
    Top = 30
  end
  object tmo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select descrizione, tma_codice, tmo_codice_collegato, tma_codice' +
        '_collegato, esistenza,'
      'commesse, lotti'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 305
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_ds: TMyDataSource
    DataSet = tmo
    Left = 314
    Top = 30
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
    Left = 320
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_ds: TMyDataSource
    DataSet = tma
    Left = 329
    Top = 30
  end
  object tmo_collegato: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 335
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_collegato_ds: TMyDataSource
    DataSet = tmo_collegato
    Left = 344
    Top = 30
  end
  object tma_collegato: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice'
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 350
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_collegato_ds: TMyDataSource
    DataSet = tma_collegato
    Left = 359
    Top = 30
  end
  object tna: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tna'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 365
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tna_ds: TMyDataSource
    DataSet = tna
    Left = 374
    Top = 30
  end
  object tsp: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tsp'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tsp_ds: TMyDataSource
    DataSet = tsp
    Left = 389
    Top = 30
  end
  object tpo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tpo'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 395
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tpo_ds: TMyDataSource
    DataSet = tpo
    Left = 404
    Top = 30
  end
  object tsm_sconto: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tsm'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 410
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tsm_sconto_ds: TMyDataSource
    DataSet = tsm_sconto
    Left = 419
    Top = 30
  end
  object tum: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tum'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 425
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object DataSource1: TMyDataSource
    DataSet = tum
    Left = 434
    Top = 30
  end
  object cum: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select coefficiente'
      'from cum'
      
        'where tum_codice = :tum_codice and tum_codice_collegato = :tum_c' +
        'odice_collegato')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 950
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tum_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tum_codice_collegato'
        Value = nil
      end>
  end
  object tabella_tiv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select percentuale'
      'from tiv'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 860
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_01: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select taq_codice'
      'from art'
      'where codice = :codice'
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 815
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object utn: TMyQuery_go
    Connection = ARC.arc
    SQL.Strings = (
      
        'select tda_codice_ordini, tda_codice_ddt, tda_codice_fatture, td' +
        'a_codice_fatture_differite,'
      'tda_codice_note_credito, tda_codice_preventivi'
      'from utn'
      'where codice = :codice'
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 830
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tiv_spese_01: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tiv'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
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
  object tiv_spese_02: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tiv'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 480
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tiv_spese_03: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tiv'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 500
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tiv_spese_04: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tiv'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 525
    Top = 45
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object gen_spese_01: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select obsoleto, descrizione1'
      'from gen'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 550
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object gen_spese_02: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select obsoleto, descrizione1'
      'from gen'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 565
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object gen_spese_03: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select obsoleto, descrizione1'
      'from gen'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 580
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object gen_spese_04: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select obsoleto, descrizione1'
      'from gen'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 595
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tda_01: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select tco_codice'
      'from tda'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 625
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cli_01: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select obsoleto, concat(trim(descrizione1), '#39' '#39', trim(descrizion' +
        'e2), '#39' '#39', citta) descrizione'
      'from cli'
      'where codice = :codice'
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 655
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cli_01_ds: TMyDataSource
    DataSet = cli_01
    Left = 664
    Top = 30
  end
  object cem: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from cem'
      
        'where tipo_documento = :codice0 and modulo_utilizzo = :codice1 a' +
        'nd'
      '  doc_progressivo = :codice2 and doc_riga = :codice3')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 785
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice0'
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
  object query_cem: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 885
    Top = 25
  end
  object lsv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select prezzo, tsm_codice'
      'from lsv'
      'where art_codice = :art_codice and tlv_codice = :tlv_codice and'
      'data_inizio <= :data and data_fine >= :data'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 695
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tlv_codice'
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
  object lsv_ds: TMyDataSource
    DataSet = lsv
    Left = 709
    Top = 30
  end
  object numerazione_automatica: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select max(numero_documento) numero_documento'
      'from fat'
      'where tda_codice = :tda_codice and year(data_documento) = :anno')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 910
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'anno'
        Value = nil
      end>
  end
  object esistenza_principale: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select esistenza, approntato, impegnato, scorta_minima,'
      'case'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'esistenza'#39' then esistenza'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'esistenza - impegnato'#39' then (esistenza - imp' +
        'egnato)'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'esistenza + ordinato'#39' then (esistenza + ordi' +
        'nato)'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'esistenza + ordinato - impegnato'#39' then (esis' +
        'tenza + ordinato - impegnato)'
      
        'when (select calcolo_disponibilita_acquisti from tda where codic' +
        'e = :tda_codice) = '#39'ordinato'#39' then ordinato'
      'else esistenza + ordinato - impegnato'
      'end disponibilita'
      'from mag'
      'where art_codice = :art_codice and tma_codice = :tma_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 810
    Top = 85
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tda_codice'
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
  object esistenza_principale_ds: TMyDataSource
    DataSet = esistenza_principale
    Left = 824
    Top = 85
  end
  object eseguita_evasione: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 785
    Top = 55
  end
  object bvr_dvr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 935
    Top = 25
  end
  object spese: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 815
    Top = 55
  end
  object rdo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from rdo'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 750
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object aggiorna_rdo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 715
    Top = 55
  end
  object gen: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select tpc.tipo'
      'from gen'
      
        'left join tpc on tpc.codice_01 = gen.tpc_codice_01 and tpc.codic' +
        'e_02 = '#39#39' and tpc.codice_03 = '#39#39
      'and tpc.codice_04 = '#39#39
      'where gen.codice = :gen_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 685
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gen_codice'
        Value = nil
      end>
  end
  object art_doppi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select riga from xxx where progressivo = :progressivo and art_co' +
        'dice = :art_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 850
    Top = 55
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
  object ccf: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id'
      'from ccf'
      
        'where oggetto_contatto = :oggetto_contatto and cfg_codice = :cfg' +
        '_codice and ttc_codice = :ttc_codice'
      
        'and documento_collegato = :documento_collegato and doc_progressi' +
        'vo_collegato = :doc_progressivo_collegato'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 880
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'oggetto_contatto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cfg_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ttc_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'documento_collegato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'doc_progressivo_collegato'
        Value = nil
      end>
  end
  object tabella_virtuale: TVirtualTable
    IndexFieldNames = 'progressivo;riga'
    Left = 730
    Top = 85
    Data = {04000000000000000000}
    object tabella_virtualedata_documento: TDateField
      FieldName = 'data_documento'
    end
    object tabella_virtualenumero_documento: TFloatField
      FieldName = 'numero_documento'
    end
    object tabella_virtualeprogressivo: TIntegerField
      FieldName = 'progressivo'
    end
    object tabella_virtualeriga: TIntegerField
      FieldName = 'riga'
    end
    object tabella_virtualenostro_codice: TStringField
      FieldName = 'nostro_codice'
    end
    object tabella_virtualedescrizione: TStringField
      FieldName = 'descrizione'
      Size = 80
    end
    object tabella_virtualevostro_codice: TStringField
      FieldName = 'vostro_codice'
      Size = 30
    end
    object tabella_virtualeum: TStringField
      FieldName = 'um'
      Size = 4
    end
    object tabella_virtualequantita: TFloatField
      FieldName = 'quantita'
    end
    object tabella_virtualeprezzo: TFloatField
      FieldName = 'prezzo'
    end
    object tabella_virtualepercentuale_sconto_01: TFloatField
      FieldName = 'percentuale_sconto_01'
    end
    object tabella_virtualepercentuale_sconto_02: TFloatField
      FieldName = 'percentuale_sconto_02'
    end
    object tabella_virtualeimporto_sconto: TFloatField
      FieldName = 'importo_sconto'
    end
  end
  object tabella_virtuale_ds: TMyDataSource
    DataSet = tabella_virtuale
    Left = 760
    Top = 85
  end
  object OpenDialog: TOpenDialog
    Title = 'Importazione quotazioni fornitori'
    Left = 780
    Top = 85
  end
  object utntda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select tda_codice'
      'from utntda'
      'where utn_codice = :utn_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 910
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end>
  end
  object cen: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select concat(trim(descrizione1), '#39' '#39', descrizione2) descrizione'
      'from cen'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 390
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cen_ds: TMyDataSource
    DataSet = cen
    Left = 409
    Top = 55
  end
  object tvc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tvc'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 440
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tvc_ds: TMyDataSource
    DataSet = tvc
    Left = 459
    Top = 55
  end
  object artp: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from artp'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 940
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object gen_spese_01_ds: TMyDataSource
    DataSet = gen_spese_01
    Left = 554
    Top = 50
  end
  object gen_spese_02_ds: TMyDataSource
    DataSet = gen_spese_02
    Left = 569
    Top = 50
  end
  object gen_spese_03_ds: TMyDataSource
    DataSet = gen_spese_03
    Left = 584
    Top = 50
  end
  object gen_spese_04_ds: TMyDataSource
    DataSet = gen_spese_04
    Left = 599
    Top = 50
  end
  object query_articoli_ovr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select concat('#39'cliente: '#39', '#39' '#39', trim(ovt.cli_codice), '#39' '#39', trim(' +
        'cli.descrizione1), '#39' '#39', trim(cli.citta), '#39' '#39','
      
        #39'ordine: '#39', date_format(ovt.data_documento, '#39'%d-%m-%Y'#39'), '#39' '#39', ov' +
        't.numero_documento, '#39' '#39','
      
        #39'quantit'#224'. '#39', ovr.tum_quantita_base - ovr.tum_quantita_evasa_bas' +
        'e, '#39' '#39','
      
        #39'consegna: '#39', date_format(coalesce(ovt.data_consegna, current_da' +
        'te), '#39'%d-%m-%Y'#39')) descrizione,'
      'case'
      'when rda.situazione is null then '#39#39
      'else '#39'presente RDA non ancora evasa'#39
      'end rda_situazione'
      'from ovr'
      'inner join ovt on ovt.progressivo = ovr.progressivo'
      'inner join cli on cli.codice = ovt.cli_codice'
      
        'left join rda on rda.ovr_progressivo = ovr.progressivo and rda.o' +
        'vr_riga = ovr.riga and rda.situazione <> '#39'evaso'#39
      
        'where (ovr.situazione = '#39'inserito'#39' or ovr.situazione = '#39'evaso pa' +
        'rziale'#39')'
      'and ovr.art_codice = :art_codice'
      
        'and (not exists(select id from rda where ovr_progressivo = ovt.p' +
        'rogressivo and ovr_riga = ovr.riga)'
      
        'or exists(select id from rda where ovr_progressivo = ovt.progres' +
        'sivo and ovr_riga = ovr.riga and rda.situazione <> '#39'evaso'#39'))'
      
        'and not exists(select id from oar where ovr_progressivo = ovt.pr' +
        'ogressivo  and ovr_riga = ovr.riga and ovr_tipo = '#39'cliente'#39')'
      ''
      'order by ovr.data_consegna')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 855
    Top = 85
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object tdafrn: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select tda_codice'
      'from tdafrn'
      
        'where frn_codice = :frn_codice and tipo_documento = :tipo_docume' +
        'nto')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 885
    Top = 85
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'frn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_documento'
        Value = nil
      end>
  end
  object opc: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 915
    Top = 85
  end
  object art_oar: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select oar.*, oar.numero_confezioni - oar.numero_confezioni_evas' +
        'e numero_confezioni_residue, '
      'oar.numero_colli - oar.numero_colli_evasi numero_colli_residui, '
      'oar.quantita - oar.quantita_evasa quantita_residua,'
      
        'oar.importo_sconto - oar.importo_sconto_evaso importo_sconto_res' +
        'iduo,'
      
        'oar.tum_quantita_base - oar.tum_quantita_evasa_base tum_quantita' +
        '_base_residua,'
      'oat.data_documento, oat.serie_documento, oat.numero_documento'
      'from oar'
      'inner join oat on oat.progressivo = oar.progressivo'
      
        'where oat.frn_codice = :frn_codice and oar.art_codice = :art_cod' +
        'ice'
      
        'and (oar.situazione = '#39'inserito'#39' or oar.situazione = '#39'evaso parz' +
        'iale'#39')'
      'order by oar.data_consegna, oat.data_documento')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 730
    Top = 120
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
  object ubm: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 760
    Top = 120
  end
  object lti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select lti.tiv_codice'
      'from lti'
      
        'where lti.chiusa = '#39'no'#39' and lti.progressivo = :progressivo and l' +
        'ti.cfg_tipo = :cfg_tipo and lti.cfg_codice = :cfg_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 790
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cfg_tipo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cfg_codice'
        Value = nil
      end>
  end
  object arfart: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select arf.id'
      'from arf'
      'left join arfart on arfart.id_arf = arf.id'
      
        'where arf.codice_articolo_fornitore = :codice_articolo_fornitore' +
        ' or'
      'arfart.codice_articolo_fornitore = :codice_articolo_fornitore'
      ''
      ''
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 820
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_articolo_fornitore'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice_articolo_fornitore'
        Value = nil
      end>
  end
  object testata_ripartizione: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 850
    Top = 120
  end
  object camdoc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from camdoc'
      
        'where modulo_origine = :modulo_origine and tipo_documento_origin' +
        'e = :tipo_documento_origine'
      
        'and modulo_derivato = :modulo_derivato and tipo_documento_deriva' +
        'to = :tipo_documento_derivato'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 700
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'modulo_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_documento_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'modulo_derivato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_documento_derivato'
        Value = nil
      end>
  end
  object numerazione_automatica_ddt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select max(numero_documento) numero_documento'
      'from dat'
      'where tda_codice = :tda_codice and year(data_documento) = :anno'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 880
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tda_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'anno'
        Value = nil
      end>
  end
  object fg_bar: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select artfrnfg.progressivo, artfrnfg.frn_codice, artfrnfg.art_c' +
        'odice, '
      
        'artfrnfg.codice_articolo_fornitore, artfrnfg.descrizione_fornito' +
        're,'
      'case'
      'when bar.quantita is null then 1'
      'when bar.pezzi_confezione = '#39'no'#39' then bar.quantita'
      
        'when bar.pezzi_confezione = '#39'si'#39' and art.pezzi_confezione <> 0 t' +
        'hen art.pezzi_confezione'
      'else 0'
      'end quantita'
      'from artfrnfg'
      'left join bar on bar.codice_barre = artfrnfg.codice_barre'
      'left join art on art.codice = bar.art_codice'
      'where artfrnfg.codice_barre = :codice_barre'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 560
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_barre'
        Value = nil
      end>
  end
  object fg_arf: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select progressivo, art_codice'
      'from artfrnfg'
      
        'where frn_codice = :frn_codice and codice_articolo_fornitore = :' +
        'codice_articolo_fornitore'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 580
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'frn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice_articolo_fornitore'
        Value = nil
      end>
  end
  object fg_des: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from camdoc'
      
        'where modulo_origine = :modulo_origine and tipo_documento_origin' +
        'e = :tipo_documento_origine'
      
        'and modulo_derivato = :modulo_derivato and tipo_documento_deriva' +
        'to = :tipo_documento_derivato'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 600
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'modulo_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_documento_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'modulo_derivato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_documento_derivato'
        Value = nil
      end>
  end
  object ind: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from ind'
      'where cli_codice = :cli_codice and indirizzo = :indirizzo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 625
    Top = 120
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
  object ovr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select ovr.*'
      'from ovr'
      
        'inner join oar on oar.ovr_tipo = '#39'cliente'#39' and oar.progressivo =' +
        ' :progressivo and oar.riga = :riga'
      'where ovr.progressivo = oar.ovr_progressivo'
      'and ovr.riga = oar.ovr_riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 650
    Top = 120
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
  object opr_app: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update opr'
      'set quantita_approntata = quantita_approntata - :quantita'
      'where documento_origine_app = :documento'
      'and doc_progressivo_origine_app = :progressivo'
      'and doc_riga_origine_app = :riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 675
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'documento'
        Value = nil
      end
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
  object PopupMenu_documenti: TPopupMenu
    Images = ARC.immagine_16
    Left = 970
    Top = 10
    object tool_assegna_immagine: TMenuItem
      Caption = 'assegna documento per archiviazione'
      Enabled = False
      Hint = 'seleziona immagine da associare al documento'
      OnClick = tool_assegna_immagineClick
    end
    object tool_visualizza_immagine: TMenuItem
      Caption = 'visualizza documento archiviato'
      Enabled = False
      Hint = 'visualizza immagine collegata'
      OnClick = tool_visualizza_immagineClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object tool_documenti_allegati: TMenuItem
      Caption = 'documenti allegati'
      Enabled = False
      Hint = 'gestione documenti allegati'
      OnClick = tool_documenti_allegatiClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object tool_invia_excel: TMenuItem
      Caption = 'invia file Excel'
      Enabled = False
      Hint = 'invio mail con file excel delle righe del documento da compilare'
      OnClick = tool_invia_excelClick
    end
    object tool_ricevi_excel: TMenuItem
      Caption = 'ricevi file Excel'
      Enabled = False
      Hint = 'ricevi mail con file excel delle righe del documento valorizzate'
      OnClick = tool_ricevi_excelClick
    end
  end
  object artvardet: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from artvardet'
      'where art_codice = :art_codice and dettaglio = :dettagio')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 680
    Top = 85
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dettagio'
        Value = nil
      end>
  end
  object artvardet_ds: TMyDataSource
    DataSet = artvardet
    Left = 700
    Top = 85
  end
  object aggiorna_opr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update opr'
      'set costo_unitario = :costo_unitario'
      'where progressivo = :progressivo and riga = :riga'
      'and situazione = '#39'inserito'#39
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 908
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'costo_unitario'
        Value = nil
      end
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
  object oar: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select oar.ovr_progressivo, oar.ovr_riga'
      'from oar'
      'where oar.progressivo = :doc_progressivo_origine'
      'and oar.riga = :doc_riga_origine'
      'and oar.ovr_tipo = '#39'produzione'#39
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 938
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'doc_progressivo_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'doc_riga_origine'
        Value = nil
      end>
  end
  object iat: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update iat'
      'set progressivo_ddtc = 0'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 965
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object duplica_righe_tgl: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from qtatgl'
      'where modulo = :modulo'
      'and tipo_documento = :tipo_documento'
      'and progressivo = :progressivo'
      'and riga = :riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 990
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'modulo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_documento'
        Value = nil
      end
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
  object qtatgl: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from qtatgl'
      'where modulo = :modulo'
      'and tipo_documento = :tipo_documento'
      'and progressivo = :progressivo'
      'and riga = :riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 1015
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'modulo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_documento'
        Value = nil
      end
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
