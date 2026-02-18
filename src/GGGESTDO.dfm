inherited GESTDO: TGESTDO
  Left = 222
  Top = 130
  Caption = 'GESTDO'
  ClientHeight = 681
  ClientWidth = 1014
  ExplicitWidth = 1030
  ExplicitHeight = 740
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1014
    ExplicitWidth = 1014
  end
  inherited statusbar: TStatusBar
    Top = 661
    Width = 1014
    ExplicitTop = 661
    ExplicitWidth = 1014
  end
  inherited pannello_campi: TRzPanel
    Width = 823
    Height = 619
    ExplicitWidth = 823
    ExplicitHeight = 619
    object Label2: TRzLabel [0]
      Left = 70
      Top = 5
      Width = 53
      Height = 13
      Caption = 'descrizione'
      FocusControl = v_descrizione
      ShowAccelChar = False
      Transparent = True
    end
    object Label14: TRzLabel [1]
      Left = 415
      Top = 5
      Width = 123
      Height = 13
      Caption = 'descrizione su documento'
      FocusControl = v_descrizione_documento
      ShowAccelChar = False
      Transparent = True
    end
    inherited tab_control: TRzPageControl
      Top = 47
      Width = 821
      Height = 571
      TabOrder = 3
      ExplicitTop = 47
      ExplicitWidth = 821
      ExplicitHeight = 571
      FixedDimension = 18
      inherited tab_pagina1: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 819
        ExplicitHeight = 551
        object Label3: TRzLabel
          Left = 5
          Top = 5
          Width = 73
          Height = 13
          Caption = 'tipo documento'
          ShowAccelChar = False
          Transparent = True
        end
        object Label4: TRzLabel
          Left = 5
          Top = 125
          Width = 85
          Height = 13
          Caption = 'serie numerazione'
          FocusControl = v_numerazione
          ShowAccelChar = False
          Transparent = True
        end
        object Label25: TRzLabel
          Left = 415
          Top = 5
          Width = 83
          Height = 13
          Caption = 'causale contabile'
          ShowAccelChar = False
          Transparent = True
        end
        object Label5: TRzLabel
          Left = 5
          Top = 45
          Width = 140
          Height = 13
          Caption = 'causale movimenti magazzino'
          ShowAccelChar = False
          Transparent = True
        end
        object Label7: TRzLabel
          Left = 415
          Top = 45
          Width = 75
          Height = 13
          Caption = 'codice deposito'
          ShowAccelChar = False
          Transparent = True
        end
        object Label9: TRzLabel
          Left = 5
          Top = 85
          Width = 81
          Height = 13
          Caption = 'causale trasporto'
          ShowAccelChar = False
          Transparent = True
        end
        object Label6: TRzLabel
          Left = 415
          Top = 125
          Width = 163
          Height = 13
          Caption = 'causale documento fatture differite'
          ShowAccelChar = False
          Transparent = True
        end
        object Label8: TRzLabel
          Left = 5
          Top = 165
          Width = 63
          Height = 13
          Caption = 'note apertura'
          ShowAccelChar = False
          Transparent = True
        end
        object Label11: TRzLabel
          Left = 415
          Top = 165
          Width = 64
          Height = 13
          Caption = 'note chiusura'
          ShowAccelChar = False
          Transparent = True
        end
        object Label10: TRzLabel
          Left = 5
          Top = 250
          Width = 123
          Height = 13
          Caption = 'natura transazione INTRA'
          ShowAccelChar = False
          Transparent = True
        end
        object Label13: TRzLabel
          Left = 415
          Top = 85
          Width = 203
          Height = 13
          Caption = 'descrizione su documento fattura pro forma'
          ShowAccelChar = False
          Transparent = True
          Visible = False
        end
        object Label15: TRzLabel
          Left = 5
          Top = 205
          Width = 131
          Height = 13
          Caption = 'documento evasione diretta'
          ShowAccelChar = False
          Transparent = True
        end
        object Label17: TRzLabel
          Left = 415
          Top = 205
          Width = 101
          Height = 13
          Caption = 'aspetto esteriore beni'
          ShowAccelChar = False
          Transparent = True
        end
        object Label29: TRzLabel
          Left = 295
          Top = 250
          Width = 107
          Height = 13
          Caption = 'modalit'#224' servizi INTRA'
          ShowAccelChar = False
          Transparent = True
        end
        object Label40: TRzLabel
          Left = 205
          Top = 440
          Width = 188
          Height = 13
          Caption = 'aggiornamento automatico listini vendita'
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
          Top = 440
          Width = 61
          Height = 13
          Caption = 'giorni validit'#224
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
          Left = 425
          Top = 440
          Width = 120
          Height = 13
          Caption = 'note situazione scadenze'
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
          Left = 5
          Top = 485
          Width = 69
          Height = 13
          Caption = 'importo minimo'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel16: TRzLabel
          Left = 105
          Top = 440
          Width = 75
          Height = 13
          Caption = 'giorni consegna'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel22: TRzLabel
          Left = 415
          Top = 250
          Width = 158
          Height = 13
          Caption = 'tipo documento fattura elettronica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_numerazione: trzdbedit_go
          Left = 5
          Top = 140
          Width = 81
          Height = 21
          Hint = 'serie sezionale per la numerazione'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'numerazione'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 4
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          OnExit = v_numerazioneExit
        end
        object v_tipo_documento: trzdbcombobox_go
          Left = 5
          Top = 20
          Width = 401
          Height = 21
          Hint = 'tipo documento in cui si utilizza la causale'
          DataField = 'tipo_documento'
          DataSource = tabella_ds
          Style = csDropDownList
          DropDownCount = 12
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
          OnChange = v_tipo_documentoChange
          OnExit = v_tipo_documentoExit
          Items.Strings = (
            'ddt'
            'ddt fornitori'
            'bolla'
            'fattura accompagnatoria'
            'fattura immediata'
            'nota credito'
            'fattura differita'
            'corrispettivo'
            'ordine'
            'preventivo'
            'preventivo nominativi')
        end
        object v_tco_codice: trzdbedit_go
          Left = 415
          Top = 20
          Width = 50
          Height = 21
          Hint = 
            'causale contabile per il passaggio dati fattura in contabilit'#224' [' +
            'F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tco_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnExit = v_tco_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTCO'
          lookcolltable = 'TCO'
          lookcollvisname = 'TCO'
        end
        object v_tmo_codice: trzdbedit_go
          Left = 5
          Top = 60
          Width = 50
          Height = 21
          Hint = 
            'causale movimenti magazzino da proporre sul documento per il car' +
            'ico/scarico articoli [F4 F5 F6]'
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
          TabOrder = 2
          OnExit = v_tmo_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object v_tma_codice: trzdbedit_go
          Left = 415
          Top = 60
          Width = 50
          Height = 21
          Hint = 
            'codice deposito da proporre sul documento per la movimentazione ' +
            'di magazzino [F4 F5 F6]'
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
          TabOrder = 3
          OnExit = v_tma_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMA'
          lookcolltable = 'TMA'
          lookcollvisname = 'TMA'
        end
        object v_causale_trasporto: trzdbedit_go
          Left = 5
          Top = 100
          Width = 401
          Height = 21
          Hint = 
            'causale del trasporto da stampare su bolle, D.D.T. e fatture acc' +
            'ompagnatorie'
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
          TabOrder = 4
          OnEnter = v_causale_trasportoEnter
          lookcolltable = 'TTR'
          lookcollvisname = 'TTR'
        end
        object v_tdo_codice_differite: trzdbedit_go
          Left = 415
          Top = 140
          Width = 50
          Height = 21
          Hint = 
            'causale documento per generare le fatture differite da bolle e D' +
            '.D.T. [F4 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tdo_codice_differite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 7
          OnExit = v_tdo_codice_differiteExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTDO'
          lookcolltable = 'TDO'
          lookcollvisname = 'TDO'
        end
        object v_tcd_codice_inizio: trzdbedit_go
          Left = 5
          Top = 180
          Width = 50
          Height = 21
          Hint = 'codice note da stampare in apertura documento'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tcd_codice_inizio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 8
          OnExit = v_tcd_codice_inizioExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTCD'
          lookcolltable = 'TCD'
          lookcollvisname = 'TCD'
        end
        object v_tcd_codice_fine: trzdbedit_go
          Left = 415
          Top = 180
          Width = 50
          Height = 21
          Hint = 'codice note da stampare in chiusura documento'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tcd_codice_fine'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 9
          OnExit = v_tcd_codice_fineExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTCD'
          lookcolltable = 'TCD'
          lookcollvisname = 'TCD'
        end
        object v_transazione_intra: trzdbcombobox_go
          Left = 5
          Top = 265
          Width = 281
          Height = 21
          Hint = 'transazione INTRA'
          DataField = 'transazione_intra'
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
          TabOrder = 12
          Items.Strings = (
            ''
            'acquisto/vendita'
            'restituzione/sostituzione'
            'aiuti di vario tipo'
            'lavoro conto terzi/riparazione'
            'segue conto terzi/riparazione'
            'non trasferimento propriet'#224
            'programma comune coordinato'
            'forniture contratti generali'
            'altre transazioni'
            'acquisto/vendita triangolazione'
            'restituzione/sostituzione triangolazione'
            'aiuti di vario tipo triangolazione'
            'lavoro conto terzi/riparazione triangolazione'
            'segue conto terzi/riparazione triangolazione'
            'non trasferimento propriet'#224' triangolazione'
            'programma comune coordinato triangolazione'
            'forniture contratti generali triangolazione'
            'altre transazioni triangolazione')
        end
        object GroupBox1: TGroupBox
          Left = 5
          Top = 295
          Width = 401
          Height = 66
          Caption = 'collegamenti '
          TabOrder = 15
          object v_analitica: TRzDBCheckBox
            Left = 10
            Top = 19
            Width = 58
            Height = 15
            Hint = 
              'spunta se le righe dei documenti interessano i centri di costo e' +
              ' ricavo'
            DataField = 'analitica'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'analitica'
            TabOrder = 0
          end
          object v_commesse: TRzDBCheckBox
            Left = 120
            Top = 19
            Width = 69
            Height = 15
            Hint = 'spunta se il documento interessa la gestione commesse'
            DataField = 'commesse'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'commesse'
            TabOrder = 1
          end
          object v_conto_terzi: TRzDBCheckBox
            Left = 10
            Top = 39
            Width = 68
            Height = 15
            Hint = 
              'spunta se le righe dei documenti interessano la gestione delle l' +
              'avorazioni per conto terzi'
            DataField = 'conto_terzi'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'conto terzi'
            TabOrder = 3
          end
          object v_lotti: TRzDBCheckBox
            Left = 215
            Top = 19
            Width = 82
            Height = 15
            Hint = 
              'spunta se i movimenti interessano la gestione dei lotti per gli ' +
              'articoli abilitati'
            DataField = 'lotti'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'lotti/matricole'
            TabOrder = 2
          end
          object v_rma: TRzDBCheckBox
            Left = 120
            Top = 39
            Width = 36
            Height = 15
            Hint = 'reso materiale autorizzato'
            DataField = 'rma'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'rma'
            TabOrder = 4
          end
        end
        object GroupBox2: TGroupBox
          Left = 415
          Top = 295
          Width = 396
          Height = 66
          Caption = 'note clienti e articoli'
          TabOrder = 16
          object v_note_cliente: TRzDBCheckBox
            Left = 10
            Top = 19
            Width = 107
            Height = 15
            Hint = 'spunta per stampare sui documenti le note in anagrafica clienti'
            DataField = 'note_cliente'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'stampa note clienti'
            TabOrder = 0
          end
          object v_note_articolo: TRzDBCheckBox
            Left = 10
            Top = 39
            Width = 110
            Height = 15
            Hint = 'spunta per stampare sui documenti le note in anagrafica articoli'
            DataField = 'note_articolo'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'stampa note articoli'
            TabOrder = 1
          end
        end
        object GroupBox5: TGroupBox
          Left = 5
          Top = 365
          Width = 401
          Height = 66
          Caption = 'cartelle attivate automaticamente in apertura'
          TabOrder = 17
          object v_pagina_riferimento: TRzDBCheckBox
            Left = 10
            Top = 19
            Width = 67
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina riferimento nel ca' +
              'ricamento documenti'
            DataField = 'pagina_riferimento'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'riferimento'
            TabOrder = 0
          end
          object v_pagina_magazzino: TRzDBCheckBox
            Left = 215
            Top = 19
            Width = 69
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina magazzino nel cari' +
              'camento documenti'
            DataField = 'pagina_magazzino'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'magazzino'
            TabOrder = 2
          end
          object v_pagina_spedizione: TRzDBCheckBox
            Left = 120
            Top = 39
            Width = 69
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina spedizione nel car' +
              'icamento documenti'
            DataField = 'pagina_spedizione'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'spedizione'
            TabOrder = 5
          end
          object v_pagina_incasso: TRzDBCheckBox
            Left = 120
            Top = 19
            Width = 55
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina incasso nel carica' +
              'mento documenti'
            DataField = 'pagina_incasso'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'incasso'
            TabOrder = 1
          end
          object v_pagina_sconti: TRzDBCheckBox
            Left = 215
            Top = 39
            Width = 80
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina sconti/spese nel c' +
              'aricamento documenti'
            DataField = 'pagina_sconti'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'sconti/spese'
            TabOrder = 6
          end
          object v_pagina_destinazione: TRzDBCheckBox
            Left = 10
            Top = 39
            Width = 78
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina destinazione nel c' +
              'aricamento documenti'
            DataField = 'pagina_destinazione'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'destinazione'
            TabOrder = 4
          end
          object v_pagina_analitica: TRzDBCheckBox
            Left = 320
            Top = 39
            Width = 58
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina della contabilit'#224' ' +
              'analitica nel caricamento documenti'
            DataField = 'pagina_analitica'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'analitica'
            TabOrder = 7
          end
          object v_pagina_note: TRzDBCheckBox
            Left = 320
            Top = 19
            Width = 40
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina note nel caricamen' +
              'to documenti'
            DataField = 'pagina_note'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'note'
            TabOrder = 3
          end
        end
        object v_descrizione_documento_pro_forma: trzdbedit_go
          Left = 415
          Top = 100
          Width = 396
          Height = 21
          Hint = 'descrizione da esporre sulle fatture pro forma'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'descrizione_documento_pro_forma'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 5
          Visible = False
        end
        object GroupBox6: TGroupBox
          Left = 415
          Top = 365
          Width = 396
          Height = 66
          Caption = 'cartelle attivate automaticamente in chiusura'
          TabOrder = 18
          object v_pagina_riferimento_chiusura: TRzDBCheckBox
            Left = 10
            Top = 19
            Width = 67
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina riferimento nel ca' +
              'ricamento documenti'
            DataField = 'pagina_riferimento_chiusura'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'riferimento'
            TabOrder = 0
          end
          object v_pagina_magazzino_chiusura: TRzDBCheckBox
            Left = 210
            Top = 19
            Width = 69
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina magazzino nel cari' +
              'camento documenti'
            DataField = 'pagina_magazzino_chiusura'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'magazzino'
            TabOrder = 2
          end
          object v_pagina_spedizione_chiusura: TRzDBCheckBox
            Left = 120
            Top = 39
            Width = 69
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina spedizione nel car' +
              'icamento documenti'
            DataField = 'pagina_spedizione_chiusura'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'spedizione'
            TabOrder = 5
          end
          object v_pagina_incasso_chiusura: TRzDBCheckBox
            Left = 120
            Top = 19
            Width = 55
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina incasso nel carica' +
              'mento documenti'
            DataField = 'pagina_incasso_chiusura'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'incasso'
            TabOrder = 1
          end
          object v_pagina_sconti_chiusura: TRzDBCheckBox
            Left = 210
            Top = 39
            Width = 80
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina sconti/spese nel c' +
              'aricamento documenti'
            DataField = 'pagina_sconti_chiusura'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'sconti/spese'
            TabOrder = 6
          end
          object v_pagina_destinazione_chiusura: TRzDBCheckBox
            Left = 10
            Top = 39
            Width = 78
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina destinazione nel c' +
              'aricamento documenti'
            DataField = 'pagina_destinazione_chiusura'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'destinazione'
            TabOrder = 4
          end
          object v_pagina_note_chiusura: TRzDBCheckBox
            Left = 310
            Top = 19
            Width = 40
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina note nel caricamen' +
              'to documenti'
            DataField = 'pagina_note_chiusura'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'note'
            TabOrder = 3
          end
          object v_pagina_analitica_chiusura: TRzDBCheckBox
            Left = 310
            Top = 39
            Width = 58
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina della contabilit'#224' ' +
              'analitica nel caricamento documenti'
            DataField = 'pagina_analitica_chiusura'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'analitica'
            TabOrder = 7
          end
        end
        object v_tdo_codice_evasione_diretta: trzdbedit_go
          Left = 5
          Top = 220
          Width = 50
          Height = 21
          Hint = 
            'codice documento per evedere direttamente il preventivo o l'#39'ordi' +
            'ne in gestione'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tdo_codice_evasione_diretta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 10
          OnExit = v_tdo_codice_evasione_direttaExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTDO'
          lookcolltable = 'TDO'
          lookcollvisname = 'TDO'
        end
        object v_tab_codice: trzdbedit_go
          Left = 415
          Top = 220
          Width = 50
          Height = 21
          Hint = 
            'aspetto esteriore dei beni satandard da proporre sul documento [' +
            'F4 F5 F6]'
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
          TabOrder = 11
          OnExit = v_tab_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTAB'
          lookcolltable = 'TAB'
          lookcollvisname = 'TAB'
        end
        object RzDBEditDescrizione_go4: trzdbeditdescrizione_go
          Left = 470
          Top = 20
          Width = 341
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tco_ds
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
          TabOrder = 19
        end
        object RzDBEditDescrizione_go1: trzdbeditdescrizione_go
          Left = 469
          Top = 220
          Width = 342
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tab_ds
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
          TabOrder = 20
        end
        object RzDBEditDescrizione_go2: trzdbeditdescrizione_go
          Left = 60
          Top = 60
          Width = 346
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tmo_ds
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
          TabOrder = 21
        end
        object RzDBEditDescrizione_go3: trzdbeditdescrizione_go
          Left = 470
          Top = 60
          Width = 341
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tma_ds
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
          TabOrder = 22
        end
        object RzDBEditDescrizione_go5: trzdbeditdescrizione_go
          Left = 470
          Top = 140
          Width = 341
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tdo_differite_ds
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
          TabOrder = 23
        end
        object RzDBEditDescrizione_go6: trzdbeditdescrizione_go
          Left = 60
          Top = 180
          Width = 346
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tcd_inizio_ds
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
        object RzDBEditDescrizione_go7: trzdbeditdescrizione_go
          Left = 470
          Top = 180
          Width = 341
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tcd_fine_ds
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
          TabOrder = 25
        end
        object RzDBEditDescrizione_go8: trzdbeditdescrizione_go
          Left = 60
          Top = 220
          Width = 346
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tdo_evasione_diretta_ds
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
        object v_modalita_erogazione_intra: trzdbcombobox_go
          Left = 295
          Top = 265
          Width = 111
          Height = 21
          Hint = 'modalit'#224' di erogazione dei servizi INTRA'
          DataField = 'modalita_erogazione_intra'
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
          TabOrder = 13
          Items.Strings = (
            ''
            'istantanea'
            'a pi'#249' riprese')
        end
        object v_aggiorna_listini: trzdbcombobox_go
          Left = 205
          Top = 455
          Width = 201
          Height = 21
          Hint = 
            'spunta la voce desiderata per attivare l'#39'aggiornamento automatic' +
            'o dei listini di vendita durante il caricamento documenti'
          DataField = 'aggiorna_listini'
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
            'nessuno'
            'listino clienti'
            'listino vendita'
            'clienti interattivo'
            'vendita interattivo')
        end
        object v_giorni_validita_preventivo: trzdbnumericedit_go
          Left = 5
          Top = 455
          Width = 91
          Height = 21
          Hint = 'giorni validit'#224' dei preventivi'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'giorni_validita_preventivo'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 27
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_note_saldo: trzdbmemo_go
          Left = 425
          Top = 455
          Width = 386
          Height = 66
          Hint = 
            'note con indicazione del saldo contabile [/*data*/=alla data] [/' +
            '*importo*/=importo]'
          DataField = 'note_saldo'
          DataSource = tabella_ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 32
          OnExit = v_note_saldoExit
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
        end
        object v_importo_minimo_iva_inclusa: TRzDBCheckBox
          Left = 105
          Top = 503
          Width = 141
          Height = 15
          Hint = 'spunta per indicare che l'#39'importo minimo '#232' comprensivo di iva'
          DataField = 'importo_minimo_iva_inclusa'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'importo minimo iva inclusa'
          TabOrder = 31
        end
        object v_importo_minimo: trzdbnumericedit_go
          Left = 5
          Top = 500
          Width = 91
          Height = 21
          Hint = 
            'controllo importo minimo documento (espresso in euro) con avviso' +
            ' se inferiore'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'importo_minimo'
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
          TabOrder = 30
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object v_giorni_consegna_ordini: trzdbnumericedit_go
          Left = 105
          Top = 455
          Width = 91
          Height = 21
          Hint = 'giorni di consegna degli ordini dalla data documento'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'giorni_consegna_ordini'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 28
          AllowBlank = False
          AllowScientificNotation = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_no_sdi: TRzDBCheckBox
          Left = 255
          Top = 503
          Width = 47
          Height = 15
          Hint = 'spunta per non inviare il documento a SDI'
          DataField = 'no_sdi'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'no sdi'
          TabOrder = 33
          TabStop = False
        end
        object v_tipo_documento_fa: trzdbcombobox_go
          Left = 415
          Top = 265
          Width = 396
          Height = 21
          Hint = 
            'tipo documento cui si riferiscono i dati oggetto della trasmissi' +
            'one (TD01, TD04, TD05, TD07, TD08, TD10, TD11)'
          Margins.Left = 1
          Margins.Top = 1
          DataField = 'tipo_documento_fa'
          DataSource = tabella_ds
          Style = csDropDownList
          FlatButtons = True
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
        object v_ordine_pianificato: TRzDBCheckBox
          Left = 310
          Top = 503
          Width = 99
          Height = 15
          Hint = 'spunta per indicare che il preventivo '#232' un ordine pianificato'
          DataField = 'ordine_pianificato'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'ordine pianificato'
          TabOrder = 34
          TabStop = False
        end
      end
      object tab_pagina2: TRzTabSheet
        Color = clWindow
        ImageIndex = 1
        Caption = 'dati extra'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label46: TRzLabel
          Left = 420
          Top = 445
          Width = 83
          Height = 13
          Caption = 'spedizioni editoria'
          Transparent = True
        end
        object Label18: TRzLabel
          Left = 5
          Top = 445
          Width = 180
          Height = 13
          Caption = 'documento conto/vendita da evadere'
          ShowAccelChar = False
          Transparent = True
        end
        object v_l_prezzo_proposto: TRzLabel
          Left = 610
          Top = 445
          Width = 88
          Height = 13
          Caption = 'prezzo da proporre'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel17: TRzLabel
          Left = 420
          Top = 485
          Width = 144
          Height = 13
          Caption = 'password chiusura documento'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel21: TRzLabel
          Left = 610
          Top = 485
          Width = 169
          Height = 13
          Caption = 'modalit'#224' visualizzazione disponibilit'#224
          Transparent = True
        end
        object GroupBox4: TGroupBox
          Left = 5
          Top = 5
          Width = 646
          Height = 61
          Caption = 'campi opzionali cartella generale '
          TabOrder = 0
          object v_gestione_data_documento: TRzDBCheckBox
            Left = 10
            Top = 19
            Width = 96
            Height = 15
            Hint = 'spunta per gestire la data documento'
            DataField = 'gestione_data_documento'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'data documento'
            TabOrder = 0
          end
          object v_gestione_numero_documento: TRzDBCheckBox
            Left = 175
            Top = 19
            Width = 110
            Height = 15
            Hint = 'spunta per gestire il numero documento'
            DataField = 'gestione_numero_documento'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'numero documento'
            TabOrder = 1
          end
          object v_gestione_tlv_codice: TRzDBCheckBox
            Left = 345
            Top = 19
            Width = 80
            Height = 15
            Hint = 'spunta per gestire il codice listino'
            DataField = 'gestione_tlv_codice'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'codice listino'
            TabOrder = 2
          end
          object v_gestione_tpa_codice: TRzDBCheckBox
            Left = 480
            Top = 19
            Width = 107
            Height = 15
            Hint = 'spunta per gestire il codice pagamento'
            DataField = 'gestione_tpa_codice'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'codice pagamento'
            TabOrder = 3
          end
          object v_gestione_tsm_codice: TRzDBCheckBox
            Left = 10
            Top = 39
            Width = 86
            Height = 15
            Hint = 'spunta per gestire il codice sconto'
            DataField = 'gestione_tsm_codice'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'codice sconto'
            TabOrder = 4
          end
          object v_gestione_tva_codice: TRzDBCheckBox
            Left = 175
            Top = 39
            Width = 83
            Height = 15
            Hint = 'spunta per gestire il codice valuta'
            DataField = 'gestione_tva_codice'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'codice valuta'
            TabOrder = 5
          end
          object v_gestione_data: TRzDBCheckBox
            Left = 345
            Top = 39
            Width = 128
            Height = 15
            Hint = 'spunta per gestire la data di consegna o la data di validit'#224
            DataField = 'gestione_data'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'data consegna/validit'#224
            TabOrder = 6
          end
        end
        object v_stampa_immediata: TRzDBCheckBox
          Left = 15
          Top = 142
          Width = 103
          Height = 15
          Hint = 
            'spunta per eseguire la stampa immediata del documento alla sua c' +
            'hiusura senza ulteriori richieste'
          DataField = 'stampa_immediata'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa immediata'
          TabOrder = 3
        end
        object v_descrizioni_articolo_unite: TRzDBCheckBox
          Left = 180
          Top = 142
          Width = 131
          Height = 15
          Hint = 
            'spunta per stampare sui documenti le due descrizioni dell'#39'artico' +
            'lo unite'
          DataField = 'descrizioni_articolo_unite'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'descrizioni articolo unite'
          TabOrder = 4
        end
        object v_data_inizio_trasporto: TRzDBCheckBox
          Left = 350
          Top = 142
          Width = 84
          Height = 15
          Hint = 
            'spunta per assegnare in automatico la data inizio trasporto su d' +
            'ocumenti accompagnatori'
          DataField = 'data_inizio_trasporto'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'data trasporto'
          TabOrder = 5
          OnExit = v_data_inizio_trasportoExit
        end
        object v_ora_inizio_trasporto: TRzDBCheckBox
          Left = 505
          Top = 142
          Width = 78
          Height = 15
          Hint = 
            'spunta per assegnare in automatico l'#39'ora inizio trasporto su doc' +
            'umenti accompagnatori'
          DataField = 'ora_inizio_trasporto'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'ora trasporto'
          TabOrder = 6
          OnExit = v_ora_inizio_trasportoExit
        end
        object v_fattura_professionisti: TRzDBCheckBox
          Left = 670
          Top = 142
          Width = 112
          Height = 15
          Hint = 
            'spunta per emettere il documento con il conteggio della cassa pr' +
            'evidenza e della ritenuta d'#39'acconto'
          DataField = 'fattura_professionisti'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'fattura professionisti'
          TabOrder = 7
        end
        object v_immagine_articolo: TRzDBCheckBox
          Left = 15
          Top = 162
          Width = 133
          Height = 15
          Hint = 
            'spunta per attivare la stampa sui prevenviti dellle foto degli a' +
            'rticoli'
          DataField = 'immagine_articolo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'foto articoli su preventivi'
          TabOrder = 8
        end
        object v_richiesta_accettazione: TRzDBCheckBox
          Left = 180
          Top = 162
          Width = 122
          Height = 15
          Hint = 
            'spunta per attivare la richiesta di accettazione su preventivi e' +
            ' ordini'
          DataField = 'richiesta_accettazione'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'richiesta accettazione'
          TabOrder = 9
        end
        object v_prezzo_bloccato: TRzDBCheckBox
          Left = 350
          Top = 162
          Width = 94
          Height = 15
          Hint = 
            'spunta per indicare che il prezzo non viene ricalcolato in fase ' +
            'di evasione documento'
          DataField = 'prezzo_bloccato'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'prezzo bloccato'
          TabOrder = 10
        end
        object v_evadere_note: TRzDBCheckBox
          Left = 505
          Top = 162
          Width = 82
          Height = 15
          Hint = 
            'spunta per indicare che le note descrittive devono essere riport' +
            'ate sul documento di evasione'
          DataField = 'evadere_note'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'evadere note'
          TabOrder = 11
        end
        object v_spedizioni_editoria: trzdbcombobox_go
          Left = 420
          Top = 460
          Width = 181
          Height = 21
          Hint = 'tipologia di spedizione per editoria'
          DataField = 'spedizioni_editoria'
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
          TabOrder = 78
          Items.Strings = (
            'no'
            'spedizioni italia'
            'spedizioni estero'
            'spedizione abbonamenti'
            'incasso abbonamenti')
        end
        object v_controllo_quantita: TRzDBCheckBox
          Left = 670
          Top = 162
          Width = 100
          Height = 15
          Hint = 
            'spunta per eseguire il controllo che la quantit'#224' della riga docu' +
            'mento sia diversa da zero'
          DataField = 'controllo_quantita'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo quantit'#224
          TabOrder = 12
        end
        object GroupBox7: TGroupBox
          Left = 5
          Top = 69
          Width = 806
          Height = 62
          Caption = 'campi opzionali righe documento'
          TabOrder = 2
          object v_gestione_descrizione1: TRzDBCheckBox
            Left = 10
            Top = 19
            Width = 100
            Height = 15
            Hint = 'spunta per gestire la prima descrizione sulle righe documenti'
            DataField = 'gestione_descrizione1'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'prima descrizione'
            TabOrder = 0
          end
          object v_gestione_descrizione2: TRzDBCheckBox
            Left = 175
            Top = 19
            Width = 116
            Height = 15
            Hint = 'spunta per gestire la seconda descrizione sulle righe documenti '
            DataField = 'gestione_descrizione2'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'seconda descrizione'
            TabOrder = 1
          end
          object v_gestione_numero_colli: TRzDBCheckBox
            Left = 345
            Top = 19
            Width = 75
            Height = 15
            Hint = 'spunta per gestire il numero colli sulle righe documenti '
            DataField = 'gestione_numero_colli'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'numero colli'
            TabOrder = 2
          end
          object v_gestione_quantita: TRzDBCheckBox
            Left = 10
            Top = 39
            Width = 57
            Height = 15
            Hint = 'spunta per gestire la quantit'#224' sulle righe documenti '
            DataField = 'gestione_quantita'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'quantit'#224
            TabOrder = 5
          end
          object v_gestione_sconto_cliente: TRzDBCheckBox
            Left = 345
            Top = 39
            Width = 47
            Height = 15
            Hint = 'spunta per gestire gli sconti sulle righe documenti '
            DataField = 'gestione_sconto_cliente'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'sconti'
            TabOrder = 7
          end
          object v_gestione_tum_codice: TRzDBCheckBox
            Left = 665
            Top = 19
            Width = 74
            Height = 15
            Hint = 'spunta per gestire l'#39'unit'#224' di misura sulle righe documenti '
            DataField = 'gestione_tum_codice'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'codice u.m.'
            TabOrder = 4
          end
          object v_gestione_prezzo: TRzDBCheckBox
            Left = 175
            Top = 39
            Width = 50
            Height = 15
            Hint = 'spunta per gestire il prezzo sulle righe documenti '
            DataField = 'gestione_prezzo'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'prezzo'
            TabOrder = 6
          end
          object v_gestione_importo: TRzDBCheckBox
            Left = 665
            Top = 39
            Width = 53
            Height = 15
            Hint = 'spunta per gestire l'#39'importo sulle righe documenti '
            DataField = 'gestione_importo'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'importo'
            TabOrder = 9
          end
          object v_gestione_numero_confezioni: TRzDBCheckBox
            Left = 500
            Top = 19
            Width = 105
            Height = 15
            Hint = 'spunta per gestire il numero confezioni sulle righe documenti '
            DataField = 'gestione_numero_confezioni'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'numero confezioni'
            TabOrder = 3
          end
          object v_gestione_tipo_movimento: TRzDBCheckBox
            Left = 500
            Top = 39
            Width = 90
            Height = 15
            Hint = 'spunta per gestire il tipo movimento sulle righe documenti'
            DataField = 'gestione_tipo_movimento'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'tipo movimento'
            TabOrder = 8
          end
        end
        object v_controllo_prezzo: TRzDBCheckBox
          Left = 15
          Top = 182
          Width = 93
          Height = 15
          Hint = 
            'spunta per eseguire il controllo che il prezzo della riga docume' +
            'nto sia diverso da zero'
          DataField = 'controllo_prezzo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo prezzo'
          TabOrder = 13
        end
        object v_controllo_articolo_livello_sup: TRzDBCheckBox
          Left = 505
          Top = 182
          Width = 135
          Height = 15
          Hint = 
            'spunta per avvisare che l'#39'articolo '#232' presente da evadere in un d' +
            'ocumento di livello superiore'
          DataField = 'controllo_articolo_livello_sup'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'avviso presenza articoli  '
          TabOrder = 16
        end
        object v_numerazione_fiscale: TRzDBCheckBox
          Left = 350
          Top = 182
          Width = 112
          Height = 15
          Hint = 
            'spunta per indicare che la numerazione del documento '#232' fiscale, ' +
            'con assegnazione automatica e controllo duplicati'
          DataField = 'numerazione_fiscale'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'numerazione fiscale'
          TabOrder = 15
        end
        object v_controllo_documenti_livello_sup: TRzDBCheckBox
          Left = 180
          Top = 182
          Width = 148
          Height = 15
          Hint = 
            'spunta per avvisare che esistono documenti di livello superiore ' +
            'da evadere'
          DataField = 'controllo_documenti_livello_sup'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'avviso presenza documenti'
          TabOrder = 14
        end
        object v_controllo_esistenza: TRzDBCheckBox
          Left = 15
          Top = 202
          Width = 106
          Height = 15
          Hint = 'spunta per eseguire il controllo della giacenza dell'#39'articolo'
          DataField = 'controllo_esistenza'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo esistenza'
          TabOrder = 18
        end
        object v_esegui_dati_riga: TRzDBCheckBox
          Left = 670
          Top = 202
          Width = 90
          Height = 15
          Hint = 'spunta per attivare automaticamente la gestione dei dati riga'
          DataField = 'esegui_dati_riga'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'esegui dati riga'
          TabOrder = 22
        end
        object v_calcolo_margine: TRzDBCheckBox
          Left = 670
          Top = 262
          Width = 93
          Height = 15
          Hint = 
            'spunta per eseguire il calcolo del margine di contribuzione al l' +
            'ordo delle provigioni quando si totalizza il documento'
          DataField = 'calcolo_margine'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'calcolo margine'
          TabOrder = 37
        end
        object v_ultimo_prezzo: TRzDBCheckBox
          Left = 670
          Top = 182
          Width = 114
          Height = 15
          Hint = 
            'spunta per assegnare l'#39'ultimo prezzo applicato per ogni articolo' +
            ' al cliente'
          DataField = 'ultimo_prezzo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'utilizza ultimo prezzo'
          TabOrder = 17
          Visible = False
        end
        object v_gestione_configurazione: TRzDBCheckBox
          Left = 505
          Top = 202
          Width = 131
          Height = 15
          Hint = 
            'spunta per gestire sugli ordini la configurazione degli articoli' +
            ' abilitati'
          DataField = 'gestione_configurazione'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'gestione configurazione'
          TabOrder = 21
        end
        object v_totalizza_quantita: TRzDBCheckBox
          Left = 350
          Top = 222
          Width = 98
          Height = 15
          Hint = 
            'spunta per eseguire automaticamente la totalizzazione del peso l' +
            'ordo, peso netto e volume sulla testata documento'
          DataField = 'totalizza_quantita'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'totalizza quantit'#224
          TabOrder = 25
        end
        object v_tdo_codice_conto_vendita: trzdbedit_go
          Left = 5
          Top = 460
          Width = 50
          Height = 21
          Hint = 
            'codice documento di conto/vendita da evadere con la fattura imme' +
            'diata [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tdo_codice_conto_vendita'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 76
          OnEnter = v_tdo_codice_conto_venditaEnter
          OnExit = v_tdo_codice_conto_venditaExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTDO'
          lookcolltable = 'TDO'
          lookcollvisname = 'TDV'
        end
        object v_tdo_descrizione_conto_vendita: trzdbeditdescrizione_go
          Left = 60
          Top = 460
          Width = 351
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
          TabOrder = 77
        end
        object v_lotti_singola_riga: TRzDBCheckBox
          Left = 350
          Top = 262
          Width = 150
          Height = 15
          Hint = 
            'spunta per eseguire la stampa di un solo lotto / matricola per r' +
            'iga sui documenti di vendita'
          DataField = 'lotti_singola_riga'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa singolo lotto per riga'
          TabOrder = 35
        end
        object v_gestione_colli: TRzDBCheckBox
          Left = 180
          Top = 222
          Width = 80
          Height = 15
          Hint = 'spunta per eseguire la gestione dei colli sul documento'
          DataField = 'gestione_colli'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'gestione colli'
          TabOrder = 24
        end
        object v_consolidamento: TRzDBCheckBox
          Left = 15
          Top = 222
          Width = 143
          Height = 15
          Hint = 
            'spunta per eseguire il consolidamento immediato delle fatture do' +
            'po la stampa'
          DataField = 'consolidamento'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'consolidamento immediato'
          TabOrder = 23
        end
        object v_stampa_immediata_etichette: TRzDBCheckBox
          Left = 350
          Top = 202
          Width = 97
          Height = 15
          Hint = 
            'spunta per eseguire la stampa immediata delle etichette dopo il ' +
            'caricamento del documento'
          DataField = 'stampa_immediata_etichette'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa etichette'
          TabOrder = 20
        end
        object v_prezzo_proposto: trzdbcombobox_go
          Left = 610
          Top = 460
          Width = 201
          Height = 21
          Hint = 'tipo prezzo unitario da proporre in registrazione movimenti'
          DataField = 'prezzo_proposto'
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
          TabOrder = 79
          Items.Strings = (
            'listino vendita'
            'ultimo prezzo vendita'
            'costo standard'
            'prezzo medio'
            'ultimo prezzo acquisto'
            'listino acquisto'
            'ultimo prezzo cliente')
        end
        object v_totalizza_colli: TRzDBCheckBox
          Left = 505
          Top = 222
          Width = 78
          Height = 15
          Hint = 
            'spunta per eseguire automaticamente la totalizzazione delle conf' +
            'ezioni e dei colli sulla testata documento'
          DataField = 'totalizza_colli'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'totalizza colli'
          TabOrder = 26
        end
        object v_controllo_sottoscorta: TRzDBCheckBox
          Left = 670
          Top = 222
          Width = 114
          Height = 15
          Hint = 'spunta per eseguire il controllo del sottoscorta'
          DataField = 'CONTROLLO_SOTTOSCORTA'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo sottoscorta'
          TabOrder = 27
        end
        object v_scheda_trasporto: TRzDBCheckBox
          Left = 15
          Top = 282
          Width = 152
          Height = 15
          Hint = 
            'spunta per attivare la gestione automatica della scheda di trasp' +
            'orto in fase di inserimento documento'
          DataField = 'scheda_trasporto'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'gestione scheda di trasporto'
          TabOrder = 38
        end
        object GroupBox9: TGroupBox
          Left = 5
          Top = 485
          Width = 406
          Height = 56
          Caption = 'calcolo automatico quantit'#224' colli e confezioni'
          TabOrder = 80
          object Label27: TRzLabel
            Left = 100
            Top = 15
            Width = 43
            Height = 13
            Caption = 'titolo colli'
            ShowAccelChar = False
            Transparent = True
          end
          object Label28: TRzLabel
            Left = 185
            Top = 15
            Width = 73
            Height = 13
            Caption = 'titolo confezioni'
            ShowAccelChar = False
            Transparent = True
          end
          object v_calcolo_colli_confezioni: TRzDBCheckBox
            Left = 10
            Top = 32
            Width = 71
            Height = 15
            Hint = 
              'spunta per attivare il calcolo della quantit'#224' moltiplicando coll' +
              'i per confezioni'
            DataField = 'calcolo_colli_confezioni'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'abilitazione'
            TabOrder = 0
          end
          object v_titolo_colli: trzdbedit_go
            Left = 100
            Top = 30
            Width = 76
            Height = 21
            Hint = 'intestazione da utilizzare per campo numero colli'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'titolo_colli'
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
          object v_titolo_confezioni: trzdbedit_go
            Left = 185
            Top = 30
            Width = 76
            Height = 21
            Hint = 'intestazione da utilizzare per campo numero confezioni'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'titolo_confezioni'
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
        object v_immagine_articolo_ordini: TRzDBCheckBox
          Left = 15
          Top = 242
          Width = 112
          Height = 15
          Hint = 
            'spunta per attivare la stampa sugli odini dellle foto degli arti' +
            'coli'
          DataField = 'immagine_articolo_ordini'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'foto articoli su ordini'
          TabOrder = 28
        end
        object v_controllo_accessori_equivalenti: TRzDBCheckBox
          Left = 180
          Top = 242
          Width = 161
          Height = 15
          Hint = 
            'spunta per eseguire il controllo sulla presenti di accessori o a' +
            'rticoli equivalenti'
          DataField = 'controllo_accessori_equivalenti'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo accessori equivalenti'
          TabOrder = 29
        end
        object v_controllo_costo: TRzDBCheckBox
          Left = 350
          Top = 242
          Width = 88
          Height = 15
          Hint = 
            'spunta per eseguire il controllo se il prezzo di vendita '#232' infer' +
            'iore all'#39'ultimo prezzo di acquisto'
          DataField = 'controllo_costo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo costo'
          TabOrder = 30
        end
        object v_emissione_scontrino: TRzDBCheckBox
          Left = 505
          Top = 242
          Width = 111
          Height = 15
          Hint = 
            'spunta per emettere lo scontrino fiscale su registratore di cass' +
            'a abilitato'
          DataField = 'emissione_scontrino'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'emissione scontrino'
          TabOrder = 31
        end
        object v_controllo_revisione: TRzDBCheckBox
          Left = 670
          Top = 242
          Width = 104
          Height = 15
          Hint = 
            'spunta per avvisare, in fase di modifica dei preventivi, di gene' +
            'rare una revisione'
          DataField = 'controllo_revisione'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo revisione'
          TabOrder = 32
        end
        object v_invio_pec: TRzDBCheckBox
          Left = 15
          Top = 262
          Width = 99
          Height = 15
          Hint = 
            'spunta per attivare l'#39'invio mail tramite la posta elettronica ce' +
            'rtificata'
          DataField = 'invio_pec'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'invio tramite PEC'
          TabOrder = 33
        end
        object v_note_art: TRzDBCheckBox
          Left = 350
          Top = 282
          Width = 103
          Height = 15
          Hint = 
            'spunta per attivare il settaggio automatico delle note recuperan' +
            'dole dalle note articolo'
          DataField = 'note_art'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'setta note articolo'
          TabOrder = 40
        end
        object v_note_visibili: TRzDBCheckBox
          Left = 180
          Top = 262
          Width = 127
          Height = 15
          Hint = 
            'spunta per mantenere le note righe sempre visibili sul piede del' +
            'la griglia delle righe'
          DataField = 'note_visibili'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'note riga sempre visibili'
          TabOrder = 34
        end
        object v_controllo_articoli_doppi: TRzDBCheckBox
          Left = 505
          Top = 262
          Width = 121
          Height = 15
          Hint = 
            'spunta per controllare se nello stesso documento vengono inserit' +
            'i articoli doppi'
          DataField = 'controllo_articoli_doppi'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo articoli doppi'
          TabOrder = 36
        end
        object v_blocco_mancanza_esistenza: TRzDBCheckBox
          Left = 180
          Top = 202
          Width = 150
          Height = 15
          Hint = 
            'spunta per eseguire il blocco della vendita in mancanza di esist' +
            'enza'
          DataField = 'blocco_mancanza_esistenza'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'blocco mancanza esistenza'
          TabOrder = 19
        end
        object v_creazione_automatica_scaglioni: TRzDBCheckBox
          Left = 180
          Top = 282
          Width = 143
          Height = 15
          Hint = 
            'spunta per generare automaticamente gli scaglioni del listino di' +
            ' vendita per la quantit'#224' inserita sul documento'
          DataField = 'creazione_automatica_scaglioni'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'creazione scaglioni prezzo'
          TabOrder = 39
        end
        object v_note_come_descrizioni: TRzDBCheckBox
          Left = 505
          Top = 282
          Width = 125
          Height = 15
          Hint = 
            'spunta per attivare il settaggio automatico delle note articolo ' +
            'come descrizione dell'#39'articolo sui documenti'
          DataField = 'note_come_descrizioni'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'note come descrizione'
          TabOrder = 41
        end
        object v_avviso_ordini_aperti: TRzDBCheckBox
          Left = 670
          Top = 282
          Width = 131
          Height = 15
          Hint = 
            'spunta per avvisare se sono presenti altri documenti aperti prim' +
            'a di un nuovo inserimento'
          DataField = 'avviso_ordini_aperti'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'avviso documenti aperti'
          TabOrder = 42
        end
        object v_ignora_autorizzazione_email: TRzDBCheckBox
          Left = 15
          Top = 302
          Width = 139
          Height = 15
          Hint = 
            'spunta per ignorare l'#39'autorizzazione di invio mail in anagrafica' +
            ' clienti'
          DataField = 'ignora_autorizzazione_email'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'ignora autorizzazione mail'
          TabOrder = 43
        end
        object v_stampa_lotto_etichette: TRzDBCheckBox
          Left = 180
          Top = 302
          Width = 134
          Height = 15
          Hint = 'spunta per stampare anche il lotto sulle etichette'
          DataField = 'stampa_lotto_etichette'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa lotto su etichette'
          TabOrder = 44
        end
        object v_allegati_non_interattivi: TRzDBCheckBox
          Left = 350
          Top = 302
          Width = 118
          Height = 15
          Hint = 
            'spunta per attivare gli allegati anche nelle stampe non interatt' +
            'ive'
          DataField = 'allegati_non_interattivi'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'allegati non interattivi'
          TabOrder = 45
        end
        object v_scontrino_totale: TRzDBCheckBox
          Left = 505
          Top = 302
          Width = 131
          Height = 15
          Hint = 
            'spunta per emettere lo scontrino fiscale solo per il totale del ' +
            'documento'
          DataField = 'scontrino_totale'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'scontrino per solo totale'
          TabOrder = 46
        end
        object v_eredita_allegati: TRzDBCheckBox
          Left = 670
          Top = 302
          Width = 87
          Height = 15
          Hint = 'spunta per ereditare gli allegati dal documento di origine'
          DataField = 'eredita_allegati'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'eredita allegati'
          TabOrder = 47
        end
        object v_numerazione_automatica: TRzDBCheckBox
          Left = 15
          Top = 322
          Width = 134
          Height = 15
          Hint = 
            'spunta per definire la proposta standard di assegnazione numeraz' +
            'ione in ASSAPPCL e GESVEN (bottone evadi)'
          DataField = 'numerazione_automatica'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'numerazione automatica'
          TabOrder = 48
        end
        object v_controllo_importo: TRzDBCheckBox
          Left = 180
          Top = 322
          Width = 96
          Height = 15
          Hint = 
            'spunta per eseguire il controllo che l'#39'importo della riga docume' +
            'nto sia diverso da zero'
          DataField = 'controllo_importo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo importo'
          TabOrder = 49
        end
        object v_visualizza_disponibilita_ordini: TRzDBCheckBox
          Left = 350
          Top = 322
          Width = 121
          Height = 15
          Hint = 'spunta per visualizzare la disponibilit'#224' invece dell'#39'esistenza'
          DataField = 'visualizza_disponibilita_ordini'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'visualizza disponibilit'#224
          TabOrder = 50
        end
        object GroupBox13: TGroupBox
          Left = 660
          Top = 5
          Width = 151
          Height = 61
          Caption = 'campi obbligatori'
          TabOrder = 1
          object v_tag_codice_ca_obbligatorio: TRzDBCheckBox
            Left = 10
            Top = 19
            Width = 96
            Height = 15
            Hint = 
              'spunta per rendere obbligatorio l'#39'inserimento del secondo codice' +
              ' agente'
            DataField = 'tag_codice_ca_obbligatorio'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'secondo agente'
            TabOrder = 0
          end
        end
        object v_duplica_ordini_clienti: TRzDBCheckBox
          Left = 505
          Top = 322
          Width = 111
          Height = 15
          Hint = 
            'spunta per duplicare gli ordini clienti su tutte le ditte gestit' +
            'e'
          DataField = 'duplica_ordini_clienti'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'duplica ordini clienti'
          TabOrder = 51
        end
        object v_stampa_situazione_evaso: TRzDBCheckBox
          Left = 670
          Top = 322
          Width = 135
          Height = 15
          Hint = 
            'spunta riga aggiuntiva su preventivi e ordini con indicazione qu' +
            'antit'#224' per le righe evase'
          DataField = 'stampa_situazione_evaso'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa situazione evaso'
          TabOrder = 52
        end
        object v_note_documenti_derivati: TRzDBCheckBox
          Left = 15
          Top = 342
          Width = 129
          Height = 15
          Hint = 
            'spunta per stampare le note di testata degli ordini sui document' +
            'i derivati'
          DataField = 'note_documenti_derivati'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'note documenti derivati'
          TabOrder = 53
        end
        object v_esecuzione_vuoti: TRzDBCheckBox
          Left = 180
          Top = 342
          Width = 154
          Height = 15
          Hint = 
            'spunta per eseguire automaticamente la gestione vuoti per inseri' +
            're i resi'
          DataField = 'esecuzione_vuoti'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'esecuzione automatica vuoti'
          TabOrder = 54
        end
        object v_indicazione_deposito_partenza: TRzDBCheckBox
          Left = 350
          Top = 342
          Width = 140
          Height = 15
          Hint = 
            'spunta per indicare sulla stampa del documento il luogo di parte' +
            'nza'
          DataField = 'indicazione_deposito_partenza'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa deposito partenza'
          TabOrder = 55
        end
        object v_stampa_sempre_vuoti: TRzDBCheckBox
          Left = 505
          Top = 342
          Width = 116
          Height = 15
          Hint = 'spunta per stampare sempre sul documento la situazione vuoti'
          DataField = 'stampa_sempre_vuoti'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa sempre vuoti'
          TabOrder = 56
        end
        object v_esistenza_cls: TRzDBCheckBox
          Left = 670
          Top = 342
          Width = 135
          Height = 15
          Hint = 
            'spunta per controllare l'#39'esistenza della combinazione cliente/ar' +
            'ticolo nei listini sconti personalizzati dei clienti'
          DataField = 'esistenza_cls'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo esistenza listino'
          TabOrder = 57
        end
        object v_ind_obbligatoria: TRzDBCheckBox
          Left = 15
          Top = 362
          Width = 99
          Height = 15
          Hint = 
            'spunta per rendere obbligatoria la gestione della filiale sui do' +
            'cumenti'
          DataField = 'ind_obbligatoria'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'filiale obbligatoria'
          TabOrder = 58
        end
        object v_chiusura_documento_origine: TRzDBCheckBox
          Left = 180
          Top = 362
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
          TabOrder = 59
        end
        object v_esporre_scadenziari: TRzDBCheckBox
          Left = 350
          Top = 362
          Width = 124
          Height = 15
          Hint = 
            'spunta per includere il totale degli ordini aperti sulle stampe ' +
            'dello scadenziario e dell'#39'estratto conto'
          DataField = 'esporre_scadenziari'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'esporre su scadenziari'
          TabOrder = 60
        end
        object v_controllo_deposito_evasione: TRzDBCheckBox
          Left = 505
          Top = 362
          Width = 148
          Height = 15
          Hint = 
            'spunta per controllare i documenti da evadere del solo deposito ' +
            'del documento di evasione'
          DataField = 'controllo_deposito_evasione'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo deposito evasione'
          TabOrder = 61
        end
        object v_deposito_modificabile: TRzDBCheckBox
          Left = 670
          Top = 362
          Width = 117
          Height = 15
          Hint = 
            'spunta per attivare la possibilit'#224' di modificare il deposito nei' +
            ' documenti di vendita'
          DataField = 'deposito_modificabile'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'deposito modificabile'
          TabOrder = 62
        end
        object v_avviso_presenza_documenti: TRzDBCheckBox
          Left = 15
          Top = 382
          Width = 148
          Height = 15
          Hint = 
            'spunta per avvisare della presenza di documenti collegati all'#39'ar' +
            'ticolo da allegare al documento in gestione'
          DataField = 'avviso_presenza_documenti'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'avviso presenza documenti'
          TabOrder = 63
        end
        object v_avviso_kit_completo: TRzDBCheckBox
          Left = 180
          Top = 382
          Width = 126
          Height = 15
          Hint = 
            'spunta per avvisare della non completezza dei kit in fase di eva' +
            'sione dell'#39'ordine'
          DataField = 'avviso_kit_completo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'avviso completezza kit'
          TabOrder = 64
        end
        object v_durc_obbligatorio: TRzDBCheckBox
          Left = 350
          Top = 382
          Width = 97
          Height = 15
          Hint = 
            'spunta per verificare la validit'#224' del DURC dello spedizioniere p' +
            'er i documenti di trasporto'
          DataField = 'durc_obbligatorio'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'durc obbligatorio'
          TabOrder = 65
        end
        object v_avvisi_documento_stampato_cliente: TRzDBCheckBox
          Left = 505
          Top = 382
          Width = 154
          Height = 15
          Hint = 
            'spunta per emettere gli avvisi di attenzione in caso di modifica' +
            ' di preventivi e ordini gi'#224' stampati per il cliente'
          DataField = 'avvisi_documento_stampato_cliente'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'avvisi modifica doc. stampati'
          TabOrder = 66
        end
        object v_stampa_ordini_aperti: TRzDBCheckBox
          Left = 670
          Top = 382
          Width = 110
          Height = 15
          Hint = 
            'spunta per stampare in coda al documento l'#39'elenco degli ordini a' +
            'perti'
          DataField = 'stampa_ordini_aperti'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa ordini aperti'
          TabOrder = 67
        end
        object v_password_chiusura_documento: trzdbedit_go
          Left = 420
          Top = 500
          Width = 181
          Height = 21
          Hint = 
            'password per abilitare la chiusura forzata di bolle e ddt in sit' +
            'uazione "consolidato"'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'password_chiusura_documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 81
        end
        object v_iva_bloccata: TRzDBCheckBox
          Left = 15
          Top = 402
          Width = 77
          Height = 15
          Hint = 
            'spunta per indicare che va settato il flag di "iva bloccata" sui' +
            ' documenti'
          DataField = 'iva_bloccata'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'iva bloccata'
          TabOrder = 68
        end
        object v_messaggio_interattivo: TRzDBCheckBox
          Left = 180
          Top = 402
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
          TabOrder = 69
        end
        object v_iva_spese_testata: TRzDBCheckBox
          Left = 350
          Top = 402
          Width = 114
          Height = 15
          Hint = 
            'spunta per assegnare codice iva delle spese uguale a quello impo' +
            'stato sulla testata del documento (anche per clienti italia)'
          DataField = 'iva_spese_testata'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'iva spese da testata'
          TabOrder = 70
        end
        object v_usa_griglia_input: TRzDBCheckBox
          Left = 505
          Top = 402
          Width = 98
          Height = 15
          Hint = 
            'spunta per utilizzare il programma GESDOCGRI per l'#39'inserimento d' +
            'elle righe del documento'
          DataField = 'usa_griglia_input'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'griglia documenti'
          TabOrder = 71
        end
        object v_solo_righe_documento: TRzDBCheckBox
          Left = 670
          Top = 402
          Width = 120
          Height = 15
          Hint = 
            'spunta per caricare nella griglia documenti solo le righe gi'#224' pr' +
            'esenti sul documento'
          DataField = 'solo_righe_documento'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'solo righe documento'
          TabOrder = 72
        end
        object v_calcolo_disponibilita_vendite: trzdbcombobox_go
          Left = 610
          Top = 500
          Width = 201
          Height = 21
          Hint = 'modalit'#224' di calcolo disponibilita sui documenti di vendita'
          DataField = 'calcolo_disponibilita_vendite'
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
          TabOrder = 82
          Items.Strings = (
            ''
            'esistenza'
            'esistenza - impegnato'
            'esistenza + ordinato'
            'esistenza - impegnato + ordinato')
        end
        object v_stampa_standard_preventivo: TRzDBCheckBox
          Left = 15
          Top = 422
          Width = 97
          Height = 15
          Hint = 
            'spunta per indicare che la stampa dei preventivi e degli ordini ' +
            'segue lo standard dei documenti'
          DataField = 'stampa_standard_preventivo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa standard'
          TabOrder = 73
        end
        object v_ignora_ddt_sezione_21_fe: TRzDBCheckBox
          Left = 180
          Top = 422
          Width = 141
          Height = 15
          Hint = 
            'spunta per indicare che il documento non deve essere elencato ne' +
            'lla sezione 2.1 delle FE'
          DataField = 'ignora_ddt_sezione_21_fe'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'ignora ddt/bolla in FE 2.1 '
          TabOrder = 74
        end
        object v_includi_ordini_sezione_21_fe: TRzDBCheckBox
          Left = 350
          Top = 422
          Width = 125
          Height = 15
          Hint = 
            'spunta per elencare automaticamente gli ordini nella sezione 2.1' +
            ' delle FE'
          DataField = 'includi_ordini_sezione_21_fe'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'includi ordini in FE 2.1 '
          TabOrder = 75
        end
      end
      object tab_pagina3: TRzTabSheet
        Color = clWindow
        ImageIndex = 2
        Caption = 'descrizioni extra'
        object Label24: TRzLabel
          Left = 5
          Top = 340
          Width = 156
          Height = 13
          Caption = 'nome documento tentata vendita'
          FocusControl = v_nome_documento_tentata_vendita
          ShowAccelChar = False
          Transparent = True
        end
        object Label12: TRzLabel
          Left = 5
          Top = 380
          Width = 84
          Height = 13
          Caption = 'modello di stampa'
          FocusControl = v_template
          ShowAccelChar = False
          Transparent = True
        end
        object v_sfoglia_template: TRzRapidFireButton
          Left = 605
          Top = 395
          Width = 70
          Height = 21
          Hint = 'ricerca il modello desiderato nella cartella "report" '
          Caption = 'Sfoglia'
          ImageIndex = 104
          Images = ARC.immagine_16
          OnClick = v_sfoglia_templateClick
        end
        object v_traduzione: TRzRapidFireButton
          Left = 650
          Top = 168
          Width = 131
          Height = 26
          Caption = 'traduzione'
          ImageIndex = 98
          Images = ARC.immagine_16
          Enabled = False
          OnClick = v_traduzioneClick
        end
        object Label31: TRzLabel
          Left = 5
          Top = 420
          Width = 224
          Height = 13
          Caption = 'documento preventivo da preventivo nominativi'
          ShowAccelChar = False
          Transparent = True
        end
        object Label37: TRzLabel
          Left = 396
          Top = 422
          Width = 97
          Height = 13
          Caption = 'tipo contatto per crm'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel20: TRzLabel
          Left = 211
          Top = 342
          Width = 102
          Height = 13
          Caption = 'iva agevolata 488/99'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel25: TRzLabel
          Left = 505
          Top = 340
          Width = 163
          Height = 13
          Caption = 'campo extra descrizione primanota'
          ShowAccelChar = False
          Transparent = True
        end
        object GroupBox3: TGroupBox
          Left = 5
          Top = 3
          Width = 776
          Height = 163
          Caption = 'descrizione lingue estere'
          TabOrder = 0
          object Label20: TRzLabel
            Left = 5
            Top = 15
            Width = 34
            Height = 13
            Caption = 'lingua'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label21: TRzLabel
            Left = 120
            Top = 15
            Width = 147
            Height = 13
            Caption = 'descrizione su documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object v_lingua_01: TRzLabel
            Left = 5
            Top = 34
            Width = 3
            Height = 13
            ShowAccelChar = False
            Transparent = True
          end
          object v_lingua_02: TRzLabel
            Left = 5
            Top = 59
            Width = 3
            Height = 13
            ShowAccelChar = False
            Transparent = True
          end
          object v_lingua_03: TRzLabel
            Left = 5
            Top = 84
            Width = 3
            Height = 13
            ShowAccelChar = False
            Transparent = True
          end
          object v_lingua_04: TRzLabel
            Left = 5
            Top = 109
            Width = 3
            Height = 13
            ShowAccelChar = False
            Transparent = True
          end
          object v_lingua_05: TRzLabel
            Left = 5
            Top = 134
            Width = 3
            Height = 13
            ShowAccelChar = False
            Transparent = True
          end
          object v_descrizione_lingua_01: trzdbedit_go
            Left = 120
            Top = 30
            Width = 341
            Height = 21
            Hint = 'descrizione nella prima lingua estera da esporre sui documenti'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'descrizione_documento_lingua_01'
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
          object v_descrizione_lingua_02: trzdbedit_go
            Left = 120
            Top = 55
            Width = 341
            Height = 21
            Hint = 'descrizione nella seconda lingua estera da esporre sui documenti'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'descrizione_documento_lingua_02'
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
          object v_descrizione_lingua_03: trzdbedit_go
            Left = 120
            Top = 80
            Width = 341
            Height = 21
            Hint = 'descrizione nella terza lingua estera da esporre sui documenti'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'descrizione_documento_lingua_03'
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
          object v_descrizione_lingua_04: trzdbedit_go
            Left = 120
            Top = 105
            Width = 341
            Height = 21
            Hint = 'descrizione nella quarta lingua estera da esporre sui documenti'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'descrizione_documento_lingua_04'
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
          object v_descrizione_lingua_05: trzdbedit_go
            Left = 120
            Top = 130
            Width = 341
            Height = 21
            Hint = 'descrizione nella quinta lingua estera da esporre sui documenti'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'descrizione_documento_lingua_05'
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
          object v_causale_trasporto_lingua_01: trzdbedit_go
            Left = 465
            Top = 30
            Width = 301
            Height = 21
            Hint = 
              'descrizione causale trasporto nella prima lingua estera da espor' +
              're sui documenti'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'causale_trasporto_lingua_01'
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
          object v_causale_trasporto_lingua_02: trzdbedit_go
            Left = 465
            Top = 55
            Width = 301
            Height = 21
            Hint = 
              'descrizione causale trasporto nella seconda lingua estera da esp' +
              'orre sui documenti'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'causale_trasporto_lingua_02'
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
          object v_causale_trasporto_lingua_03: trzdbedit_go
            Left = 465
            Top = 80
            Width = 301
            Height = 21
            Hint = 
              'descrizione causale trasporto nella terza lingua estera da espor' +
              're sui documenti'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'causale_trasporto_lingua_03'
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
          object v_causale_trasporto_lingua_04: trzdbedit_go
            Left = 465
            Top = 105
            Width = 301
            Height = 21
            Hint = 
              'descrizione causale trasporto nella quarta lingua estera da espo' +
              'rre sui documenti'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'causale_trasporto_lingua_04'
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
          object v_causale_trasporto_lingua_05: trzdbedit_go
            Left = 465
            Top = 130
            Width = 301
            Height = 21
            Hint = 
              'descrizione causale trasporto nella quinta lingua estera da espo' +
              'rre sui documenti'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'causale_trasporto_lingua_05'
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
        object GroupBox8: TGroupBox
          Left = 5
          Top = 195
          Width = 776
          Height = 141
          Caption = 'generazione documento collegato'
          TabOrder = 1
          object Label19: TRzLabel
            Left = 10
            Top = 15
            Width = 58
            Height = 13
            Caption = 'codice ditta '
            ShowAccelChar = False
            Transparent = True
          end
          object Label22: TRzLabel
            Left = 10
            Top = 95
            Width = 73
            Height = 13
            Caption = 'codice fornitore'
            ShowAccelChar = False
            Transparent = True
          end
          object Label23: TRzLabel
            Left = 105
            Top = 95
            Width = 88
            Height = 13
            Caption = 'codice documento'
            ShowAccelChar = False
            Transparent = True
          end
          object Label26: TRzLabel
            Left = 10
            Top = 55
            Width = 66
            Height = 13
            Caption = 'codice cliente'
            ShowAccelChar = False
            Transparent = True
          end
          object v_dit_codice_collegato: trzdbedit_go
            Left = 10
            Top = 30
            Width = 91
            Height = 21
            Hint = 'codice ditta in cui generare il documento collegato [F4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'dit_codice_collegato'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 0
            OnExit = v_dit_codice_collegatoExit
            lookcolldatabase = 'arc.arc'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESDIT'
            lookcolltable = 'DIT'
            lookcollvisname = 'DIT'
          end
          object RzDBEditDescrizione_go9: trzdbeditdescrizione_go
            Left = 105
            Top = 30
            Width = 661
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = dit_collegato_ds
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
          object v_fornitore_collegato: trzdbedit_go
            Left = 10
            Top = 110
            Width = 91
            Height = 21
            Hint = 
              'codice fornitore della ditta collegata intestatario del document' +
              'o generato [F4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'fornitore_collegato'
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
          object v_documento_acquisto_collegato: trzdbedit_go
            Left = 105
            Top = 110
            Width = 91
            Height = 21
            Hint = 'codice del documento generato nella ditta collegata'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'documento_acquisto_collegato'
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
          object v_cli_codice_collegato: trzdbedit_go
            Left = 10
            Top = 70
            Width = 91
            Height = 21
            Hint = 
              'codice cliente i cui documenti vanno generati sulla ditta colleg' +
              'ata [F4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'cli_codice_collegato'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 1
            OnExit = v_cli_codice_collegatoExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc_cli
            lookcollprogram = 'GESNOM'
            lookcolltable = 'CLI'
            lookcollvisname = 'CLI'
          end
          object RzDBEditDescrizione_go10: trzdbeditdescrizione_go
            Left = 105
            Top = 70
            Width = 661
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = cli_collegato_ds
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
        end
        object v_nome_documento_tentata_vendita: trzdbedit_go
          Left = 5
          Top = 355
          Width = 196
          Height = 21
          Hint = 'nome (prefisso) del documento di importazione'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'nome_documento_tentata_vendita'
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
        object v_template: trzdbedit_go
          Left = 5
          Top = 395
          Width = 601
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
          TabOrder = 5
          OnExit = v_templateExit
        end
        object v_tdo_codice_preventivo: trzdbedit_go
          Left = 5
          Top = 435
          Width = 50
          Height = 21
          Hint = 
            'codice documento giro a preventivo da preventivo nominativi [F4 ' +
            'F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tdo_codice_preventivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 7
          OnEnter = v_tdo_codice_preventivoEnter
          OnExit = v_tdo_codice_preventivoExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTDO'
          lookcolltable = 'TDO'
          lookcollvisname = 'TDV'
        end
        object RzDBEditDescrizione_go11: trzdbeditdescrizione_go
          Left = 60
          Top = 435
          Width = 331
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tdo_preventivo_ds
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
          TabOrder = 8
        end
        object v_ttc_codice: trzdbedit_go
          Left = 396
          Top = 435
          Width = 51
          Height = 21
          Hint = 
            'tipologia contatto per notificare al CRM l'#39'emissione/ricezione d' +
            'el documento [F3 F4 F5]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'ttc_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 9
          OnExit = v_ttc_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTTC'
          lookcolltable = 'TTC'
          lookcollvisname = 'TTC'
        end
        object RzDBEditDescrizione_go12: trzdbeditdescrizione_go
          Left = 450
          Top = 435
          Width = 331
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = ttc_ds
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
          TabOrder = 10
        end
        object GroupBox12: TGroupBox
          Left = 5
          Top = 460
          Width = 776
          Height = 61
          Caption = 'contabilit'#224' analitica'
          TabOrder = 11
          object Label38: TRzLabel
            Left = 5
            Top = 15
            Width = 30
            Height = 13
            Caption = 'centro'
            ShowAccelChar = False
            Transparent = True
          end
          object Label39: TRzLabel
            Left = 391
            Top = 15
            Width = 24
            Height = 13
            Caption = 'voce'
            ShowAccelChar = False
            Transparent = True
          end
          object v_cen_codice: trzdbedit_go
            Left = 5
            Top = 30
            Width = 91
            Height = 21
            Hint = 'codice centro contabilit'#224' analitica [F4 F5 F6]'
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
          object RzDBEditDescrizione_go13: trzdbeditdescrizione_go
            Left = 100
            Top = 30
            Width = 286
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = cen_ds
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
            TabOrder = 1
          end
          object v_tvc_codice: trzdbedit_go
            Left = 391
            Top = 30
            Width = 51
            Height = 21
            Hint = 'codice voce contabilit'#224' analitica [F3 F4 F5]'
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
          object RzDBEditDescrizione_go14: trzdbeditdescrizione_go
            Left = 445
            Top = 30
            Width = 326
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
        end
        object v_template_articolo: TRzDBCheckBox
          Left = 685
          Top = 398
          Width = 92
          Height = 15
          Hint = 'spunta se il template pu'#242' essere gestito per articolo'
          DataField = 'template_articolo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'modello articolo'
          TabOrder = 6
        end
        object v_tiv_codice_agevolata: trzdbedit_go
          Left = 211
          Top = 355
          Width = 51
          Height = 21
          Hint = 
            'codice iva agevolata art. 7 comma 1 lettera b) legge n. 488/99 [' +
            'F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tiv_codice_agevolata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
          OnExit = v_tiv_codice_agevolataExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTIV'
          lookcolltable = 'TIV'
          lookcollvisname = 'TIV'
        end
        object trzdbeditdescrizione_go2: trzdbeditdescrizione_go
          Left = 265
          Top = 355
          Width = 231
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tiv_agevolata_ds
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
        object v_campo_extra_primanota: trzdbcombobox_go
          Left = 505
          Top = 355
          Width = 281
          Height = 21
          Hint = 
            'campo della testata fattura da utilizzare come descrizioone extr' +
            'a in primanota'
          DataField = 'campo_extra_primanota'
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
        end
      end
      object TabSheet1: TRzTabSheet
        Color = clWindow
        ImageIndex = 3
        Caption = 'mail'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object v_traduzione_testo_mail: TRzRapidFireButton
          Left = 725
          Top = 370
          Width = 91
          Height = 28
          Caption = 'traduzione'
          ImageIndex = 98
          Images = ARC.immagine_16
          Enabled = False
          OnClick = v_traduzione_testo_mailClick
        end
        object Label30: TRzLabel
          Left = 5
          Top = 0
          Width = 97
          Height = 13
          Caption = 'mail per conoscenza'
          Transparent = True
        end
        object v_traduzione_testo_mail_excel: TRzRapidFireButton
          Tag = 445
          Left = 725
          Top = 458
          Width = 91
          Height = 28
          Caption = 'traduzione'
          ImageIndex = 98
          Images = ARC.immagine_16
          Enabled = False
          OnClick = v_traduzione_testo_mail_excelClick
        end
        object tab_control_note: TRzPageControl
          Left = 5
          Top = 350
          Width = 711
          Height = 86
          Hint = ''
          ActivePage = tab_pagina1_note
          CutCornerSize = 3
          ShowShadow = False
          TabIndex = 0
          TabOrder = 4
          TabStop = False
          TabStyle = tsCutCorner
          OnEnter = tab_control_noteEnter
          OnExit = tab_control_noteExit
          FixedDimension = 20
          object tab_pagina1_note: TRzTabSheet
            Color = clWindow
            Caption = 'italiano'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object v_testo_mail: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 709
              Height = 64
              Hint = 'testo aggiuntivo per invio mail'
              Align = alClient
              DataField = 'testo_mail'
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
          object tab_pagina2_note: TRzTabSheet
            Color = clWindow
            ImageIndex = 1
            Caption = 'tab_pagina2_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 654
            ExplicitHeight = 99
            object DBMemo1: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 709
              Height = 79
              Align = alClient
              DataField = 'testo_mail_lingua_01'
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
              ExplicitWidth = 654
              ExplicitHeight = 99
            end
          end
          object tab_pagina3_note: TRzTabSheet
            Color = clWindow
            ImageIndex = 2
            Caption = 'tab_pagina3_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBMemo2: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 709
              Height = 79
              Align = alClient
              DataField = 'testo_mail_lingua_02'
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
          object tab_pagina4_note: TRzTabSheet
            Color = clWindow
            ImageIndex = 3
            Caption = 'tab_pagina4_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBMemo3: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 648
              Height = 143
              Align = alClient
              DataField = 'testo_mail_lingua_03'
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
          object tab_pagina5_note: TRzTabSheet
            Color = clWindow
            ImageIndex = 4
            Caption = 'tab_pagina5_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBMemo4: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 648
              Height = 143
              Align = alClient
              DataField = 'testo_mail_lingua_04'
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
          object tab_pagina6_note: TRzTabSheet
            Color = clWindow
            Caption = 'tab_pagina6_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBMemo5: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 709
              Height = 79
              Align = alClient
              DataField = 'testo_mail_lingua_05'
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
        end
        object v_e_mail_conoscenza: trzdbcombobox_go
          Left = 5
          Top = 15
          Width = 281
          Height = 21
          Hint = 'riferimento per invio mail per conoscenza del documento'
          DataField = 'e_mail_conoscenza'
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
            'nessuno'
            'agente'
            'riferimento-persona')
        end
        object GroupBox10: TGroupBox
          Left = 5
          Top = 185
          Width = 776
          Height = 101
          Caption = 'posta elettronica certificata'
          TabOrder = 2
          object Label62: TRzLabel
            Left = 5
            Top = 55
            Width = 62
            Height = 13
            Caption = 'SMTP server'
            ShowAccelChar = False
            Transparent = True
          end
          object Label63: TRzLabel
            Left = 5
            Top = 15
            Width = 130
            Height = 13
            Caption = 'user id per posta elettronica'
            ShowAccelChar = False
            Transparent = True
          end
          object Label64: TRzLabel
            Left = 315
            Top = 55
            Width = 57
            Height = 13
            Caption = 'porta SMTP'
            ShowAccelChar = False
            Transparent = True
          end
          object Label65: TRzLabel
            Left = 395
            Top = 15
            Width = 167
            Height = 13
            Caption = 'user password per posta elettronica'
            ShowAccelChar = False
            Transparent = True
          end
          object Label66: TRzLabel
            Left = 395
            Top = 55
            Width = 129
            Height = 13
            Caption = 'indirizzo di posta elettronica'
            ShowAccelChar = False
            Transparent = True
          end
          object v_user_e_mail_pec: trzdbedit_go
            Left = 395
            Top = 70
            Width = 371
            Height = 21
            Hint = 'indirizzo di posta elettronica dell'#39'utente'
            HelpType = htKeyword
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'user_e_mail_pec'
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
          object v_user_host_pec: trzdbedit_go
            Left = 5
            Top = 70
            Width = 306
            Height = 21
            Hint = 'computer host utilizzato per l'#39'invio della posta elettronica'
            HelpType = htKeyword
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'user_host_pec'
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
          object v_user_id_pec: trzdbedit_go
            Left = 5
            Top = 30
            Width = 371
            Height = 21
            Hint = 'id dell'#39'utente per la posta elettronica'
            HelpType = htKeyword
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'user_id_pec'
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
          object v_porta_smtp_pec: trzdbedit_go
            Left = 315
            Top = 70
            Width = 61
            Height = 21
            Hint = 
              'porta del server SMTP per l'#39'invio della posta elettronica (defau' +
              'lt 0 - gmail 587)'
            HelpType = htKeyword
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'porta_smtp_pec'
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
          object v_user_password_pec: trzdbedit_go
            Left = 395
            Top = 30
            Width = 371
            Height = 21
            Hint = 'password utente per la posta elettronica'
            DataSource = tabella_ds
            DataField = 'user_password_pec'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            PasswordChar = '*'
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 1
          end
        end
        object GroupBox11: TGroupBox
          Left = 5
          Top = 40
          Width = 776
          Height = 141
          Caption = 'posta elettronica'
          TabOrder = 1
          object Label32: TRzLabel
            Left = 5
            Top = 55
            Width = 62
            Height = 13
            Caption = 'SMTP server'
            ShowAccelChar = False
            Transparent = True
          end
          object Label33: TRzLabel
            Left = 5
            Top = 15
            Width = 130
            Height = 13
            Caption = 'user id per posta elettronica'
            ShowAccelChar = False
            Transparent = True
          end
          object Label34: TRzLabel
            Left = 315
            Top = 55
            Width = 57
            Height = 13
            Caption = 'porta SMTP'
            ShowAccelChar = False
            Transparent = True
          end
          object Label35: TRzLabel
            Left = 395
            Top = 15
            Width = 167
            Height = 13
            Caption = 'user password per posta elettronica'
            ShowAccelChar = False
            Transparent = True
          end
          object Label36: TRzLabel
            Left = 395
            Top = 55
            Width = 129
            Height = 13
            Caption = 'indirizzo di posta elettronica'
            ShowAccelChar = False
            Transparent = True
          end
          object RzLabel24: TRzLabel
            Left = 5
            Top = 95
            Width = 100
            Height = 13
            Caption = 'protocollo TLS / SSL'
            Transparent = True
          end
          object v_user_e_mail: trzdbedit_go
            Left = 395
            Top = 70
            Width = 371
            Height = 21
            Hint = 'indirizzo di posta elettronica dell'#39'utente'
            HelpType = htKeyword
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'user_e_mail'
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
          object v_user_host: trzdbedit_go
            Left = 5
            Top = 70
            Width = 306
            Height = 21
            Hint = 'computer host utilizzato per l'#39'invio della posta elettronica'
            HelpType = htKeyword
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'user_host'
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
          object v_user_id: trzdbedit_go
            Left = 5
            Top = 30
            Width = 371
            Height = 21
            Hint = 'id dell'#39'utente per la posta elettronica'
            HelpType = htKeyword
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'user_id'
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
          object v_porta_smtp: trzdbedit_go
            Left = 315
            Top = 70
            Width = 61
            Height = 21
            Hint = 
              'porta del server SMTP per l'#39'invio della posta elettronica (defau' +
              'lt 0 - gmail 587)'
            HelpType = htKeyword
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'porta_smtp'
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
          object v_user_password: trzdbedit_go
            Left = 395
            Top = 30
            Width = 371
            Height = 21
            Hint = 'password utente per la posta elettronica'
            DataSource = tabella_ds
            DataField = 'user_password'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            PasswordChar = '*'
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 1
          end
          object v_protocollo_tls: trzdbcombobox_go
            Left = 5
            Top = 110
            Width = 306
            Height = 21
            Hint = 'protocollo TLS o SSL utilizzato'
            DataField = 'protocollo_tls'
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
              'utilizza impostazione utente'
              'nessuno'
              'TLS 1.0'
              'TLS 1.1'
              'TLS 1.2'
              'SSL 2.0'
              'SSL 2.3'
              'SSL 3.0')
            Values.Strings = (
              ''
              'nessuno'
              'v1'
              'v1_1'
              'v1_2'
              'v2'
              'v23'
              'v3')
          end
        end
        object tab_control_testo_mail_excel: TRzPageControl
          Left = 5
          Top = 440
          Width = 711
          Height = 86
          Hint = ''
          ActivePage = tab_pagina1_excel
          CutCornerSize = 3
          ShowShadow = False
          TabIndex = 0
          TabOrder = 5
          TabStop = False
          TabStyle = tsCutCorner
          OnEnter = tab_control_testo_mail_excelEnter
          OnExit = tab_control_testo_mail_excelExit
          FixedDimension = 20
          object tab_pagina1_excel: TRzTabSheet
            Color = clWindow
            Caption = 'italiano'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object v_testo_mail_excel: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 709
              Height = 64
              Hint = 
                'testo aggiuntivo per invio mail con file excel allegato per prev' +
                'entivi'
              Align = alClient
              DataField = 'testo_mail_excel'
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
          object tab_pagina2_excel: TRzTabSheet
            Color = clWindow
            ImageIndex = 1
            Caption = 'tab_pagina2_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object _testo_mail_excel_lingua_01: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 648
              Height = 93
              Align = alClient
              DataField = 'testo_mail_excel_lingua_01'
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
          object tab_pagina3_excel: TRzTabSheet
            Color = clWindow
            ImageIndex = 2
            Caption = 'tab_pagina3_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object v_testo_mail_excel_lingua_02: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 648
              Height = 93
              Align = alClient
              DataField = 'testo_mail_excel_lingua_02'
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
          object tab_pagina4_excel: TRzTabSheet
            Color = clWindow
            ImageIndex = 3
            Caption = 'tab_pagina4_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object v_testo_mail_excel_lingua_03: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 648
              Height = 93
              Align = alClient
              DataField = 'testo_mail_excel_lingua_03'
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
          object tab_pagina5_excel: TRzTabSheet
            Color = clWindow
            ImageIndex = 4
            Caption = 'tab_pagina5_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object v_testo_mail_excel_lingua_04: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 648
              Height = 93
              Align = alClient
              DataField = 'testo_mail_excel_lingua_04'
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
          object tab_pagina6_excel: TRzTabSheet
            Color = clWindow
            Caption = 'tab_pagina6_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object v_testo_mail_excel_lingua_05: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 654
              Height = 99
              Hint = 
                'testo aggiuntivo per invio mail con allegato foglio excel con ri' +
                'ghe documento'
              Align = alClient
              DataField = 'testo_mail_excel_lingua_05'
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
        end
        object tab_control_oggetto: TRzPageControl
          Left = 5
          Top = 295
          Width = 711
          Height = 46
          Hint = 'oggetto della mail lingua 01'
          ActivePage = tab_pagina2_oggetto
          CutCornerSize = 3
          ShowShadow = False
          TabIndex = 1
          TabOrder = 3
          TabStop = False
          TabStyle = tsCutCorner
          FixedDimension = 20
          object tab_pagina1_oggetto: TRzTabSheet
            Color = clWindow
            Caption = 'italiano'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object v_oggetto_mail: trzdbedit_go
              Left = 0
              Top = 3
              Width = 706
              Height = 21
              Hint = 'oggetto della mail'
              HelpType = htKeyword
              Margins.Left = 1
              Margins.Top = 1
              DataSource = tabella_ds
              DataField = 'oggetto_mail'
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
          object tab_pagina2_oggetto: TRzTabSheet
            Color = clWindow
            ImageIndex = 1
            Caption = 'tab_pagina2_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object v_oggetto_mail_lingua_01: trzdbedit_go
              Left = 0
              Top = 3
              Width = 706
              Height = 21
              HelpType = htKeyword
              Margins.Left = 1
              Margins.Top = 1
              DataSource = tabella_ds
              DataField = 'oggetto_mail_lingua_01'
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
          object tab_pagina3_oggetto: TRzTabSheet
            Color = clWindow
            ImageIndex = 2
            Caption = 'tab_pagina3_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object v_oggetto_mail_lingua_02: trzdbedit_go
              Left = 0
              Top = 3
              Width = 706
              Height = 21
              Hint = 'oggetto della mail lingua 02'
              HelpType = htKeyword
              Margins.Left = 1
              Margins.Top = 1
              DataSource = tabella_ds
              DataField = 'oggetto_mail_lingua_02'
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
          object tab_pagina4_oggetto: TRzTabSheet
            Color = clWindow
            ImageIndex = 3
            Caption = 'tab_pagina4_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 654
            ExplicitHeight = 39
            object v_oggetto_mail_lingua_03: trzdbedit_go
              Left = 0
              Top = 3
              Width = 706
              Height = 21
              Hint = 'oggetto della mail lingua 03'
              HelpType = htKeyword
              Margins.Left = 1
              Margins.Top = 1
              DataSource = tabella_ds
              DataField = 'oggetto_mail_lingua_03'
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
          object tab_pagina5_oggetto: TRzTabSheet
            Color = clWindow
            ImageIndex = 4
            Caption = 'tab_pagina5_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 654
            ExplicitHeight = 39
            object v_oggetto_mail_lingua_04: trzdbedit_go
              Left = 0
              Top = 3
              Width = 706
              Height = 21
              Hint = 'oggetto della mail lingua 04'
              HelpType = htKeyword
              Margins.Left = 1
              Margins.Top = 1
              DataSource = tabella_ds
              DataField = 'oggetto_mail_lingua_04'
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
          object tab_pagina6_oggetto: TRzTabSheet
            Color = clWindow
            Caption = 'tab_pagina6_note'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 654
            ExplicitHeight = 39
            object v_oggetto_mail_lingua_05: trzdbedit_go
              Left = 0
              Top = 3
              Width = 706
              Height = 21
              Hint = 'oggetto della mail lingua 05'
              HelpType = htKeyword
              Margins.Left = 1
              Margins.Top = 1
              DataSource = tabella_ds
              DataField = 'oggetto_mail_lingua_05'
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
        end
      end
      object tab_marchio_documenti: TRzTabSheet
        Color = clWindow
        Caption = 'marchio documenti e allegati'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object RzLabel2: TRzLabel
          Left = 5
          Top = 156
          Width = 170
          Height = 13
          Caption = 'indirizzo operativo (via, piazza, ecc.)'
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
          Top = 201
          Width = 18
          Height = 13
          Caption = 'cap'
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
          Left = 60
          Top = 201
          Width = 33
          Height = 13
          Caption = 'localit'#224
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
          Left = 395
          Top = 201
          Width = 43
          Height = 13
          Caption = 'provincia'
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
          Top = 250
          Width = 83
          Height = 13
          Caption = 'sito internet (web)'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel7: TRzLabel
          Left = 5
          Top = 295
          Width = 118
          Height = 13
          Caption = 'indirizzo posta elettronica'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel8: TRzLabel
          Left = 5
          Top = 340
          Width = 38
          Height = 13
          Caption = 'telefono'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label41: TRzLabel
          Left = 230
          Top = 340
          Width = 14
          Height = 13
          Caption = 'fax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label80: TRzLabel
          Left = 5
          Top = 385
          Width = 121
          Height = 13
          Caption = 'cartella allegati automatici'
          FocusControl = v_cartella_allegati_automatici
          ShowAccelChar = False
          Transparent = True
        end
        object v_sfoglia_cartella_documenti: TRzRapidFireButton
          Left = 715
          Top = 400
          Width = 66
          Height = 21
          Hint = 'ricerca la cartella documenti extra'
          Caption = 'sfoglia'
          ImageIndex = 104
          Images = ARC.immagine_16
          Enabled = False
          StyleName = 'Windows'
          OnClick = v_sfoglia_cartella_documentiClick
        end
        object RzLabel9: TRzLabel
          Left = 5
          Top = 430
          Width = 107
          Height = 13
          Caption = 'documento di gestione'
          ShowAccelChar = False
          Transparent = True
        end
        object Label16: TRzLabel
          Left = 5
          Top = 475
          Width = 93
          Height = 13
          Caption = 'documento allegato'
          FocusControl = v_documento_allegato
          ShowAccelChar = False
          Transparent = True
        end
        object v_sfoglia: TRzRapidFireButton
          Left = 715
          Top = 490
          Width = 66
          Height = 21
          Hint = 'ricerca il modello desiderato nella cartella "report" '
          Caption = 'sfoglia'
          ImageIndex = 104
          Images = ARC.immagine_16
          StyleName = 'Windows'
          OnClick = v_sfogliaClick
        end
        object v_immagine_documento_allegato: TRzRapidFireButton
          Left = 785
          Top = 490
          Width = 21
          Height = 21
          ImageIndex = 98
          Images = ARC.immagine_16
          OnClick = v_immagine_documento_allegatoClick
        end
        object Panel1: TRzPanel
          Left = 5
          Top = 15
          Width = 329
          Height = 91
          BorderInner = fsLowered
          ParentColor = True
          TabOrder = 0
          object v_marchio_immagine: TImage
            Left = 3
            Top = 3
            Width = 324
            Height = 86
            Hint = 
              'marchio della ditta da utilizzare sui moduli per il codice docum' +
              'ento'
            Stretch = True
            Transparent = True
          end
        end
        object v_carica_marchio: TRzBitBtn
          Left = 5
          Top = 110
          Width = 161
          Height = 32
          Hint = 
            'carica immagine del marchio della ditta da utilizzare sui moduli' +
            ' delle vendite (dimensioni 324 x 86 pixel)'
          Caption = 'carica immagine...'
          TabOrder = 1
          TabStop = False
          OnClick = v_carica_marchioClick
        end
        object v_cancella_marchio: TRzBitBtn
          Left = 180
          Top = 110
          Width = 156
          Height = 32
          Hint = 
            'annulla l'#39'immagine del marchio della ditta da utilizzare sui mod' +
            'uli delle vendite'
          Caption = 'annulla immagine...'
          TabOrder = 2
          TabStop = False
          OnClick = v_cancella_marchioClick
        end
        object v_via: trzdbedit_go
          Left = 5
          Top = 172
          Width = 448
          Height = 21
          Hint = 'indirizzo'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'via_logo'
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
          Left = 5
          Top = 217
          Width = 50
          Height = 21
          Hint = 'cap'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'cap_logo'
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
          Left = 60
          Top = 217
          Width = 331
          Height = 21
          Hint = 'localit'#224
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'citta_logo'
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
          Left = 395
          Top = 217
          Width = 58
          Height = 21
          Hint = 'provincia'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'provincia_logo'
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
        object v_web: trzdbedit_go
          Left = 5
          Top = 265
          Width = 446
          Height = 21
          Hint = 'indirizzo sito web'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'web_logo'
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
        object v_e_mail_amministrazione: trzdbedit_go
          Left = 5
          Top = 310
          Width = 776
          Height = 21
          Hint = 'indirizzo posta elettronica'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'email_logo'
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
        object v_telefono: trzdbedit_go
          Left = 5
          Top = 355
          Width = 221
          Height = 21
          Hint = 'numero telefono'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'telefono_logo'
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
        object v_fax: trzdbedit_go
          Left = 230
          Top = 355
          Width = 221
          Height = 21
          Hint = 'numero telefax'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'fax_logo'
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
        object v_cartella_allegati_automatici: trzdbedit_go
          Left = 5
          Top = 400
          Width = 701
          Height = 21
          Hint = 
            'cartella in cui memorizzare documenti da allegare automaticament' +
            'e in fase di stampa '
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'cartella_allegati_automatici'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 11
          OnEnter = v_cartella_allegati_automaticiEnter
          OnExit = v_cartella_allegati_automaticiExit
        end
        object v_prg_codice_riferimento: trzdbedit_go
          Left = 5
          Top = 445
          Width = 221
          Height = 21
          Hint = 
            'codice programma che viene utilizzato per la gestione del docume' +
            'nto (spazio=programma standard) [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'prg_codice_riferimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 12
          OnExit = v_prg_codice_riferimentoExit
          lookcolldatabase = 'arc.arc'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESPRG'
          lookcolltable = 'PRG'
          lookcollvisname = 'PRG'
        end
        object trzdbeditdescrizione_go1: trzdbeditdescrizione_go
          Left = 230
          Top = 445
          Width = 551
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = prg_ds
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
        object v_documento_allegato: trzdbedit_go
          Left = 5
          Top = 490
          Width = 701
          Height = 21
          Hint = 
            'percorso su disco in cui '#232' archiviata l'#39'immagine dell'#39'eventuale ' +
            'documento allegato'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'documento_allegato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 14
          OnChange = v_documento_allegatoChange
          OnExit = v_documento_allegatoExit
        end
      end
      object TabSheet2: TRzTabSheet
        Color = clWindow
        Caption = 'invio ftp'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object RzLabel11: TRzLabel
          Left = 5
          Top = 5
          Width = 44
          Height = 13
          Caption = 'server ftp'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel12: TRzLabel
          Left = 5
          Top = 45
          Width = 45
          Height = 13
          Caption = 'utente ftp'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel13: TRzLabel
          Left = 5
          Top = 85
          Width = 93
          Height = 13
          Caption = 'password utente ftp'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel14: TRzLabel
          Left = 5
          Top = 125
          Width = 49
          Height = 13
          Caption = 'cartella ftp'
          ShowAccelChar = False
          Transparent = True
        end
        object v_server_ftp: trzdbedit_go
          Left = 5
          Top = 20
          Width = 781
          Height = 21
          Hint = 'server ftp (nome o indirizzo)'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'server_ftp'
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
        object v_utente_ftp: trzdbedit_go
          Left = 5
          Top = 60
          Width = 781
          Height = 21
          Hint = 'utente per connessione ftp'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'utente_ftp'
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
        object v_password_ftp: trzdbedit_go
          Left = 5
          Top = 100
          Width = 781
          Height = 21
          Hint = 'password utente per connessione ftp'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'password_ftp'
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
        object v_modalita_passiva_ftp: TRzDBCheckBox
          Left = 6
          Top = 172
          Width = 112
          Height = 15
          Hint = 
            'spunta per attivare la modalit'#224' passiva di connessione al server' +
            ' ftp (standard per il server di GO)'
          DataField = 'modalita_passiva_ftp'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'modalit'#224' passiva ftp'
          TabOrder = 3
        end
        object v_cartella_ftp: trzdbedit_go
          Left = 5
          Top = 140
          Width = 781
          Height = 21
          Hint = 'cartella del server ftp in cui memorizzare i dati trasferiti'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'cartella_ftp'
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
      object tab_collegamenti: TRzTabSheet
        Color = clWindow
        Caption = 'collegamenti'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object RzLabel15: TRzLabel
          Left = 5
          Top = 5
          Width = 66
          Height = 13
          Caption = 'codice edison'
          FocusControl = v_codice_edison
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel23: TRzLabel
          Left = 5
          Top = 45
          Width = 133
          Height = 13
          Caption = 'causale contabile ecobonus'
          ShowAccelChar = False
          Transparent = True
        end
        object v_codice_edison: trzdbedit_go
          Left = 5
          Top = 20
          Width = 396
          Height = 21
          Hint = 'corrispondenza codice tabella in Edison'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'codice_edison'
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
        object v_tco_codice_ecobonus: trzdbedit_go
          Left = 5
          Top = 60
          Width = 50
          Height = 21
          Hint = 
            'causale contabile per il giroconto dello sconto ecobonus [F4 F5 ' +
            'F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tco_codice_ecobonus'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnExit = v_tco_codice_ecobonusExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTCO'
          lookcolltable = 'TCO'
          lookcollvisname = 'TCO'
        end
        object rzdbeditdescrizione_go15: trzdbeditdescrizione_go
          Left = 60
          Top = 60
          Width = 341
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tco_ecobonus_ds
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
          TabOrder = 2
        end
        object RzGroupBox1: TRzGroupBox
          Left = 5
          Top = 90
          Width = 116
          Height = 46
          Caption = 'call off stock acquisto'
          ParentColor = True
          TabOrder = 3
          object v_reso_call_off_stock: TRzDBCheckBox
            Left = 5
            Top = 19
            Width = 39
            Height = 15
            Hint = 'spunta se il documento '#232' un reso dal deposito call off stock'
            DataField = 'reso_call_off_stock'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'reso'
            TabOrder = 0
          end
        end
        object RzGroupBox2: TRzGroupBox
          Left = 140
          Top = 90
          Width = 211
          Height = 46
          Caption = 'gestione punti negozio'
          ParentColor = True
          TabOrder = 4
          object v_gestione_punti_negozio: TRzDBCheckBox
            Left = 240
            Top = 19
            Width = 115
            Height = 15
            Hint = 'spunta per abilitare la gestione punti negozio'
            DataField = 'gestione_punti_negozio'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'abilita gestione punti'
            TabOrder = 0
            Visible = False
          end
          object v_tipo_gestione_punti_negozio: trzdbcombobox_go
            Left = 5
            Top = 15
            Width = 201
            Height = 21
            Hint = 
              'spunta la voce desiderata per attivare la gestione dei punti oma' +
              'ggio'
            DataField = 'tipo_gestione_punti_negozio'
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
            TabOrder = 1
            Items.Strings = (
              'nessuna'
              'automatica'
              'manuale')
          end
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
          Left = 15
          Top = 20
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
      Width = 336
      Height = 21
      Hint = 'descrizione'
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
    object v_descrizione_documento: trzdbedit_go
      Left = 415
      Top = 20
      Width = 331
      Height = 21
      Hint = 'descrizione da esporre sui documenti'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'descrizione_documento'
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
    object v_usare_come_modello: TRzDBCheckBox
      Left = 755
      Top = 23
      Width = 55
      Height = 15
      Hint = 
        'spunta per utilizzare il codice documento come modello per la du' +
        'plicazione facilitata'
      DataField = 'usare_come_modello'
      DataSource = tabella_ds
      ValueChecked = 'si'
      ValueUnchecked = 'no'
      Caption = 'modello'
      TabOrder = 2
    end
  end
  inherited pannello_codice: TRzPanel
    Width = 61
    ExplicitWidth = 61
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
      Width = 50
      Height = 21
      Hint = 'codice del tipo documento [F2 F3]'
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
      lookuptable = 'TDO'
      lookupvisname = 'TDO'
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    Left = 823
    Height = 619
    ExplicitLeft = 823
    ExplicitHeight = 619
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      Top = 340
      Height = 278
      ExplicitTop = 340
      ExplicitHeight = 278
      FixedDimension = 18
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 22
        ExplicitWidth = 187
        ExplicitHeight = 255
      end
      inherited tab_pannello_bottoni_nuovi_extra: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 22
        ExplicitWidth = 187
        ExplicitHeight = 565
      end
    end
    inherited pannello_destra_pannello: TRzPanel
      Height = 308
      ExplicitHeight = 308
      inherited pannello_destra_PanelGroup: TCategoryPanelGroup
        Height = 282
        ExplicitHeight = 282
        inherited pannello_destra_01: TCategoryPanel
          object v_documento_collegato: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Hint = 
              'esegue il programma di gestione dei parametri per la generazione' +
              ' parametri dei documenti collegati'
            Align = alTop
            Caption = 'documento collegato'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_documento_collegatoClick
          end
        end
      end
    end
  end
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select *'
      'from tdo'
      'where codice = :codice'
      ' ')
  end
  object OpenDialog: TOpenDialog
    InitialDir = '..\arc_demo\archiviazione_documenti'
    Left = 380
    Top = 25
  end
  object tco: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from tco'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 385
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tco_ds: TMyDataSource
    DataSet = tco
    Left = 400
    Top = 65526
  end
  object tab: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tab'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tab_ds: TMyDataSource
    DataSet = tab
    Left = 420
    Top = 65526
  end
  object tmo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, commesse, lotti'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 445
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice'
      ''
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 485
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
    Left = 459
    Top = 65526
  end
  object tma_ds: TMyDataSource
    DataSet = tma
    Left = 499
    Top = 65526
  end
  object tdo_differite_ds: TMyDataSource
    DataSet = tdo_differite
    Left = 534
    Top = 65526
  end
  object tdo_differite: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select tdo.descrizione, tdo.tipo_documento, tdo.analitica, tdo.c' +
        'ommesse'
      'from tdo'
      'where tdo.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 520
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tcd_fine_ds: TMyDataSource
    DataSet = tcd_fine
    Left = 614
    Top = 65526
  end
  object tcd_fine: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tcd'
      'where codice = :codice'
      ''
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
  object tcd_inizio_ds: TMyDataSource
    DataSet = tcd_inizio
    Left = 574
    Top = 65526
  end
  object tcd_inizio: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tcd'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 560
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tdo_evasione_diretta: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, tipo_documento, tdo_codice_differite'
      'from tdo'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 640
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tdo_evasione_diretta_ds: TMyDataSource
    DataSet = tdo_evasione_diretta
    Left = 654
    Top = 65526
  end
  object dit_collegato: TMyQuery_go
    Connection = ARC.arc
    SQL.Strings = (
      'select concat(trim(descrizione1), '#39' '#39', descrizione2) descrizione'
      'from dit'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 670
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object dit_collegato_ds: TMyDataSource
    DataSet = dit_collegato
    Left = 684
    Top = 65526
  end
  object cli_collegato: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select obsoleto, concat(trim(descrizione1), '#39' '#39' , citta) descriz' +
        'ione'
      'from cli'
      'where codice = :codice'
      ''
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
  object cli_collegato_ds: TMyDataSource
    DataSet = cli_collegato
    Left = 729
    Top = 65526
  end
  object OpenDialog_template: TOpenDialog
    Left = 415
    Top = 25
  end
  object tdo_preventivo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tdo'
      'where codice = :codice and tipo_documento = '#39'preventivo'#39
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 745
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tdo_preventivo_ds: TMyDataSource
    DataSet = tdo_preventivo
    Left = 769
    Top = 65526
  end
  object ttc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from ttc'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 785
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object ttc_ds: TMyDataSource
    DataSet = ttc
    Left = 804
    Top = 65526
  end
  object cen: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione1'
      'from cen'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 640
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cen_ds: TMyDataSource
    DataSet = cen
    Left = 659
    Top = 20
  end
  object tvc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tvc'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 690
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tvc_ds: TMyDataSource
    DataSet = tvc
    Left = 709
    Top = 20
  end
  object OpenDialog_marchio: TOpenDialog
    DefaultExt = 'raf'
    Left = 450
    Top = 25
  end
  object prg: TMyQuery_go
    Connection = ARC.arc
    SQL.Strings = (
      'select descrizione'
      'from prg'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 740
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object prg_ds: TMyDataSource
    DataSet = prg
    Left = 759
    Top = 20
  end
  object tiv_agevolata: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tiv'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 785
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tiv_agevolata_ds: TMyDataSource
    DataSet = tiv_agevolata
    Left = 804
    Top = 20
  end
  object tco_ecobonus: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from tco'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 830
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tco_ecobonus_ds: TMyDataSource
    DataSet = tco_ecobonus
    Left = 849
    Top = 20
  end
  object campi_extra: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select lower(column_name) colonna'
      'from information_schema.columns'
      'where lower(table_schema) = concat('#39'arc_'#39', lower(@dit_codice))'
      'and lower(table_name) = '#39'fvt'#39
      'order by 1'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 880
    Top = 20
  end
end
