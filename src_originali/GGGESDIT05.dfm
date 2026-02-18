inherited GESDIT05: TGESDIT05
  Caption = 'GESDIT05'
  ClientHeight = 656
  ClientWidth = 978
  ExplicitWidth = 994
  ExplicitHeight = 715
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 978
    ExplicitWidth = 978
  end
  inherited statusbar: TStatusBar
    Top = 636
    Width = 978
    ExplicitTop = 636
    ExplicitWidth = 978
  end
  inherited pannello_campi: TRzPanel
    Width = 787
    Height = 594
    ExplicitWidth = 787
    ExplicitHeight = 594
    DesignSize = (
      787
      594)
    inherited tab_control: TRzPageControl
      Top = 33
      Width = 786
      Height = 555
      ActivePage = tab_pagina2
      TabIndex = 1
      ExplicitTop = 33
      ExplicitWidth = 786
      ExplicitHeight = 555
      FixedDimension = 18
      inherited tab_pagina1: TRzTabSheet
        Caption = 'magazzino'
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 784
        ExplicitHeight = 535
        object Label49: TRzLabel
          Left = 5
          Top = 0
          Width = 66
          Height = 13
          Caption = 'tipo inventario'
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
          Left = 5
          Top = 35
          Width = 129
          Height = 13
          Caption = 'causale chiusura inventario'
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
          Left = 390
          Top = 35
          Width = 128
          Height = 13
          Caption = 'causale apertura inventario'
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
          Left = 390
          Top = 0
          Width = 123
          Height = 13
          Caption = 'causale rettifica inventario'
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
          Left = 390
          Top = 415
          Width = 121
          Height = 13
          Caption = 'valorizzazione produzione'
          ShowAccelChar = False
          Transparent = True
        end
        object Label21: TRzLabel
          Left = 5
          Top = 415
          Width = 166
          Height = 13
          Caption = 'valorizzazione inventario gestionale'
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
          Top = 490
          Width = 110
          Height = 13
          Caption = 'data inizio FIFO a scatti'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_tipo_inventario: trzdbcombobox_go
          Left = 5
          Top = 15
          Width = 376
          Height = 21
          Hint = 'tipo inventario fiscale da utilizzare per il magazzino'
          DataField = 'tipo_inventario'
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
          TabOrder = 0
          Items.Strings = (
            'prezzo medio'
            'l.i.f.o.'
            'l.i.f.o. ultimo mese'
            'costo standard'
            'ultimo costo'
            'f.i.f.o.'
            'f.i.f.o. a scatti'
            'prezzo medio anno'
            'prezzo medio mensile')
        end
        object v_tmo_codice_chiusura: trzdbedit_go
          Left = 5
          Top = 50
          Width = 50
          Height = 21
          Hint = 
            'codice causale movimento per la chiusura di inventario [F4 F5 F6' +
            ']'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tmo_codice_chiusura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnExit = v_tmo_codice_chiusuraExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object v_tmo_codice_apertura: trzdbedit_go
          Left = 390
          Top = 50
          Width = 50
          Height = 21
          Hint = 'codice causale movimento per l'#39'apertura di inventario [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tmo_codice_apertura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
          OnExit = v_tmo_codice_aperturaExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object v_tmo_codice_rettifica_inventario: trzdbedit_go
          Left = 390
          Top = 15
          Width = 50
          Height = 21
          Hint = 
            'codice causale movimento per registrazione rettifiche di inventa' +
            'rio ciclico [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tmo_codice_rettifica_inventario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnExit = v_tmo_codice_rettifica_inventarioExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 80
          Width = 781
          Height = 201
          Caption = 'ordini produzione'
          TabOrder = 4
          object Label3: TRzLabel
            Left = 5
            Top = 15
            Width = 90
            Height = 13
            Caption = 'causale carico finiti'
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
            Left = 390
            Top = 15
            Width = 93
            Height = 13
            Caption = 'deposito carico finiti'
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
            Top = 50
            Width = 139
            Height = 13
            Caption = 'causale scarico materie prime'
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
            Left = 390
            Top = 50
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
          object Label6: TRzLabel
            Left = 5
            Top = 85
            Width = 106
            Height = 13
            Caption = 'listino costi produzione'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label12: TRzLabel
            Left = 390
            Top = 85
            Width = 216
            Height = 13
            Caption = 'codice ordine fornitore produzione presso terzi'
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
            Left = 5
            Top = 120
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
          object Label24: TRzLabel
            Left = 390
            Top = 120
            Width = 99
            Height = 13
            Caption = 'listino costo standard'
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
            Top = 155
            Width = 165
            Height = 13
            Caption = 'causale trasferimento materia prima'
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
            Top = 30
            Width = 50
            Height = 21
            Hint = 
              'codice causale movimento per la registrazione del carico di prod' +
              'uzione dei prodoti finiti [F4 F5 F6]'
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
            TabOrder = 0
            OnExit = v_tmo_codice_finitiExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMO'
            lookcolltable = 'TMO'
            lookcollvisname = 'TMO'
          end
          object v_tma_codice_finiti: trzdbedit_go
            Left = 390
            Top = 30
            Width = 50
            Height = 21
            Hint = 
              'codice deposito per la registrazione del carico di produzione de' +
              'i prodotti finiti [F4 F5 F6]'
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
            TabOrder = 1
            OnExit = v_tma_codice_finitiExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMA'
            lookcolltable = 'TMA'
            lookcollvisname = 'TMA'
          end
          object v_tmo_codice_materie_prime: trzdbedit_go
            Left = 5
            Top = 65
            Width = 50
            Height = 21
            Hint = 
              'codice causale movimento per la registrazoine dello scarico di p' +
              'roduzione delle materie prime [F4 F5 F6]'
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
            TabOrder = 2
            OnExit = v_tmo_codice_materie_primeExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMO'
            lookcolltable = 'TMO'
            lookcollvisname = 'TMO'
          end
          object v_tma_codice_materie_prime: trzdbedit_go
            Left = 390
            Top = 65
            Width = 50
            Height = 21
            Hint = 
              'codice deposito per la registrazoine dello scarico di produzione' +
              ' delle materie prime [F4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'tma_codice_materie_prime'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 3
            OnExit = v_tma_codice_materie_primeExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMA'
            lookcolltable = 'TMA'
            lookcollvisname = 'TMA'
          end
          object v_tla_codice: trzdbedit_go
            Left = 5
            Top = 100
            Width = 50
            Height = 21
            Hint = 
              'codice listino di acquisto da utilizzare per i costi di produzio' +
              'ne da sommare alle materie prime per ottenere il costo dei prodo' +
              'tti finiti [F4 F5 F6]'
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
            TabOrder = 4
            OnExit = v_tla_codiceExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTLA'
            lookcolltable = 'TLA'
            lookcollvisname = 'TLA'
          end
          object v_tda_codice_produzione_presso_te: trzdbedit_go
            Left = 390
            Top = 100
            Width = 50
            Height = 21
            Hint = 
              'codice documento ordini fornitori per produzione presso terzi [F' +
              '4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'tda_codice_produzione_presso_te'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 5
            OnEnter = v_tda_codice_produzione_presso_teEnter
            OnExit = v_tda_codice_produzione_presso_teExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTDA'
            lookcolltable = 'TDA'
            lookcollvisname = 'TDZ'
          end
          object v_tipo_esplosione: trzdbcombobox_go
            Left = 5
            Top = 135
            Width = 376
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
            TabOrder = 6
            Items.Strings = (
              'nessuno'
              'solo primo livello'
              'tutti i livelli fino alle materie prime'
              'generazione ordini per tutti i semilavorati')
          end
          object v_tla_codice_costo_standard: trzdbedit_go
            Left = 390
            Top = 135
            Width = 50
            Height = 21
            Hint = 
              'codice listino di acquisto da utilizzare come costo standard [F4' +
              ' F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'tla_codice_costo_standard'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 7
            OnExit = v_tla_codice_costo_standardExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTLA'
            lookcolltable = 'TLA'
            lookcollvisname = 'TLA'
          end
          object RzDBEditDescrizione_go3: trzdbeditdescrizione_go
            Left = 60
            Top = 30
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tmo_finiti_ds
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
          object RzDBEditDescrizione_go4: trzdbeditdescrizione_go
            Left = 60
            Top = 65
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tmo_materie_prime_ds
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
          object RzDBEditDescrizione_go5: trzdbeditdescrizione_go
            Left = 60
            Top = 100
            Width = 321
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
            TabOrder = 10
          end
          object RzDBEditDescrizione_go6: trzdbeditdescrizione_go
            Left = 445
            Top = 30
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tma_finiti_ds
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
          object RzDBEditDescrizione_go7: trzdbeditdescrizione_go
            Left = 445
            Top = 65
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tma_materie_prime_ds
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
          object RzDBEditDescrizione_go8: trzdbeditdescrizione_go
            Left = 445
            Top = 100
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tda_produzione_presso_terzi_ds
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
          object RzDBEditDescrizione_go9: trzdbeditdescrizione_go
            Left = 445
            Top = 135
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tla_costo_standard_ds
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
          object v_tmo_codice_movordp: trzdbedit_go
            Left = 5
            Top = 170
            Width = 50
            Height = 21
            Hint = 
              'codice causale movimento per il trasferimento della materia prim' +
              'a al deposito di produzione [F4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'tmo_codice_movordp'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 15
            OnExit = v_tmo_codice_movordpExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMO'
            lookcolltable = 'TMO'
            lookcollvisname = 'TMO'
          end
          object RzDBEditDescrizione_go17: trzdbeditdescrizione_go
            Left = 60
            Top = 170
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tmo_movordp_ds
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
        end
        object GroupBox3: TGroupBox
          Left = 0
          Top = 285
          Width = 781
          Height = 121
          Caption = 'ordini lavorazione per conto terzi'
          TabOrder = 5
          object Label13: TRzLabel
            Left = 5
            Top = 15
            Width = 90
            Height = 13
            Caption = 'causale carico finiti'
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
            Left = 390
            Top = 15
            Width = 139
            Height = 13
            Caption = 'causale scarico materie prime'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label17: TRzLabel
            Left = 5
            Top = 50
            Width = 127
            Height = 13
            Caption = 'deposito conto lavorazione'
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
            Left = 390
            Top = 50
            Width = 98
            Height = 13
            Caption = 'codice ordine cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object v_tmo_codice_finiti_lavorazione: trzdbedit_go
            Left = 5
            Top = 30
            Width = 50
            Height = 21
            Hint = 
              'codice causale movimento per la registrazione del carico di prod' +
              'uzione dei prodoti finiti [F4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'tmo_codice_finiti_lavorazione'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 0
            OnExit = v_tmo_codice_finiti_lavorazioneExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMO'
            lookcolltable = 'TMO'
            lookcollvisname = 'TMO'
          end
          object v_tmo_codice_materie_prime_lavora: trzdbedit_go
            Left = 390
            Top = 30
            Width = 50
            Height = 21
            Hint = 
              'codice causale movimento per la registrazoine dello scarico di p' +
              'roduzione delle materie prime [F4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'tmo_codice_materie_prime_lavora'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 1
            OnExit = v_tmo_codice_materie_prime_lavoraExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMO'
            lookcolltable = 'TMO'
            lookcollvisname = 'TMO'
          end
          object v_tma_codice_lavorazione: trzdbedit_go
            Left = 5
            Top = 65
            Width = 50
            Height = 21
            Hint = 
              'codice deposito per la registrazione dei movimenti di conto lavo' +
              'ro [F4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'tma_codice_lavorazione'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 2
            OnExit = v_tma_codice_lavorazioneExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMA'
            lookcolltable = 'TMA'
            lookcollvisname = 'TMA'
          end
          object v_tdo_codice_lavorazione: trzdbedit_go
            Left = 390
            Top = 65
            Width = 50
            Height = 21
            Hint = 'codice documento ordini cliente [F4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'tdo_codice_lavorazione'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 3
            OnEnter = v_tdo_codice_lavorazioneEnter
            OnExit = v_tdo_codice_lavorazioneExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTDO'
            lookcolltable = 'TDO'
            lookcollvisname = 'TDV'
          end
          object RzDBEditDescrizione_go10: trzdbeditdescrizione_go
            Left = 60
            Top = 30
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tmo_finiti_lavorazione_ds
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
          object RzDBEditDescrizione_go11: trzdbeditdescrizione_go
            Left = 60
            Top = 65
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tma_lavorazione_ds
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
          object RzDBEditDescrizione_go12: trzdbeditdescrizione_go
            Left = 445
            Top = 30
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tmo_materie_prime_lavorazione_ds
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
          object RzDBEditDescrizione_go13: trzdbeditdescrizione_go
            Left = 445
            Top = 65
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tdo_lavorazione_ds
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
          object v_genera_descrizione_cicli: TRzDBCheckBox
            Left = 5
            Top = 95
            Width = 129
            Height = 15
            Hint = 
              'spunta per generare nelle note delle righe ordine fornitore la d' +
              'escrizione del ciclo di lavorazione'
            DataField = 'genera_descrizione_cicli'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'genera descrizione cicli'
            TabOrder = 8
          end
        end
        object v_magazzino_ridimensiona_griglia: TRzDBCheckBox
          Left = 150
          Top = 510
          Width = 133
          Height = 15
          Hint = 
            'spunta per ingrandire durante l'#39'esecuzione la dimensione della g' +
            'riglia delle righe'
          DataField = 'magazzino_ridimensiona_griglia'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'ridimensiona griglia righe'
          Enabled = False
          TabOrder = 8
          Visible = False
        end
        object v_costo_produzione: trzdbcombobox_go
          Left = 390
          Top = 430
          Width = 376
          Height = 21
          Hint = 'costo delle materie da utilizzare per gli ordini di produzione'
          DataField = 'costo_produzione'
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
          Items.Strings = (
            'ultimo costo'
            'prezzo medio'
            'costo standard'
            'fifo a scatti'
            'prezzo medio mensile')
        end
        object v_valorizzazione_gestionale: trzdbcombobox_go
          Left = 5
          Top = 430
          Width = 376
          Height = 21
          Hint = 
            'tipo inventario gestionale da utilizzare per le valorizzazioni n' +
            'on fiscali del magazzino'
          DataField = 'valorizzazione_gestionale'
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
          TabOrder = 6
          Items.Strings = (
            'costo standard'
            'prezzo medio'
            'ultimo costo'
            'fifo a scatti'
            'prezzo medio mensile')
        end
        object v_varia_dsb_ordp: TRzDBCheckBox
          Left = 290
          Top = 510
          Width = 202
          Height = 15
          Hint = 
            'spunta per aggiornare interattivamente la distinta base da ordin' +
            'e produzione'
          DataField = 'varia_dsb_ordp'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'varia distinta base da ordini produzione'
          TabOrder = 16
          Visible = False
        end
        object RzDBEditDescrizione_go19: trzdbeditdescrizione_go
          Left = 445
          Top = 15
          Width = 321
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tmo_rettifica_inventario_ds
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
        object RzDBEditDescrizione_go1: trzdbeditdescrizione_go
          Left = 60
          Top = 50
          Width = 321
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tmo_chiusura_ds
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
        object RzDBEditDescrizione_go2: trzdbeditdescrizione_go
          Left = 445
          Top = 50
          Width = 321
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tmo_apertura_ds
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
        object v_cruart_tempo_reale: TRzDBCheckBox
          Left = 550
          Top = 510
          Width = 226
          Height = 15
          Hint = 
            'spunta per calcolare in tempo reale impegnato e ordinato in CRUA' +
            'RT'
          DataField = 'cruart_tempo_reale'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'impegnato ordinato CRUART in tempo reale'
          TabOrder = 15
          Visible = False
        end
        object v_utilizzo_varianti: TRzDBCheckBox
          Left = 6
          Top = 460
          Width = 149
          Height = 15
          Hint = 'spunta per abilitare l'#39'utilizzo delle varianti in distinta base'
          DataField = 'utilizzo_varianti'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'utilizzo varianti distinta base'
          TabOrder = 12
        end
        object v_data_inizio_fifo_scatti: trzdbdatetimeedit_go
          Left = 5
          Top = 505
          Width = 110
          Height = 21
          Hint = 'data da cui iniziare la gestione del FIFO a scatti'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_inizio_fifo_scatti'
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
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 46070.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_aggiorna_costo_da_acquisti: TRzDBCheckBox
          Left = 390
          Top = 460
          Width = 230
          Height = 15
          Hint = 
            'spunta per aggiornare automaticamente il costo dei componenti or' +
            'dine produzione da acquisti'
          DataField = 'aggiorna_costo_da_acquisti'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'aggiorna costo ordine produzione da acquisti'
          TabOrder = 13
        end
      end
      object tab_pagina2: TRzTabSheet
        Color = clWindow
        ImageIndex = 1
        Caption = 'extra'
        object Label27: TRzLabel
          Left = 5
          Top = 105
          Width = 127
          Height = 13
          Caption = 'causale scarico commesse'
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
          Top = 275
          Width = 88
          Height = 13
          Caption = 'deposito principale'
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
          Left = 400
          Top = 275
          Width = 187
          Height = 13
          Caption = 'codice listino acquisti standard per costi'
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
          Left = 5
          Top = 475
          Width = 171
          Height = 13
          Caption = 'codice documento ordini produzione'
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
          Top = 145
          Width = 153
          Height = 13
          Caption = 'assegnazione codice commessa'
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
          Left = 400
          Top = 145
          Width = 176
          Height = 13
          Caption = 'assegnazione codice sottocommessa'
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
          Left = 400
          Top = 475
          Width = 65
          Height = 13
          Caption = 'specifica u.m.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel9: TRzLabel
          Left = 590
          Top = 145
          Width = 163
          Height = 13
          Caption = 'codice sottocommessa automatico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 5
          Width = 386
          Height = 91
          Caption = 'descrizioni copie ordini produzione'
          TabOrder = 0
          object Label8: TRzLabel
            Left = 5
            Top = 15
            Width = 54
            Height = 13
            Caption = 'prima copia'
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
            Left = 195
            Top = 15
            Width = 70
            Height = 13
            Caption = 'seconda copia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label10: TRzLabel
            Left = 5
            Top = 50
            Width = 52
            Height = 13
            Caption = 'terza copia'
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
            Left = 195
            Top = 50
            Width = 59
            Height = 13
            Caption = 'quarta copia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object v_prima_copia_staordp: trzdbedit_go
            Left = 5
            Top = 30
            Width = 171
            Height = 21
            Hint = 
              'descrizione da stampare sulla prima copia degli ordini di produz' +
              'ione'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'prima_copia_staordp'
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
          object v_seconda_copia_staordp: trzdbedit_go
            Left = 195
            Top = 30
            Width = 171
            Height = 21
            Hint = 
              'descrizione da stampare sulla seconda copia degli ordini di prod' +
              'uzione'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'seconda_copia_staordp'
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
          object v_quarta_copia_staordp: trzdbedit_go
            Left = 195
            Top = 65
            Width = 171
            Height = 21
            Hint = 
              'descrizione da stampare sulla quarta copia degli ordini di produ' +
              'zione'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'quarta_copia_staordp'
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
          object v_terza_copia_staordp: trzdbedit_go
            Left = 5
            Top = 65
            Width = 171
            Height = 21
            Hint = 
              'descrizione da stampare sulla terza copia degli ordini di produz' +
              'ione'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'terza_copia_staordp'
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
        end
        object GroupBox4: TGroupBox
          Left = 395
          Top = 5
          Width = 386
          Height = 91
          Caption = 'descrizioni copie ordini lavorazione'
          TabOrder = 1
          object Label14: TRzLabel
            Left = 5
            Top = 15
            Width = 54
            Height = 13
            Caption = 'prima copia'
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
            Left = 195
            Top = 15
            Width = 70
            Height = 13
            Caption = 'seconda copia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label18: TRzLabel
            Left = 5
            Top = 50
            Width = 52
            Height = 13
            Caption = 'terza copia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label20: TRzLabel
            Left = 195
            Top = 50
            Width = 59
            Height = 13
            Caption = 'quarta copia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object v_prima_copia_staordl: trzdbedit_go
            Left = 5
            Top = 30
            Width = 171
            Height = 21
            Hint = 
              'descrizione da stampare sulla prima copia degli ordini di lavora' +
              'zione'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'prima_copia_staordl'
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
          object v_seconda_copia_staordl: trzdbedit_go
            Left = 195
            Top = 30
            Width = 171
            Height = 21
            Hint = 
              'descrizione da stampare sulla seconda copia degli ordini di lavo' +
              'razione'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'seconda_copia_staordl'
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
          object v_quarta_copia_staordl: trzdbedit_go
            Left = 195
            Top = 65
            Width = 171
            Height = 21
            Hint = 
              'descrizione da stampare sulla quarta copia degli ordini di lavor' +
              'azione'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'quarta_copia_staordl'
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
          object v_terza_copia_staordl: trzdbedit_go
            Left = 5
            Top = 65
            Width = 171
            Height = 21
            Hint = 
              'descrizione da stampare sulla terza copia degli ordini di lavora' +
              'zione'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'terza_copia_staordl'
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
        end
        object GroupBox5: TGroupBox
          Left = 270
          Top = 445
          Width = 101
          Height = 31
          Caption = 'varianti dinamiche'
          TabOrder = 2
          Visible = False
          object Label25: TRzLabel
            Left = 10
            Top = 15
            Width = 66
            Height = 13
            Caption = 'prima variante'
          end
          object Label26: TRzLabel
            Left = 105
            Top = 15
            Width = 82
            Height = 13
            Caption = 'seconda variante'
          end
          object v_prima_variante: trzdbedit_go
            Left = 5
            Top = 30
            Width = 91
            Height = 21
            Hint = 'descrizione prima variante dinamica'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'PRIMA_VARIANTE'
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
          object v_seconda_variante: trzdbedit_go
            Left = 105
            Top = 30
            Width = 81
            Height = 21
            Hint = 'descrizione seconda variante dinamica'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'SECONDA_VARIANTE'
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
        object v_tmo_codice_commesse: trzdbedit_go
          Left = 5
          Top = 120
          Width = 50
          Height = 21
          Hint = 
            'codice causale movimento per lo scarico del deposito commesse [F' +
            '4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tmo_codice_commesse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
          OnExit = v_tmo_codice_commesseExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object RzDBEditDescrizione_go14: trzdbeditdescrizione_go
          Left = 60
          Top = 120
          Width = 321
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tmo_commesse_ds
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
        object GroupBox6: TGroupBox
          Left = 0
          Top = 190
          Width = 781
          Height = 76
          Caption = 'descrizione progressivi personalizzati'
          TabOrder = 8
          object v_progressivo_mov_01: trzdbedit_go
            Left = 5
            Top = 20
            Width = 151
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'progressivo_mov_01'
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
          object v_progressivo_mov_02: trzdbedit_go
            Left = 160
            Top = 20
            Width = 151
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'progressivo_mov_02'
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
          object v_progressivo_mov_03: trzdbedit_go
            Left = 315
            Top = 20
            Width = 151
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'progressivo_mov_03'
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
          object v_progressivo_mov_04: trzdbedit_go
            Left = 470
            Top = 20
            Width = 151
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'progressivo_mov_04'
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
          object v_progressivo_mov_05: trzdbedit_go
            Left = 625
            Top = 20
            Width = 151
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'progressivo_mov_05'
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
          object v_progressivo_mov_06: trzdbedit_go
            Left = 5
            Top = 45
            Width = 151
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'progressivo_mov_06'
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
          object v_progressivo_mov_07: trzdbedit_go
            Left = 160
            Top = 45
            Width = 151
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'progressivo_mov_07'
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
          object v_progressivo_mov_08: trzdbedit_go
            Left = 315
            Top = 45
            Width = 151
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'progressivo_mov_08'
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
          object v_progressivo_mov_09: trzdbedit_go
            Left = 470
            Top = 45
            Width = 151
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'progressivo_mov_09'
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
          object v_progressivo_mov_10: trzdbedit_go
            Left = 625
            Top = 45
            Width = 151
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'progressivo_mov_10'
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
        object RzDBEditDescrizione_go15: trzdbeditdescrizione_go
          Left = 60
          Top = 290
          Width = 321
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tma_principale_ds
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
        object v_tma_codice_principale: trzdbedit_go
          Left = 5
          Top = 290
          Width = 50
          Height = 21
          Hint = 
            'codice deposito principale per visualizzare situazione base [F4 ' +
            'F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tma_codice_principale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 10
          OnExit = v_tma_codice_principaleExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMA'
          lookcolltable = 'TMA'
          lookcollvisname = 'TMA'
        end
        object v_tla_codice_valorizzazione: trzdbedit_go
          Left = 400
          Top = 290
          Width = 50
          Height = 21
          Hint = 
            'codice listino acquisti utilizzato per valorizzazione se non ven' +
            'gono trovate le condizoni predefinite [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tla_codice_valorizzazione'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 11
          OnExit = v_tla_codice_valorizzazioneExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTLA'
          lookcolltable = 'TLA'
          lookcollvisname = 'TLA'
        end
        object RzDBEditDescrizione_go16: trzdbeditdescrizione_go
          Left = 455
          Top = 290
          Width = 321
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tla_valorizzazione_ds
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
        object v_assegnazione_produzione: TRzDBCheckBox
          Left = 5
          Top = 330
          Width = 200
          Height = 15
          Hint = 
            'spunta per approntare automaticamente materia prima in creazione' +
            ' ordini di produzione'
          DataField = 'assegnazione_produzione'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'approntamento automatico produzione'
          TabOrder = 13
        end
        object v_assegna_costo_gesordp: TRzDBCheckBox
          Left = 400
          Top = 330
          Width = 245
          Height = 15
          Hint = 
            'spunta per assegnare automaticamente costo materie prime su ordi' +
            'ni di produzione'
          DataField = 'assegna_costo_gesordp'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'assegna costo materie prime a ordini produzione'
          TabOrder = 14
        end
        object v_solo_spese_mov_commesse: TRzDBCheckBox
          Left = 5
          Top = 360
          Width = 304
          Height = 15
          Hint = 
            'spunta per aggiornare le commesse solo con le spese del moviment' +
            'o se '#232' un carico di produzione'
          DataField = 'solo_spese_mov_commesse'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'aggiorna commesse solo per le spese movimento produzione'
          TabOrder = 15
          OnClick = v_solo_spese_mov_commesseClick
        end
        object v_gestione_costi_per_data: TRzDBCheckBox
          Left = 625
          Top = 420
          Width = 126
          Height = 15
          Hint = 
            'spunta per attivare la gestione dei costi di commesse e produzio' +
            'ne per data'
          DataField = 'gestione_costi_per_data'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'gestione costi per data'
          TabOrder = 17
          Visible = False
        end
        object v_controllo_commesse_ordini: TRzDBCheckBox
          Left = 5
          Top = 390
          Width = 300
          Height = 15
          Hint = 
            'spunta per attivare la sincronizzazione tra articoli su commessa' +
            ' e su ordini clienti e produzione'
          DataField = 'controllo_commesse_ordini'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'sincronizza articoli commesse con ordini clienti e produzione'
          TabOrder = 18
        end
        object v_accorpa_ddt_conto_lavoro: TRzDBCheckBox
          Left = 400
          Top = 390
          Width = 196
          Height = 15
          Hint = 
            'spunta per attivare l'#39'accorpamento degli articoli su ddt di cont' +
            'o lavoro'
          DataField = 'accorpa_ddt_conto_lavoro'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'accorpa articoli su ddt di conto lavoro'
          TabOrder = 19
        end
        object v_utilizza_listino_finito: TRzDBCheckBox
          Left = 5
          Top = 420
          Width = 232
          Height = 15
          Hint = 
            'spunta per utilizzare il listino dell'#39'articolo finito per genera' +
            'zione ordini fornitori di c/lavoro passivo'
          DataField = 'utilizza_listino_finito'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'utilizza listino finito per ordini c/lavoro passivo'
          TabOrder = 20
        end
        object v_avanzamento_fasi: TRzDBCheckBox
          Left = 400
          Top = 420
          Width = 102
          Height = 15
          Hint = 
            'spunta per gestire lo stato avanzamento fasi dei cicli di lavora' +
            'zione'
          DataField = 'avanzamento_fasi'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'avanzamento fasi'
          TabOrder = 21
        end
        object v_usa_top_codice: TRzDBCheckBox
          Left = 5
          Top = 450
          Width = 224
          Height = 15
          Hint = 
            'spunta per utilizzare il codice documento nella gestione degli o' +
            'rdini di produzione'
          DataField = 'usa_top_codice'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'utilizza codice documento ordini produzione'
          TabOrder = 22
        end
        object v_scarico_prima_fase: TRzDBCheckBox
          Left = 400
          Top = 450
          Width = 216
          Height = 15
          Hint = 
            'spunta per scaricare tutti i componenti al completamento della p' +
            'rima fase'
          DataField = 'scarico_prima_fase'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'scarico componenti alla prima fase interna'
          TabOrder = 23
        end
        object v_solo_materiale_mov_commesse: TRzDBCheckBox
          Left = 400
          Top = 360
          Width = 314
          Height = 15
          Hint = 
            'spunta per aggiornare le commesse solo con il materiale del movi' +
            'mento se '#232' un carico di produzione'
          DataField = 'solo_materiale_mov_commesse'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'aggiorna commesse solo per il materiale movimento produzione'
          TabOrder = 16
          OnClick = v_solo_materiale_mov_commesseClick
        end
        object v_top_codice: trzdbedit_go
          Left = 5
          Top = 490
          Width = 50
          Height = 21
          Hint = 'codice documento standard ordini di produzione'
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
          TabOrder = 25
          OnExit = v_top_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTOP'
          lookcolltable = 'TOP'
          lookcollvisname = 'TOP'
        end
        object trzdbeditdescrizione_go1: trzdbeditdescrizione_go
          Left = 60
          Top = 490
          Width = 331
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
          TabOrder = 26
        end
        object v_codice_commessa_automatico: trzdbcombobox_go
          Left = 5
          Top = 160
          Width = 376
          Height = 21
          Hint = 'modalit'#224' di assegnazione del codice commessa automatico'
          DataField = 'codice_commessa_automatico'
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
            'nessuno'
            'anno.mese.cliente.tipologia.progressivo'
            'anno.mese.cliente.progressivo'
            'progressivo')
        end
        object v_codice_sottocommessa_automatico: trzdbcombobox_go
          Left = 400
          Top = 160
          Width = 176
          Height = 21
          Hint = 'modalit'#224' di assegnazione del codice sottocommessa automatico'
          DataField = 'codice_sottocommessa_automatico'
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
          TabOrder = 5
          Items.Strings = (
            'nessuno'
            'filiale.progressivo')
        end
        object v_utilizzo_equivalenti: TRzDBCheckBox
          Left = 625
          Top = 450
          Width = 104
          Height = 15
          Hint = 
            'spunta per verificare la presenza di articoli equivalenti nella ' +
            'creazione ordini di produzione'
          DataField = 'utilizzo_equivalenti'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'utilizzo equivalenti'
          TabOrder = 24
        end
        object v_um_datconfas: trzdbcombobox_go
          Left = 400
          Top = 490
          Width = 181
          Height = 21
          Hint = 
            'specifica u.m. da utilizzare per elaborazione della data di esec' +
            'uzione delle fasi'
          DataField = 'um_datconfas'
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
          TabOrder = 27
          Items.Strings = (
            'secondi'
            'minuti')
        end
        object v_variazione_tempi_lavorazione: TRzDBCheckBox
          Left = 625
          Top = 493
          Width = 152
          Height = 15
          Hint = 
            'spunta per consentire all'#39'operatore di variare i tempi di rileva' +
            'zione delle operazioni sulle fasi'
          DataField = 'variazione_tempi_lavorazione'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'variazione tempi lavorazione'
          TabOrder = 28
        end
        object v_codice_cmt_automatico: trzdbedit_go
          Left = 590
          Top = 160
          Width = 171
          Height = 21
          Hint = 
            'codice sottocommessa da generare automaticamente per le nuove co' +
            'mmesse'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'codice_cmt_automatico'
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
      object tab_pagina3: TRzTabSheet
        Color = clWindow
        Caption = 'manutenzioni'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object RzLabel5: TRzLabel
          Left = 5
          Top = 5
          Width = 105
          Height = 13
          Caption = 'deposito manutenzioni'
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
          Top = 45
          Width = 120
          Height = 13
          Caption = 'costo orario manutenzioni'
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
          Left = 395
          Top = 5
          Width = 119
          Height = 13
          Caption = 'causale scarico materiale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_tma_codice_manutenzioni: trzdbedit_go
          Left = 5
          Top = 20
          Width = 50
          Height = 21
          Hint = 
            'codice deposito per gli accessori utilizzati per la manutenzione' +
            ' [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tma_codice_manutenzioni'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnExit = v_tma_codice_manutenzioniExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMA'
          lookcolltable = 'TMA'
          lookcollvisname = 'TMA'
        end
        object trzdbeditdescrizione_go3: trzdbeditdescrizione_go
          Left = 60
          Top = 20
          Width = 326
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tma_manutenzioni_ds
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
        object v_costo_orario_manutenzioni: trzdbnumericedit_go
          Left = 5
          Top = 60
          Width = 121
          Height = 21
          Hint = 'costo orario manutenzioni'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'costo_orario_manutenzioni'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 18
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;,0.00;#'
        end
        object v_tmo_codice_manutenzioni: trzdbedit_go
          Left = 395
          Top = 20
          Width = 50
          Height = 21
          Hint = 
            'causale scarico per gli accessori utilizzati per la manutenzione' +
            ' [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tmo_codice_manutenzioni'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnExit = v_tmo_codice_manutenzioniExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object trzdbeditdescrizione_go4: trzdbeditdescrizione_go
          Left = 450
          Top = 20
          Width = 326
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tmo_manutenzioni_ds
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
      end
    end
  end
  inherited pannello_codice: TRzPanel
    Width = 781
    Height = 32
    ExplicitWidth = 781
    ExplicitHeight = 32
    object v_codice: trzdbedit_go
      Left = 5
      Top = 5
      Width = 61
      Height = 21
      DataSource = tabella_ds
      DataField = 'CODICE'
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
      OnEnter = v_codiceEnter
    end
    object trzdbeditdescrizione_go2: trzdbeditdescrizione_go
      Left = 70
      Top = 5
      Width = 711
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tabella_ds
      DataField = 'dit_descrizione'
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
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    Left = 787
    Height = 594
    ExplicitLeft = 787
    ExplicitHeight = 594
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      Top = 44
      Height = 549
      ExplicitTop = 44
      ExplicitHeight = 549
      FixedDimension = 18
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 22
        ExplicitWidth = 187
        ExplicitHeight = 526
      end
      inherited tab_pannello_bottoni_nuovi_extra: TRzTabSheet
        ExplicitTop = 23
        ExplicitWidth = 116
        ExplicitHeight = 525
      end
    end
    inherited pannello_destra_pannello: TRzPanel
      Height = 12
      ExplicitHeight = 12
      inherited pannello_destra_PanelGroup: TCategoryPanelGroup
        Height = 229
        ExplicitHeight = 229
      end
    end
  end
  inherited tabella: TMyQuery_go
    Connection = ARC.arc
    SQL.Strings = (
      
        'select dit05.*, concat(trim(dit.descrizione1), '#39' '#39', dit.descrizi' +
        'one2) dit_descrizione, dit.codice_commesse_numerico '
      'from dit05'
      'inner join dit on dit.codice = dit05.codice'
      'where dit05.codice = :codice')
  end
  object bar: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from bar'
      'where codice_interno = '#39'si'#39' limit 1'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 285
    Top = 65526
  end
  object lif: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from lif limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 315
    Top = 65526
  end
  object tmo_rettifica_inventario: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 350
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_rettifica_inventario_ds: TMyDataSource
    DataSet = tmo_rettifica_inventario
    Left = 365
    Top = 65526
  end
  object tmo_chiusura: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 375
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_chiusura_ds: TMyDataSource
    DataSet = tmo_chiusura
    Left = 390
    Top = 65526
  end
  object tmo_apertura: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 400
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_apertura_ds: TMyDataSource
    DataSet = tmo_apertura
    Left = 415
    Top = 65526
  end
  object tmo_finiti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 450
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_finiti_ds: TMyDataSource
    DataSet = tmo_finiti
    Left = 465
    Top = 65526
  end
  object tmo_materie_prime: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 475
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_materie_prime_ds: TMyDataSource
    DataSet = tmo_materie_prime
    Left = 490
    Top = 65526
  end
  object tla: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tla'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 500
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
    Left = 515
    Top = 65526
  end
  object tma_finiti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 525
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_finiti_ds: TMyDataSource
    DataSet = tma_finiti
    Left = 540
    Top = 65526
  end
  object tma_materie_prime: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 550
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_materie_prime_ds: TMyDataSource
    DataSet = tma_materie_prime
    Left = 565
    Top = 65526
  end
  object tda_produzione_presso_terzi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, tipo_documento'
      'from tda'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 575
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tda_produzione_presso_terzi_ds: TMyDataSource
    DataSet = tda_produzione_presso_terzi
    Left = 590
    Top = 65526
  end
  object tla_costo_standard: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tla'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 600
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tla_costo_standard_ds: TMyDataSource
    DataSet = tla_costo_standard
    Left = 615
    Top = 65526
  end
  object tmo_finiti_lavorazione: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 655
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_finiti_lavorazione_ds: TMyDataSource
    DataSet = tmo_finiti_lavorazione
    Left = 670
    Top = 65526
  end
  object tmo_materie_prime_lavorazione: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice'
      ' '
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
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_materie_prime_lavorazione_ds: TMyDataSource
    DataSet = tmo_materie_prime_lavorazione
    Left = 695
    Top = 65526
  end
  object tma_lavorazione: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 705
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_lavorazione_ds: TMyDataSource
    DataSet = tma_lavorazione
    Left = 720
    Top = 65526
  end
  object tdo_lavorazione: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, tipo_documento'
      'from tdo'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 730
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tdo_lavorazione_ds: TMyDataSource
    DataSet = tdo_lavorazione
    Left = 745
    Top = 65526
  end
  object tmo_commesse: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 355
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_commesse_ds: TMyDataSource
    DataSet = tmo_commesse
    Left = 370
    Top = 20
  end
  object tma_principale: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 400
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_principale_ds: TMyDataSource
    DataSet = tma_principale
    Left = 415
    Top = 20
  end
  object tla_valorizzazione: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tla'
      'where codice = :codice'
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 450
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tla_valorizzazione_ds: TMyDataSource
    DataSet = tla_valorizzazione
    Left = 465
    Top = 20
  end
  object tmo_movordp: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice and tmo_codice_collegato <> '#39#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 500
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_movordp_ds: TMyDataSource
    DataSet = tmo_movordp
    Left = 515
    Top = 20
  end
  object top: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from top'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 550
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object top_ds: TMyDataSource
    DataSet = top
    Left = 565
    Top = 20
  end
  object tma_manutenzioni: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 600
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_manutenzioni_ds: TMyDataSource
    DataSet = tma_manutenzioni
    Left = 620
    Top = 20
  end
  object tmo_manutenzioni: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 655
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_manutenzioni_ds: TMyDataSource
    DataSet = tmo_manutenzioni
    Left = 675
    Top = 20
  end
end
