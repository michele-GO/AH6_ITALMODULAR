inherited GESVEN: TGESVEN
  Left = 200
  Top = 62
  Caption = 'GESVEN'
  ClientWidth = 1123
  ExplicitWidth = 1139
  DesignSize = (
    1123
    701)
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1123
    ExplicitWidth = 1123
    inherited tool_ins_righe: TToolButton
      ExplicitWidth = 54
    end
    object tool_evasione: TToolButton
      Left = 795
      Top = 0
      Caption = 'tool_evasione'
      Enabled = False
      ImageIndex = 137
      OnClick = tool_evasioneClick
    end
    object tool_eticlive: TToolButton
      Left = 834
      Top = 0
      Hint = 'stampa etichette del documento di vendita con ETICLIVE'
      Caption = 'tool_eticlive'
      DropdownMenu = popupmenu_etichette
      Enabled = False
      ImageIndex = 115
      OnClick = tool_eticliveClick
    end
    object tool_sequenza: TToolButton
      Left = 873
      Top = 0
      Hint = 'seleziona la riga attiva per spostamento '
      Caption = 'tool_sequenza'
      Enabled = False
      ImageIndex = 101
      Style = tbsCheck
      OnClick = tool_sequenzaClick
    end
    object tool_documenti_allegati: TToolButton
      Left = 912
      Top = 0
      Hint = 'documenti allegati'
      Caption = 'tool_documenti_allegati'
      Enabled = False
      ImageIndex = 172
      OnClick = tool_documenti_allegatiClick
    end
    object tool_gesccf: TToolButton
      Left = 951
      Top = 0
      Hint = 'esegui crm del contatto collegato al documento'
      Caption = 'tool_gesccf'
      Enabled = False
      ImageIndex = 122
      OnClick = tool_gesccfClick
    end
    object tool_invia_excel: TToolButton
      Left = 990
      Top = 0
      Hint = 'crea file excel con i dati delle righe del documento'
      Caption = 'tool_invia_excel'
      Enabled = False
      ImageIndex = 68
      OnClick = tool_invia_excelClick
    end
    object v_totalizza: TToolButton
      Left = 1029
      Top = 0
      Hint = 'totalizza il documento'
      Caption = 'v_totalizza'
      Enabled = False
      ImageIndex = 168
      OnClick = v_totalizzaClick
    end
  end
  inherited statusbar: TStatusBar
    Width = 1123
    ExplicitWidth = 1123
  end
  inherited pannello_campi: TRzPanel
    Width = 932
    ExplicitWidth = 932
    DesignSize = (
      932
      639)
    object Label4: TRzLabel [0]
      Left = 90
      Top = 2
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
    object Label11: TRzLabel [1]
      Left = 632
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
    object Label13: TRzLabel [2]
      Left = 455
      Top = 2
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
    object Label10: TRzLabel [3]
      Left = 570
      Top = 2
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
    object v_l_cli_codice: TRzLabel [4]
      Left = 90
      Top = 37
      Width = 66
      Height = 13
      Caption = 'codice cliente'
      ShowAccelChar = False
      Transparent = True
    end
    object Label_revisione: TRzLabel [5]
      Left = 700
      Top = 2
      Width = 42
      Height = 13
      Caption = 'revisione'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel9: TRzLabel [6]
      Left = 640
      Top = 37
      Width = 64
      Height = 13
      Caption = 'cliente fattura'
      ShowAccelChar = False
      Transparent = True
    end
    object v_revisione_precedente: TRzRapidFireButton [7]
      Left = 725
      Top = 15
      Width = 23
      Height = 22
      Hint = 'risali alla revisione precedente'
      Enabled = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C01E0000C01E00000000000000000000A54100FFA03D
        00FF9E3A00FF9A3700FF983500FF963100FF922E00FF902C00FF8C2A00FF8B27
        00FF892500FF872300FF842200FF832000FF821F00FF801E00FFA74300FFFFF4
        EDFFFFF4EAFFFFF2E7FFFFF0E3FFFEF0E1FFFEEEDEFFFEEDDCFFFEEAD8FFFFE9
        D5FFFEE9D3FFFEE6CFFFFEE5CCFFFFE5CAFFFEE2C7FF821F00FFAB4600FFFFF7
        EFFFFEF6EEFFFEF4EBFFFFF3E7FFFFF2E3FFFEEFE1FFFFEEDEFFFEEDDAFFFEEB
        D9FFFFEAD5FFFEE9D3FFFEE6D0FFFEE5CEFFFFE3CBFF832000FFAD4A00FFFEF8
        F3FFFFF7F0FFFFF6EEFFFFF4EBFFFFF3E7FFFEF2E6FFFEEFE2FFFFEEE0FFFEEE
        DCFFFFEBD9FFFEEAD5FFFEE9D4FFFFE7D0FFFFE5CCFF862200FFB14D00FFFFFB
        F6FFFFFAF3FFFFF7F0FFFFF6EEFFFFF6EBFFFFF3E9FFFEF2E6FFFFF0E2FFFEEE
        E0FFFEEDDDFF9F481EFF993F13FF9C4011FFFEE7D0FF872400FFB45000FFFFFB
        F8FFFFFBF6FFFFFAF3FFFEF8F0FFFFF7EEFFFFF6EBFFFFF3E9FFFFF2E6FFFFF0
        E2FFFEEDDCFF95370CFF8B2800FF993A0BFFFFE9D4FF892600FFB75400FFFFFE
        FBFFFFFCF8FFFFFBF6FFFFFAF3FFFFF7F0FFFFF7EFFFFFF4EDFF842100FFFFF3
        E7FFE6C5ACFF923307FF8E2900FF9E400EFFFEEAD8FF8C2800FFBA5800FFFFFE
        FCFFFFFCFAFFFFFCF8FFFEFBF7FFFFFAF4FFFFF8F2FF832000FF862300FFFFF4
        EAFFA55024FF8C2900FF902C00FFB05B28FFFEEDDAFF8F2B00FFBD5A00FFFFFE
        FFFFFFFEFEFFFFFCFBFFFFFCFAFFFEFBF7FF832000FF882803FF872400FFAA58
        2DFF923104FF8F2C00FF993906FFE5BD9EFFFFEEDEFF922E00FFC05C00FFFFFF
        FFFFFFFFFFFFFFFEFEFFFFFCFBFF832000FF872400FF872400FF892700FF8C28
        00FF8F2C00FF933101FFB56631FFFEF0E5FFFEF0E1FF953000FFC25F00FFFFFF
        FFFFFFFFFFFFFFFEFFFF822000FF862200FF872400FF892600FF8B2800FF8F2B
        00FF953202FFAC5823FFFCEFE3FFFFF3E7FFFFF2E6FF983400FFC56300FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF872300FF892500FF8B2800FF8F2B00FF9E42
        10FFCB936BFFFEF6EEFFFEF7EEFFFFF6EBFFFFF4E9FF9A3600FFC66500FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B2800FF8E2A00FF912D00FFFFFC
        F8FFFFFAF6FFFEF8F3FFFFF8F0FFFEF7EFFFFFF6EBFF9E3A00FFC96700FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF902D00FF932F00FFFFFC
        FBFFFFFCF8FFFFFBF6FFFFFAF4FFFFF8F2FFFFF6EFFFA03D00FFCA6900FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF973300FFFFFE
        FCFFFFFCFBFFFFFCF8FFFFFBF7FFFFFAF6FFFFF8F2FFA54000FFCA6900FFCA69
        00FFC96700FFC66600FFC66400FFC26000FFC15E00FFBF5B00FFBC5900FFB856
        00FFB65200FFB45000FFB14D00FFAD4A00FFAB4600FFA64300FF}
      OnClick = v_revisione_precedenteClick
    end
    object Label86: TRzLabel [8]
      Left = 840
      Top = 2
      Width = 75
      Height = 13
      Caption = 'totale imponibile'
      ShowAccelChar = False
      Transparent = True
    end
    object Label85: TRzLabel [9]
      Left = 840
      Top = 37
      Width = 82
      Height = 13
      Caption = 'totale documento'
      ShowAccelChar = False
      Transparent = True
    end
    object v_l_saldo_cliente: TRzLabel [10]
      Left = 750
      Top = 37
      Width = 25
      Height = 13
      Caption = 'saldo'
      FocusControl = v_art_codice
      ShowAccelChar = False
      Transparent = True
    end
    inherited tab_control: TRzPageControl
      Top = 80
      Width = 930
      Height = 171
      HelpContext = -1
      UseColoredTabs = True
      TabOrder = 6
      ExplicitTop = 80
      ExplicitWidth = 930
      ExplicitHeight = 171
      FixedDimension = 18
      inherited tab_pagina1: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 928
        ExplicitHeight = 151
        object Label6: TRzLabel
          Left = 5
          Top = 2
          Width = 26
          Height = 13
          Caption = 'listino'
          ShowAccelChar = False
          Transparent = True
        end
        object Label2: TRzLabel
          Left = 5
          Top = 37
          Width = 53
          Height = 13
          Caption = 'pagamento'
          ShowAccelChar = False
          Transparent = True
        end
        object Label5: TRzLabel
          Left = 435
          Top = 37
          Width = 63
          Height = 13
          Caption = 'sconto cassa'
          ShowAccelChar = False
          Transparent = True
        end
        object Label15: TRzLabel
          Left = 5
          Top = 72
          Width = 29
          Height = 13
          Caption = 'valuta'
          ShowAccelChar = False
          Transparent = True
        end
        object Label16: TRzLabel
          Left = 350
          Top = 72
          Width = 34
          Height = 13
          Caption = 'cambio'
          ShowAccelChar = False
          Transparent = True
        end
        object Label69: TRzLabel
          Left = 455
          Top = 19
          Width = 67
          Height = 13
          Caption = ' listino con iva'
          ShowAccelChar = False
          Transparent = True
        end
        object Label57: TRzLabel
          Left = 520
          Top = 72
          Width = 71
          Height = 13
          Caption = 'data consegna'
          ShowAccelChar = False
          Transparent = True
        end
        object Label8: TRzLabel
          Left = 675
          Top = 72
          Width = 57
          Height = 13
          Caption = 'data validit'#224
          ShowAccelChar = False
          Transparent = True
        end
        object Label84: TRzLabel
          Left = 436
          Top = 107
          Width = 93
          Height = 13
          Caption = 'riferimento contratto'
          FocusControl = v_codice_contratto
          ShowAccelChar = False
          Transparent = True
        end
        object Label54: TRzLabel
          Left = 770
          Top = 72
          Width = 55
          Height = 13
          Caption = 'tipo appalto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel14: TRzLabel
          Left = 605
          Top = 72
          Width = 62
          Height = 13
          Caption = 'gg consegna'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel6: TRzLabel
          Left = 435
          Top = 72
          Width = 75
          Height = 13
          Caption = 'competenza iva'
          ShowAccelChar = False
          Transparent = True
        end
        object v_tlv_codice: trzdbedit_go
          Left = 5
          Top = 15
          Width = 51
          Height = 21
          Hint = 'codice listino [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tlv_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnEnter = v_tlv_codiceEnter
          OnExit = v_tlv_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTLV'
          lookcolltable = 'TLV'
          lookcollvisname = 'TLV'
        end
        object v_tpa_codice: trzdbedit_go
          Left = 5
          Top = 50
          Width = 51
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
          TabOrder = 1
          OnEnter = v_tpa_codiceEnter
          OnExit = v_tpa_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTPA'
          lookcolltable = 'TPA'
          lookcollvisname = 'TPA'
        end
        object v_tsm_codice: trzdbedit_go
          Left = 435
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
          TabOrder = 2
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
          Width = 51
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
          TabOrder = 3
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
          Left = 350
          Top = 85
          Width = 76
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
          TabOrder = 4
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
          Left = 435
          Top = 15
          Width = 21
          Height = 21
          BorderOuter = fsNone
          Color = clWhite
          Enabled = False
          TabOrder = 6
          object DBCheckBox1: TRzDBCheckBox
            Left = 1
            Top = 2
            Width = 19
            Height = 15
            DataField = 'listino_con_iva'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Enabled = False
            TabOrder = 0
          end
        end
        object v_data_consegna: trzdbdatetimeedit_go
          Left = 520
          Top = 85
          Width = 81
          Height = 21
          Hint = 
            'data di consegna richiesta o confermata [Alt+Gi'#249' per aprire il c' +
            'alendario]'
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
          TabOrder = 7
          OnExit = v_data_consegnaExit
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 45987.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_data_validita: trzdbdatetimeedit_go
          Left = 675
          Top = 85
          Width = 89
          Height = 21
          Hint = 
            'data di validit'#224' del preventivo [Alt+Gi'#249' per aprire il calendari' +
            'o]'
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
          Date = 45987.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_non_fatturare: TRzDBCheckBox
          Left = 535
          Top = 17
          Width = 64
          Height = 15
          Hint = 
            'spunta per indicare che il documento di vendita non '#232' da fattura' +
            're'
          DataField = 'non_fatturare'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'no fattura'
          TabOrder = 11
          TabStop = False
        end
        object v_oscillazione_cambio: TRzDBCheckBox
          Left = 772
          Top = 52
          Width = 73
          Height = 15
          Hint = 
            'spunta per assoggettare il cliente al ricalcolo del prezzo di ve' +
            'ndita in base al fixing del documento rispetto a quello dell'#39'ord' +
            'ine'
          DataField = 'oscillazione_cambio'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'oscillazione'
          TabOrder = 12
          TabStop = False
        end
        object Panel1: TRzPanel
          Left = 0
          Top = 106
          Width = 346
          Height = 41
          BorderOuter = fsNone
          Enabled = False
          ParentColor = True
          TabOrder = 13
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
          object Label17: TRzLabel
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
          object v_iva_sospensione: TRzDBCheckBox
            Left = 216
            Top = 18
            Width = 70
            Height = 15
            DataField = 'iva_sospensione'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'iva differita'
            Enabled = False
            TabOrder = 0
          end
          object v_intra: TRzDBCheckBox
            Left = 155
            Top = 18
            Width = 39
            Height = 15
            DataField = 'intra'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'intra'
            Enabled = False
            TabOrder = 1
          end
          object v_esercizio: trzdbedit_go
            Left = 5
            Top = 15
            Width = 51
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
        end
        object v_fattura_pro_forma: TRzDBCheckBox
          Left = 790
          Top = -3
          Width = 60
          Height = 15
          Hint = 
            'spunta per indicare che '#232' una fattura proforma in attesa di inca' +
            'sso prima di essere emessa definitivamente '
          DataField = 'fattura_pro_forma'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'proforma'
          Enabled = False
          TabOrder = 14
          TabStop = False
          Visible = False
          OnExit = v_fattura_pro_formaExit
        end
        object v_tlv_descrizione: trzdbeditdescrizione_go
          Left = 60
          Top = 15
          Width = 366
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tlv_ds
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
        object v_tpa_descrizione: trzdbeditdescrizione_go
          Left = 60
          Top = 50
          Width = 366
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tpa_ds
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
        object v_tva_descrizione: trzdbeditdescrizione_go
          Left = 60
          Top = 85
          Width = 286
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
          TabOrder = 17
        end
        object t_tsm_descrizione: trzdbeditdescrizione_go
          Left = 490
          Top = 50
          Width = 276
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
          TabOrder = 18
        end
        object v_codice_contratto: trzdbedit_go
          Left = 436
          Top = 120
          Width = 330
          Height = 21
          Hint = 'riferimento contratto a scalare [F4]'
          HelpType = htKeyword
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tabella_ds
          DataField = 'codice_contratto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 19
          OnExit = v_codice_contrattoExit
          lookcolltable = 'COT'
          lookcollvisname = 'COT'
        end
        object v_tipo_appalto: trzdbcombobox_go
          Left = 770
          Top = 85
          Width = 91
          Height = 21
          Hint = 'tipo appalto'
          DataField = 'tipo_appalto'
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
          TabOrder = 10
          TabStop = False
          Items.Strings = (
            'privato'
            'pubblico')
        end
        object v_giorni_consegna: trzdbnumericedit_go
          Left = 605
          Top = 85
          Width = 66
          Height = 21
          Hint = 'giorni previsti di consegna'
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
          TabOrder = 8
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
          lookcolltable = 'TVF'
          lookcollvisname = 'TVZ'
        end
        object v_stampa_immagine: TRzDBCheckBox
          Left = 772
          Top = 17
          Width = 100
          Height = 15
          Hint = 'spunta per stampare l'#39'immagine dell'#39'articolo sul documento'
          DataField = 'stampa_immagine'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa immagine'
          TabOrder = 20
          TabStop = False
        end
        object v_no_sdi: TRzDBCheckBox
          Left = 350
          Top = 124
          Width = 47
          Height = 15
          Hint = 'spunta per indicare che il documento non va inviato allo SDI'
          DataField = 'no_sdi'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'no sdi'
          TabOrder = 21
          TabStop = False
        end
        object v_data_competenza_iva: trzdbdatetimeedit_go
          Left = 435
          Top = 85
          Width = 80
          Height = 21
          Hint = 'data competenza iva per fatture'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tabella_ds
          DataField = 'data_competenza_iva'
          ReadOnly = True
          AutoSelect = False
          Color = clBtnFace
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
          Date = 45987.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_accettato: TRzDBCheckBox
          Left = 770
          Top = 123
          Width = 64
          Height = 15
          DataField = 'ACCETTATO'
          DataSource = tabella_ds
          ReadOnly = True
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'accettato'
          ParentColor = False
          TabOrder = 22
          TabStop = False
        end
      end
      object tab_testata_riferimento: TRzTabSheet
        Color = clWindow
        Caption = 'riferimento'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label45: TRzLabel
          Left = 5
          Top = 2
          Width = 33
          Height = 13
          Caption = 'agente'
          ShowAccelChar = False
          Transparent = True
        end
        object Label47: TRzLabel
          Left = 650
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
          Caption = 'vs. riferimento'
          FocusControl = v_riferimento
          ShowAccelChar = False
          Transparent = True
        end
        object Label50: TRzLabel
          Left = 300
          Top = 37
          Width = 14
          Height = 13
          Caption = 'del'
          ShowAccelChar = False
          Transparent = True
        end
        object Label51: TRzLabel
          Left = 301
          Top = 72
          Width = 63
          Height = 13
          Caption = 'note apertura'
          ShowAccelChar = False
          Transparent = True
        end
        object Label53: TRzLabel
          Left = 585
          Top = 72
          Width = 64
          Height = 13
          Caption = 'note chiusura'
          ShowAccelChar = False
          Transparent = True
        end
        object Label65: TRzLabel
          Left = 685
          Top = 107
          Width = 131
          Height = 13
          Caption = 'mese trimestre anno rettifica'
          ShowAccelChar = False
          Transparent = True
        end
        object Label71: TRzLabel
          Left = 300
          Top = 107
          Width = 60
          Height = 13
          Caption = 'nazione intra'
          ShowAccelChar = False
          Transparent = True
        end
        object Label46: TRzLabel
          Left = 585
          Top = 37
          Width = 65
          Height = 13
          Caption = 'ns. riferimento'
          FocusControl = v_nostro_riferimento
          ShowAccelChar = False
          Transparent = True
        end
        object Label74: TRzLabel
          Left = 5
          Top = 72
          Width = 90
          Height = 13
          Caption = 'categoria contabile'
          ShowAccelChar = False
          Transparent = True
        end
        object Label81: TRzLabel
          Left = 385
          Top = 37
          Width = 95
          Height = 13
          Caption = 'riferimento (persona)'
          FocusControl = v_contatto_commerciale
          ShowAccelChar = False
          Transparent = True
        end
        object Label87: TRzLabel
          Left = 301
          Top = 2
          Width = 77
          Height = 13
          Caption = 'secondo agente'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel13: TRzLabel
          Left = 5
          Top = 107
          Width = 57
          Height = 13
          Caption = 'committente'
          FocusControl = v_committente
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel15: TRzLabel
          Left = 586
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
        object v_tag_codice: trzdbedit_go
          Left = 5
          Top = 15
          Width = 51
          Height = 21
          Hint = 'codice agente [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tag_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnExit = v_tag_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTAG'
          lookcolltable = 'TAG'
          lookcollvisname = 'TAG'
        end
        object v_tiv_codice: trzdbedit_go
          Left = 650
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
          TabOrder = 3
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
          Width = 291
          Height = 21
          Hint = 'riferimento del cliente [es. numero d'#39'ordine o di commessa]'
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
          TabOrder = 5
          OnExit = v_riferimentoExit
        end
        object v_data_riferimento: trzdbdatetimeedit_go
          Left = 300
          Top = 50
          Width = 80
          Height = 21
          Hint = 'data del riferimento cliente [Alt+Gi'#249' per aprire il calendario]'
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
          TabOrder = 6
          OnExit = v_data_riferimentoExit
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 45987.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_tcd_codice_apertura: trzdbedit_go
          Left = 300
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
          TabOrder = 10
          OnExit = v_tcd_codice_aperturaExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTCD'
          lookcolltable = 'TCD'
          lookcollvisname = 'TCD'
        end
        object v_tcd_codice_chiusura: trzdbedit_go
          Left = 585
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
          TabOrder = 11
          OnExit = v_tcd_codice_chiusuraExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTCD'
          lookcolltable = 'TCD'
          lookcollvisname = 'TCD'
        end
        object v_rettifica_intra: TRzDBCheckBox
          Left = 585
          Top = 122
          Width = 93
          Height = 15
          Hint = 
            'spunta per indicare che il documento rettifica una dichiarazione' +
            ' intrastat precedente'
          DataField = 'rettifica_intra'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'rettifica intrastat'
          Enabled = False
          TabOrder = 14
          OnClick = v_rettifica_intraClick
          OnExit = v_rettifica_intraExit
        end
        object v_tna_codice_intra: trzdbedit_go
          Left = 300
          Top = 120
          Width = 50
          Height = 21
          Hint = 'codice nazione intrastat del destinatario [F4 F5 F6]'
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
          TabOrder = 13
          OnExit = v_tna_codice_intraExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTNA'
          lookcolltable = 'TNA'
          lookcollvisname = 'TNA'
        end
        object v_mese_rettifica_intra: trzdbnumericedit_go
          Left = 685
          Top = 120
          Width = 36
          Height = 21
          Hint = 'mese di riferimento per rettifica intrastat'
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
          TabOrder = 15
          OnExit = v_mese_rettifica_intraExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_trimestre_rettifica_intra: trzdbnumericedit_go
          Left = 725
          Top = 120
          Width = 26
          Height = 21
          Hint = 'trimestre di riferimento per rettifica intrastat'
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
          TabOrder = 16
          OnExit = v_trimestre_rettifica_intraExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_anno_rettifica_intra: trzdbnumericedit_go
          Left = 755
          Top = 120
          Width = 61
          Height = 21
          Hint = 'anno di riferimento per rettifica intrastat'
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
          TabOrder = 17
          OnExit = v_anno_rettifica_intraExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_nostro_riferimento: trzdbedit_go
          Left = 585
          Top = 50
          Width = 286
          Height = 21
          Hint = 'riferimento interno'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'nostro_riferimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 8
          OnExit = v_nostro_riferimentoExit
        end
        object v_tcc_codice: trzdbedit_go
          Left = 5
          Top = 85
          Width = 51
          Height = 21
          Hint = 
            'categoria contabile cliente da utilizzare per tutte le righe di ' +
            'dettaglio [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tcc_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 9
          OnExit = v_tcc_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTCC'
          lookcolltable = 'TCC'
          lookcollvisname = 'TCC'
        end
        object RzDBEditDescrizione_go7: trzdbeditdescrizione_go
          Left = 60
          Top = 15
          Width = 236
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tag_ds
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
          TabOrder = 18
        end
        object RzDBEditDescrizione_go8: trzdbeditdescrizione_go
          Left = 705
          Top = 15
          Width = 91
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
          TabOrder = 19
        end
        object RzDBEditDescrizione_go9: trzdbeditdescrizione_go
          Left = 60
          Top = 85
          Width = 236
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tcc_ds
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
          TabOrder = 20
        end
        object RzDBEditDescrizione_go10: trzdbeditdescrizione_go
          Left = 355
          Top = 85
          Width = 226
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
          TabOrder = 21
        end
        object RzDBEditDescrizione_go11: trzdbeditdescrizione_go
          Left = 640
          Top = 85
          Width = 231
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
          TabOrder = 22
        end
        object RzDBEditDescrizione_go12: trzdbeditdescrizione_go
          Left = 355
          Top = 120
          Width = 226
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
          TabOrder = 23
        end
        object v_contatto_commerciale: trzdbedit_go
          Left = 385
          Top = 50
          Width = 196
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
          TabOrder = 7
          OnExit = v_contatto_commercialeExit
          lookcolltable = 'RIF'
          lookcollvisname = 'RIF'
        end
        object v_tag_codice_ca: trzdbedit_go
          Left = 300
          Top = 15
          Width = 50
          Height = 21
          Hint = 'codice secondo agente [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tag_codice_ca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnExit = v_tag_codice_caExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTAG'
          lookcolltable = 'TAG'
          lookcollvisname = 'TAG'
        end
        object RzDBEditDescrizione_go25: trzdbeditdescrizione_go
          Left = 355
          Top = 15
          Width = 226
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tag_ca_ds
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
          TabOrder = 24
        end
        object v_iva_bloccata: TRzDBCheckBox
          Left = 800
          Top = 18
          Width = 77
          Height = 15
          Hint = 'spunta per settare l'#39'iva bloccata sulle righe del documento'
          DataField = 'iva_bloccata'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'iva bloccata'
          TabOrder = 4
        end
        object v_committente: trzdbedit_go
          Left = 5
          Top = 120
          Width = 291
          Height = 21
          Hint = 'riferimento committente'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'committente'
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
        object v_lti_progressivo: trzdbnumericedit_go
          Left = 586
          Top = 15
          Width = 60
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
          TabOrder = 2
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
          Left = 635
          Top = 15
          Width = 26
          Height = 21
          Text = 'C'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 25
          Visible = False
        end
      end
      object tab_testata_finanziario: TRzTabSheet
        Color = clWindow
        ImageIndex = 2
        Caption = 'incasso'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label20: TRzLabel
          Left = 5
          Top = 37
          Width = 178
          Height = 13
          Caption = 'codice ABI vs. banca appoggio effetti'
          ShowAccelChar = False
          Transparent = True
        end
        object Label21: TRzLabel
          Left = 430
          Top = 37
          Width = 182
          Height = 13
          Caption = 'codice CAB vs. banca appoggio effetti'
          ShowAccelChar = False
          Transparent = True
        end
        object Label42: TRzLabel
          Left = 5
          Top = 107
          Width = 141
          Height = 13
          Caption = 'ns. banca di appoggio bonifici'
          ShowAccelChar = False
          Transparent = True
        end
        object Label63: TRzLabel
          Left = 5
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
        object Label26: TRzLabel
          Left = 145
          Top = 72
          Width = 20
          Height = 13
          Caption = 'iban'
          ShowAccelChar = False
          Transparent = True
        end
        object Label30: TRzLabel
          Left = 430
          Top = 72
          Width = 14
          Height = 13
          Caption = 'bic'
          ShowAccelChar = False
          Transparent = True
        end
        object Label75: TRzLabel
          Left = 5
          Top = 2
          Width = 97
          Height = 13
          Caption = 'data inizio conteggio'
          ShowAccelChar = False
          Transparent = True
        end
        object Label79: TRzLabel
          Left = 700
          Top = 2
          Width = 137
          Height = 13
          Caption = 'date inizio e fine competenza'
          ShowAccelChar = False
          Transparent = True
        end
        object Label14: TRzLabel
          Left = 430
          Top = 2
          Width = 82
          Height = 13
          Caption = 'importo incassato'
          FocusControl = v_art_codice
          ShowAccelChar = False
          Transparent = True
        end
        object v_scadenze: TRzRapidFireButton
          Left = 430
          Top = 120
          Width = 91
          Height = 21
          Hint = 'dettaglio scadenze'
          Caption = 'scadenze'
          OnClick = v_scadenzeClick
        end
        object RzLabel8: TRzLabel
          Left = 525
          Top = 72
          Width = 89
          Height = 13
          Caption = 'dati bancari cliente'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel7: TRzLabel
          Left = 565
          Top = 2
          Width = 76
          Height = 13
          Caption = 'importo acconto'
          FocusControl = v_art_codice
          ShowAccelChar = False
          Transparent = True
        end
        object v_codice_abi: trzdbedit_go
          Left = 5
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
          TabOrder = 10
          OnExit = v_codice_abiExit
          OnKeyDown = v_codice_abiKeyDown
          lookcolldatabase = 'arc.arc'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESABI'
          lookcolltable = 'ABI'
          lookcollvisname = 'ABI'
        end
        object v_codice_cab: trzdbedit_go
          Left = 430
          Top = 50
          Width = 60
          Height = 21
          Hint = 
            'codice CAB banca di appoggio effetti se diverso da quello in ana' +
            'grafica cliente [F4 F5 F6]'
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
          TabOrder = 11
          OnEnter = v_codice_cabEnter
          OnExit = v_codice_cabExit
          lookcolldatabase = 'arc.arc'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESABI'
          lookcolltable = 'ABI'
          lookcollvisname = 'ABICAB'
        end
        object v_tba_codice: trzdbedit_go
          Left = 5
          Top = 120
          Width = 60
          Height = 21
          Hint = 
            'codice banca di incasso bonifici se diverso da quello in anagraf' +
            'ica cliente [F4 F5 F6]'
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
          TabOrder = 16
          OnExit = v_tba_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTBA'
          lookcolltable = 'TBA'
          lookcollvisname = 'TBA'
        end
        object v_conto_corrente: trzdbedit_go
          Left = 5
          Top = 85
          Width = 111
          Height = 21
          Hint = 
            'conto corrente della banca d'#39'appoggio effetti se diversa da quel' +
            'la in anagrafica'
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
          TabOrder = 12
          OnExit = v_conto_correnteExit
        end
        object v_cin: trzdbedit_go
          Left = 120
          Top = 85
          Width = 20
          Height = 21
          Hint = 
            'codice CIN del conto corrente della banca d'#39'appoggio effetti se ' +
            'diversa da quella in anagrafica'
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
          TabOrder = 13
        end
        object v_iban: trzdbedit_go
          Left = 145
          Top = 85
          Width = 281
          Height = 21
          Hint = 
            'IBAN della banca d'#39'appoggio effetti se diversa da quella in anag' +
            'rafica'
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
          TabOrder = 14
          OnExit = v_ibanExit
        end
        object v_bic: trzdbedit_go
          Left = 430
          Top = 85
          Width = 91
          Height = 21
          Hint = 
            'BIC (SWIFT) della banca d'#39'appoggio effetti se diversa da quella ' +
            'in anagrafica'
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
          TabOrder = 15
        end
        object v_data_inizio_conteggio: trzdbdatetimeedit_go
          Left = 5
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
          Date = 45987.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_data_fine_competenza: trzdbdatetimeedit_go
          Left = 785
          Top = 15
          Width = 80
          Height = 21
          Hint = 
            'data fine competenza contabile per il calcolo dei risconti passi' +
            'vi [Alt+Gi'#249' per aprire il calendario]'
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
          TabOrder = 9
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 45987.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_data_inizio_competenza: trzdbdatetimeedit_go
          Left = 700
          Top = 15
          Width = 80
          Height = 21
          Hint = 
            'data inizio competenza contabile per il calcolo dei risconti pas' +
            'sivi [Alt+Gi'#249' per aprire il calendario]'
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
          TabOrder = 8
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 45987.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_scadenziario_manuale: TRzDBCheckBox
          Left = 90
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
        object v_importo_incassato: trzdbnumericedit_go
          Left = 430
          Top = 15
          Width = 81
          Height = 21
          Hint = 'importo incassato come anticipo o acconto'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'importo_incassato'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 4
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object v_tba_descrizione: trzdbeditdescrizione_go
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
          TabOrder = 17
        end
        object RzDBEditDescrizione_go21: trzdbeditdescrizione_go
          Left = 70
          Top = 49
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
          TabOrder = 18
        end
        object RzDBEditDescrizione_go22: trzdbeditdescrizione_go
          Left = 495
          Top = 49
          Width = 371
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
          TabOrder = 19
        end
        object v_gestione_alimentari: TRzDBCheckBox
          Left = 218
          Top = 17
          Width = 106
          Height = 15
          Hint = 
            'spunta per indicare che la scadenza '#232' relativa ad una vendita al' +
            'imentari'
          DataField = 'gestione_alimentari'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'gestione alimentari'
          TabOrder = 2
          TabStop = False
        end
        object v_stampa_prezzo: TRzDBCheckBox
          Left = 335
          Top = 17
          Width = 87
          Height = 15
          Hint = 
            'spunta per effettuare la stampa dei prezzi su ddt e bolle se att' +
            'ivato l'#39'opzione nel cliente'
          DataField = 'stampa_prezzo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa prezzo'
          TabOrder = 3
        end
        object v_dati_bancari: trzdbmemo_go
          Left = 525
          Top = 85
          Width = 341
          Height = 58
          TabStop = False
          Color = clBtnFace
          DataField = 'dati_bancari'
          DataSource = cli_ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 20
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
        end
        object v_importo_acconto: trzdbnumericedit_go
          Left = 565
          Top = 15
          Width = 76
          Height = 21
          Hint = 'importo acconto richiesto al cliente'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'importo_acconto'
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
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object v_versato_acconto: TRzDBCheckBox
          Left = 645
          Top = 17
          Width = 54
          Height = 15
          Hint = 'spunta per indicare che l'#39'acconto '#232' stato versato'
          DataField = 'versato_acconto'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'versato'
          TabOrder = 7
        end
        object v_incasso_saldo: TRzDBCheckBox
          Left = 515
          Top = 17
          Width = 44
          Height = 15
          Hint = 
            'spunta per indicare che l'#39'importo incassato '#232' a saldo, anche se ' +
            'diverso dal totale documento'
          DataField = 'incasso_saldo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'saldo'
          TabOrder = 5
        end
      end
      object tab_testata_magazzino: TRzTabSheet
        Color = clWindow
        ImageIndex = 1
        Caption = 'magazzino/contabilit'#224
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label9: TRzLabel
          Left = 5
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
          Left = 5
          Top = 37
          Width = 97
          Height = 13
          Caption = 'movimento collegato'
          ShowAccelChar = False
          Transparent = True
        end
        object Label82: TRzLabel
          Left = 5
          Top = 72
          Width = 50
          Height = 13
          Caption = 'commessa'
          ShowAccelChar = False
          Transparent = True
        end
        object Label83: TRzLabel
          Left = 435
          Top = 72
          Width = 73
          Height = 13
          Caption = 'sottocommessa'
          ShowAccelChar = False
          Transparent = True
        end
        object v_l_descrizione_primanota: TRzLabel
          Left = 435
          Top = 107
          Width = 102
          Height = 13
          Caption = 'descrizione primanota'
          FocusControl = v_descrizione_primanota
          ShowAccelChar = False
          Transparent = True
        end
        object v_tmo_codice: trzdbedit_go
          Left = 5
          Top = 15
          Width = 50
          Height = 21
          Hint = 'codice movimento di uscita merce [F4 F5 F6]'
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
          Hint = 'codice deposito di uscita merce [F4 F5 F6]'
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
          OnExit = v_tma_codiceexit
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
          Left = 5
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
        object RzDBEditDescrizione_go1: trzdbeditdescrizione_go
          Left = 60
          Top = 15
          Width = 371
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
        object RzDBEditDescrizione_go2: trzdbeditdescrizione_go
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
        object RzDBEditDescrizione_go3: trzdbeditdescrizione_go
          Left = 60
          Top = 50
          Width = 371
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
        object RzDBEditDescrizione_go4: trzdbeditdescrizione_go
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
          Left = 5
          Top = 85
          Width = 116
          Height = 21
          Hint = 
            'codice della commessa di riferimento [F4 F5 F6] [Shift+F4=filtro' +
            ' cliente]'
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
          lookcollvisname = 'CMS000'
        end
        object RzDBEditDescrizione_go23: trzdbeditdescrizione_go
          Left = 140
          Top = 85
          Width = 291
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = cms_ds
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
          TabOrder = 9
        end
        object v_tipologia: trzdbedit_go
          Left = 435
          Top = 85
          Width = 121
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
          TabOrder = 10
          OnEnter = v_tipologiaEnter
          OnExit = v_tipologiaExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESCMT'
          lookcolltable = 'CMT'
          lookcollvisname = 'CMT'
        end
        object RzDBEditDescrizione_go24: trzdbeditdescrizione_go
          Left = 560
          Top = 85
          Width = 301
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = cmt_ds
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
        object v_descrizione_primanota: trzdbedit_go
          Left = 435
          Top = 120
          Width = 426
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
          TabOrder = 15
        end
        object v_chiusura_commessa: TRzDBCheckBox
          Left = 5
          Top = 122
          Width = 112
          Height = 15
          Hint = 
            'spunta per indicare che il documento chiude la commessa indicata' +
            ' nel campo precedente'
          DataField = 'chiusura_commessa'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'chiusura commessa'
          Enabled = False
          TabOrder = 12
        end
        object v_chiusura_sottocommessa: TRzDBCheckBox
          Left = 125
          Top = 122
          Width = 135
          Height = 15
          Hint = 
            'spunta per indicare che il documento chiude la sottocommessa ind' +
            'icata nel campo precedente'
          DataField = 'chiusura_sottocommessa'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'chiusura sottocommessa'
          Enabled = False
          TabOrder = 13
        end
        object v_chiusura_documento_origine: TRzDBCheckBox
          Left = 280
          Top = 123
          Width = 149
          Height = 15
          Hint = 
            'spunta per chiudere, in fase di consolidamento, le righe del doc' +
            'umento di origine ancora aperte (solo fatture e corrispettivi)'
          DataField = 'chiusura_documento_origine'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'chiusura documento origine'
          TabOrder = 14
        end
        object v_cms_cli: TRzCheckBox
          Left = 123
          Top = 88
          Width = 19
          Height = 15
          Hint = 'spunta per visualizzare solo le commesse del cliente'
          Checked = True
          State = cbChecked
          TabOrder = 16
          TabStop = False
          OnClick = v_cms_cliClick
        end
      end
      object tab_testata_destinazione: TRzTabSheet
        Color = clWindow
        ImageIndex = 4
        Caption = 'destinazione'
        OnEnter = tab_testata_destinazioneEnter
        OnExit = tab_testata_destinazioneExit
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label37: TRzLabel
          Left = 6
          Top = 2
          Width = 67
          Height = 13
          Caption = 'filiale/impianto'
          ShowAccelChar = False
          Transparent = True
        end
        object Label38: TRzLabel
          Left = 100
          Top = 2
          Width = 126
          Height = 13
          Caption = 'ragione sociale / cognome'
          FocusControl = v_descrizione1
          ShowAccelChar = False
          Transparent = True
        end
        object Label39: TRzLabel
          Left = 490
          Top = 0
          Width = 108
          Height = 13
          Caption = 'ragione sociale / nome'
          FocusControl = v_descrizione2
          ShowAccelChar = False
          Transparent = True
        end
        object Label41: TRzLabel
          Left = 101
          Top = 37
          Width = 123
          Height = 13
          Caption = 'indirizzo (via, piazza, ecc.)'
          FocusControl = v_via
          ShowAccelChar = False
          Transparent = True
        end
        object Label40: TRzLabel
          Left = 101
          Top = 72
          Width = 18
          Height = 13
          Caption = 'cap'
          ShowAccelChar = False
          Transparent = True
        end
        object Label43: TRzLabel
          Left = 155
          Top = 72
          Width = 33
          Height = 13
          Caption = 'localit'#224
          ShowAccelChar = False
          Transparent = True
        end
        object Label44: TRzLabel
          Left = 490
          Top = 72
          Width = 43
          Height = 13
          Caption = 'provincia'
          ShowAccelChar = False
          Transparent = True
        end
        object Label55: TRzLabel
          Left = 101
          Top = 107
          Width = 72
          Height = 13
          Caption = 'codice nazione'
          ShowAccelChar = False
          Transparent = True
        end
        object Label93: TRzLabel
          Left = 491
          Top = 37
          Width = 114
          Height = 13
          Caption = 'indirizzo (seconda parte)'
          FocusControl = v_via_01
          ShowAccelChar = False
          Transparent = True
        end
        object v_fvtddt: TRzRapidFireButton
          Left = 745
          Top = 115
          Width = 131
          Height = 36
          Caption = 'DDT consegna'
          Enabled = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00EDEDED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00373737001515
            1500D9D7D700FFFFFF006A6A6A0041414100F2F2F200FFFFFF00FFFFFF009191
            9100C5C5C50047474700CFCFCF00FFFFFF00EBE5E50061454500313131001C16
            16004B1E1E004B1E1E004B1E1E00451C1C0058363600CDC1C100EFEFF6003F3F
            460053536E002D2D2D002F2F6F001D1D8F0000008100190F46004A4A4A002928
            28008B696B00896767008865650087646400825E5E00663F3F0033339B002124
            4700181F73002A2D3F002B3CB100435CEE006883FF00543F5500343434002724
            24008F6E6E00AF969600B69F9F00BCA7A70098787800663F3F00000188001734
            CF002343EB003553F0004868FF005E7BFF00758FFF005C456C0018151500574D
            4D00825E5E009D7E7E00A98E8E00B097970092727200643C3C00000188001B3F
            FF002D4FFF004060FF005574FF006B86FF00839AFF0049356700B59E9E00B49C
            9C00744B4B006F4646006F4747006F4747006F474700653C3C00000188002548
            FF003759FF004C6BFF00627EFF007992FF0091A6FF004D3C6E00896666009879
            79008A605800BD8B6E00BD866400BF86650089594C007E5D5D00010188002F52
            FF004263FF005876FF006E89FF00879DFF009FB1FF0053437800957575009C7D
            7D00BA978900FFD4AC00FFC48C00FFBD810075453D00B4A1A100030387003655
            F8004F6EFF006581FF007D95FF0095A9FF00AFBFFF00594B8100A18686007F5A
            5A00E0CCC200E0BDA700D5A58400B0775A0051242400E0D8D8007D7DBE000304
            8A002C3AC7006F88FC008AA0FF00A4B5FF00BDCAFF00091FD4003035A4004B34
            5B00331941002812450036163000643D3D00A9949400FFFFFF00FFFFFF00D1D1
            E7004D4DA60007098F00515BCE00B2C1FF00CED8FF00051CDD000011D3000010
            CE00000EC70000039700A4A4D100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00C5C5E1003B3B9E0011139500888BD700061BD700000EC5000009
            B10000059F0006078C00D1D1E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00B3B3D90035359B000B0B860035359B006565
            B2008F8FC700CBCBE500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          OnClick = v_fvtddtClick
        end
        object v_indirizzo: trzdbedit_go
          Left = 5
          Top = 15
          Width = 90
          Height = 21
          Hint = 
            'codice filiale per la spedizione della merce [F4 F5 F6] [Shift+F' +
            '4=ricerca in archivio nominativi]'
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
          OnExit = v_indirizzoexit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESINDINH'
          lookcolltable = 'IND'
          lookcollvisname = 'INDCLI'
        end
        object v_descrizione1: trzdbedit_go
          Left = 100
          Top = 15
          Width = 386
          Height = 21
          Hint = 'ragione sociale del destinatario diverso [prima parte]'
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
          OnExit = v_descrizione1Exit
        end
        object v_descrizione2: trzdbedit_go
          Left = 490
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
          Left = 101
          Top = 50
          Width = 385
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
          OnExit = v_viaExit
        end
        object v_cap: trzdbedit_go
          Left = 101
          Top = 85
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
          TabOrder = 5
        end
        object v_citta: trzdbedit_go
          Left = 155
          Top = 85
          Width = 331
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
          TabOrder = 6
          OnExit = v_cittaExit
        end
        object v_provincia: trzdbedit_go
          Left = 490
          Top = 85
          Width = 50
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
          TabOrder = 7
          OnExit = v_provinciaExit
          lookcolldatabase = 'arc.arc'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTPV'
          lookcolltable = 'TPV'
          lookcollvisname = 'TPV'
        end
        object v_tna_codice: trzdbedit_go
          Left = 101
          Top = 120
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
          TabOrder = 8
          OnExit = v_tna_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTNA'
          lookcolltable = 'TNA'
          lookcollvisname = 'TNA'
        end
        object v_tna_descrizione: trzdbeditdescrizione_go
          Left = 155
          Top = 120
          Width = 331
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
          TabOrder = 9
        end
        object v_stampa_solo_destinazione: TRzDBCheckBox
          Left = 490
          Top = 122
          Width = 137
          Height = 15
          Hint = 'spunta per stampare solo la destinazione sul documento'
          DataField = 'STAMPA_SOLO_DESTINAZIONE'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa solo destinazione'
          TabOrder = 10
        end
        object v_via_01: trzdbedit_go
          Left = 490
          Top = 50
          Width = 366
          Height = 21
          Hint = 'via del destinatario diverso '
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'via_01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 4
          OnExit = v_viaExit
        end
        object v_contratto: TRzDBCheckBox
          Left = 640
          Top = 122
          Width = 61
          Height = 15
          Hint = 
            'spunta per indicare che il documento di vendita '#232' riferito ad un' +
            ' contratto di assistenza relativo alla filiale'
          DataField = 'contratto'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'contratto'
          TabOrder = 11
          TabStop = False
          Visible = False
        end
      end
      object tab_testata_spedizione: TRzTabSheet
        Color = clWindow
        ImageIndex = 3
        Caption = 'spedizione'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label23: TRzLabel
          Left = 5
          Top = 37
          Width = 50
          Height = 13
          Caption = 'spedizione'
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
          Left = 5
          Top = 72
          Width = 24
          Height = 13
          Caption = 'porto'
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
          Left = 435
          Top = 37
          Width = 85
          Height = 13
          Caption = 'addebito trasporto'
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
          Left = 435
          Top = 72
          Width = 75
          Height = 13
          Caption = 'aspetto dei beni'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label31: TRzLabel
          Left = 5
          Top = 107
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
        object Label32: TRzLabel
          Left = 285
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
        object Label33: TRzLabel
          Left = 125
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
        object Label34: TRzLabel
          Left = 205
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
        object Label35: TRzLabel
          Left = 5
          Top = 2
          Width = 117
          Height = 13
          Caption = 'data / ora inizio trasporto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label77: TRzLabel
          Left = 185
          Top = 2
          Width = 81
          Height = 13
          Caption = 'causale trasporto'
          FocusControl = v_causale_trasporto
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
          Left = 61
          Top = 107
          Width = 48
          Height = 13
          Caption = 'confezioni'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label90: TRzLabel
          Left = 435
          Top = 2
          Width = 134
          Height = 13
          Caption = 'consegne particolari bartolini'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_etichette_colli: TRzRapidFireButton
          Left = 370
          Top = 120
          Width = 56
          Height = 22
          Caption = 'etichette'
          OnClick = v_etichette_colliClick
        end
        object v_tsp_codice: trzdbedit_go
          Left = 5
          Top = 50
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
          TabOrder = 5
          OnEnter = v_tsp_codiceEnter
          OnExit = v_tsp_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTSP'
          lookcolltable = 'TSP'
          lookcollvisname = 'TSP'
        end
        object v_tpo_codice: trzdbedit_go
          Left = 5
          Top = 85
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
          TabOrder = 7
          OnEnter = v_tpo_codiceEnter
          OnExit = v_tpo_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTPO'
          lookcolltable = 'TPO'
          lookcollvisname = 'TPO'
        end
        object v_tst_codice: trzdbedit_go
          Left = 435
          Top = 50
          Width = 50
          Height = 21
          Hint = 'codice per conteggio spese trasporto [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tst_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          OnExit = v_tst_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTST'
          lookcolltable = 'TST'
          lookcollvisname = 'TST'
        end
        object v_tab_codice: trzdbedit_go
          Left = 435
          Top = 85
          Width = 50
          Height = 21
          Hint = 'codice aspetto dei beni [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tab_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 8
          OnExit = v_tab_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTAB'
          lookcolltable = 'TAB'
          lookcollvisname = 'TAB'
        end
        object v_numero_colli: trzdbnumericedit_go
          Left = 5
          Top = 120
          Width = 51
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
          TabOrder = 9
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_volume: trzdbnumericedit_go
          Left = 285
          Top = 120
          Width = 76
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
          TabOrder = 13
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
        object v_peso_lordo: trzdbnumericedit_go
          Left = 125
          Top = 120
          Width = 76
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
          TabOrder = 11
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
        object v_peso_netto: trzdbnumericedit_go
          Left = 205
          Top = 120
          Width = 76
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
          TabOrder = 12
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
        object v_data_inizio_trasporto: trzdbdatetimeedit_go
          Left = 5
          Top = 15
          Width = 91
          Height = 21
          Hint = 
            'data di inizio del trasporto [ Alt+Gi'#249' per aprire il calendario]' +
            ' [F11 = data e ora automatiche]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_inizio_trasporto'
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
          OnKeyDown = v_data_inizio_trasportoKeyDown
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 45987.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_ora_inizio_trasporto: trzdbnumericedit_go
          Left = 105
          Top = 15
          Width = 31
          Height = 21
          Hint = 'ora di inizio del trasporto'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'ora_inizio_trasporto'
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
          TabOrder = 1
          OnExit = v_ora_inizio_trasportoExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '00'
          decimalplaces = 0
        end
        object v_minuto_inizio_trasporto: trzdbnumericedit_go
          Left = 140
          Top = 15
          Width = 31
          Height = 21
          Hint = 'minuto di inizio del trasporto'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'minuto_inizio_trasporto'
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
          TabOrder = 2
          OnExit = v_minuto_inizio_trasportoExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '00'
          decimalplaces = 0
        end
        object v_causale_trasporto: trzdbedit_go
          Left = 185
          Top = 15
          Width = 241
          Height = 21
          Hint = 
            'causale trasporto se diversa da quella presente nel codice docum' +
            'ento'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'causale_trasporto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
          OnEnter = v_causale_trasportoEnter
          lookcolltable = 'TTR'
          lookcollvisname = 'TTR'
        end
        object v_numero_confezioni_totali: trzdbnumericedit_go
          Left = 61
          Top = 120
          Width = 51
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
          TabOrder = 10
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object RzDBEditDescrizione_go13: trzdbeditdescrizione_go
          Left = 60
          Top = 50
          Width = 366
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
          TabOrder = 14
        end
        object RzDBEditDescrizione_go14: trzdbeditdescrizione_go
          Left = 490
          Top = 50
          Width = 366
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tst_ds
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
        object RzDBEditDescrizione_go15: trzdbeditdescrizione_go
          Left = 60
          Top = 85
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
          TabOrder = 16
        end
        object RzDBEditDescrizione_go16: trzdbeditdescrizione_go
          Left = 490
          Top = 85
          Width = 366
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tab_ds
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
        object v_consegna_bartolini: trzdbcombobox_go
          Left = 435
          Top = 15
          Width = 421
          Height = 21
          Hint = 'modalit'#224' di consegna particolare'
          DataField = 'consegna_bartolini'
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
          TabOrder = 4
          Items.Strings = (
            ''
            'per appuntamento'
            'fuori misura'
            'ai piani'
            'supermercati'
            'destinatario disagiato')
        end
        object GroupBox_consegna: TGroupBox
          Left = 435
          Top = 107
          Width = 421
          Height = 39
          Caption = 'giorni consegna'
          TabOrder = 18
          object v_consegna_lunedi: TRzDBCheckBox
            Left = 5
            Top = 15
            Width = 36
            Height = 15
            Hint = 'spunta per indicare cge il giorno '#232' abilitato per la consegna'
            DataField = 'consegna_lunedi'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'lun.'
            TabOrder = 0
            TabStop = False
          end
          object v_consegna_martedi: TRzDBCheckBox
            Left = 66
            Top = 15
            Width = 42
            Height = 15
            Hint = 'spunta per indicare cge il giorno '#232' abilitato per la consegna'
            DataField = 'consegna_martedi'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'mart.'
            TabOrder = 1
            TabStop = False
          end
          object v_consegna_mercoledi: TRzDBCheckBox
            Left = 128
            Top = 15
            Width = 45
            Height = 15
            Hint = 'spunta per indicare cge il giorno '#232' abilitato per la consegna'
            DataField = 'consegna_mercoledi'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'merc.'
            TabOrder = 2
            TabStop = False
          end
          object v_consegna_giovedi: TRzDBCheckBox
            Left = 190
            Top = 15
            Width = 42
            Height = 15
            Hint = 'spunta per indicare cge il giorno '#232' abilitato per la consegna'
            DataField = 'consegna_giovedi'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'giov.'
            TabOrder = 3
            TabStop = False
          end
          object v_consegna_venerdi: TRzDBCheckBox
            Left = 251
            Top = 15
            Width = 40
            Height = 15
            Hint = 'spunta per indicare cge il giorno '#232' abilitato per la consegna'
            DataField = 'consegna_venerdi'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'ven.'
            TabOrder = 4
            TabStop = False
          end
          object v_consegna_sabato: TRzDBCheckBox
            Left = 313
            Top = 15
            Width = 39
            Height = 15
            Hint = 'spunta per indicare cge il giorno '#232' abilitato per la consegna'
            DataField = 'consegna_sabato'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'sab.'
            TabOrder = 5
            TabStop = False
          end
          object v_consegna_domenica: TRzDBCheckBox
            Left = 375
            Top = 15
            Width = 42
            Height = 15
            Hint = 'spunta per indicare cge il giorno '#232' abilitato per la consegna'
            DataField = 'consegna_domenica'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'dom.'
            TabOrder = 6
            TabStop = False
          end
        end
      end
      object tab_testata_sconto_acconto_spese: TRzTabSheet
        Color = clWindow
        ImageIndex = 6
        Caption = 'sconto/spese/ritenuta'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label58: TRzLabel
          Left = 5
          Top = 0
          Width = 119
          Height = 13
          Caption = 'sconto finale percentuale'
          ShowAccelChar = False
          Transparent = True
        end
        object Label59: TRzLabel
          Left = 315
          Top = 0
          Width = 69
          Height = 13
          Caption = 'importo sconto'
          FocusControl = v_art_codice
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel22: TRzLabel
          Left = 390
          Top = 0
          Width = 40
          Height = 13
          Caption = '% bonus'
          FocusControl = v_art_codice
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel23: TRzLabel
          Left = 440
          Top = 0
          Width = 103
          Height = 13
          Caption = 'descrizione ecobonus'
          ShowAccelChar = False
          Transparent = True
        end
        object v_varia_tsm_codice: TRzBitBtn
          Left = 725
          Top = 12
          Width = 91
          Height = 23
          Hint = 'modifica in blocco il primo sconto righe'
          Caption = '1'#39' sconto righe'
          TabOrder = 13
          TabStop = False
          OnClick = v_varia_tsm_codiceClick
        end
        object v_varia_tsm_codice_art: TRzBitBtn
          Left = 815
          Top = 12
          Width = 91
          Height = 23
          Hint = 'modifica in blocco il secondo sconto righe'
          Caption = '2'#39' sconto righe'
          TabOrder = 14
          TabStop = False
          OnClick = v_varia_tsm_codice_artClick
        end
        object v_addebito_spese_fattura: TRzDBCheckBox
          Left = 10
          Top = 40
          Width = 91
          Height = 15
          Hint = 
            'spunta per addebitare le spese automatiche in fattura [trasporto' +
            ', bollo, incasso]'
          DataField = 'addebito_spese_fattura'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'addebito spese'
          TabOrder = 4
          OnClick = v_addebito_spese_fatturaClick
          OnExit = v_addebito_spese_fatturaExit
        end
        object v_tsm_codice_sconto: trzdbedit_go
          Left = 5
          Top = 13
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
          TabOrder = 0
          OnExit = v_tsm_codice_scontoExit
          OnKeyDown = v_tsm_codice_scontoKeyDown
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTSM'
          lookcolltable = 'TSM'
          lookcollvisname = 'TSM'
        end
        object GroupBox3: TGroupBox
          Left = 0
          Top = 60
          Width = 306
          Height = 86
          Caption = 'spese in fattura'
          TabOrder = 6
          object Label48: TRzLabel
            Left = 230
            Top = 47
            Width = 54
            Height = 13
            Caption = 'spese extra'
            FocusControl = v_art_codice
            ShowAccelChar = False
            Transparent = True
          end
          object Label61: TRzLabel
            Left = 70
            Top = 47
            Width = 67
            Height = 13
            Caption = 'spese incasso'
            FocusControl = v_art_codice
            ShowAccelChar = False
            Transparent = True
          end
          object Label60: TRzLabel
            Left = 70
            Top = 12
            Width = 72
            Height = 13
            Caption = 'spese trasporto'
            FocusControl = v_art_codice
            ShowAccelChar = False
            Transparent = True
          end
          object Label62: TRzLabel
            Left = 230
            Top = 12
            Width = 53
            Height = 13
            Caption = 'bollo esenti'
            FocusControl = v_art_codice
            ShowAccelChar = False
            Transparent = True
          end
          object v_importo_spese_extra: trzdbnumericedit_go
            Left = 230
            Top = 60
            Width = 71
            Height = 21
            Hint = 'importo spese extra [Alt+Gi'#249' per aprire la calcolatrice]'
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
            TabOrder = 6
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.00;-,0.00;#'
          end
          object v_importo_spese_incasso: trzdbnumericedit_go
            Left = 70
            Top = 60
            Width = 86
            Height = 21
            Hint = 'importo spese incasso [Alt+Gi'#249' per aprire la calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'importo_spese_incasso'
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
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.00;-,0.00;#'
          end
          object v_importo_spese_trasporto: trzdbnumericedit_go
            Left = 70
            Top = 25
            Width = 86
            Height = 21
            Hint = 'importo spese trasporto [Alt+Gi'#249' per aprire la calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'importo_spese_trasporto'
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
            OnExit = v_importo_spese_trasportoExit
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.00;-,0.00;#'
          end
          object v_importo_bollo: trzdbnumericedit_go
            Left = 230
            Top = 25
            Width = 71
            Height = 21
            Hint = 
              'importo bollo per fatture esenti o non imponibili [Alt+Gi'#249' per a' +
              'prire la calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'importo_bollo'
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
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.00;-,0.00;#'
          end
          object v_spese_manuali_bollo: TRzDBCheckBox
            Left = 165
            Top = 27
            Width = 55
            Height = 15
            Hint = 'spunta per addebitare manualmente le spese bollo in fattura'
            DataField = 'spese_manuali_bollo'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'manuali'
            TabOrder = 2
            OnClick = v_spese_manuali_bolloClick
            OnExit = v_spese_manuali_bolloExit
          end
          object v_spese_manuali_trasporto: TRzDBCheckBox
            Left = 5
            Top = 27
            Width = 55
            Height = 15
            Hint = 
              'spunta per addebitare manualmente le spese di trasporto in fattu' +
              'ra'
            DataField = 'spese_manuali_trasporto'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'manuali'
            TabOrder = 0
            OnClick = v_spese_manuali_trasportoClick
            OnExit = v_spese_manuali_trasportoExit
          end
          object v_spese_manuali_incasso: TRzDBCheckBox
            Left = 5
            Top = 62
            Width = 55
            Height = 15
            Hint = 'spunta per addebitare manualmente le spese incasso in fattura'
            DataField = 'spese_manuali_incasso'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'manuali'
            TabOrder = 4
            OnClick = v_spese_manuali_incassoClick
            OnExit = v_spese_manuali_incassoExit
          end
        end
        object v_GroupBox_professionisti: TGroupBox
          Left = 315
          Top = 60
          Width = 591
          Height = 86
          Caption = 'cassa previdenza e ritenuta d'#39'acconto'
          TabOrder = 10
          object Label52: TRzLabel
            Left = 406
            Top = 12
            Width = 89
            Height = 13
            Caption = 'importo previdenza'
            FocusControl = v_art_codice
            ShowAccelChar = False
            Transparent = True
          end
          object Label36: TRzLabel
            Left = 5
            Top = 47
            Width = 85
            Height = 13
            Caption = 'ritenuta d'#39'acconto'
            ShowAccelChar = False
            Transparent = True
          end
          object Label70: TRzLabel
            Left = 300
            Top = 47
            Width = 72
            Height = 13
            Caption = 'importo ritenuta'
            FocusControl = v_art_codice
            ShowAccelChar = False
            Transparent = True
          end
          object RzLabel1: TRzLabel
            Left = 300
            Top = 12
            Width = 63
            Height = 13
            Caption = '% previdenza'
            FocusControl = v_art_codice
            ShowAccelChar = False
            Transparent = True
          end
          object RzLabel3: TRzLabel
            Left = 110
            Top = 12
            Width = 81
            Height = 13
            Caption = 'importo enasarco'
            FocusControl = v_art_codice
            ShowAccelChar = False
            Transparent = True
          end
          object RzLabel12: TRzLabel
            Left = 500
            Top = 47
            Width = 70
            Height = 13
            Caption = 'data certificato'
            ShowAccelChar = False
            Transparent = True
          end
          object RzRapidFireButton2: TRzRapidFireButton
            Left = 376
            Top = 59
            Width = 23
            Height = 23
            Hint = 'calcolo automatico importo ritenuta'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FFFFFF00B29F
              9F00502323005023230050232300502323005023230050232300502323005023
              230050232300502323005023230050232300B29F9F00FFFFFF00FFFFFF005023
              2300A97A7A00A9797900A7777700A6737300A36F6F00A16C6C009E6969009C66
              66009A636300985F5F00955B5B006E36360050232300FFFFFF00FFFFFF005023
              2300D1AFAF00814B4B00814B4B00814B4B00814B4B00814B4B00814B4B00814B
              4B00814B4B00814B4B00814B4B009E64640050232300FFFFFF00FFFFFF005023
              2300D5B5B500814B4B00F2EDED00E0D5D500814B4B00F2EDED00E0D5D500814B
              4B00F2EDED00E0D5D500814B4B00A36A6A0050232300FFFFFF00FFFFFF005023
              2300D8BABA00814B4B00814B4B00814B4B00814B4B00814B4B00814B4B00814B
              4B00814B4B00814B4B00814B4B00A670700050232300FFFFFF00FFFFFF005023
              2300DABFBF00814B4B00F2EDED00E0D5D500814B4B00F2EDED00E0D5D500814B
              4B00E7E0E000E0D5D500814B4B00A976760050232300FFFFFF00FFFFFF005023
              2300DEC5C500814B4B00814B4B00814B4B00814B4B00814B4B00814B4B00814B
              4B00814B4B00814B4B00814B4B00AC7B7B0050232300FFFFFF00FFFFFF005023
              2300E0CACA00814B4B00F2EDED00E0D5D500814B4B00F2EDED00E0D5D500814B
              4B00F2EDED00E0D5D500814B4B00B081810050232300FFFFFF00FFFFFF005023
              2300E3CFCF006634340066343400663434006634340066343400663434004B28
              4B00341E6500341E6500341E6500B487870050232300FFFFFF00FFFFFF005023
              2300E6D5D5004B1E1E00F7E0C100D08F5A004B1E1E00F7E0C100D08F5A001E0C
              4B00F4F6FB00BDCAFC0000008100B78E8E0050232300FFFFFF00FFFFFF005023
              2300E9DADA004B1E1E004B1E1E004B1E1E004B1E1E004B1E1E004B1E1E001E0C
              4B00000081000000810000008100BC93930050232300FFFFFF00FFFFFF005023
              2300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FBF8F80050232300FFFFFF00FFFFFF005023
              2300DAC7C7008CEAEA008FE6E60090E2E20092E0E00095DCDC0097D8D80098D4
              D4009093930090939300A9CBCB00FBFAFA0050232300FFFFFF00FFFFFF005023
              2300B08B8B008BEBEB008EE7E70090E3E30092E0E00095DCDC0096D9D90098D5
              D5009093930090939300A5CACA00EAE1E10050232300FFFFFF00FFFFFF005023
              2300824C4C00865252008A5656008E5C5C0092626200966767009A6C6C009E72
              7200A1787800A67D7D00AA838300B08B8B0050232300FFFFFF00FFFFFF00A48F
              8F00502323005023230050232300502323005023230050232300502323005023
              230050232300502323005023230050232300B4A1A100FFFFFF00}
            OnClick = RzRapidFireButton2Click
          end
          object lbl_contributi_inps: TRzLabel
            Left = 501
            Top = 12
            Width = 65
            Height = 13
            Caption = 'contributi inps'
            FocusControl = v_art_codice
            ShowAccelChar = False
            Transparent = True
          end
          object v_percentuale_cassa_professionist: trzdbnumericedit_go
            Left = 300
            Top = 25
            Width = 101
            Height = 21
            Hint = '% cassa previdenza professionisti'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'percentuale_cassa_professionist'
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
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.00;-,0.00;#'
          end
          object v_importo_cassa_professionisti: trzdbnumericedit_go
            Left = 406
            Top = 25
            Width = 86
            Height = 21
            Hint = 
              'importo cassa professionisti [Alt+Gi'#249' per aprire la calcolatrice' +
              ']'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'importo_cassa_professionisti'
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
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.00;-,0.00;#'
          end
          object v_tpe_codice: trzdbedit_go
            Left = 5
            Top = 60
            Width = 51
            Height = 21
            Hint = 'codice ritenuta d'#39'acconto [F4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'tpe_codice'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 5
            OnExit = v_tpe_codiceExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTPE'
            lookcolltable = 'TPE'
            lookcollvisname = 'TPE'
          end
          object v_importo_ritenuta: trzdbnumericedit_go
            Left = 300
            Top = 60
            Width = 76
            Height = 21
            Hint = 'importo ritenuta d'#39'acconto'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'importo_ritenuta'
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
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.00;-,0.00;#'
          end
          object RzDBEditDescrizione_go18: trzdbeditdescrizione_go
            Left = 60
            Top = 60
            Width = 236
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tpe_ds
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
          object v_soggetto_addebito_enasarco: TRzDBCheckBox
            Left = 5
            Top = 28
            Width = 99
            Height = 15
            Hint = 
              'spunta se il cliente '#232' soggetto all'#39'addebito enasarco per la quo' +
              'ta extra delle societ'#224
            DataField = 'soggetto_addebito_enasarco'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'enasarco agente'
            TabOrder = 0
          end
          object v_importo_enasarco: trzdbnumericedit_go
            Left = 110
            Top = 25
            Width = 86
            Height = 21
            Hint = 'importo enasarco'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'importo_enasarco'
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
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.00;-,0.00;#'
          end
          object v_ricevuto_certificazione: TRzDBCheckBox
            Left = 410
            Top = 63
            Width = 81
            Height = 15
            DataField = 'ricevuto_certificazione'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'certificazione'
            TabOrder = 8
            OnClick = v_ritenuta_manualeClick
          end
          object v_data_certificazione: trzdbdatetimeedit_go
            Left = 500
            Top = 60
            Width = 86
            Height = 21
            Hint = 
              'data di ricezione della certificazione [Alt+Gi'#249' per aprire il ca' +
              'lendario]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'data_certificazione'
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
            OnExit = v_data_riferimentoExit
            CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
            CaptionTodayBtn = 'oggi'
            CaptionClearBtn = 'annulla'
            Date = 45987.000000000000000000
            EditType = etDate
            DropButtonVisible = False
          end
          object v_importo_contributi_inps: trzdbnumericedit_go
            Left = 500
            Top = 25
            Width = 86
            Height = 21
            Hint = 'importo contributi inps [Alt+Gi'#249' per aprire la calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'importo_contributi_inps'
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 4
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.00;-,0.00;#'
          end
        end
        object v_fattura_professionisti: TRzDBCheckBox
          Left = 315
          Top = 40
          Width = 112
          Height = 15
          Hint = 
            'spunta per addebitare le spese automatiche in fattura [trasporto' +
            ', bollo, incasso]'
          DataField = 'fattura_professionisti'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'fattura professionisti'
          TabOrder = 7
          OnClick = v_fattura_professionistiClick
          OnExit = v_fattura_professionistiExit
        end
        object v_importo_sconto: trzdbnumericedit_go
          Left = 315
          Top = 13
          Width = 71
          Height = 21
          Hint = 
            'importo sconto extra [importo + F9=calcolo percentuale sul total' +
            'e documento]'
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
          TabOrder = 1
          OnExit = v_importo_scontoExit
          OnKeyDown = v_importo_scontoKeyDown
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object v_spese_manuali: TRzDBCheckBox
          Left = 115
          Top = 40
          Width = 103
          Height = 15
          Hint = 'spunta per addebitare manualmente le spese in fattura'
          DataField = 'spese_manuali'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'addebito manuale'
          TabOrder = 5
          Visible = False
          OnClick = v_spese_manualiClick
          OnExit = v_spese_manualiExit
        end
        object v_ritenuta_manuale: TRzDBCheckBox
          Left = 440
          Top = 40
          Width = 153
          Height = 15
          Hint = 
            'spunta per gestire i dati della fattura professionista manualmen' +
            'te'
          DataField = 'ritenuta_manuale'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'assegna valori manualmente'
          TabOrder = 8
          OnClick = v_ritenuta_manualeClick
        end
        object Panel5: TRzPanel
          Left = 600
          Top = 0
          Width = 126
          Height = 41
          BorderOuter = fsNone
          Enabled = False
          ParentColor = True
          TabOrder = 11
          object Label67: TRzLabel
            Left = 0
            Top = 0
            Width = 42
            Height = 13
            Caption = 'sc. finale'
            FocusControl = v_art_codice
            ShowAccelChar = False
            Transparent = True
          end
          object Label68: TRzLabel
            Left = 65
            Top = 0
            Width = 45
            Height = 13
            Caption = 'sc. cassa'
            FocusControl = v_art_codice
            ShowAccelChar = False
            Transparent = True
          end
          object v_importo_sconto_finale: trzdbnumericedit_go
            Left = 0
            Top = 13
            Width = 61
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
            Left = 65
            Top = 13
            Width = 56
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
        object RzDBEditDescrizione_go17: trzdbeditdescrizione_go
          Left = 60
          Top = 13
          Width = 246
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
          TabOrder = 12
        end
        object v_percentuale_ecobonus: trzdbnumericedit_go
          Left = 390
          Top = 13
          Width = 46
          Height = 21
          Hint = 'percentuale sconto ecobonus / bonus facciate'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'percentuale_ecobonus'
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
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_teco_codice: trzdbedit_go
          Left = 440
          Top = 13
          Width = 41
          Height = 21
          Hint = 'codice descrizione ecobonus [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'teco_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
          OnExit = v_teco_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTECO'
          lookcolltable = 'TECO'
          lookcollvisname = 'TECO'
        end
        object rzdbeditdescrizione_go28: trzdbeditdescrizione_go
          Left = 485
          Top = 13
          Width = 111
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = teco_ds
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
          TabOrder = 15
        end
        object v_storno_acconto: TRzDBCheckBox
          Left = 820
          Top = 38
          Width = 90
          Height = 15
          Hint = 'spunta per utilizzare lo sconto in testata come storno acconto'
          DataField = 'storno_acconto'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'storno acconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
      end
      object tab_testata_note: TRzTabSheet
        Color = clWindow
        ImageIndex = 7
        Caption = 'note/mail/cup cig/conai'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label56: TRzLabel
          Left = 450
          Top = 2
          Width = 97
          Height = 13
          Hint = 'indirizzo manuale a cui inviare il documento per conoscenza'
          Caption = 'mail per conoscenza'
          FocusControl = v_e_mail_conoscenza
          ShowAccelChar = False
          Transparent = True
        end
        object Label91: TRzLabel
          Left = 450
          Top = 37
          Width = 18
          Height = 13
          Caption = 'cup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label92: TRzLabel
          Left = 450
          Top = 72
          Width = 14
          Height = 13
          Caption = 'cig'
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
          Left = 5
          Top = 110
          Width = 84
          Height = 13
          Caption = 'applicabilit'#224' conai'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel4: TRzLabel
          Left = 755
          Top = 110
          Width = 72
          Height = 13
          Caption = 'tipo imballaggio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_note: trzdbmemo_go
          Left = 0
          Top = 0
          Width = 446
          Height = 106
          Hint = 'annotazioni [F4=inserisce tabella descrizioni documenti]'
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
          OnDblClick = v_noteDblClick
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
        end
        object v_e_mail_conoscenza: trzdbedit_go
          Left = 450
          Top = 15
          Width = 416
          Height = 21
          Hint = 'mail a cui inviare il documento "per conoscenza"'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'e_mail_conoscenza'
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
        object v_codice_cup: trzdbedit_go
          Left = 450
          Top = 50
          Width = 416
          Height = 21
          Hint = 'Codice Unico di Progetto'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'codice_cup'
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
        object v_codice_cig: trzdbedit_go
          Left = 450
          Top = 85
          Width = 416
          Height = 21
          Hint = 'Codice Identificativo Gara'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'codice_cig'
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
        object v_tconai_codice: trzdbedit_go
          Left = 5
          Top = 125
          Width = 50
          Height = 21
          Hint = 'codice tipolgia CONAI [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tconai_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 4
          OnEnter = v_tconai_codiceEnter
          OnExit = v_tconai_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTCONAI'
          lookcolltable = 'TCONAI'
          lookcollvisname = 'TCONAI'
        end
        object RzDBEditDescrizione_go39: trzdbeditdescrizione_go
          Left = 60
          Top = 125
          Width = 591
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tconai_01_ds
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
        object v_no_conai: TRzDBCheckBox
          Left = 660
          Top = 128
          Width = 86
          Height = 15
          Hint = 
            'spunta per indicare che gli articoli sono esclusi dalla gestione' +
            ' contributo ambientale'
          DataField = 'no_conai'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'no conai/raee'
          TabOrder = 6
          TabStop = False
        end
        object v_tipo_imballaggio: trzdbcombobox_go
          Left = 755
          Top = 125
          Width = 106
          Height = 21
          Hint = 
            'tipologia dell'#39'imballaggio standard degli articoli del documento' +
            ' (spazio = utilizza quella dell'#39'articolo)'
          DataField = 'tipo_imballaggio'
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
          TabOrder = 7
          TabStop = False
          Items.Strings = (
            ''
            'primario'
            'secondario')
        end
      end
      object tab_testata_analitica: TRzTabSheet
        Color = clWindow
        ImageIndex = 8
        Caption = 'analitica/impianto/fattura'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label95: TRzLabel
          Left = 5
          Top = 2
          Width = 30
          Height = 13
          Caption = 'centro'
          ShowAccelChar = False
          Transparent = True
        end
        object Label96: TRzLabel
          Left = 5
          Top = 37
          Width = 24
          Height = 13
          Caption = 'voce'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel2: TRzLabel
          Left = 5
          Top = 72
          Width = 39
          Height = 13
          Caption = 'impianto'
          FocusControl = v_punto_vendita
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel20: TRzLabel
          Left = 220
          Top = 72
          Width = 89
          Height = 13
          Caption = 'cliente fatturazione'
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
          Left = 5
          Top = 107
          Width = 81
          Height = 13
          Caption = 'filiale fatturazione'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_cen_codice: trzdbedit_go
          Left = 5
          Top = 15
          Width = 91
          Height = 21
          Hint = 
            'codice centro contabilit'#224' analitica globale delle righe del docu' +
            'mento [F4 F5 F6]'
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
          TabOrder = 1
          OnExit = v_tvc_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTVC'
          lookcolltable = 'TVC'
          lookcollvisname = 'TVC'
        end
        object RzDBEditDescrizione_go26: trzdbeditdescrizione_go
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
          TabOrder = 3
        end
        object RzDBEditDescrizione_go27: trzdbeditdescrizione_go
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
          TabOrder = 4
        end
        object GroupBox6: TGroupBox
          Left = 665
          Top = 5
          Width = 201
          Height = 136
          Caption = 'analitica sconti e spese'
          TabOrder = 5
          object v_analitica_sconto_cassa: TRzRapidFireButton
            Left = 5
            Top = 15
            Width = 91
            Height = 21
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Caption = 'sconto cassa'
            Enabled = False
            OnClick = v_analitica_sconto_cassaClick
          end
          object v_analitica_sconto_finale: TRzRapidFireButton
            Left = 103
            Top = 15
            Width = 91
            Height = 21
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Caption = 'sconto finale'
            Enabled = False
            OnClick = v_analitica_sconto_finaleClick
          end
          object v_analitica_spese_trasporto: TRzRapidFireButton
            Left = 5
            Top = 45
            Width = 91
            Height = 21
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Caption = 'spese trasporto'
            Enabled = False
            OnClick = v_analitica_spese_trasportoClick
          end
          object v_analitica_spese_bollo: TRzRapidFireButton
            Left = 103
            Top = 45
            Width = 91
            Height = 21
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Caption = 'spese bollo'
            Enabled = False
            OnClick = v_analitica_spese_bolloClick
          end
          object v_analitica_spese_extra: TRzRapidFireButton
            Left = 103
            Top = 75
            Width = 91
            Height = 21
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Caption = 'spese extra'
            Enabled = False
            OnClick = v_analitica_spese_extraClick
          end
          object v_analitica_spese_incasso: TRzRapidFireButton
            Left = 5
            Top = 75
            Width = 91
            Height = 21
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Caption = 'spese incasso'
            Enabled = False
            OnClick = v_analitica_spese_incassoClick
          end
        end
        object v_punto_vendita: trzdbedit_go
          Left = 5
          Top = 85
          Width = 206
          Height = 21
          Hint = 'codice dell'#39'impianto'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'punto_vendita'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnEnter = v_punto_venditaEnter
          OnExit = v_punto_venditaExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcolltable = 'PVVR'
          lookcollvisname = 'PVVVEN'
        end
        object v_cli_codice_fatturazione: trzdbedit_go
          Left = 220
          Top = 85
          Width = 90
          Height = 21
          Hint = 
            'codice cliente a cui intestatare le fatture di vendita a fini co' +
            'ntabili e scadenziari [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'cli_codice_fatturazione'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          OnEnter = v_cli_codice_fatturazioneEnter
          OnExit = v_cli_codice_fatturazioneExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_nom
          lookcollprogram = 'GESNOM'
          lookcolltable = 'CLI'
          lookcollvisname = 'CLI'
        end
        object trzdbeditdescrizione_go1: trzdbeditdescrizione_go
          Left = 315
          Top = 85
          Width = 341
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = cli_fatturazione_ds
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
        object v_ind_codice_fatturazione: trzdbedit_go
          Left = 5
          Top = 120
          Width = 90
          Height = 21
          Hint = 'filiale cliente a cui inviare le fatture di vendita [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'ind_codice_fatturazione'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 8
          OnEnter = v_ind_codice_fatturazioneEnter
          OnExit = v_ind_codice_fatturazioneExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESINDINH'
          lookcolltable = 'IND'
          lookcollvisname = 'INDCLI'
        end
        object trzdbeditdescrizione_go3: trzdbeditdescrizione_go
          Left = 100
          Top = 120
          Width = 556
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = ind_fatturazione_ds
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
          TabOrder = 9
        end
      end
    end
    object v_tdo_codice: trzdbedit_go
      Left = 90
      Top = 15
      Width = 50
      Height = 21
      Hint = 'codice documento [F4 F5 F6]'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'tdo_codice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      OnEnter = v_tdo_codiceEnter
      OnExit = v_tdo_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTDO'
      lookcolltable = 'TDO'
      lookcollvisname = 'TDV'
    end
    object v_numero_documento: trzdbnumericedit_go
      Left = 570
      Top = 15
      Width = 61
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
      DisplayFormat = '0'
      decimalplaces = 0
    end
    object v_serie_documento: trzdbedit_go
      Left = 640
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
      TabOrder = 3
    end
    object v_revisione: trzdbnumericedit_go
      Left = 700
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
      TabOrder = 4
      AllowBlank = False
      AllowScientificNotation = False
      IntegersOnly = False
      DisplayFormat = '#'
      decimalplaces = 0
    end
    object v_data_documento: trzdbdatetimeedit_go
      Left = 455
      Top = 15
      Width = 81
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
      TabOrder = 1
      OnChange = v_data_documentoChange
      OnEnter = v_data_documentoEnter
      OnExit = v_data_documentoExit
      CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
      CaptionTodayBtn = 'oggi'
      CaptionClearBtn = 'annulla'
      Date = 45987.000000000000000000
      EditType = etDate
      DropButtonVisible = False
    end
    object v_cli_codice: trzdbedit_go
      Left = 90
      Top = 50
      Width = 90
      Height = 21
      Hint = 'codice cliente [F4 F5 F6]'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'cli_codice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 5
      OnEnter = v_cli_codiceEnter
      OnExit = v_cli_codiceExit
      OnKeyDown = v_cli_codiceKeyDown
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc_cli
      lookcollprogram = 'GESNOM'
      lookcolltable = 'CLI'
      lookcollvisname = 'CLI'
    end
    object v_cli_descrizione1: trzdbeditdescrizione_go
      Left = 195
      Top = 50
      Width = 436
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = cli_ds
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
      TabOrder = 7
    end
    object v_tdo_descrizione: trzdbeditdescrizione_go
      Left = 145
      Top = 15
      Width = 306
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tdo_ds
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
    object v_giorno: trzedit_go
      Left = 535
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
      TabOrder = 9
    end
    object trzdbeditdescrizione_go2: trzdbeditdescrizione_go
      Left = 640
      Top = 50
      Width = 106
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tabella_ds
      DataField = 'cli_codice_fatturazione'
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
    object v_tse_colore_priorita: trzedit_go
      Left = 179
      Top = 50
      Width = 12
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
      TabOrder = 11
    end
    object v_IMPORTO_TOTALE_IMPONIBILE: trzdbnumericedit_go
      Left = 840
      Top = 15
      Width = 81
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
      decimalplaces = 6
    end
    object v_IMPORTO_TOTALE: trzdbnumericedit_go
      Left = 840
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
      decimalplaces = 6
    end
    object trzdbdatetimeedit_go1: trzdbdatetimeedit_go
      Left = 750
      Top = 15
      Width = 81
      Height = 21
      Hint = 'data documento [Alt+Gi'#249' per aprire il calendario]'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tabella_ds
      DataField = 'data_revisione'
      ReadOnly = True
      AutoSelect = False
      Color = clBtnFace
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
      OnChange = v_data_documentoChange
      OnEnter = v_data_documentoEnter
      OnExit = v_data_documentoExit
      CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
      CaptionTodayBtn = 'oggi'
      CaptionClearBtn = 'annulla'
      Date = 45962.000000000000000000
      EditType = etDate
      DropButtonVisible = False
    end
    object v_saldo_cliente: trznumericedit_go
      Left = 750
      Top = 50
      Width = 81
      Height = 21
      Hint = #13'Alt+Gi'#249' per aprire la calcolatrice'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 15
      AllowScientificNotation = False
      IntegersOnly = False
      DisplayFormat = ',0.00;-,0.00;0.00'
    end
  end
  inherited pannello_codice: TRzPanel
    Width = 81
    ExplicitWidth = 81
    inherited Label12: TRzLabel
      Top = 2
      ExplicitTop = 2
    end
    inherited v_progressivo: trzdbnumericedit_go
      Width = 76
      Hint = 
        '[Invio o Ins= inserisce nuovo record] [Ctrl+F2 = lista modelli p' +
        'er preventivi e ordini]'
      lookupdatabase = 'arc.aarcdit'
      lookuppopupmenu = ARC.pop_arc
      lookuptable = 'DVT'
      lookupvisname = 'DVT'
      ExplicitWidth = 76
    end
    inherited v_bottone_nuovo: TRzBitBtn
      Hint = 
        'inserimento nuovo documento [F2 = ricerca documenti in archivio]' +
        ' [Ctrl+F2 = lista modelli per preventivi e ordini]'
    end
  end
  inherited pannello_griglia_righe: TRzPanel
    Top = 295
    Width = 930
    Height = 191
    ExplicitTop = 295
    ExplicitWidth = 930
    ExplicitHeight = 191
    inherited v_griglia_righe: trzdbgrid_go
      Width = 930
      Height = 146
      Hint = 
        '[Invio/Ins=aggiunge riga] [Ctrl+Ins=riga prima] [Alt+Ins=riga do' +
        'po] [F9=evade documento] [Ctrl+F9=accredito fatture] [Ctrl+F7=RM' +
        'A] [Ctrl+F6=cruscotto] [Ctrl+F2=ricerca per codice articolo cli/' +
        'frn]'
      options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
      PopupMenu = Popup_griglia
      multiselect = True
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
          Expanded = False
          FieldName = 'SEQUENZA'
          Title.Caption = 'seq.'
          Title.Color = clYellow
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ART_CODICE'
          Title.Caption = 'codice articolo'
          Title.Color = clYellow
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'art_descrizione'
          Title.Caption = 'descrizione'
          Title.Color = clYellow
          Width = 174
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'NUMERO_COLLI'
          Title.Alignment = taRightJustify
          Title.Caption = 'nc'
          Title.Color = clYellow
          Width = 24
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'NUMERO_CONFEZIONI'
          Title.Alignment = taRightJustify
          Title.Caption = 'nc'
          Title.Color = clYellow
          Width = 24
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTITA'
          Title.Alignment = taRightJustify
          Title.Caption = 'quantit'#224
          Title.Color = clYellow
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREZZO'
          Title.Alignment = taRightJustify
          Title.Caption = 'prezzo'
          Title.Color = clYellow
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TSM_CODICE'
          Title.Alignment = taCenter
          Title.Caption = 's/m'
          Title.Color = clYellow
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TSM_CODICE_ART'
          Title.Caption = 's/m'
          Title.Color = clYellow
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTO_SCONTO'
          Title.Caption = 'sconto'
          Title.Color = clYellow
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTO'
          Title.Alignment = taRightJustify
          Title.Caption = 'importo'
          Title.Color = clYellow
          Width = 59
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_CONSEGNA'
          Title.Alignment = taCenter
          Title.Caption = 'consegna'
          Title.Color = clYellow
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITUAZIONE'
          Title.Caption = 'situazione'
          Title.Color = clYellow
          Width = 52
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
          Title.Caption = 'sottoconto'
          Title.Color = clYellow
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIV_CODICE'
          Title.Caption = 'iva'
          Title.Color = clYellow
          Width = 33
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
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dettaglio'
          Title.Color = clYellow
          Width = 86
          Visible = True
        end>
    end
    object v_note_righe: trzdbmemo_go
      Left = 0
      Top = 146
      Width = 930
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
    Top = 490
    Width = 926
    Height = 191
    ExplicitTop = 490
    ExplicitWidth = 926
    ExplicitHeight = 191
    inherited tab_control_righe: TRzPageControl
      Width = 926
      Height = 191
      ExplicitWidth = 926
      ExplicitHeight = 191
      FixedDimension = 1
      inherited tab_pagina_righe: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 5
        ExplicitWidth = 924
        ExplicitHeight = 185
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
        object v_l_quantita: TRzLabel
          Left = 130
          Top = 70
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
          Left = 218
          Top = 70
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
          Left = 316
          Top = 70
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
          Left = 675
          Top = 70
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
          Left = 815
          Top = 70
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
        object v_l_colli: TRzLabel
          Left = 5
          Top = 70
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
          Top = 70
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
        object Label28: TRzLabel
          Left = 5
          Top = 142
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
        object Label1: TRzLabel
          Left = 80
          Top = 142
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
        object Label72: TRzLabel
          Left = 185
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
        object Label76: TRzLabel
          Left = 855
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
          Left = 677
          Top = 155
          Width = 23
          Height = 22
          Hint = 'verifica situazione magazzino e visualizza margine'
          ImageIndex = 40
          Images = ARC.immagine_16
          OnClick = v_esistenzaClick
        end
        object Label24: TRzLabel
          Left = 815
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
        object Label88: TRzLabel
          Left = 81
          Top = 70
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
        object Label89: TRzLabel
          Left = 613
          Top = 70
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
        object v_artp: TRzRapidFireButton
          Left = 172
          Top = 13
          Width = 12
          Height = 21
          Hint = 'ricerca articoli potenziali'
          Enabled = False
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080000000000000C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            80808000FFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080808000FFFF000000000000C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0808080FFFFFF00FFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C3C3C3C3C3C3808080FFFFFF00FFFF00
            0000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            000000000000000000000000FFFFFF00FFFF000000000000C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080FFFFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0808080FFFFFF00FFFF000000000000475D5DC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080FFFFFF00FFFF00
            0000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0808080FFFFFFFFFFFF000000000000C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080808000
            FFFF00FFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0808080FFFFFF00FFFF00FFFF000000000000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
            8080FFFFFF00FFFF00FFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C3C3C3C0C0C0C0C0C0C0C0C0C0C0C0C3C3C3475D5D475D5D808080808080C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
          OnClick = v_artpClick
        end
        object v_l_quantita_residua: TRzLabel
          Left = 165
          Top = 142
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
        object RzLabel16: TRzLabel
          Left = 5
          Top = 105
          Width = 75
          Height = 13
          Caption = 'codice deposito'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel17: TRzLabel
          Left = 315
          Top = 105
          Width = 49
          Height = 13
          Caption = 'codice iva'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel18: TRzLabel
          Left = 515
          Top = 105
          Width = 97
          Height = 13
          Caption = 'contropartita vendite'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel24: TRzLabel
          Left = 185
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
          Left = 515
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
          Width = 166
          Height = 21
          Hint = 
            '[F9=cod.cli.][Ctrl+F8=equivalente][Ctrl+F11=ult.prz.cli][Ctrl+F9' +
            '=ult.prz.acq][Shift+F9=c/lavoro][Shift+F4=art.contr][Alt+F9=RMA]' +
            '[Alt+F8=non conformit'#224'][Ctrl+F7=articoli potenziali][Ctrl+F2=art' +
            'icoli dell'#39'intestatario documento]'
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
          Left = 130
          Top = 83
          Width = 86
          Height = 21
          Hint = 
            'quantit'#224' [Shift+F1=formula libera] [Shift+F2=lavorazione vetreri' +
            'e]'
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
          TabOrder = 8
          OnEnter = v_quantitaenter
          OnExit = v_quantitaExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
        object v_prezzo: trzdbnumericedit_go
          Left = 218
          Top = 83
          Width = 96
          Height = 21
          Hint = 
            '[F11=iva/no iva] [Shift+F11=prezzo netto] [Ctrl+F8=ult.acq.] [Ct' +
            'rl+F9=list.acq.] [Ctrl+F10=list.vend.] [Ctrl+F11=ult.vend.] [Ctr' +
            'l+F7=addebito %] '
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
          TabOrder = 9
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
          Left = 316
          Top = 83
          Width = 49
          Height = 21
          Hint = 
            'codice sconto previsto nella gestione listini [F4 F5 F6] [Ctrl+F' +
            '5=imputazione sconti percentuali]'
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
          TabOrder = 10
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
          Left = 675
          Top = 83
          Width = 136
          Height = 21
          Hint = 
            'normale, omaggio (addebita I.V.A. al cliente), sconto merce (gra' +
            'tuito), omaggio no rivalsa (iva a carico ditta)'
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
          TabOrder = 13
          OnChange = v_tipo_movimentoChange
          OnEnter = v_tipo_movimentoEnter
          OnExit = v_tipo_movimentoExit
          Items.Strings = (
            'normale'
            'omaggio'
            'sconto merce'
            'omaggio no rivalsa')
        end
        object v_importo: trzdbnumericedit_go
          Left = 815
          Top = 83
          Width = 96
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
          TabOrder = 14
          OnChange = v_importoChange
          OnEnter = v_importoEnter
          OnExit = v_importoExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object v_numero_colli_riga: trzdbnumericedit_go
          Left = 5
          Top = 83
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
          Top = 83
          Width = 36
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
        object v_saldo_acconto: trzdbcombobox_go
          Left = 5
          Top = 155
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
          TabOrder = 18
          OnEnter = v_saldo_accontoEnter
          OnExit = v_saldo_accontoExit
          Items.Strings = (
            'acconto'
            'saldo')
        end
        object v_data_consegna_righe: trzdbdatetimeedit_go
          Left = 80
          Top = 155
          Width = 81
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
          TabOrder = 19
          OnExit = v_data_consegna_righeExit
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 45987.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_descrizione1_riga: trzdbedit_go
          Left = 185
          Top = 13
          Width = 326
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
          OnEnter = v_descrizione1_rigaEnter
          OnExit = v_descrizione1_rigaExit
        end
        object v_descrizione2_riga: trzdbedit_go
          Left = 515
          Top = 13
          Width = 296
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
          OnExit = v_descrizione2_rigaExit
        end
        object v_tsm_codice_art: trzdbedit_go
          Left = 463
          Top = 83
          Width = 50
          Height = 21
          Hint = 'codice sconto previsto nella gestione promozioni [F4 F5 F6]'
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
          TabOrder = 11
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
        object RzDBEditDescrizione_go6: trzdbeditdescrizione_go
          Left = 855
          Top = 13
          Width = 56
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_ds
          DataField = 'TUB_CODICE'
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
        object RzDBEditDescrizione_go19: trzdbeditdescrizione_go
          Left = 367
          Top = 83
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
          TabOrder = 23
        end
        object RzDBEditDescrizione_go20: trzdbeditdescrizione_go
          Left = 515
          Top = 83
          Width = 96
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
          TabOrder = 24
        end
        object v_no_fattura: TRzDBCheckBox
          Left = 725
          Top = 141
          Width = 64
          Height = 15
          Hint = 
            'spunta per indicare che l'#39'articolo non deve comparire in fattura' +
            ' (deve essere inserito senza prezzo)'
          DataField = 'NO_FATTURA'
          DataSource = tabella_righe_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'no fattura'
          TabOrder = 20
          TabStop = False
        end
        object RzDBEditDescrizione_go5: trzdbeditdescrizione_go
          Left = 815
          Top = 13
          Width = 36
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_ds
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
          TabOrder = 25
        end
        object v_importo_sconto_righe: trzdbnumericedit_go
          Left = 613
          Top = 83
          Width = 58
          Height = 21
          Hint = 
            'importo sconto in valore assoluto [Alt+Gi'#249' per aprire la calcola' +
            'trice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'IMPORTO_SCONTO'
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
          OnChange = v_importo_sconto_righeChange
          OnEnter = v_importo_sconto_righeEnter
          OnExit = v_importo_sconto_righeExit
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object v_tum_codice: trzdbedit_go
          Left = 81
          Top = 83
          Width = 46
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
          lookcollpopupmenu = ARC.pop_arc_art
          lookcollprogram = 'GESTUM'
          lookcolltable = 'TUM'
          lookcollvisname = 'TUM'
        end
        object v_totale_progressivo: TRzDBCheckBox
          Left = 815
          Top = 141
          Width = 62
          Height = 15
          Hint = 
            'spunta per indicare che in stampa del documento deve essere effe' +
            'ttuata una totalizzazione progressiva'
          DataField = 'totale_progressivo'
          DataSource = tabella_righe_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'subtotale'
          TabOrder = 21
          TabStop = False
        end
        object box_esistenza_disponibilita: TGroupBox
          Left = 440
          Top = 142
          Width = 236
          Height = 41
          Caption = 'esistenza deposito totale e principale'
          Enabled = False
          TabOrder = 26
          object v_esistenza_deposito: trzdbnumericedit_go
            Left = 2
            Top = 13
            Width = 76
            Height = 21
            Hint = '[Alt+Gi'#249'=apre calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = esistenza_deposito_ds
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
            OnChange = v_esistenza_depositoChange
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.0000;-,0.0000;0.0000'
            decimalplaces = 4
          end
          object v_esistenza_totale: trzdbnumericedit_go
            Left = 79
            Top = 13
            Width = 76
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
            Left = 156
            Top = 13
            Width = 76
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
        object GroupBox4: TGroupBox
          Left = 255
          Top = 142
          Width = 181
          Height = 41
          Caption = 'dimensioni'
          Enabled = False
          TabOrder = 27
          object RxDBCalcEdit1: trzdbnumericedit_go
            Left = 4
            Top = 13
            Width = 56
            Height = 21
            Hint = 'prima dimensione'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_righe_ds
            DataField = 'DIMENSIONE1'
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
            OnChange = v_esistenza_depositoChange
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.00;,0.00;#'
          end
          object RxDBCalcEdit2: trzdbnumericedit_go
            Left = 62
            Top = 13
            Width = 56
            Height = 21
            Hint = 'seconda dimensione'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_righe_ds
            DataField = 'DIMENSIONE2'
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
            OnChange = v_esistenza_totaleChange
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.00;,0.00;#'
          end
          object RxDBCalcEdit3: trzdbnumericedit_go
            Left = 120
            Top = 13
            Width = 56
            Height = 21
            Hint = 'terza dimensione'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_righe_ds
            DataField = 'DIMENSIONE3'
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
            OnChange = v_esistenza_totaleChange
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = ',0.00;,0.00;#'
          end
        end
        object v_art_codice_barcode: trzedit_go
          Left = 90
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
          TabOrder = 28
          Visible = False
        end
        object v_quantita_residua: trzdbnumericedit_go
          Left = 165
          Top = 155
          Width = 86
          Height = 21
          Hint = '[Alt+Gi'#249'=apre calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tabella_righe_ds
          DataField = 'quantita_residua'
          ReadOnly = True
          Alignment = taLeftJustify
          Color = clAqua
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clAqua
          ReadOnlyColorOnFocus = True
          TabOrder = 29
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
        object v_tma_codice_righe: trzdbedit_go
          Left = 5
          Top = 118
          Width = 50
          Height = 21
          Hint = 'codice deposito [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
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
          TabOrder = 15
          OnExit = v_tma_codice_righeExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMA'
          lookcolltable = 'TMA'
          lookcollvisname = 'TMA'
        end
        object trzdbeditdescrizione_go4: trzdbeditdescrizione_go
          Left = 60
          Top = 118
          Width = 251
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tma_righe_ds
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
          TabOrder = 30
        end
        object v_tiv_codice_righe: trzdbedit_go
          Left = 315
          Top = 118
          Width = 50
          Height = 21
          Hint = 'codice iva dell'#39'articolo [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tabella_righe_ds
          DataField = 'tiv_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 16
          OnExit = v_tiv_codice_righeExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTIV'
          lookcolltable = 'TIV'
          lookcollvisname = 'TIV'
        end
        object trzdbeditdescrizione_go5: trzdbeditdescrizione_go
          Left = 370
          Top = 118
          Width = 141
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tiv_righe_ds
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
          TabOrder = 31
        end
        object v_gen_codice_righe: trzdbedit_go
          Left = 515
          Top = 118
          Width = 96
          Height = 21
          Hint = 'contropartita vendite [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tabella_righe_ds
          DataField = 'gen_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 17
          OnExit = v_gen_codice_righeExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_gen
          lookcollprogram = 'GESGEN'
          lookcolltable = 'GEN'
          lookcollvisname = 'GEN'
        end
        object trzdbeditdescrizione_go6: trzdbeditdescrizione_go
          Left = 615
          Top = 118
          Width = 296
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = gen_righe_ds
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
          TabOrder = 32
        end
        object v_no_impegnato: TRzDBCheckBox
          Left = 725
          Top = 160
          Width = 83
          Height = 15
          Hint = 'spunta per non gestire l'#39'impegnato per la riga del documento'
          DataField = 'no_impegnato'
          DataSource = tabella_righe_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'no impegnato'
          TabOrder = 33
          TabStop = False
        end
        object v_no_magazzino: TRzDBCheckBox
          Left = 815
          Top = 160
          Width = 84
          Height = 15
          Hint = 'spunta per non gestire i movimenti di magazzino'
          DataField = 'no_magazzino'
          DataSource = tabella_righe_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'no magazzino'
          TabOrder = 34
          TabStop = False
        end
        object v_var_codice: trzdbedit_go
          Left = 185
          Top = 48
          Width = 51
          Height = 21
          Hint = 'codice variante'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_ds
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
          Left = 240
          Top = 48
          Width = 271
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_ds
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
          TabOrder = 35
        end
        object v_dettaglio: trzdbedit_go
          Left = 515
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
        object v_dettaglio_descrizione: trzdbeditdescrizione_go
          Left = 610
          Top = 48
          Width = 301
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
          TabOrder = 36
        end
      end
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    Left = 932
    ExplicitLeft = 932
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      Top = 636
      UseColoredTabs = True
      TabHeight = 14
      ExplicitTop = 636
      FixedDimension = 14
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
      object tab_pannello_bottoni_nuovi_storni: TRzTabSheet
        Color = 15987699
        Caption = 'X'
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
    inherited pannello_destra_pannello: TRzPanel
      inherited pannello_destra_PanelGroup: TCategoryPanelGroup
        Top = 120
        Height = 484
        ExplicitTop = 120
        ExplicitHeight = 484
        object CategoryPanel4: TCategoryPanel [0]
          Top = 385
          Height = 30
          Caption = 'acconti'
          Collapsed = True
          ParentColor = True
          TabOrder = 0
          ExpandedHeight = 91
          object v_acconto: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'generazione riga di acconto su ordine'
            Align = alTop
            Caption = 'acconto'
            ImageIndex = 171
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_accontoClick
            ExplicitTop = 5
            ExplicitWidth = 122
          end
          object v_situazione_acconto: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'situazione acconto versato su ordine'
            Align = alTop
            Caption = 'situazione acconto'
            ImageIndex = 171
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_situazione_accontoClick
            ExplicitTop = 25
            ExplicitWidth = 122
          end
          object v_assacccli: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'situazione acconto versato su ordine'
            Align = alTop
            Caption = 'assegnazione acconti clienti'
            ImageIndex = 171
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_assacccliClick
            ExplicitLeft = 5
            ExplicitTop = 50
          end
        end
        object CategoryPanel5: TCategoryPanel [1]
          Top = 355
          Height = 30
          Caption = 'storni - settaggi'
          Collapsed = True
          ParentColor = True
          TabOrder = 1
          ExpandedHeight = 133
          object v_storno_evasione: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'storna l'#39'evasione del documento'
            Align = alTop
            Caption = 'storno evasione'
            ImageIndex = 170
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_storno_evasioneClick
            ExplicitTop = 5
            ExplicitWidth = 166
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
            ImageIndex = 170
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_storno_consolidamentoClick
            ExplicitTop = 25
            ExplicitWidth = 166
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
            ImageIndex = 170
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_storno_differiteClick
            ExplicitTop = 45
            ExplicitWidth = 166
          end
          object v_setta_situazione_fe: TRzRapidFireButton
            Left = 0
            Top = 60
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'setta la situazione della fattura elettronica come "inviato"'
            Align = alTop
            Caption = 'setta situazione f.e.="inviato"'
            ImageIndex = 170
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_setta_situazione_feClick
            ExplicitTop = 65
            ExplicitWidth = 166
          end
          object v_storno_sdi: TRzRapidFireButton
            Left = 0
            Top = 80
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'storna l'#39'invio del documento a SDI'
            Align = alTop
            Caption = 'storno invio SDI'
            ImageIndex = 170
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_storno_sdiClick
            ExplicitWidth = 166
          end
        end
        object CategoryPanel1: TCategoryPanel [2]
          Top = 325
          Height = 30
          Caption = 'collegamenti'
          Collapsed = True
          ParentColor = True
          TabOrder = 2
          ExpandedHeight = 310
          object v_analitica: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione contabilit'#224' analitica (centri di costo)'
            Align = alTop
            Caption = 'analitica [F1]'
            ImageIndex = 172
            Images = ARC.immagine_16
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_analiticaClick
            ExplicitLeft = -17
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
            ImageIndex = 172
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_commesseClick
            ExplicitTop = 25
            ExplicitWidth = 166
          end
          object v_conto_terzi: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione lavorazioni per conto terzi'
            Align = alTop
            Caption = 'conto terzi [F3]'
            ImageIndex = 172
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_conto_terziClick
            ExplicitTop = 65
          end
          object v_lotti: TRzRapidFireButton
            Left = 0
            Top = 60
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione lotti e matricole'
            Align = alTop
            Caption = 'lotti/matricole [F4]'
            ImageIndex = 172
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_lottiClick
            ExplicitTop = 65
            ExplicitWidth = 166
          end
          object v_ubicazioni: TRzRapidFireButton
            Left = 0
            Top = 140
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione multiubicazione'
            Align = alTop
            Caption = 'ubicazioni'
            ImageIndex = 172
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_ubicazioniClick
            ExplicitLeft = 5
            ExplicitTop = 25
          end
          object v_configurazione: TRzRapidFireButton
            Left = 0
            Top = 120
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'definizione componenti personalizzati'
            Align = alTop
            Caption = 'configurazione vendita [F7]'
            ImageIndex = 172
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_configurazioneClick
            ExplicitTop = 132
            ExplicitWidth = 166
          end
          object v_crea_ast: TRzRapidFireButton
            Left = 0
            Top = 180
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'creazione configurazione assistenza tecnica'
            Align = alTop
            Caption = 'crea config. AST articolo'
            ImageIndex = 172
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_crea_astClick
            ExplicitTop = 515
            ExplicitWidth = 116
          end
          object v_provvigioni_multilivello: TRzRapidFireButton
            Left = 0
            Top = 200
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'provvigioni multilivello'
            Align = alTop
            Caption = 'provvigioni multilivello'
            ImageIndex = 172
            Images = ARC.immagine_16
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_provvigioni_multilivelloClick
            ExplicitTop = 85
          end
          object v_modifica_provvigioni: TRzRapidFireButton
            Left = 0
            Top = 220
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'modifica gloable provvigioni'
            Align = alTop
            Caption = 'modifica provvigioni'
            ImageIndex = 172
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_modifica_provvigioniClick
            ExplicitTop = 240
          end
          object v_accessori: TRzRapidFireButton
            Left = 0
            Top = 80
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'selezione accessori dell'#39'articolo'
            Align = alTop
            Caption = 'accessori [F5]'
            ImageIndex = 172
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_accessoriClick
            ExplicitTop = 100
          end
          object v_distinta_base: TRzRapidFireButton
            Left = 0
            Top = 100
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'selezione componenti distinta base dell'#39'articolo'
            Align = alTop
            Caption = 'distinta base [F6]'
            ImageIndex = 172
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_distinta_baseClick
            ExplicitTop = 120
          end
          object v_creast: TRzRapidFireButton
            Left = 0
            Top = 160
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 
              'creazione della configurazione di assistenza tecnica con il prog' +
              'ramma CREAST'
            Align = alTop
            Caption = 'crea config. AST globale'
            ImageIndex = 172
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_creastClick
            ExplicitTop = 190
            ExplicitWidth = 166
          end
          object v_modula: TRzRapidFireButton
            Left = 0
            Top = 260
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'collegamento con Modula'
            Align = alTop
            Caption = 'collegamento Modula'
            ImageIndex = 172
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_modulaClick
            ExplicitLeft = -5
            ExplicitTop = 250
            ExplicitWidth = 166
          end
          object v_punti_negozio: TRzRapidFireButton
            Left = 0
            Top = 240
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'assegna i punti negozio'
            Align = alTop
            Caption = 'punti negozio'
            ImageIndex = 172
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_punti_negozioClick
            ExplicitTop = 255
            ExplicitWidth = 166
          end
        end
        object CategoryPanel3: TCategoryPanel [3]
          Top = 295
          Height = 30
          Caption = 'righe'
          Collapsed = True
          ParentColor = True
          TabOrder = 3
          ExpandedHeight = 193
          object v_tag_fe_righe: TRzRapidFireButton
            Left = 0
            Top = 60
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'tag personalizzati riga fatture elettroniche'
            Align = alTop
            Caption = 'TAG FE riga'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_tag_fe_righeClick
            ExplicitWidth = 166
          end
          object v_etiart: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'stampa etichette'
            Align = alTop
            Caption = 'stampa etichette'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_etiartClick
            ExplicitWidth = 166
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
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_non_conformitaClick
            ExplicitWidth = 166
          end
          object v_annulla_riga_documento: TRzRapidFireButton
            Left = 0
            Top = 80
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'annulla riga documento'
            Align = alTop
            Caption = 'annulla'
            ImageIndex = 169
            Images = ARC.immagine_16
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_annulla_riga_documentoClick
            ExplicitTop = 431
            ExplicitWidth = 116
          end
          object v_visartven: TRzRapidFireButton
            Left = 0
            Top = 100
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'analisi articoli'
            Align = alTop
            Caption = 'analisi articoli'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_visartvenClick
            ExplicitLeft = 5
            ExplicitTop = 125
            ExplicitWidth = 166
          end
          object v_formula: TRzRapidFireButton
            Left = 0
            Top = 140
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'assegna valori variabili per formula in distinta base'
            Align = alTop
            Caption = 'assegna variabili [F12]'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_formulaClick
            ExplicitTop = 105
            ExplicitWidth = 166
          end
          object v_evadi_riga_documento: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'considera evasa a saldo la riga del documento'
            Align = alTop
            Caption = 'evadi riga a saldo'
            ImageIndex = 39
            Images = ARC.immagine_16
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_evadi_riga_documentoClick
            ExplicitLeft = 5
            ExplicitTop = -5
            ExplicitWidth = 166
          end
          object v_dettaglio_taglie: TRzRapidFireButton
            Left = 0
            Top = 120
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
            ExplicitLeft = 10
            ExplicitTop = 110
            ExplicitWidth = 166
          end
        end
        object CategoryPanel2: TCategoryPanel [4]
          Top = 265
          Height = 30
          Caption = 'testata'
          Collapsed = True
          ParentColor = True
          TabOrder = 4
          ExpandedHeight = 329
          object RzRapidFireButton1: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'visualizza sitauzione sdi'
            Align = alTop
            Caption = 'visualizza situazione SDI'
            ImageIndex = 40
            Images = ARC.immagine_16
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = RzRapidFireButton1Click
            ExplicitTop = 5
            ExplicitWidth = 166
          end
          object v_cmr: TRzRapidFireButton
            Left = 0
            Top = 100
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'lettera di vettura internazionale'
            Align = alTop
            Caption = 'lettera di vettura CMR'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_cmrClick
            ExplicitTop = 25
            ExplicitWidth = 166
          end
          object v_annulla_documento: TRzRapidFireButton
            Left = 0
            Top = 120
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'annulla tutte le righe inevase'
            Align = alTop
            Caption = 'annulla documento'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_annulla_documentoClick
            ExplicitTop = 45
            ExplicitWidth = 166
          end
          object v_chiudi_documento: TRzRapidFireButton
            Left = 0
            Top = 140
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'chiudi documento assegnandolo come consolidato'
            Align = alTop
            Caption = 'chiudi documento'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_chiudi_documentoClick
            ExplicitTop = 100
            ExplicitWidth = 166
          end
          object v_log_revisione: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'analisi delle versioni precedenti del documento'
            Align = alTop
            Caption = 'log revisioni'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_log_revisioneClick
            ExplicitTop = 6
            ExplicitWidth = 166
          end
          object v_tag_fe_testata: TRzRapidFireButton
            Left = 0
            Top = 260
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'tag personalizzati testata fatture elettroniche'
            Align = alTop
            Caption = 'TAG FE testata'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_tag_fe_testataClick
            ExplicitWidth = 166
          end
          object v_sda: TRzRapidFireButton
            Left = 0
            Top = 180
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'generazione documento multicollo per SDA'
            Align = alTop
            Caption = 'corriere'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_sdaClick
            ExplicitLeft = 2
            ExplicitTop = 62
            ExplicitWidth = 181
          end
          object v_packing_list: TRzRapidFireButton
            Left = 0
            Top = 200
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione packing list'
            Align = alTop
            Caption = 'packing list'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_packing_listClick
            ExplicitLeft = 2
            ExplicitTop = 42
            ExplicitWidth = 181
          end
          object v_scheda_trasporto: TRzRapidFireButton
            Left = 0
            Top = 160
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'scheda trasporto per vettore'
            Align = alTop
            Caption = 'scheda trasporto'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_scheda_trasportoClick
            ExplicitLeft = 2
            ExplicitTop = 2
            ExplicitWidth = 181
          end
          object v_fatture_collegate: TRzRapidFireButton
            Left = 0
            Top = 240
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'fatture collegate alle nota di credito'
            Align = alTop
            Caption = 'fatture collegate'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_fatture_collegateClick
            ExplicitWidth = 166
          end
          object v_documenti_collegati: TRzRapidFireButton
            Left = 0
            Top = 220
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'documenti collegati manualmente'
            Align = alTop
            Caption = 'documenti collegati'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_documenti_collegatiClick
            ExplicitWidth = 166
          end
          object v_preventivo_cliente: TRzRapidFireButton
            Left = 0
            Top = 80
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'assegna il preventivo al cliente'
            Align = alTop
            Caption = 'assegna preventivo a cliente'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_preventivo_clienteClick
            ExplicitTop = 75
            ExplicitWidth = 166
          end
          object v_reso_scontrino: TRzRapidFireButton
            Left = 0
            Top = 280
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'assegna il riferimento per i resi da scontrino'
            Align = alTop
            Caption = 'riferimento reso scontrino'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_reso_scontrinoClick
            ExplicitTop = 298
            ExplicitWidth = 166
          end
          object v_revisione_documento: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'creare revisione per il documento'
            Align = alTop
            Caption = 'revisione'
            ImageIndex = 40
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_revisione_documentoClick
            ExplicitLeft = 5
            ExplicitTop = 40
            ExplicitWidth = 166
          end
          object v_assappcl: TRzRapidFireButton
            Left = 0
            Top = 60
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione approntato'
            Align = alTop
            Caption = 'assegna approntato'
            ImageIndex = 169
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_assappclClick
            ExplicitLeft = 10
            ExplicitTop = 75
            ExplicitWidth = 166
          end
        end
        object CategoryPanel6: TCategoryPanel [5]
          Top = 235
          Height = 30
          Caption = 'acquisti - produzione'
          Collapsed = True
          ParentColor = True
          TabOrder = 5
          ExpandedHeight = 156
          object tool_richiesta_acquisto: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'richiesta d'#39'aquisto riga documento'
            Align = alTop
            Caption = 'richiesta d'#39'acquisto riga'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = tool_richiesta_acquistoClick
            ExplicitTop = 5
            ExplicitWidth = 166
          end
          object tool_orda: TRzRapidFireButton
            Left = 0
            Top = 40
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'generazione ordine a fornitore'
            Align = alTop
            Caption = 'crea ordine fornitore'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = tool_ordaClick
            ExplicitTop = 25
            ExplicitWidth = 166
          end
          object tool_ordine_produzione_globale: TRzRapidFireButton
            Left = 0
            Top = 100
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 
              'emetti ordini di produzione per tutte le righe e per tutti i liv' +
              'elli'
            Align = alTop
            Caption = 'crea ordine produz. globale'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = tool_ordine_produzione_globaleClick
            ExplicitTop = 70
            ExplicitWidth = 166
          end
          object tool_ordine_produzione: TRzRapidFireButton
            Left = 0
            Top = 80
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 
              'emetti un ordine di produzione (utilizza configurazione personal' +
              'izzata se presente)'
            Align = alTop
            Caption = 'crea ordine produzione'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = tool_ordine_produzioneClick
            ExplicitTop = 90
            ExplicitWidth = 166
          end
          object v_documenti_acquisto: TRzRapidFireButton
            Left = 0
            Top = 60
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'acquisizione articoli da documenti di acquisto'
            Align = alTop
            Caption = 'documento acquisto'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_documenti_acquistoClick
            ExplicitTop = 35
            ExplicitWidth = 166
          end
          object v_annulla_rda: TRzRapidFireButton
            Left = 0
            Top = 20
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'annulla richiesta d'#39'acquisto per il materiale'
            Align = alTop
            Caption = 'annulla richiesta d'#39'acquisto'
            ImageIndex = 42
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_annulla_rdaClick
            ExplicitWidth = 166
          end
        end
        inherited pannello_destra_01: TCategoryPanel
          Height = 189
          TabOrder = 6
          ExplicitHeight = 189
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
            ExplicitLeft = -5
            ExplicitTop = -4
          end
          object v_evasione_documento: TRzRapidFireButton
            Left = 0
            Top = 100
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'evadi il documento'
            Align = alTop
            Caption = 'evadi'
            ImageIndex = 39
            Images = ARC.immagine_16
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_evasione_documentoClick
            ExplicitLeft = 5
            ExplicitTop = 135
          end
          object v_consolida: TRzRapidFireButton
            Left = 0
            Top = 120
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
            ExplicitLeft = 5
            ExplicitTop = 92
          end
          object v_lettore: TRzRapidFireButton
            Left = 0
            Top = 140
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'acquisizione dati tramite lettore barcode'
            Align = alTop
            Caption = 'lettore [F8]'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_lettoreClick
            ExplicitLeft = 5
            ExplicitTop = 112
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
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_pagperClick
            ExplicitTop = 20
            ExplicitWidth = 166
          end
          object v_righe_evadere: TRzRapidFireButton
            Left = 0
            Top = 60
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'visualizza / nascondi solo righe da evadere'
            Align = alTop
            Caption = 'mostra solo righe da evadere'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_righe_evadereClick
            ExplicitLeft = 10
            ExplicitTop = 100
          end
          object v_righe_valide: TRzRapidFireButton
            Left = 0
            Top = 80
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'visualizza / nascondi le righe annullate'
            Align = alTop
            Caption = 'nascondi righe annullate'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_righe_valideClick
            ExplicitTop = 120
          end
          object v_gestione_collegato: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 'gestione documento di origine'
            Align = alTop
            Caption = 'documento origine'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_gestione_collegatoClick
            ExplicitLeft = 10
          end
        end
        inherited pannello_funzioni: TCategoryPanel
          TabOrder = 7
          inherited v_visfunz: TRzRapidFireButton
            ExplicitWidth = 166
          end
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
            Font.Color = clBlack
            ParentFont = False
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
            ExplicitLeft = -5
            ExplicitTop = 536
            ExplicitWidth = 116
            ExplicitHeight = 21
          end
        end
      end
      object RzPanel11: TRzPanel
        Left = 0
        Top = 52
        Width = 189
        Height = 34
        Align = alTop
        BorderOuter = fsNone
        ParentColor = True
        TabOrder = 3
        object RzPanel12: TRzPanel
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
        object RzPanel13: TRzPanel
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
      object RzPanel14: TRzPanel
        Left = 0
        Top = 86
        Width = 189
        Height = 34
        Align = alTop
        BorderOuter = fsNone
        ParentColor = True
        TabOrder = 4
        object RzPanel15: TRzPanel
          Left = 0
          Top = 0
          Width = 95
          Height = 34
          Align = alLeft
          BorderOuter = fsNone
          ParentColor = True
          TabOrder = 0
          object RzLabel19: TRzLabel
            Left = 0
            Top = 0
            Width = 95
            Height = 13
            Align = alTop
            Caption = ' situazione sdi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ExplicitWidth = 66
          end
          object v_situazione_sdi: trzdbedit_go
            Left = 0
            Top = 13
            Width = 95
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tabella_ds
            DataField = 'situazione_sdi'
            ReadOnly = True
            Align = alTop
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            FocusColor = clLime
            ParentFont = False
            ReadOnlyColor = clYellow
            ReadOnlyColorOnFocus = True
            TabOrder = 0
          end
        end
        object RzPanel16: TRzPanel
          Left = 94
          Top = 0
          Width = 95
          Height = 34
          Align = alRight
          BorderOuter = fsNone
          ParentColor = True
          TabOrder = 1
          object RzLabel21: TRzLabel
            Left = 0
            Top = 0
            Width = 95
            Height = 13
            Align = alTop
            Caption = ' codice esito sdi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ExplicitWidth = 76
          end
          object v_codice_esito_sdi: trzdbedit_go
            Left = 0
            Top = 13
            Width = 95
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tabella_ds
            DataField = 'codice_esito_sdi'
            ReadOnly = True
            Align = alTop
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            FocusColor = clLime
            ParentFont = False
            ReadOnlyColor = clYellow
            ReadOnlyColorOnFocus = True
            TabOrder = 0
          end
        end
      end
    end
    inherited RzPanel2_bottoni_nuovi: TRzPanel
      Top = 637
      ExplicitTop = 637
    end
  end
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select pvt.*'
      'from pvt'
      'where progressivo = :progressivo')
  end
  inherited tabella_iva: TMyQuery_go
    SQL.Strings = (
      'select *'
      'from pvi'
      
        'where progressivo = :progressivo and tiv_codice = :tiv_codice an' +
        'd tipo_movimento = :tipo_movimento'
      '')
    MasterSource = tabella_ds
    MasterFields = 'progressivo'
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tiv_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_movimento'
        Value = nil
      end>
  end
  inherited tabella_righe: TMyQuery_go
    SQL.Strings = (
      
        'select pvr.*, pvr.descrizione1 art_descrizione, '#39#39' codice_altern' +
        'ativo, '#39#39' var_codice,'
      'case'
      
        'when pvr.situazione = '#39'evaso'#39' or pvr.situazione = '#39'annullato'#39' or' +
        ' pvr.situazione = '#39'consolidato'#39' then 0.0'
      'else pvr.quantita - pvr.quantita_evasa'
      'end quantita_residua'
      'from pvr'
      'where pvr.progressivo = :progressivo'
      'order by pvr.sequenza'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    BeforeCancel = tabella_righeBeforeCancel
  end
  inherited query_righe: TMyQuery_go
    SQL.Strings = ()
    ParamData = <>
  end
  inherited query_righe_ds: TMyDataSource
    Left = 395
  end
  object esistenza_deposito: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select esistenza, approntato, impegnato, scorta_minima,'
      'case'
      
        'when (select calcolo_disponibilita_vendite from tdo where codice' +
        ' = :tdo_codice) = '#39'esistenza'#39' then esistenza'
      
        'when (select calcolo_disponibilita_vendite from tdo where codice' +
        ' = :tdo_codice) = '#39'esistenza - impegnato'#39' then esistenza - impeg' +
        'nato'
      
        'when (select calcolo_disponibilita_vendite from tdo where codice' +
        ' = :tdo_codice) = '#39'esistenza + ordinato'#39' then esistenza + ordina' +
        'to'
      
        'when (select calcolo_disponibilita_vendite from tdo where codice' +
        ' = :tdo_codice) = '#39'esistenza + ordinato - impegnato'#39' then esiste' +
        'nza + ordinato - impegnato'
      'else esistenza + ordinato - impegnato'
      'end disponibilita'
      'from mag'
      'where art_codice = :art_codice and tma_codice = :tma_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 625
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
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
    Left = 640
    Top = 65526
  end
  object esistenza_totale: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select art_codice, sum(mag.esistenza) esistenza, sum(approntato)' +
        ' approntato,'
      'case'
      
        'when (select calcolo_disponibilita_vendite from tdo where codice' +
        ' = :tdo_codice) = '#39'esistenza'#39' then sum(esistenza)'
      
        'when (select calcolo_disponibilita_vendite from tdo where codice' +
        ' = :tdo_codice) = '#39'esistenza - impegnato'#39' then sum(esistenza - i' +
        'mpegnato)'
      
        'when (select calcolo_disponibilita_vendite from tdo where codice' +
        ' = :tdo_codice) = '#39'esistenza + ordinato'#39' then sum(esistenza + or' +
        'dinato)'
      
        'when (select calcolo_disponibilita_vendite from tdo where codice' +
        ' = :tdo_codice) = '#39'esistenza + ordinato - impegnato'#39' then sum(es' +
        'istenza + ordinato - impegnato)'
      'else sum(esistenza + ordinato - impegnato)'
      'end disponibilita'
      'from mag'
      'left outer join tma on mag.tma_codice = tma.codice'
      'where art_codice = :art_codice and tma.proprieta = '#39'si'#39
      'group by art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 660
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
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
    Left = 680
    Top = 65526
  end
  object cmm: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 595
    Top = 25
  end
  object tdo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select tdo.*, tco.commesse tco_commesse, tco.analitica tco_anali' +
        'tica,'
      'd.commesse d_commesse, d.analitica d_analitica, d.lotti d_lotti,'
      'c.commesse c_commesse, c.analitica c_analitica, '
      'tmo.lotti tmo_lotti, tmo.commesse tmo_commesse'
      'from tdo'
      'left join tco on tco.codice = tdo.tco_codice'
      'left join tdo d on d.codice = tdo.tdo_codice_differite'
      'left join tco c on c.codice = d.tco_codice'
      'left join tmo on tmo.codice = tdo.tmo_codice'
      'where tdo.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 120
    Top = 25
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
      
        'select cli.*, nom.partita_iva nom_partita_iva, nom.tva_codice no' +
        'm_tva_codice, nom.ritenuta_acconto,'
      
        'nom.tna_codice nom_tna_codice, tna.codice_iso, tna.applicabilita' +
        '_conai,'
      
        'concat(trim(cli.descrizione1), '#39' '#39', trim(cli.descrizione2), '#39' '#39',' +
        ' cli.citta) cli_descrizione,'
      'tse.blocco, tse.colore_priorita, nom.ritenuta_acconto,'
      
        'concat('#39'abi: '#39', cli.codice_abi, '#39' '#39', coalesce(arc.abi.banca, '#39#39')' +
        ' , '#39'\r\n'#39', '
      
        #39'cab: '#39', cli.codice_cab, '#39' '#39', coalesce(arc.abi.sportello, '#39#39'), '#39 +
        '\r\n'#39', '
      
        #39'iban: '#39', cli.iban, '#39'\r\n'#39', '#39'c/c: '#39', cli.conto_corrente) dati_ba' +
        'ncari '
      'from cli'
      'inner join nom on nom.codice = cli.codice'
      'inner join tna on tna.codice = nom.tna_codice'
      'left join tse on tse.codice = cli.tse_codice'
      
        'left join arc.abi on arc.abi.codice_abi = cli.codice_abi and arc' +
        '.abi.codice_cab = cli.codice_cab'
      'where cli.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 20
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
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
    MasterSource = abi_ds
    Left = 495
    Top = 65526
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
  object ltm: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 510
    Top = 65526
  end
  object cfg: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select cfg.*, F_FIDO_FATTURARE(cfg.cfg_codice) importo_fatturare' +
        '_fido'
      'from cfg'
      'where cfg.cfg_tipo = '#39'C'#39' and cfg.cfg_codice = :cfg_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 530
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfg_codice'
        Value = nil
      end>
  end
  object pat: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from pat'
      'inner join tts tts on (tts.codice = pat.tts_codice)'
      
        'where pat.cfg_tipo = '#39'C'#39' and pat.cfg_codice = :cfg_codice and (p' +
        'at.importo_dovuto = pat.importo_pagato)'
      'and'
      'case'
      
        'when (select pnt.movimento_provvisorio from pnt where pnt.progre' +
        'ssivo ='
      
        '(select pas.pnr_progressivo from pas where pas.progressivo = pat' +
        '.progressivo'
      
        'and pas.riga = (select max(riga) from pas p where p.progressivo ' +
        '= pat.progressivo))) = '#39'si'#39' then '#39'si'#39
      'else tts.rischio'
      'end = '#39'si'#39
      'and pat.data_scadenza > :data_scadenza'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 555
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfg_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_scadenza'
        Value = nil
      end>
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select art.*, var.descrizione var_descrizione,'
      
        'coalesce((select id from arv where art_codice = art.codice limit' +
        ' 1), 0) arv_id'
      'from art'
      'left join var on var.codice = art.var_codice'
      'where art.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 485
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object testata_documento_evaso: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 595
    Top = 65526
  end
  object riga_documento_evaso: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 610
    Top = 65526
  end
  object saldo_acconto: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select quantita, quantita_evasa from ovr'
      'where progressivo = :progressivo and riga = :riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 700
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
  object cpv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      
        'case when cpvtdo.gen_codice is null then cpv.gen_codice else cpv' +
        'tdo.gen_codice end gen_codice,'
      
        'case when cpvtdo.gen_codice_omaggi is null then cpv.gen_codice_o' +
        'maggi else cpvtdo.gen_codice end gen_codice_omaggi,'
      
        'case when cpvtdo.gen_codice_sconti is null then cpv.gen_codice_s' +
        'conti else cpvtdo.gen_codice_sconti end gen_codice_sconti'
      'from cpv'
      
        'left join cpvtdo on cpvtdo.id_cpv = cpv.id and cpvtdo.tdo_codice' +
        ' = :tdo_codice'
      'where tcc_codice = :tcc_codice and tca_codice = :tca_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 720
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tcc_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tca_codice'
        Value = nil
      end>
  end
  object duplica_righe: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 735
    Top = 65526
  end
  object frn: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select frn.*, nom.partita_iva nom_partita_iva, nom.tva_codice no' +
        'm_tva_codice, '
      'nom.tna_codice nom_tna_codice, '#39#39' dati_bancari,'
      
        'concat(trim(frn.descrizione1), '#39' '#39', trim(frn.descrizione2), '#39' '#39',' +
        ' frn.citta) cli_descrizione'
      'from frn'
      'inner join nom on nom.codice = frn.codice'
      'where frn.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 35
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object mmt: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 910
    Top = 25
  end
  object mmr: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 920
    Top = 25
  end
  object lcr: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 930
    Top = 25
  end
  object totale_colli: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 785
    Top = 65526
  end
  object totalizza_quantita: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 660
    Top = 25
  end
  object art_preventivi_ordini: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 860
    Top = 25
  end
  object cnt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from cnt'
      'where anno = '#39#39' and tipo = '#39'CONFIGURAZIONE'#39' and sottotipo = '#39#39
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 870
    Top = 65526
  end
  object cnf: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * '
      'from cnf'
      'where configurazione = :configurazione'
      'order by sequenza'
      ''
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 905
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'configurazione'
        Value = nil
      end>
  end
  object opt_configurazione: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from opt'
      'where ovr_progressivo = :progressivo and ovr_riga = :riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 945
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
  object controllo_documenti_evasi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 805
    Top = 25
  end
  object totalizza_margine: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 670
    Top = 25
  end
  object query_referenze_attive: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select art_codice'
      'from ovr'
      'inner join ovt on ovt.progressivo = ovr.progressivo'
      
        'where ovt.cli_codice = :cli_codice and ovr.art_codice = :art_cod' +
        'ice'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 805
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object query_sct: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select sct.*, coalesce(tsm_colli.percentuale_totale, 100) percen' +
        'tuale_totale_colli,  '
      
        'coalesce(tsm_quantita.percentuale_totale, 100) percentuale_total' +
        'e_quantita'
      'from sct'
      
        'left join tsm tsm_colli on tsm_colli.codice = sct.tsm_codice_col' +
        'li'
      
        'left join tsm tsm_quantita on tsm_quantita.codice = sct.tsm_codi' +
        'ce_quantita'
      'where cli_codice = :cli_codice'
      'and data_inizio < :data_inizio and data_fine > :data_fine')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 815
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
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
  object query_totalizza: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 825
    Top = 25
  end
  object query_abilita_rda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select art_codice'
      'from rda'
      
        'where tipo_richiesta = '#39'ordini clienti'#39' and ovr_progressivo = :o' +
        'vr_progressivo and ovr_riga = :ovr_riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 835
    Top = 25
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
  object prv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from prv'
      'where tag_codice = :tag_codice'
      'and tp1_codice = :tp1_codice'
      'and tp2_codice = :tp2_codice'
      'and percentuale = :percentuale'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 770
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
      end
      item
        DataType = ftUnknown
        Name = 'percentuale'
        Value = nil
      end>
  end
  object importo_ordinato: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select ovt.listino_con_iva,'
      'case'
      
        'when ovt.listino_con_iva = '#39'si'#39' then round(sum((ovr.importo - ov' +
        'r.importo_evaso) * cast(ovt.cambio as binary)), 2)'
      
        'when ovt.listino_con_iva = '#39'no'#39' then round(sum((ovr.importo - ov' +
        'r.importo_evaso) * cast(ovt.cambio as binary) * (1 + tiv.percent' +
        'uale / 100)), 2)'
      'end importo'
      'from ovr'
      'inner join ovt on (ovt.progressivo = ovr.progressivo)'
      'inner join tiv on (tiv.codice = ovr.tiv_codice)'
      'where cli_codice = :cli_codice'
      
        'and (ovr.situazione = '#39'inserito'#39' or ovr.situazione = '#39'evaso parz' +
        'iale'#39')'
      'group by ovt.listino_con_iva'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 820
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end>
  end
  object equ: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select art_codice'
      'from equ'
      
        'where art_codice = :art_codice or art_codice_equivalente = :art_' +
        'codice'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 855
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object ors: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select codice_sscc'
      'from ors'
      'where documento_origine = :documento_origine'
      'and doc_progressivo_origine = :doc_progressivo_origine'
      'and doc_riga_origine = :doc_riga_origine'
      ''
      ''
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 925
    Top = 65526
    ParamData = <
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
      end>
  end
  object rda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from rda'
      'where progressivo = :progressivo'
      ''
      ''
      ''
      ''
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 700
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object query_opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select '#39'opt'#39' archivio, art_codice, opt.progressivo, opt.situazio' +
        'ne'
      'from opt'
      
        'where documento_origine = '#39'ordine ven'#39' and doc_progressivo_origi' +
        'ne = :ovr_progressivo_03 and'
      'doc_riga_origine = :riga_03'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 710
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo_03'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'riga_03'
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
    Left = 720
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object spd: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 730
    Top = 25
  end
  object cas: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 740
    Top = 25
  end
  object lct: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from lct'
      'where progressivo = :progressivo'
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 750
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object query_addebito: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(importo) importo'
      'from ovr'
      'where progressivo = :progressivo and riga < :riga'
      ''
      ''
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 760
    Top = 25
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
  object opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from opt'
      'where progressivo = :progressivo'
      ''
      ''
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 625
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object query_rda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 635
    Top = 25
  end
  object dav: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 940
    Top = 25
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
    Left = 870
    Top = 25
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
  object testata: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      ''
      ''
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 755
    Top = 65526
  end
  object righe: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 950
    Top = 25
  end
  object tr0: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from tr0'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 960
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cli_ds: TMyDataSource
    DataSet = cli
    Left = 74
    Top = 25
  end
  object tdo_ds: TMyDataSource
    DataSet = tdo
    Left = 129
    Top = 25
  end
  object tlv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select descrizione, tva_codice, iva_inclusa, sconto_massimo, blo' +
        'cco_sconto_massimo,'
      'prezzo_comprensivo_raee, password_sconto_massimo'
      'from tlv'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 135
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tlv_ds: TMyDataSource
    DataSet = tlv
    Left = 144
    Top = 25
  end
  object tpa: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from tpa'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 150
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tpa_ds: TMyDataSource
    DataSet = tpa
    Left = 159
    Top = 25
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
    Left = 165
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tva_ds: TMyDataSource
    DataSet = tva
    Left = 174
    Top = 25
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
    Left = 180
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tsm_ds: TMyDataSource
    DataSet = tsm
    Left = 189
    Top = 25
  end
  object cancella_iva: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 960
    Top = 25
  end
  object tba: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tba'
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
    Left = 195
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tba_ds: TMyDataSource
    DataSet = tba
    Left = 204
    Top = 25
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
    Left = 210
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tna_ds: TMyDataSource
    DataSet = tna
    Left = 219
    Top = 25
  end
  object tmo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, esistenza, commesse, lotti'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 225
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_ds: TMyDataSource
    DataSet = tmo
    Left = 234
    Top = 25
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
    Left = 240
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_ds: TMyDataSource
    DataSet = tma
    Left = 249
    Top = 25
  end
  object tmo_collegato: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 255
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_collegato_ds: TMyDataSource
    DataSet = tmo_collegato
    Left = 264
    Top = 25
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
    Left = 270
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_collegato_ds: TMyDataSource
    DataSet = tma_collegato
    Left = 279
    Top = 25
  end
  object art_ds: TMyDataSource
    DataSet = art
    Left = 494
    Top = 25
  end
  object tag: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select tag.descrizione, tag.prezzo_netto_sconti, arc.utn.user_e_' +
        'mail, arc.utn.cellulare'
      'from tag'
      'left join arc.utn on arc.utn.tag_codice = tag.codice'
      'where tag.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 285
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tag_ds: TMyDataSource
    DataSet = tag
    Left = 294
    Top = 25
  end
  object tiv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tiv'
      'where codice = :codice'
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 300
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tiv_ds: TMyDataSource
    DataSet = tiv
    Left = 309
    Top = 25
  end
  object tcc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tcc'
      'where codice = :codice'
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 315
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tcc_ds: TMyDataSource
    DataSet = tcc
    Left = 324
    Top = 25
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
    Left = 330
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tcd_apertura_ds: TMyDataSource
    DataSet = tcd_apertura
    Left = 339
    Top = 25
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
    Left = 345
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tcd_chiusura_ds: TMyDataSource
    DataSet = tcd_chiusura
    Left = 354
    Top = 25
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
    Left = 360
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tna_intra_ds: TMyDataSource
    DataSet = tna_intra
    Left = 369
    Top = 25
  end
  object tsp: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, tipo, tipo_corriere, data_scadenza_durc'
      'from tsp'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 375
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tsp_ds: TMyDataSource
    DataSet = tsp
    Left = 384
    Top = 25
  end
  object tst: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tst'
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
    Left = 390
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tst_ds: TMyDataSource
    DataSet = tst
    Left = 399
    Top = 25
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
    Left = 405
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tpo_ds: TMyDataSource
    DataSet = tpo
    Left = 414
    Top = 25
  end
  object tab: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tab'
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
    Left = 420
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tab_ds: TMyDataSource
    DataSet = tab
    Left = 429
    Top = 25
  end
  object tsm_sconto: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select descrizione, coalesce(percentuale_totale, 100) percentual' +
        'e_totale '
      'from tsm'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 435
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tsm_sconto_ds: TMyDataSource
    DataSet = tsm_sconto
    Left = 444
    Top = 25
  end
  object tpe: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from tpe'
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
    Left = 450
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tpe_ds: TMyDataSource
    DataSet = tpe
    Left = 459
    Top = 25
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
    Left = 500
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tsm_righe_ds: TMyDataSource
    DataSet = tsm_righe
    Left = 509
    Top = 25
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
    Left = 515
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tsm_art_ds: TMyDataSource
    DataSet = tsm_art
    Left = 524
    Top = 25
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
    Left = 535
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_abi'
        Value = nil
      end>
  end
  object abi_ds: TMyDataSource
    DataSet = abi
    Left = 544
    Top = 25
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
    Left = 550
    Top = 25
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
    Left = 559
    Top = 25
  end
  object tmo_01: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select esistenza'
      'from tmo'
      'where codice = :codice'
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 755
    Top = 60
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
      'select tiv_codice_vendite, tca_codice'
      'from art'
      'where codice = :codice'
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 770
    Top = 60
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
      
        'select tdo_codice_ordini, tdo_codice_bolle, tdo_codice_corrispet' +
        'tivi, tdo_codice_ddt,'
      
        'tdo_codice_fatture_accompagna, tdo_codice_fatture_immediate, tdo' +
        '_codice_note_credito,'
      'tdo_codice_preventivi'
      'from utn'
      'where codice = :codice'
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 785
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object query_esiste_opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(quantita) quantita, count(id) numero'
      'from opt'
      
        'where documento_origine = '#39'ordine ven'#39' and doc_progressivo_origi' +
        'ne = :ovr_progressivo_03 and'
      'doc_riga_origine = :riga_03')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 815
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo_03'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'riga_03'
        Value = nil
      end>
  end
  object art_barcode: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(quantita) quantita, count(id) numero'
      'from opt'
      
        'where ovr_progressivo = :ovr_progressivo_03 and ovr_riga = :riga' +
        '_03'
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 830
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo_03'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'riga_03'
        Value = nil
      end>
  end
  object lot: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(quantita) quantita, count(id) numero'
      'from opt'
      
        'where ovr_progressivo = :ovr_progressivo_03 and ovr_riga = :riga' +
        '_03'
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 845
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo_03'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'riga_03'
        Value = nil
      end>
  end
  object cms: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione1, tma_codice, cli_codice, chiusa,'
      
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
    Left = 650
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cms_ds: TMyDataSource
    DataSet = cms
    Left = 669
    Top = 60
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
    Left = 685
    Top = 60
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
    Left = 699
    Top = 60
  end
  object neg: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select doc_progressivo_origine'
      'from fvr'
      
        'where progressivo = :progressivo and documento_origine = '#39'vendit' +
        'a negozio'#39
      'limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 860
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
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
    Left = 730
    Top = 60
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
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 710
    Top = 60
  end
  object cor: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id'
      'from fvr'
      
        'where documento_origine = '#39'corrispettivo ven'#39' and doc_progressiv' +
        'o_origine = :doc_progressivo_origine'
      'limit 1'
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 805
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'doc_progressivo_origine'
        Value = nil
      end>
  end
  object fatcor: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id'
      'from fvr'
      
        'where progressivo = :progressivo and documento_origine = '#39'corris' +
        'pettivo ven'#39
      'limit 1'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 825
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object cot: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select cot.tipo_contratto, cot.data_inizio, fvt.numero_documento' +
        ', fvt.serie_documento, fvt.data_documento,'
      
        'tcr.tiv_codice, cot.contratto_elenco_cli_for, cot.pagamento_elen' +
        'co_cli_for'
      'from cot'
      'left join cor on cor.progressivo = cot.progressivo and'
      'cor.data_inizio <= :data and cor.data_fine >= :data'
      'left join fvt on fvt.progressivo = cor.progressivo_fvt'
      'left join tcr on tcr.codice = :tcr_codice  /*ditta*/'
      
        'where cot.cli_codice = :cli_codice and cot.codice_contratto = :c' +
        'odice_contratto'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 695
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tcr_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice_contratto'
        Value = nil
      end>
  end
  object cod: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select cod.tsm_codice, cod.quantita_base, cod.quantita_omaggio,'
      'cod.corso_formazione, cod.numero_corsi, cod.anno'
      'from cot'
      'inner join cod on cod.progressivo = cot.progressivo'
      
        'where cot.cli_codice = :cli_codice and cot.codice_contratto = :c' +
        'odice_contratto and'
      
        'cod.art_codice = :art_codice and cod.tcm_codice = :tcm_codice an' +
        'd cod.tgm_codice = :tgm_codice and'
      'cod.tsa_codice = :tsa_codice and cod.ts3_codice = :ts3_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 745
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice_contratto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tcm_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tgm_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tsa_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ts3_codice'
        Value = nil
      end>
  end
  object corsi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(quantita) numero_corsi'
      'from ovr'
      'inner join ovt on ovt.progressivo = ovr.progressivo'
      'inner join art on art.codice = ovr.art_codice'
      
        'where (ovr.art_codice = :art_codice or art.tcm_codice = :tcm_cod' +
        'ice or'
      
        'art.tgm_codice = :tgm_codice or art.tsa_codice = :tsa_codice or ' +
        'art.ts3_codice = :ts3_codice) and'
      
        'ovt.nostro_riferimento <> '#39#39' and year(ovt.data_documento) = :ann' +
        'o'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 770
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tcm_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tgm_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tsa_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ts3_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'anno'
        Value = nil
      end>
  end
  object supero: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select cot.cli_codice, cot.codice_contratto, cor.importo importo' +
        '_contratto,'
      
        'coalesce((select sum(ovt.importo_totale_imponibile - ovt.importo' +
        '_spese_extra - ovt.importo_spese_trasporto -'
      'ovt.importo_spese_incasso - ovt.importo_bollo) from ovt'
      
        'where ovt.cli_codice = cot.cli_codice and ovt.codice_contratto =' +
        ' cot.codice_contratto and'
      
        'ovt.data_documento between cor.data_inizio and cor.data_fine), 0' +
        ') importo_venduto'
      'from cor'
      'inner join cot on cot.progressivo = cor.progressivo'
      
        'where cot.cli_codice = :cli_codice and cot.codice_contratto = :c' +
        'odice_contratto and'
      'cor.data_inizio <= :data and cor.data_fine >= :data'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 790
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice_contratto'
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
  object kit: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select kit.*, art.descrizione1 art_descrizione1, art.descrizione' +
        '2 art_descrizione2, art.tum_codice,'
      'art.tiv_codice_vendite tiv_codice'
      'from kit'
      'inner join art on art.codice = kit.art_codice_componente'
      'where kit.art_codice = :art_codice'
      'order by sequenza'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 695
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object esistenza_principale: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select esistenza, approntato, impegnato, scorta_minima,'
      'case'
      
        'when (select calcolo_disponibilita_vendite from tdo where codice' +
        ' = :tdo_codice) = '#39'esistenza'#39' then esistenza'
      
        'when (select calcolo_disponibilita_vendite from tdo where codice' +
        ' = :tdo_codice) = '#39'esistenza - impegnato'#39' then (esistenza - impe' +
        'gnato)'
      
        'when (select calcolo_disponibilita_vendite from tdo where codice' +
        ' = :tdo_codice) = '#39'esistenza + ordinato'#39' then (esistenza + ordin' +
        'ato)'
      
        'when (select calcolo_disponibilita_vendite from tdo where codice' +
        ' = :tdo_codice) = '#39'esistenza + ordinato - impegnato'#39' then (esist' +
        'enza + ordinato - impegnato)'
      'else esistenza + ordinato - impegnato'
      'end disponibilita'
      'from mag'
      'where art_codice = :art_codice and tma_codice = :tma_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 810
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
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
    Left = 830
    Top = 75
  end
  object sal: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from sal'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 715
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object tag_ca: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, prezzo_netto_sconti'
      'from tag'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 170
    Top = 330
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tag_ca_ds: TMyDataSource
    DataSet = tag_ca
    Left = 189
    Top = 330
  end
  object eseguita_evasione: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 655
    Top = 75
  end
  object bvr_dvr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 740
    Top = 100
  end
  object tum: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, quantita_peso'
      'from tum'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 760
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
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
    Left = 780
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gen_codice'
        Value = nil
      end>
  end
  object frn_rda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from frn'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 635
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cnf_totale: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      
        'coalesce((select sum(importo) from cnf where configurazione = :c' +
        'onfigurazione), 0) +'
      
        'coalesce((select sum(importo) from cnl where configurazione = :c' +
        'onfigurazione), 0)'
      'importo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 635
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'configurazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'configurazione'
        Value = nil
      end>
  end
  object accessori_equivalenti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      
        'case when exists(select id from acc where art_codice = art.codic' +
        'e) then '#39'si'#39' else '#39'no'#39' end accessori,'
      
        'case when exists(select id from equ where art_codice = art.codic' +
        'e or art_codice_equivalente = art.codice) then '#39'si'#39' else '#39'no'#39' en' +
        'd equivalenti'
      'from art'
      'where codice = :art_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 665
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object nom: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select nom.*, tna.codice_iso, tna.applicabilita_conai, '
      
        #39#39' dati_bancari, concat(trim(nom.descrizione1), '#39' '#39', trim(nom.de' +
        'scrizione2), '#39' '#39', nom.citta) cli_descrizione'
      'from nom'
      'inner join tna on tna.codice = nom.tna_codice'
      'where nom.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 55
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_doppi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select riga'
      'from xxx'
      'where progressivo = :progressivo'
      'and riga <> :riga'
      'and art_codice = :art_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 610
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
    Left = 900
    Top = 60
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
    Left = 85
    Top = 330
    Data = {04000000000000000000}
    object tabella_virtualedata_documento: TDateField
      FieldName = 'data_documento'
    end
    object tabella_virtualenumero_documento: TFloatField
      FieldName = 'numero_documento'
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
    Left = 105
    Top = 330
  end
  object utntdo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select tdo_codice'
      'from utntdo'
      'where utn_codice = :utn_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 845
    Top = 100
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
    Left = 5
    Top = 330
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cen_ds: TMyDataSource
    DataSet = cen
    Left = 24
    Top = 330
  end
  object tvc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tvc'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 45
    Top = 330
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tvc_ds: TMyDataSource
    DataSet = tvc
    Left = 64
    Top = 330
  end
  object spese_trasporto_giornaliere: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select id from bvt where cli_codice = :cli_codice and data_docum' +
        'ento = :data_documento'
      'and progressivo <> :progressivo and importo_spese_trasporto <> 0'
      'union all'
      
        'select id from dvt where cli_codice = :cli_codice and data_docum' +
        'ento = :data_documento'
      'and progressivo <> :progressivo and importo_spese_trasporto <> 0'
      'union all'
      
        'select id from fvt where cli_codice = :cli_codice and data_docum' +
        'ento = :data_documento'
      'and progressivo <> :progressivo and importo_spese_trasporto <> 0')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 610
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object iva_diversa: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 970
    Top = 115
  end
  object iva_diversa_evadi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 930
    Top = 115
  end
  object ngt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update ngt'
      'set fattura = '#39'no'#39', numero_documento = 0'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 880
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
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
    Left = 950
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_quantita: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 635
    Top = 125
  end
  object rmr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update rmr'
      'set numero_documento = :numero_documento'
      'where documento_origine = :documento_origine'
      'and doc_progressivo_origine = :doc_progressivo_origine'
      'and doc_riga_origine = :doc_riga_origine'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 610
    Top = 125
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'numero_documento'
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
      end>
  end
  object tve: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from tve'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 665
    Top = 125
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object pvvr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select pvvt.cli_codice, pvvr.ind_codice'
      'from pvvr'
      'inner join pvvt on pvvt.progressivo = pvvr.progressivo'
      'where pvvr.punto_vendita = :punto_vendita')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 700
    Top = 125
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'punto_vendita'
        Value = nil
      end>
  end
  object revisione_conai: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select count(riga) numero_righe'
      'from pvr'
      
        'where progressivo = :progressivo and riga_origine_conai = 0 and ' +
        'situazione <> '#39'inserito'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 730
    Top = 125
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object tconai_01: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from tconai'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 760
    Top = 125
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tconai_01_ds: TMyDataSource
    DataSet = tconai_01
    Left = 779
    Top = 125
  end
  object esistenza_cls: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id'
      'from cls'
      'where cli_codice = :cli_codice and art_codice = :art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 805
    Top = 125
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object tdocli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select tdo_codice'
      'from tdocli'
      
        'where cli_codice = :cli_codice and tipo_documento = :tipo_docume' +
        'nto')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 830
    Top = 125
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_documento'
        Value = nil
      end>
  end
  object ind_01: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from ind'
      'where cli_codice = :cli_codice and obsoleto = '#39'no'#39
      'and deposito_assistenza_tecnica = '#39'no'#39
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    MasterSource = abi_ds
    Left = 475
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end>
  end
  object prvm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from prvm'
      'where progressivo = :progressivo and tag_codice = :tag_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 855
    Top = 125
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tag_codice'
        Value = nil
      end>
  end
  object cli_fatturazione: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select concat(trim(descrizione1), '#39' '#39', citta) descrizione, cli.*'
      'from cli'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 885
    Top = 125
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cli_fatturazione_ds: TMyDataSource
    DataSet = cli_fatturazione
    Left = 904
    Top = 125
  end
  object ind_fatturazione: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select obsoleto, concat(trim(ind.via), '#39' '#39', ind.citta) descrizio' +
        'ne'
      'from ind'
      'where cli_codice = :cli_codice and indirizzo = :indirizzo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 125
    Top = 330
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
  object ind_fatturazione_ds: TMyDataSource
    DataSet = ind_fatturazione
    Left = 145
    Top = 330
  end
  object cnl: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from cnl'
      'where configurazione = :configurazione')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 635
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'configurazione'
        Value = nil
      end>
  end
  object ubm: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 815
    Top = 160
  end
  object query_sct_qc: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 785
    Top = 160
  end
  object tdo_conto_vendita: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select codice, descrizione'
      'from tdo'
      'where tdo_codice_conto_vendita = :tdo_codice_conto_vendita'
      'order by 1'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 755
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tdo_codice_conto_vendita'
        Value = nil
      end>
  end
  object fido_scadenziario: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(pat.importo_saldo / pat.cambio) importo'
      'from pat'
      'where pat.cfg_tipo = '#39'C'#39' and pat.cfg_codice = :cli_codice '
      
        'and pat.importo_saldo <> 0 and (pat.data_scadenza + interval :gi' +
        'orni day) <= :data')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 725
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'giorni'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data'
        Value = nil
      end>
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
    Left = 695
    Top = 160
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
    Left = 665
    Top = 160
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
  object tma_righe: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 840
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_righe_ds: TMyDataSource
    DataSet = tma_righe
    Left = 860
    Top = 160
  end
  object tiv_righe: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tiv'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 885
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tiv_righe_ds: TMyDataSource
    DataSet = tiv_righe
    Left = 905
    Top = 160
  end
  object gen_righe: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select obsoleto, descrizione1 descrizione'
      'from gen'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 930
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object gen_righe_ds: TMyDataSource
    DataSet = gen_righe
    Left = 955
    Top = 160
  end
  object iat: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update iat'
      'set situazione = '#39'inserito'#39
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 925
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object query_dit: TMyQuery_go
    Encryption.Fields = 'password_sdi'
    Connection = ARC.arc
    SQL.Strings = (
      'select password_sdi, password_dhz'
      'from dit'
      'where codice = :ditta'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 695
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ditta'
        Value = nil
      end>
  end
  object fvt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update fvt'
      'set situazione_sdi = '#39'in attesa invio'#39','
      'id_sdi = '#39#39','
      'codice_esito_sdi = '#39#39
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 785
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object popupmenu_etichette: TPopupMenu
    Images = ARC.immagine_16
    Left = 980
    Top = 25
    object etichettearticoli1: TMenuItem
      Caption = 'etichette articoli'
      ImageIndex = 3
      OnClick = etichettearticoli1Click
    end
    object etichettedocumento1: TMenuItem
      Caption = 'etichette documento'
      ImageIndex = 3
      OnClick = etichettedocumento1Click
    end
  end
  object dim: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 845
    Top = 185
  end
  object teco: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from teco'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 980
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object teco_ds: TMyDataSource
    DataSet = teco
    Left = 1005
    Top = 160
  end
  object duplica_testata: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 875
    Top = 185
  end
  object inf_01: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from inf'
      'where frn_codice = :cli_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    MasterSource = abi_ds
    Left = 215
    Top = 330
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end>
  end
  object pvd: TMyQuery_go
    Encryption.Fields = 'password_sdi'
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from pvd'
      'where progressivo = :progressivo'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 635
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object pvd_revisione: TMyQuery_go
    Encryption.Fields = 'password_sdi'
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from pvd'
      'where progressivo = :progressivo'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 665
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object artvardet: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from artvardet'
      'where art_codice = :art_codice and dettaglio = :dettagio')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 725
    Top = 185
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
    Left = 750
    Top = 185
  end
  object aggiorna_iat: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update iat'
      'set progressivo_ddtv = 0'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 900
    Top = 185
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
    Left = 925
    Top = 185
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
    Left = 950
    Top = 185
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
