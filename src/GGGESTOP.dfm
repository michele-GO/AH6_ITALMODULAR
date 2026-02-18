inherited GESTOP: TGESTOP
  Left = 379
  Top = 251
  Caption = 'GESTOP'
  ClientHeight = 596
  ClientWidth = 1069
  ExplicitWidth = 1085
  ExplicitHeight = 655
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1069
    ExplicitWidth = 1069
  end
  inherited statusbar: TStatusBar
    Top = 576
    Width = 1069
    ExplicitTop = 576
    ExplicitWidth = 1069
  end
  inherited pannello_campi: TRzPanel
    Width = 878
    Height = 534
    ExplicitWidth = 878
    ExplicitHeight = 534
    object Label2: TRzLabel [0]
      Left = 70
      Top = 5
      Width = 53
      Height = 13
      Caption = 'descrizione'
      Transparent = True
    end
    object Label4: TRzLabel [1]
      Left = 590
      Top = 5
      Width = 85
      Height = 13
      Caption = 'serie numerazione'
      FocusControl = v_serie_documento
      ShowAccelChar = False
      Transparent = True
    end
    inherited tab_control: TRzPageControl
      Top = 50
      Width = 876
      Height = 481
      TabOrder = 2
      ExplicitTop = 50
      ExplicitWidth = 876
      ExplicitHeight = 481
      FixedDimension = 18
      inherited tab_pagina1: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 874
        ExplicitHeight = 461
        object Label53: TRzLabel
          Left = 5
          Top = 235
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
        object Label21: TRzLabel
          Left = 5
          Top = 280
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
        object RzLabel1: TRzLabel
          Left = 440
          Top = 280
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
          Top = 325
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
          Left = 440
          Top = 325
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
        object RzLabel3: TRzLabel
          Left = 5
          Top = 370
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
        object RzLabel4: TRzLabel
          Left = 440
          Top = 370
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
        object Label12: TRzLabel
          Left = 5
          Top = 415
          Width = 84
          Height = 13
          Caption = 'modello di stampa'
          FocusControl = v_template
          ShowAccelChar = False
          Transparent = True
        end
        object v_sfoglia_template: TRzRapidFireButton
          Left = 440
          Top = 430
          Width = 76
          Height = 21
          Hint = 'ricerca il modello desiderato nella cartella "report" '
          Caption = 'Sfoglia'
          ImageIndex = 104
          Images = ARC.immagine_16
          OnClick = v_sfoglia_templateClick
        end
        object v_avanzamento_fasi: TRzDBCheckBox
          Left = 5
          Top = 13
          Width = 102
          Height = 15
          Hint = 
            'spunta per indicare che per l'#39'ordine '#232' gestito l'#39'avanzamento per' +
            ' fase'
          DataField = 'avanzamento_fasi'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'avanzamento fasi'
          TabOrder = 0
          OnClick = v_avanzamento_fasiClick
          OnExit = v_avanzamento_fasiExit
        end
        object v_tipo_esplosione: trzdbcombobox_go
          Left = 5
          Top = 250
          Width = 426
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
          TabOrder = 14
          Items.Strings = (
            'nessuno'
            'solo primo livello'
            'tutti i livelli fino alle materie prime'
            'generazione ordini per tutti i semilavorati')
        end
        object v_tmo_codice_finiti: trzdbedit_go
          Left = 5
          Top = 295
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
          TabOrder = 15
          OnExit = v_tmo_codice_finitiExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object RzDBEditDescrizione_go1: trzdbeditdescrizione_go
          Left = 60
          Top = 295
          Width = 371
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tmo_finiti_ds
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
        object v_tma_codice_finiti: trzdbedit_go
          Left = 440
          Top = 295
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
          TabOrder = 17
          OnExit = v_tma_codice_finitiExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMA'
          lookcolltable = 'TMA'
          lookcollvisname = 'TMA'
        end
        object RzDBEditDescrizione_go2: trzdbeditdescrizione_go
          Left = 495
          Top = 295
          Width = 371
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tma_finiti_ds
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
          TabOrder = 18
        end
        object v_tmo_codice_materie_prime: trzdbedit_go
          Left = 5
          Top = 340
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
          TabOrder = 19
          OnExit = v_tmo_codice_materie_primeExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object RzDBEditDescrizione_go3: trzdbeditdescrizione_go
          Left = 60
          Top = 340
          Width = 371
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
          TabOrder = 20
        end
        object v_tma_codice_materie_prime: trzdbedit_go
          Left = 440
          Top = 340
          Width = 50
          Height = 21
          Hint = 
            'codice del deposito di conto lavoro da cui scaricare le materie ' +
            'prime [F4 F5 F6]'
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
          TabOrder = 21
          OnExit = v_tma_codice_materie_primeExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMA'
          lookcolltable = 'TMA'
          lookcollvisname = 'TMA'
        end
        object RzDBEditDescrizione_go4: trzdbeditdescrizione_go
          Left = 495
          Top = 340
          Width = 371
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
          TabOrder = 22
        end
        object v_scarico_prima_fase: TRzDBCheckBox
          Left = 285
          Top = 13
          Width = 216
          Height = 15
          Hint = 
            'spunta per scaricare tutti i componenti al termine della prima f' +
            'ase interna'
          DataField = 'scarico_prima_fase'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'scarico componenti alla prima fase interna'
          TabOrder = 1
          OnClick = v_scarico_prima_faseClick
          OnExit = v_scarico_prima_faseExit
        end
        object v_valorizzazione_finito_costo_standard: TRzDBCheckBox
          Left = 610
          Top = 13
          Width = 229
          Height = 15
          Hint = 
            'spunta per utilizzare sempre il costo standard per valorizzare i' +
            'l finito'
          DataField = 'valorizzazione_finito_costo_standard'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'valorizzazione finito sempre a costo standard'
          TabOrder = 2
        end
        object v_scarico_componenti_interattivo: TRzDBCheckBox
          Left = 5
          Top = 43
          Width = 160
          Height = 15
          Hint = 
            'spunta per scaricare i componenti in modalit'#224' interattiva con pr' +
            'oposta della quantit'#224
          DataField = 'scarico_componenti_interattivo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'scarico componenti interattivo'
          TabOrder = 3
        end
        object v_acquisizione_dip_mac: TRzDBCheckBox
          Left = 285
          Top = 43
          Width = 233
          Height = 15
          Hint = 
            'spunta per acquisire i tempi e le risorse (dipendente e macchina' +
            ') nella gestione avanzamento fasi'
          DataField = 'acquisizione_dip_mac'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'acquisizione tempi e risorse avanzamento fasi'
          TabOrder = 4
        end
        object v_fasi_non_sequenziali: TRzDBCheckBox
          Left = 610
          Top = 43
          Width = 111
          Height = 15
          Hint = 
            'spunta per indicare che l'#39'evasione delle fasi pu'#242' non essere seq' +
            'uenziale'
          DataField = 'fasi_non_sequenziali'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'fasi non sequenziali'
          TabOrder = 5
        end
        object v_creazione_ddt_ordini: TRzDBCheckBox
          Left = 5
          Top = 73
          Width = 218
          Height = 15
          Hint = 
            'spunta per generare automaticamente l'#39'ordine a fornitore quando ' +
            'si emette un ddt di conto lavorazione'
          DataField = 'creazione_ddt_ordini'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'creazione automatica ordini fornitori da ddt'
          TabOrder = 6
        end
        object v_conferma_evasione: TRzDBCheckBox
          Left = 285
          Top = 73
          Width = 155
          Height = 15
          Hint = 
            'spunta per richiedere la conferma prima dell'#39'evasione dell'#39'ordin' +
            'e di produzione (solo vanzamento fasi)'
          DataField = 'conferma_evasione'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'conferma prima dell'#39'evasione'
          TabOrder = 7
        end
        object RzGroupBox1: TRzGroupBox
          Left = 5
          Top = 165
          Width = 426
          Height = 56
          Caption = 'superamento tempo fase'
          Color = 15987699
          TabOrder = 13
          object Label15: TRzLabel
            Left = 145
            Top = 10
            Width = 110
            Height = 13
            Caption = 'percentuale avviso soft'
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
            Left = 280
            Top = 10
            Width = 114
            Height = 13
            Caption = 'percentuale avviso hard'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object v_avvisa_superamento_tempo_fase: TRzDBCheckBox
            Left = 5
            Top = 28
            Width = 114
            Height = 15
            Hint = 
              'spunta per emettere un avviso per superamento dei tempi di lavor' +
              'azione'
            DataField = 'avvisa_superamento_tempo_fase'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'avvisa superamento'
            TabOrder = 0
          end
          object v_percentuale_avviso_soft: trzdbnumericedit_go
            Left = 145
            Top = 25
            Width = 116
            Height = 21
            Hint = 'percentuale oltre la quale emettere un avviso "soft"'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'percentuale_avviso_soft'
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
            TabOrder = 1
            AllowBlank = False
            AllowScientificNotation = False
            IntegersOnly = False
            DisplayFormat = '#'
            decimalplaces = 0
          end
          object v_percentuale_avviso_hard: trzdbnumericedit_go
            Left = 280
            Top = 25
            Width = 116
            Height = 21
            Hint = 'percentuale oltre la quale emettere un avviso "soft"'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'percentuale_avviso_hard'
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
            DisplayFormat = '#'
            decimalplaces = 0
          end
        end
        object v_messaggio_interattivo: TRzDBCheckBox
          Left = 610
          Top = 73
          Width = 108
          Height = 15
          Hint = 
            'spunta per consentire l'#39'invio di messaggi ad altri utenti GO con' +
            ' i riferimenti del documento in gestione'
          DataField = 'messaggio_interattivo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'messaggi interattivi'
          TabOrder = 8
        end
        object v_tmo_codice_movordp: trzdbedit_go
          Left = 5
          Top = 385
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
          TabOrder = 23
          OnExit = v_tmo_codice_movordpExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object trzdbeditdescrizione_go1: trzdbeditdescrizione_go
          Left = 60
          Top = 385
          Width = 371
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tmo_movordp_ds
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
        object v_tma_codice_principale: trzdbedit_go
          Left = 440
          Top = 385
          Width = 50
          Height = 21
          Hint = 'codice del deposito principale [F4 F5 F6]'
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
          TabOrder = 25
          OnExit = v_tma_codice_principaleExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMA'
          lookcolltable = 'TMA'
          lookcollvisname = 'TMA'
        end
        object trzdbeditdescrizione_go2: trzdbeditdescrizione_go
          Left = 495
          Top = 385
          Width = 371
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
          TabOrder = 26
        end
        object v_template: trzdbedit_go
          Left = 5
          Top = 430
          Width = 426
          Height = 21
          Hint = 'modello da utilizzare per la stampa'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'template'
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 27
          OnExit = v_templateExit
        end
        object v_controllo_articoli: TRzDBCheckBox
          Left = 5
          Top = 103
          Width = 206
          Height = 15
          Hint = 
            'spunta per controllare la presenza di ordini di produzione apert' +
            'i per lo stesso articolo / cliente'
          DataField = 'controllo_articoli'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo presenza ordini articolo/cliente'
          TabOrder = 9
        end
        object v_variazione_tempi_lavorazione: TRzDBCheckBox
          Left = 285
          Top = 103
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
          TabOrder = 10
        end
        object v_scarico_diretto: TRzDBCheckBox
          Left = 610
          Top = 103
          Width = 143
          Height = 15
          Hint = 
            'spunta per consentire lo scarico diretto dei componenti dalla ge' +
            'stione dell'#39'ordine di produzione'
          DataField = 'scarico_diretto'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'scarico diretto componenti'
          TabOrder = 11
        end
        object v_evasione_chiusura_fasi: TRzDBCheckBox
          Left = 5
          Top = 133
          Width = 259
          Height = 15
          Hint = 
            'spunta per controllare la presenza di ordini di produzione apert' +
            'i per lo stesso articolo / cliente'
          DataField = 'evasione_chiusura_fasi'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'evasione diretta ordine a chiusura fasi (EVAFAS01)'
          TabOrder = 12
        end
      end
      object ah6_tab_personalizzati: TRzTabSheet
        Color = clWindow
        Caption = 'personalizzati'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object v_ah6_commessa_obbligatoria: TRzDBCheckBox
          Left = 10
          Top = 15
          Width = 126
          Height = 15
          Hint = 
            'spunta per obbligare la compilazione della commessa sulle righe ' +
            'del documento'
          DataField = 'ah6_commessa_obbligatoria'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'commessa obbligatoria'
          TabOrder = 0
        end
      end
    end
    object v_descrizione: trzdbedit_go
      Left = 70
      Top = 20
      Width = 511
      Height = 21
      Hint = 'descrizione '
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'descrizione'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      OnExit = v_descrizioneExit
    end
    object v_serie_documento: trzdbedit_go
      Left = 590
      Top = 20
      Width = 86
      Height = 21
      Hint = 'serie sezionale per la numerazione'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'serie_documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 1
    end
  end
  inherited pannello_codice: TRzPanel
    Width = 66
    ExplicitWidth = 66
    object Label1: TRzLabel
      Left = 5
      Top = 5
      Width = 32
      Height = 13
      Caption = 'codice'
      FocusControl = v_codice
      ShowAccelChar = False
      Transparent = True
    end
    object v_codice: trzdbedit_go
      Left = 5
      Top = 20
      Width = 56
      Height = 21
      Hint = 'codice documento ordini di produzione [F2 F3]'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'codice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      OnExit = v_codiceExit
      lookupdatabase = 'arc.arcdit'
      lookuppopupmenu = ARC.pop_arc
      lookuptable = 'TOP'
      lookupvisname = 'TOP'
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    Left = 878
    Height = 534
    ExplicitLeft = 878
    ExplicitHeight = 534
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      Top = 30
      Height = 503
      ActivePage = tab_pannello_bottoni_nuovi_extra
      TabIndex = 1
      ExplicitTop = 30
      ExplicitHeight = 503
      FixedDimension = 18
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 22
        ExplicitWidth = 187
        ExplicitHeight = 480
      end
      inherited tab_pannello_bottoni_nuovi_extra: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 22
        ExplicitWidth = 187
        ExplicitHeight = 480
      end
    end
    inherited pannello_destra_pannello: TRzPanel
      Height = 261
      ExplicitHeight = 261
      inherited pannello_destra_PanelGroup: TCategoryPanelGroup
        Height = 235
        ExplicitHeight = 235
      end
    end
  end
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select *'
      'from top'
      'where codice = :codice')
  end
  object tmo_finiti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 365
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
    Left = 385
    Top = 65526
  end
  object tma_finiti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select obsoleto, descrizione'
      'from tma'
      'where codice = :codice')
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
  object tma_finiti_ds: TMyDataSource
    DataSet = tma_finiti
    Left = 429
    Top = 65526
  end
  object tmo_materie_prime: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 460
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
    Left = 480
    Top = 65526
  end
  object tma_materie_prime: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select obsoleto, descrizione'
      'from tma'
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
  object tma_materie_prime_ds: TMyDataSource
    DataSet = tma_materie_prime
    Left = 524
    Top = 65526
  end
  object tmo_movordp: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 580
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_movordp_ds: TMyDataSource
    DataSet = tmo_movordp
    Left = 600
    Top = 65526
  end
  object tma_principale: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select obsoleto, descrizione'
      'from tma'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 620
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_principale_ds: TMyDataSource
    DataSet = tma_principale
    Left = 639
    Top = 65526
  end
  object OpenDialog: TOpenDialog
    Left = 670
    Top = 65526
  end
end
