inherited GESTDA: TGESTDA
  Left = 235
  Top = 93
  Caption = 'GESTDA'
  ClientHeight = 666
  ClientWidth = 1054
  ExplicitWidth = 1070
  ExplicitHeight = 725
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1054
    ExplicitWidth = 1054
  end
  inherited statusbar: TStatusBar
    Top = 646
    Width = 1054
    ExplicitTop = 646
    ExplicitWidth = 1054
  end
  inherited pannello_campi: TRzPanel
    Width = 863
    Height = 604
    ExplicitWidth = 863
    ExplicitHeight = 604
    object Label2: TRzLabel [0]
      Left = 70
      Top = 5
      Width = 53
      Height = 13
      Caption = 'descrizione'
      FocusControl = v_descrizione
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label14: TRzLabel [1]
      Left = 485
      Top = 5
      Width = 123
      Height = 13
      Caption = 'descrizione su documento'
      FocusControl = v_descrizione_documento
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
      Top = 50
      Width = 861
      Height = 551
      ActivePage = tab_pagina2
      TabIndex = 1
      TabOrder = 2
      ExplicitTop = 50
      ExplicitWidth = 861
      ExplicitHeight = 551
      FixedDimension = 18
      inherited tab_pagina1: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 859
        ExplicitHeight = 531
        object Label3: TRzLabel
          Left = 5
          Top = 5
          Width = 73
          Height = 13
          Caption = 'tipo documento'
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
          Top = 85
          Width = 85
          Height = 13
          Caption = 'serie numerazione'
          FocusControl = v_numerazione
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
          Left = 440
          Top = 5
          Width = 83
          Height = 13
          Caption = 'causale contabile'
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
          Top = 45
          Width = 140
          Height = 13
          Caption = 'causale movimenti magazzino'
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
          Left = 440
          Top = 45
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
        object Label6: TRzLabel
          Left = 105
          Top = 85
          Width = 163
          Height = 13
          Caption = 'causale documento fatture differite'
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
          Left = 5
          Top = 125
          Width = 63
          Height = 13
          Caption = 'note apertura'
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
          Left = 440
          Top = 125
          Width = 64
          Height = 13
          Caption = 'note chiusura'
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
          Top = 165
          Width = 123
          Height = 13
          Caption = 'natura transazione INTRA'
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
          Left = 440
          Top = 165
          Width = 173
          Height = 13
          Caption = 'modalit'#224' di erogazione servizi INTRA'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel10: TRzLabel
          Left = 440
          Top = 85
          Width = 201
          Height = 13
          Caption = 'causale documento nota credito resi clienti'
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
          Top = 100
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
          TabOrder = 4
          OnExit = v_numerazioneExit
        end
        object v_tipo_documento: trzdbcombobox_go
          Left = 5
          Top = 20
          Width = 421
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
            'ddt clienti'
            'fattura'
            'nota credito'
            'fattura differita'
            'ordine'
            'preventivo')
        end
        object v_tco_codice: trzdbedit_go
          Left = 440
          Top = 20
          Width = 51
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
          OnChange = v_tmo_codiceChange
          OnExit = v_tmo_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTMO'
          lookcolltable = 'TMO'
          lookcollvisname = 'TMO'
        end
        object v_tma_codice: trzdbedit_go
          Left = 440
          Top = 60
          Width = 51
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
        object v_tda_codice_differite: trzdbedit_go
          Left = 105
          Top = 100
          Width = 51
          Height = 21
          Hint = 
            'causale documento per generare le fatture differite da bolle e D' +
            '.D.T. [F4 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tda_codice_differite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 5
          OnExit = v_tda_codice_differiteExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTDA'
          lookcolltable = 'TDA'
          lookcollvisname = 'TDA'
        end
        object v_tcd_codice_inizio: trzdbedit_go
          Left = 5
          Top = 140
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
          TabOrder = 7
          OnExit = v_tcd_codice_inizioExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTCD'
          lookcolltable = 'TCD'
          lookcollvisname = 'TCD'
        end
        object v_tcd_codice_fine: trzdbedit_go
          Left = 440
          Top = 140
          Width = 51
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
          TabOrder = 8
          OnExit = v_tcd_codice_fineExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTCD'
          lookcolltable = 'TCD'
          lookcollvisname = 'TCD'
        end
        object v_transazione_intra: trzdbcombobox_go
          Left = 5
          Top = 180
          Width = 421
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
          TabOrder = 9
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
          Top = 207
          Width = 421
          Height = 69
          Caption = 'collegamenti '
          TabOrder = 11
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
            Left = 135
            Top = 19
            Width = 69
            Height = 15
            Hint = 
              'spunta se le righe dei documenti interessano la gestione commess' +
              'e'
            DataField = 'commesse'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'commesse'
            TabOrder = 1
          end
          object v_conto_terzi: TRzDBCheckBox
            Left = 10
            Top = 44
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
            Left = 255
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
            Left = 135
            Top = 44
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
          object v_produzione_conto_terzi: TRzDBCheckBox
            Left = 255
            Top = 44
            Width = 123
            Height = 15
            Hint = 
              'spunta per gestire le lavorazioni conto terzi con ordine di prod' +
              'uzione'
            DataField = 'produzione_conto_terzi'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'produzione conto terzi'
            TabOrder = 5
          end
        end
        object GroupBox2: TGroupBox
          Left = 440
          Top = 207
          Width = 416
          Height = 69
          Caption = 'note fornitori e articoli'
          TabOrder = 12
          object v_note_fornitore: TRzDBCheckBox
            Left = 10
            Top = 19
            Width = 114
            Height = 15
            Hint = 
              'spunta per stampare sui documenti le note in anagrafica fornitor' +
              'i'
            DataField = 'note_fornitore'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'stampa note fornitori'
            TabOrder = 0
          end
          object v_note_articolo: TRzDBCheckBox
            Left = 10
            Top = 44
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
        object v_descrizioni_articolo_unite: TRzDBCheckBox
          Left = 450
          Top = 297
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
          TabOrder = 14
        end
        object v_richiesta_accettazione: TRzDBCheckBox
          Left = 595
          Top = 297
          Width = 168
          Height = 15
          Hint = 
            'spunta per attivare la richiesta di accettazione sulle richieste' +
            ' preventivi e ordini'
          DataField = 'richiesta_accettazione'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'richiesta accettazione evasione'
          TabOrder = 15
        end
        object v_evadere_note: TRzDBCheckBox
          Left = 595
          Top = 322
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
          TabOrder = 17
        end
        object GroupBox5: TGroupBox
          Left = 5
          Top = 278
          Width = 421
          Height = 73
          Caption = 'cartelle attivate automaticamente'
          TabOrder = 13
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
            Left = 210
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
            Left = 110
            Top = 44
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
          object v_pagina_pagamento: TRzDBCheckBox
            Left = 110
            Top = 19
            Width = 72
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina pagamento nel cari' +
              'camento documenti'
            DataField = 'pagina_pagamento'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'pagamento'
            TabOrder = 1
          end
          object v_pagina_spese: TRzDBCheckBox
            Left = 210
            Top = 44
            Width = 47
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina spese nel caricame' +
              'nto documenti'
            DataField = 'pagina_spese'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'spese'
            TabOrder = 6
          end
          object v_pagina_destinazione: TRzDBCheckBox
            Left = 10
            Top = 44
            Width = 66
            Height = 15
            Hint = 
              'spunta per attivare automaticamente la pagina di consegna materi' +
              'ale nel caricamento documenti'
            DataField = 'pagina_destinazione'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'consegna'
            TabOrder = 4
          end
          object v_pagina_note: TRzDBCheckBox
            Left = 315
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
          object v_pagina_analitica: TRzDBCheckBox
            Left = 315
            Top = 44
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
        end
        object v_resi_editoria: TRzDBCheckBox
          Left = 450
          Top = 322
          Width = 72
          Height = 15
          Hint = 
            'spunta per indicare che il documento '#232' inerente a resi clienti p' +
            'er articoli editoria'
          DataField = 'resi_editoria'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'resi editoria'
          TabOrder = 16
        end
        object v_controllo_quantita: TRzDBCheckBox
          Left = 5
          Top = 358
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
          TabOrder = 19
        end
        object v_controllo_articolo_livello_sup: TRzDBCheckBox
          Left = 520
          Top = 358
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
          TabOrder = 22
        end
        object v_controllo_documenti_livello_sup: TRzDBCheckBox
          Left = 340
          Top = 358
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
          TabOrder = 21
        end
        object v_emissione_nota_credito: TRzDBCheckBox
          Left = 180
          Top = 358
          Width = 124
          Height = 15
          Hint = 'spunta per consentire l'#39'emissione di nota credito per resi'
          DataField = 'emissione_nota_credito'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'emissione nota credito'
          TabOrder = 20
        end
        object v_stampa_immediata: TRzDBCheckBox
          Left = 700
          Top = 359
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
          TabOrder = 23
        end
        object v_controllo_esistenza: TRzDBCheckBox
          Left = 5
          Top = 379
          Width = 106
          Height = 15
          Hint = 'spunta per eseguire il controllo della giacenza dell'#39'articolo'
          DataField = 'controllo_esistenza'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo esistenza'
          TabOrder = 24
        end
        object v_esegui_dati_riga: TRzDBCheckBox
          Left = 180
          Top = 379
          Width = 90
          Height = 15
          Hint = 'spunta per attivare automaticamente la gestione dei dati riga'
          DataField = 'esegui_dati_riga'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'esegui dati riga'
          TabOrder = 25
        end
        object v_scadenziario_manuale: TRzDBCheckBox
          Left = 340
          Top = 379
          Width = 121
          Height = 15
          Hint = 
            'spunta per gestire lo scadenziario manualmente in fase di consol' +
            'idamento contabile'
          DataField = 'scadenziario_manuale'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'scadenziario manuale'
          TabOrder = 26
        end
        object v_stampa_immediata_etichette: TRzDBCheckBox
          Left = 520
          Top = 380
          Width = 147
          Height = 15
          Hint = 
            'spunta per eseguire la stampa immediata delle etichette dopo il ' +
            'caricamento del documento'
          DataField = 'stampa_immediata_etichette'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa immediata etichette'
          TabOrder = 27
        end
        object v_ultimo_prezzo: TRzDBCheckBox
          Left = 700
          Top = 380
          Width = 114
          Height = 15
          Hint = 
            'spunta per assegnare l'#39'ultimo prezzo applicato per ogni articolo' +
            ' dal fornitore'
          DataField = 'ultimo_prezzo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'utilizza ultimo prezzo'
          TabOrder = 28
        end
        object v_consolidamento: TRzDBCheckBox
          Left = 5
          Top = 400
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
          TabOrder = 29
        end
        object RzDBEditDescrizione_go1: trzdbeditdescrizione_go
          Left = 495
          Top = 20
          Width = 361
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
          TabOrder = 30
        end
        object RzDBEditDescrizione_go2: trzdbeditdescrizione_go
          Left = 59
          Top = 60
          Width = 367
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
          TabOrder = 31
        end
        object RzDBEditDescrizione_go3: trzdbeditdescrizione_go
          Left = 494
          Top = 60
          Width = 361
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
          TabOrder = 32
        end
        object RzDBEditDescrizione_go4: trzdbeditdescrizione_go
          Left = 159
          Top = 100
          Width = 267
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tda_differite_ds
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
          TabOrder = 33
        end
        object RzDBEditDescrizione_go5: trzdbeditdescrizione_go
          Left = 59
          Top = 140
          Width = 367
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
          TabOrder = 34
        end
        object RzDBEditDescrizione_go6: trzdbeditdescrizione_go
          Left = 494
          Top = 140
          Width = 361
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
          TabOrder = 35
        end
        object v_numerazione_automatica: TRzDBCheckBox
          Left = 180
          Top = 400
          Width = 134
          Height = 15
          Hint = 
            'spunta per eseguire la numerazione automatica delle fatture per ' +
            'ogni singolo fornitore (utile per autofatture)'
          DataField = 'numerazione_automatica'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'numerazione automatica'
          TabOrder = 36
        end
        object v_modalita_erogazione_intra: trzdbcombobox_go
          Left = 440
          Top = 180
          Width = 416
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
          TabOrder = 10
          Items.Strings = (
            ''
            'istantanea'
            'a pi'#249' riprese')
        end
        object v_aggiorna_approntato_produzione: TRzDBCheckBox
          Left = 340
          Top = 401
          Width = 169
          Height = 15
          Hint = 
            'spunta per eseguire l'#39'aggiornamento automatico dell'#39'approntato a' +
            'gli ordini di produzione'
          DataField = 'aggiorna_approntato_produzione'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'aggiorna approntato produzione'
          TabOrder = 37
        end
        object v_controllo_revisione: TRzDBCheckBox
          Left = 520
          Top = 401
          Width = 104
          Height = 15
          Hint = 
            'spunta per avvisare, in fase di modifica di preventivi e ordini,' +
            ' di generare una revisione'
          DataField = 'controllo_revisione'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo revisione'
          TabOrder = 38
        end
        object v_invio_pec: TRzDBCheckBox
          Left = 700
          Top = 401
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
          TabOrder = 39
        end
        object v_lotti_singola_riga: TRzDBCheckBox
          Left = 5
          Top = 421
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
          TabOrder = 40
        end
        object v_note_art: TRzDBCheckBox
          Left = 180
          Top = 422
          Width = 103
          Height = 15
          Hint = 
            'spunta per assegnare le note dell'#39'articolo alle note della riga ' +
            'del documento'
          DataField = 'note_art'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'setta note articolo'
          TabOrder = 41
        end
        object v_note_visibili: TRzDBCheckBox
          Left = 340
          Top = 422
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
          TabOrder = 42
        end
        object v_controllo_articoli_doppi: TRzDBCheckBox
          Left = 520
          Top = 422
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
          TabOrder = 43
        end
        object v_stampa_lotto_etichette: TRzDBCheckBox
          Left = 700
          Top = 422
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
        object v_proporre_contropartita: TRzDBCheckBox
          Left = 5
          Top = 443
          Width = 166
          Height = 15
          Hint = 
            'spunta per assegnare la contropartita acquisti anche per documen' +
            'ti senza causale contabile'
          DataField = 'proporre_contropartita'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'proporre contropartita contabile'
          TabOrder = 45
        end
        object v_avviso_documenti_aperti: TRzDBCheckBox
          Left = 180
          Top = 443
          Width = 131
          Height = 15
          Hint = 
            'spunta per avvisare se sono presenti altri documenti aperti prim' +
            'a di un nuovo inserimento'
          DataField = 'avviso_documenti_aperti'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'avviso documenti aperti'
          TabOrder = 46
        end
        object v_note_come_descrizioni: TRzDBCheckBox
          Left = 340
          Top = 443
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
          TabOrder = 47
        end
        object v_controllo_articolo_consegnato: TRzDBCheckBox
          Left = 520
          Top = 443
          Width = 169
          Height = 15
          Hint = 
            'spunta per controllare se l'#39'articolo '#232' stato consegnato preceden' +
            'temente al cliente con un documenti di vendita'
          DataField = 'controllo_articolo_consegnato'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'controllo se articolo consegnato'
          TabOrder = 48
        end
        object v_avviso_presenza_ovr: TRzDBCheckBox
          Left = 700
          Top = 444
          Width = 154
          Height = 15
          Hint = 
            'spunta per emettere un avviso, in fase di evasione ordine, se l'#39 +
            'articolo '#232' presente su ordini clienti per cui non sono state eme' +
            'sse RDA'
          DataField = 'avviso_presenza_ovr'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'avviso presenza ordini clienti'
          TabOrder = 49
        end
        object v_stampa_articoli_raggruppati: TRzDBCheckBox
          Left = 5
          Top = 464
          Width = 142
          Height = 15
          Hint = 
            'spunta per raggruppare, in stampa, gli articoli con le stesse ca' +
            'ratteristiche'
          DataField = 'stampa_articoli_raggruppati'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'stampa articoli raggruppati'
          TabOrder = 50
        end
        object v_notifica_articolo_in_ordine: TRzDBCheckBox
          Left = 180
          Top = 464
          Width = 150
          Height = 15
          Hint = 'spunta per notificare all'#39'utente se l'#39'articolo '#232' gi'#224' in ordine'
          DataField = 'notifica_articolo_in_ordine'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'notifica articolo gi'#224' in ordine'
          TabOrder = 51
        end
        object v_imputazione_quantita_base: TRzDBCheckBox
          Left = 340
          Top = 464
          Width = 142
          Height = 15
          Hint = 
            'spunta per imputare direttamente la quantit'#224' base sulla form pri' +
            'ncipale con conversione a quella di acquisto'
          DataField = 'imputazione_quantita_base'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'imputazione quantita base'
          TabOrder = 52
        end
        object v_avvisi_documento_stampato_fornitore: TRzDBCheckBox
          Left = 520
          Top = 465
          Width = 154
          Height = 15
          Hint = 
            'spunta per emettere gli avvisi di attenzione in caso di modifica' +
            ' di preventivi e ordini gi'#224' stampati per il fornitore'
          DataField = 'avvisi_documento_stampato_fornitore'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'avvisi modifica doc. stampati'
          TabOrder = 53
        end
        object v_messaggio_interattivo: TRzDBCheckBox
          Left = 700
          Top = 465
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
          TabOrder = 54
        end
        object v_usa_griglia_input: TRzDBCheckBox
          Left = 5
          Top = 485
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
          TabOrder = 55
        end
        object v_solo_righe_documento: TRzDBCheckBox
          Left = 180
          Top = 485
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
          TabOrder = 56
        end
        object v_split_payment: TRzDBCheckBox
          Left = 700
          Top = 323
          Width = 80
          Height = 15
          Hint = 'spunta se il documento '#232' soggetto allo split payment'
          DataField = 'split_payment'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'split payment'
          TabOrder = 18
        end
        object V_autofattura_34: TRzDBCheckBox
          Left = 340
          Top = 485
          Width = 155
          Height = 15
          Hint = 
            'spunta per la generazione dell'#39'autofattura elettronica art. 34 p' +
            'er conto dei produttori agricoli esenti'
          DataField = 'autofattura_34'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'autofattura agricoltura art. 34'
          TabOrder = 57
        end
        object v_assegnazione_clav: TRzDBCheckBox
          Left = 520
          Top = 485
          Width = 146
          Height = 15
          Hint = 
            'assegna il valore al flag di aggiornamento delle righe del DDT c' +
            'liente di conto lavorazione'
          DataField = 'assegnazione_clav'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'assegnazione conto lavoro'
          TabOrder = 58
        end
        object v_no_ordinato: TRzDBCheckBox
          Left = 700
          Top = 485
          Width = 72
          Height = 15
          Hint = 'spunta per non incrementare l'#39'ordinato per gli ordini fornitori'
          DataField = 'no_ordinato'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'no ordinato'
          TabOrder = 59
        end
        object v_tdo_codice_nota_credito: trzdbedit_go
          Left = 440
          Top = 100
          Width = 51
          Height = 21
          Hint = 
            'causale documento per generare note credito da D.D.T. di reso cl' +
            'ienti [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tdo_codice_nota_credito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          OnEnter = v_tdo_codice_nota_creditoEnter
          OnExit = v_tdo_codice_nota_creditoExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTDO'
          lookcolltable = 'TDO'
          lookcollvisname = 'TDV'
        end
        object rzdbeditdescrizione_go12: trzdbeditdescrizione_go
          Left = 494
          Top = 100
          Width = 362
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tdo_nota_credito_ds
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
          TabOrder = 60
        end
        object v_visualizza_disponibilita_ordini: TRzDBCheckBox
          Left = 5
          Top = 507
          Width = 121
          Height = 15
          Hint = 
            'spunta per visualizzare la disponibilit'#224' invece dell'#39'esistenza s' +
            'ui documenti di acquisto'
          DataField = 'visualizza_disponibilita'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'visualizza disponibilit'#224
          TabOrder = 61
        end
        object v_input_quantita_base: TRzDBCheckBox
          Left = 180
          Top = 507
          Width = 118
          Height = 15
          Hint = 
            'spunta per evitare la sincronizzazione tra quantit'#224' del document' +
            'o e quantit'#224' base fiscale'
          DataField = 'input_quantita_base'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'blocco quantit'#224' base'
          TabOrder = 62
        end
        object v_esporre_scadenziari: TRzDBCheckBox
          Left = 340
          Top = 507
          Width = 124
          Height = 15
          Hint = 
            'spunta per includere il totale degli ordini aperti sulla stampa ' +
            'dello scadenziario'
          DataField = 'esporre_scadenziari'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'esporre su scadenziari'
          TabOrder = 63
        end
      end
      object tab_pagina2: TRzTabSheet
        Color = clWindow
        ImageIndex = 1
        Caption = 'dati extra'
        object Label13: TRzLabel
          Left = 5
          Top = 325
          Width = 151
          Height = 13
          Caption = 'cartella archiviazione documenti'
          FocusControl = v_cartella_archiviazione_doc
          ShowAccelChar = False
          Transparent = True
        end
        object v_sfoglia: TRzRapidFireButton
          Left = 565
          Top = 340
          Width = 71
          Height = 21
          Hint = 'ricerca il modello desiderato nella cartella "report" '
          Caption = 'Sfoglia'
          ImageIndex = 104
          Images = ARC.immagine_16
          OnClick = v_sfogliaClick
        end
        object Label18: TRzLabel
          Left = 645
          Top = 325
          Width = 106
          Height = 13
          Caption = 'creazione sottocartella'
          Transparent = True
        end
        object Label19: TRzLabel
          Left = 555
          Top = 75
          Width = 193
          Height = 13
          Caption = 'aggiornamento automatico listini acquisto'
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
          Top = 360
          Width = 93
          Height = 13
          Caption = 'documento allegato'
          FocusControl = v_documento_allegato
          ShowAccelChar = False
          Transparent = True
        end
        object SpeedButton1: TRzRapidFireButton
          Left = 685
          Top = 375
          Width = 71
          Height = 21
          Hint = 'ricerca documento allegato'
          Caption = 'Sfoglia'
          ImageIndex = 104
          Images = ARC.immagine_16
          OnClick = SpeedButton1Click
        end
        object v_immagine_documento_allegato: TRzRapidFireButton
          Left = 760
          Top = 375
          Width = 21
          Height = 21
          ImageIndex = 86
          Images = ARC.immagine_16
          OnClick = v_immagine_documento_allegatoClick
        end
        object Label23: TRzLabel
          Left = 6
          Top = 395
          Width = 75
          Height = 13
          Caption = 'listino di vendita'
          ShowAccelChar = False
          Transparent = True
        end
        object Label12: TRzLabel
          Left = 396
          Top = 395
          Width = 97
          Height = 13
          Caption = 'tipo contatto per crm'
          ShowAccelChar = False
          Transparent = True
        end
        object Label24: TRzLabel
          Left = 5
          Top = 430
          Width = 185
          Height = 13
          Caption = 'documento conto/acquisto da evadere'
          ShowAccelChar = False
          Transparent = True
        end
        object Label26: TRzLabel
          Left = 395
          Top = 430
          Width = 71
          Height = 13
          Caption = 'modalit'#224' lettore'
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel11: TRzLabel
          Left = 580
          Top = 430
          Width = 169
          Height = 13
          Caption = 'modalit'#224' visualizzazione disponibilit'#224
          Transparent = True
        end
        object GroupBox3: TGroupBox
          Left = 5
          Top = 73
          Width = 541
          Height = 143
          Caption = 'descrizione lingue estere'
          TabOrder = 1
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
            Top = 54
            Width = 3
            Height = 13
            ShowAccelChar = False
            Transparent = True
          end
          object v_lingua_03: TRzLabel
            Left = 5
            Top = 74
            Width = 3
            Height = 13
            ShowAccelChar = False
            Transparent = True
          end
          object v_lingua_04: TRzLabel
            Left = 5
            Top = 94
            Width = 3
            Height = 13
            ShowAccelChar = False
            Transparent = True
          end
          object v_lingua_05: TRzLabel
            Left = 5
            Top = 114
            Width = 3
            Height = 13
            ShowAccelChar = False
            Transparent = True
          end
          object v_descrizione_lingua_01: trzdbedit_go
            Left = 120
            Top = 30
            Width = 410
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
            Top = 50
            Width = 410
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
            Top = 70
            Width = 410
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
            Top = 90
            Width = 410
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
            Top = 110
            Width = 410
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
        end
        object GroupBox4: TGroupBox
          Left = 5
          Top = 4
          Width = 771
          Height = 67
          Caption = 'campi opzionali righe documento'
          TabOrder = 0
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
            Left = 135
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
          object v_gestione_tipo_movimento: TRzDBCheckBox
            Left = 285
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
          object v_gestione_tum_codice: TRzDBCheckBox
            Left = 560
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
          object v_gestione_quantita: TRzDBCheckBox
            Left = 695
            Top = 19
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
          object v_gestione_data_consegna: TRzDBCheckBox
            Left = 560
            Top = 39
            Width = 90
            Height = 15
            Hint = 'spunta per gestire la data di consegna sulle righe documenti '
            DataField = 'gestione_data_consegna'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'data consegna'
            TabOrder = 10
          end
          object v_gestione_sconto_cliente: TRzDBCheckBox
            Left = 135
            Top = 39
            Width = 47
            Height = 15
            Hint = 'spunta per gestire lo sconto fornitore sulle righe documenti '
            DataField = 'gestione_sconto_cliente'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'sconti'
            TabOrder = 7
          end
          object v_gestione_prezzo: TRzDBCheckBox
            Left = 10
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
            Left = 425
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
          object v_gestione_numero_colli: TRzDBCheckBox
            Left = 285
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
          object v_gestione_numero_confezioni: TRzDBCheckBox
            Left = 425
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
        end
        object GroupBox8: TGroupBox
          Left = 5
          Top = 219
          Width = 776
          Height = 102
          Caption = 'lavorazione presso terzi'
          TabOrder = 8
          object Label16: TRzLabel
            Left = 10
            Top = 15
            Width = 223
            Height = 13
            Caption = 'causale documento invio merce in conto lavoro'
            ShowAccelChar = False
            Transparent = True
          end
          object Label17: TRzLabel
            Left = 390
            Top = 15
            Width = 210
            Height = 13
            Caption = 'causale movimenti scarico materiale lavorato'
            ShowAccelChar = False
            Transparent = True
            Visible = False
          end
          object Label9: TRzLabel
            Left = 10
            Top = 55
            Width = 108
            Height = 13
            Caption = 'note apertura materiale'
            ShowAccelChar = False
            Transparent = True
          end
          object Label15: TRzLabel
            Left = 390
            Top = 55
            Width = 109
            Height = 13
            Caption = 'note chiusura materiale'
            ShowAccelChar = False
            Transparent = True
          end
          object v_tdo_codice_presso_terzi: trzdbedit_go
            Left = 10
            Top = 30
            Width = 50
            Height = 21
            Hint = 
              'causale documento per generare documento di invio materiale in c' +
              'onto lavorazione [F4 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'tdo_codice_presso_terzi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 0
            OnEnter = v_tdo_codice_presso_terziEnter
            OnExit = v_tdo_codice_presso_terziExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTDO'
            lookcolltable = 'TDO'
            lookcollvisname = 'TDO'
          end
          object v_tmo_codice_presso_terzi: trzdbedit_go
            Left = 390
            Top = 30
            Width = 50
            Height = 21
            Hint = 
              'causale movimenti magazzino per lo scarico del materiale lavorat' +
              'o dai terzisti [F4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'tmo_codice_presso_terzi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 1
            Visible = False
            OnExit = v_tmo_codice_presso_terziExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMO'
            lookcolltable = 'TMO'
            lookcollvisname = 'TMO'
          end
          object v_tcd_codice_apertura_presso_ter: trzdbedit_go
            Left = 10
            Top = 70
            Width = 50
            Height = 21
            Hint = 
              'note da indicare prima della descrizione del materiale inviato i' +
              'n lavorazione [F4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'tcd_codice_apertura_presso_ter'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 2
            OnExit = v_tcd_codice_apertura_presso_terExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTCD'
            lookcolltable = 'TCD'
            lookcollvisname = 'TCD'
          end
          object v_tcd_codice_chiusura_presso_ter: trzdbedit_go
            Left = 390
            Top = 70
            Width = 50
            Height = 21
            Hint = 
              'note da indicare dopo la descrizione del materiale inviato in la' +
              'vorazione [F4 F5 F6]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = tabella_ds
            DataField = 'tcd_codice_chiusura_presso_ter'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 3
            OnExit = v_tcd_codice_chiusura_presso_terExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTCD'
            lookcolltable = 'TCD'
            lookcollvisname = 'TCD'
          end
          object RzDBEditDescrizione_go7: trzdbeditdescrizione_go
            Left = 65
            Top = 30
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tdo_presso_terzi_ds
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
          object RzDBEditDescrizione_go8: trzdbeditdescrizione_go
            Left = 65
            Top = 70
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tcd_apertura_presso_terzi_ds
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
          object RzDBEditDescrizione_go9: trzdbeditdescrizione_go
            Left = 445
            Top = 30
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tmo_presso_terzi_ds
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
            TabOrder = 6
            Visible = False
          end
          object RzDBEditDescrizione_go10: trzdbeditdescrizione_go
            Left = 445
            Top = 70
            Width = 321
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tcd_chiusura_presso_terzi_ds
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
        object v_cartella_archiviazione_doc: trzdbedit_go
          Left = 5
          Top = 340
          Width = 551
          Height = 21
          Hint = 
            'cartella su disco in cui archiviare le immagini per questo tipo ' +
            'documento'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'cartella_archiviazione_doc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 9
          OnChange = v_cartella_archiviazione_docChange
          OnExit = v_cartella_archiviazione_docExit
        end
        object v_aggiungi_cartella: trzdbcombobox_go
          Left = 645
          Top = 340
          Width = 135
          Height = 21
          Hint = 'modalit'#224' per l'#39'eventuale creazione di sottocartelle automatiche'
          DataField = 'aggiungi_cartella'
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
          Items.Strings = (
            'manuale'
            'anno/mese'
            'intestatario')
        end
        object v_aggiorna_listini: trzdbcombobox_go
          Left = 555
          Top = 90
          Width = 221
          Height = 21
          Hint = 
            'spunta la voce desiderata per attivare l'#39'aggiornamento automatic' +
            'o dei listini di acquisto durante il caricamento documenti'
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
          TabOrder = 2
          OnChange = v_aggiorna_listiniChange
          OnEnter = v_aggiorna_listiniEnter
          OnExit = v_aggiorna_listiniExit
          Items.Strings = (
            'nessuno'
            'listino fornitori'
            'listino acquisti'
            'costo standard')
        end
        object v_aggiorna_listini_vendita: TRzDBCheckBox
          Left = 555
          Top = 139
          Width = 218
          Height = 15
          Hint = 'spunta per aggiornare automaticamente i listini di vendita'
          DataField = 'aggiorna_listini_vendita'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'aggiornamento automatico listini di vendita'
          TabOrder = 4
        end
        object v_documento_allegato: trzdbedit_go
          Left = 5
          Top = 375
          Width = 676
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
          TabOrder = 11
          OnChange = v_documento_allegatoChange
          OnExit = v_documento_allegatoExit
        end
        object v_tlv_codice: trzdbedit_go
          Left = 6
          Top = 410
          Width = 51
          Height = 21
          Hint = 
            'listino di vendita da visualizzare per verifica prezzo di vendit' +
            'a in caricamento documento [F4 F5 F6]'
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
          TabOrder = 12
          OnExit = v_tlv_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTLV'
          lookcolltable = 'TLV'
          lookcollvisname = 'TLV'
        end
        object v_tlv_descrizione: trzdbeditdescrizione_go
          Left = 60
          Top = 410
          Width = 331
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
          TabOrder = 13
        end
        object v_ttc_codice: trzdbedit_go
          Left = 396
          Top = 410
          Width = 51
          Height = 21
          Hint = 
            'tipologia contatto per notificare al CRM l'#39'emissione del documen' +
            'to [F3 F4 F5]'
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
          TabOrder = 14
          OnExit = v_ttc_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTTC'
          lookcolltable = 'TTC'
          lookcollvisname = 'TTC'
        end
        object RzDBEditDescrizione_go11: trzdbeditdescrizione_go
          Left = 450
          Top = 410
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
          TabOrder = 15
        end
        object v_approntamento_automatico: TRzDBCheckBox
          Left = 555
          Top = 179
          Width = 203
          Height = 15
          Hint = 
            'spunta per eseguire l'#39'approntamento degli ordini clienti collega' +
            'to all'#39'ordine fornitore'
          DataField = 'approntamento_automatico'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'approntamento automatico ordini clienti'
          TabOrder = 6
        end
        object v_tda_codice_conto_acquisto: trzdbedit_go
          Left = 5
          Top = 445
          Width = 50
          Height = 21
          Hint = 
            'codice documento di conto/acquisto da evadere con la fattura [F4' +
            ' F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'tda_codice_conto_acquisto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 16
          OnEnter = v_tda_codice_conto_acquistoEnter
          OnExit = v_tda_codice_conto_acquistoExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESTDA'
          lookcolltable = 'TDA'
          lookcollvisname = 'TDZ'
        end
        object v_tdo_descrizione_conto_vendita: trzdbeditdescrizione_go
          Left = 60
          Top = 445
          Width = 331
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tda_conto_acquisto_ds
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
          TabOrder = 17
        end
        object v_modalita_lettore: trzdbcombobox_go
          Left = 395
          Top = 445
          Width = 176
          Height = 21
          Hint = 'modalit'#224' di acquisizione dati tramite lettore'
          DataField = 'modalita_lettore'
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
          TabOrder = 18
          Items.Strings = (
            'controllo'
            'entrambe'
            'inserimento'
            'evasione')
        end
        object v_controllo_articolo_ordini: TRzDBCheckBox
          Left = 5
          Top = 479
          Width = 171
          Height = 15
          Hint = 
            'spunta per controllare la presenza dell'#39'articolo in ordini apert' +
            'i del fornitore'
          DataField = 'controllo_articolo_ordini'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'avviso presenza articoli su ordini'
          TabOrder = 20
        end
        object v_esegui_gestione_listini_acquisto: TRzDBCheckBox
          Left = 555
          Top = 119
          Width = 201
          Height = 15
          Hint = 
            'spunta per eseguire la gestione dell'#39'archivio listini acquisto d' +
            'opo l'#39'aggiornamento'
          DataField = 'esegui_gestione_listini_acquisto'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'esegui gestione archivio listini acquisto'
          TabOrder = 3
        end
        object v_usa_prezzo_lordo_listini_vendita: TRzDBCheckBox
          Left = 555
          Top = 159
          Width = 201
          Height = 15
          Hint = 
            'spunta per aggiornare i listini di vendita utilizzando il prezzo' +
            ' lordo'
          DataField = 'usa_prezzo_lordo_listini_vendita'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'utilizza prezzo lordo per aggiornamento'
          TabOrder = 5
        end
        object GroupBox9: TGroupBox
          Left = 395
          Top = 470
          Width = 386
          Height = 56
          Caption = 'calcolo automatico quantit'#224' colli e confezioni'
          TabOrder = 23
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
        object v_intra_manuale: TRzDBCheckBox
          Left = 205
          Top = 479
          Width = 184
          Height = 15
          Hint = 'spunta per chiedere conferma prima di generare l'#39'archivio INTRA'
          DataField = 'intra_manuale'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'generazione dati INTRA a richiesta'
          TabOrder = 21
        end
        object v_numerazione_automatica_ddt: TRzDBCheckBox
          Left = 5
          Top = 504
          Width = 160
          Height = 15
          Hint = 
            'spunta per effettuare la numerazione automatica dei DDT di caric' +
            'o'
          DataField = 'numerazione_automatica_ddt'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'numerazione automatica DDT'
          TabOrder = 22
        end
        object v_calcolo_disponibilita_acquisti: trzdbcombobox_go
          Left = 580
          Top = 445
          Width = 201
          Height = 21
          Hint = 'modalit'#224' di calcolo disponibilita sui documenti di acquisto'
          DataField = 'calcolo_disponibilita_acquisti'
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
          TabOrder = 19
          Items.Strings = (
            ''
            'esistenza'
            'esistenza - impegnato'
            'esistenza + ordinato'
            'esistenza - impegnato + ordinato'
            'ordinato')
        end
        object v_approntamento_automatico_interattivo: TRzDBCheckBox
          Left = 785
          Top = 179
          Width = 65
          Height = 15
          Hint = 
            'spunta per indicare che l'#39'approntamento degli ordini clienti va ' +
            'confermato interattivamente'
          DataField = 'approntamento_automatico_interattivo'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'interattivo'
          TabOrder = 7
        end
      end
      object tab_pagina3: TRzTabSheet
        Color = clWindow
        ImageIndex = 2
        Caption = 'mail'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object v_traduzione_testo_mail: TRzRapidFireButton
          Left = 665
          Top = 335
          Width = 116
          Height = 28
          Caption = 'traduzione'
          ImageIndex = 98
          Images = ARC.immagine_16
          Enabled = False
          OnClick = v_traduzione_testo_mailClick
        end
        object v_traduzione_testo_mail_excel: TRzRapidFireButton
          Left = 664
          Top = 445
          Width = 116
          Height = 28
          Caption = 'traduzione'
          ImageIndex = 98
          Images = ARC.immagine_16
          Enabled = False
          OnClick = v_traduzione_testo_mail_excelClick
        end
        object GroupBox11: TGroupBox
          Left = 5
          Top = 5
          Width = 776
          Height = 141
          Caption = 'posta elettronica'
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
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
            Left = 320
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
          object RzLabel1: TRzLabel
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
            Left = 320
            Top = 70
            Width = 56
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
        object GroupBox10: TGroupBox
          Left = 5
          Top = 150
          Width = 776
          Height = 101
          Caption = 'posta elettronica certificata'
          TabOrder = 1
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
        object tab_control_testo_mail: TRzPageControl
          Left = 5
          Top = 315
          Width = 656
          Height = 101
          Hint = ''
          ActivePage = tab_pagina1_note
          CutCornerSize = 3
          ShowShadow = False
          TabIndex = 0
          TabOrder = 3
          TabStop = False
          TabStyle = tsCutCorner
          OnEnter = tab_control_testo_mailEnter
          OnExit = tab_control_testo_mailExit
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
              Width = 654
              Height = 79
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
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBMemo1: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 654
              Height = 94
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
              Width = 654
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
              Width = 648
              Height = 143
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
        object tab_control_testo_mail_excel: TRzPageControl
          Left = 5
          Top = 425
          Width = 656
          Height = 101
          Hint = ''
          ActivePage = tab_pagina6_excel
          CutCornerSize = 3
          ShowShadow = False
          TabIndex = 5
          TabOrder = 4
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
              Width = 654
              Height = 94
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
            object v_testo_mail_excel_lingua_01: trzdbmemo_go
              Left = 0
              Top = 0
              Width = 654
              Height = 94
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
              Width = 654
              Height = 94
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
              Width = 654
              Height = 94
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
              Width = 654
              Height = 94
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
              Height = 79
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
          Top = 260
          Width = 656
          Height = 46
          Hint = 'oggetto della mail lingua 01'
          ActivePage = tab_pagina6_oggetto
          CutCornerSize = 3
          ShowShadow = False
          TabIndex = 5
          TabOrder = 2
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
            ExplicitWidth = 0
            ExplicitHeight = 0
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
            ExplicitWidth = 0
            ExplicitHeight = 0
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
            ExplicitWidth = 0
            ExplicitHeight = 0
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
      object tab_pagina4: TRzTabSheet
        Color = clWindow
        ImageIndex = 3
        Caption = 'collegamenti'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object RzLabel9: TRzLabel
          Left = 5
          Top = 70
          Width = 107
          Height = 13
          Caption = 'documento di gestione'
          ShowAccelChar = False
          Transparent = True
        end
        object GroupBox12: TGroupBox
          Left = 0
          Top = 0
          Width = 781
          Height = 61
          Caption = 'contabilit'#224' analitica'
          TabOrder = 0
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
            Left = 396
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
            Width = 291
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
            Left = 396
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
            Left = 450
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
        object v_prg_codice_riferimento: trzdbedit_go
          Left = 5
          Top = 85
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
          TabOrder = 1
          OnExit = v_prg_codice_riferimentoExit
          lookcolldatabase = 'arc.arc'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESPRG'
          lookcolltable = 'PRG'
          lookcollvisname = 'PRG'
        end
        object trzdbeditdescrizione_go1: trzdbeditdescrizione_go
          Left = 230
          Top = 85
          Width = 556
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
          TabOrder = 2
        end
        object RzGroupBox1: TRzGroupBox
          Left = 5
          Top = 120
          Width = 221
          Height = 46
          Caption = 'call off stock acquisto'
          ParentColor = True
          TabOrder = 3
          object v_carico_call_off_stock: TRzDBCheckBox
            Left = 5
            Top = 19
            Width = 48
            Height = 15
            Hint = 'spunta se il documento '#232' un carico del deposito call off stock'
            DataField = 'carico_call_off_stock'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'carico'
            TabOrder = 0
          end
          object v_acquisto_call_off_stock: TRzDBCheckBox
            Left = 80
            Top = 19
            Width = 59
            Height = 15
            Hint = 'spunta se il documento '#232' un acquisto dal deposito call off stock'
            DataField = 'acquisto_call_off_stock'
            DataSource = tabella_ds
            ValueChecked = 'si'
            ValueUnchecked = 'no'
            Caption = 'acquisto'
            TabOrder = 1
          end
        end
      end
      object TabSheet1: TRzTabSheet
        Color = clWindow
        Caption = 'marchio documenti'
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
          Left = 65
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
        object Panel1: TRzPanel
          Left = 5
          Top = 15
          Width = 329
          Height = 91
          BorderInner = fsLowered
          Color = 15987699
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
          Left = 65
          Top = 217
          Width = 326
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
      end
      object tab_collegamenti: TRzTabSheet
        Color = clWindow
        Caption = 'collegamenti moduli'
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
        object v_codice_edison: trzdbedit_go
          Left = 5
          Top = 20
          Width = 311
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
      end
    end
    object v_descrizione: trzdbedit_go
      Left = 70
      Top = 20
      Width = 410
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
      Left = 485
      Top = 20
      Width = 306
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
      OnExit = v_descrizioneExit
    end
    object v_obsoleto: TRzDBCheckBox
      Left = 800
      Top = 23
      Width = 59
      Height = 15
      Hint = 
        'spunta se la causale non pu'#242' essere utilizzato nella gestione co' +
        'rrente'
      DataField = 'obsoleto'
      DataSource = tabella_ds
      ValueChecked = 'si'
      ValueUnchecked = 'no'
      Caption = 'obsoleto'
      TabOrder = 3
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
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
      lookuptable = 'TDA'
      lookupvisname = 'TDA'
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    Left = 863
    Height = 604
    ExplicitLeft = 863
    ExplicitHeight = 604
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      Top = 468
      Height = 135
      ExplicitTop = 468
      ExplicitHeight = 135
      FixedDimension = 18
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 22
        ExplicitWidth = 187
        ExplicitHeight = 112
      end
      inherited tab_pannello_bottoni_nuovi_extra: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 22
        ExplicitWidth = 187
        ExplicitHeight = 545
      end
    end
    inherited pannello_destra_pannello: TRzPanel
      Height = 436
      ExplicitHeight = 436
      inherited pannello_destra_PanelGroup: TCategoryPanelGroup
        Height = 410
        ExplicitHeight = 410
        inherited pannello_destra_01: TCategoryPanel
          object v_traduzione: TRzRapidFireButton
            Left = 0
            Top = 0
            Width = 183
            Height = 20
            Cursor = crHandPoint
            Align = alTop
            Caption = 'traduzione'
            ImageIndex = 39
            Images = ARC.immagine_16
            Enabled = False
            Flat = True
            Margin = 5
            Transparent = False
            OnClick = v_traduzioneClick
          end
        end
      end
    end
  end
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select *'
      'from tda'
      'where codice = :codice'
      ' ')
  end
  object OpenDialog: TOpenDialog
    InitialDir = '..\arc_demo\archiviazione_documenti'
    Left = 790
    Top = 65526
  end
  object tlv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select descrizione, tva_codice, iva_inclusa, sconto_massimo, blo' +
        'cco_sconto_massimo'
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
    Left = 385
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tlv_ds: TMyDataSource
    DataSet = tlv
    Left = 399
    Top = 65526
  end
  object tco: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select descrizione, movimento_iva, tipo_registro_iva, analitica,' +
        ' commesse'
      'from tco'
      'where codice = :codice'
      '')
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
  object tco_ds: TMyDataSource
    DataSet = tco
    Left = 424
    Top = 65526
  end
  object tmo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, commesse, lotti'
      'from tmo'
      'where codice = :codice'
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 435
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
    Left = 449
    Top = 65526
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
    Left = 460
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
    Left = 474
    Top = 65526
  end
  object tda_differite: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, tipo_documento, analitica, commesse'
      'from tda'
      'where codice = :codice')
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
  object tda_differite_ds: TMyDataSource
    DataSet = tda_differite
    Left = 499
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
    Left = 510
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
    Left = 524
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
    Left = 535
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
    Left = 549
    Top = 65526
  end
  object tdo_presso_terzi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, tipo_documento'
      'from tdo'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 585
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tdo_presso_terzi_ds: TMyDataSource
    DataSet = tdo_presso_terzi
    Left = 599
    Top = 65526
  end
  object tmo_presso_terzi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tmo'
      'where codice = :codice'
      ''
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 610
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_presso_terzi_ds: TMyDataSource
    DataSet = tmo_presso_terzi
    Left = 624
    Top = 65526
  end
  object tcd_apertura_presso_terzi: TMyQuery_go
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
    Left = 635
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tcd_apertura_presso_terzi_ds: TMyDataSource
    DataSet = tcd_apertura_presso_terzi
    Left = 649
    Top = 65526
  end
  object tcd_chiusura_presso_terzi: TMyQuery_go
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
    Left = 660
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tcd_chiusura_presso_terzi_ds: TMyDataSource
    DataSet = tcd_chiusura_presso_terzi
    Left = 674
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
    Left = 690
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
    Left = 704
    Top = 65526
  end
  object tda_conto_acquisto: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tda'
      'where codice = :codice and tipo_documento = '#39'ddt'#39
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 720
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tda_conto_acquisto_ds: TMyDataSource
    DataSet = tda_conto_acquisto
    Left = 734
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
  object tdo_nota_credito: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tdo'
      'where codice = :codice'
      'and tipo_documento = '#39'nota credito'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 790
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tdo_nota_credito_ds: TMyDataSource
    DataSet = tdo_nota_credito
    Left = 809
    Top = 20
  end
end
