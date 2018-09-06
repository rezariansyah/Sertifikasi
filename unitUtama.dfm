object HalAplikasi: THalAplikasi
  Left = 88
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Halaman Utama'
  ClientHeight = 689
  ClientWidth = 1215
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BKen: TLabel
    Left = 402
    Top = 234
    Width = 24
    Height = 26
    Caption = '1'
    Color = 6566400
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Webdings'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label55: TLabel
    Left = 2
    Top = 2
    Width = 334
    Height = 38
    Cursor = crHandPoint
    Alignment = taCenter
    AutoSize = False
    Caption = 'DAFTAR ULANG'
    Color = 6566400
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Calibri'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object PanelBUku: TPanel
    Left = 15
    Top = 155
    Width = 1185
    Height = 502
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 5
    object Label36: TLabel
      Left = 766
      Top = 15
      Width = 130
      Height = 16
      Caption = 'Pencarian Nama Buku'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object BCari: TLabel
      Left = 1115
      Top = 9
      Width = 24
      Height = 26
      Caption = 'L'
      Color = 6566400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      OnClick = BCariClick
    end
    object Ecari: TEdit
      Left = 909
      Top = 12
      Width = 196
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = EcariChange
    end
    object Grid1: TDBGrid
      Left = 40
      Top = 43
      Width = 1113
      Height = 391
      DataSource = dm.DataBuku
      FixedColor = 6566400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -16
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDBuku'
          Title.Alignment = taCenter
          Title.Caption = 'ID Buku'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NamaBuku'
          Title.Alignment = taCenter
          Width = 476
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PengarangBUku'
          Title.Alignment = taCenter
          Title.Caption = 'Pengarang Buku'
          Width = 278
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Harga'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Stok'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 1053
      Top = 448
      Width = 100
      Height = 35
      Cursor = crHandPoint
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BkeluarClick
    end
  end
  object PanelPengolahan: TPanel
    Left = 15
    Top = 156
    Width = 1185
    Height = 502
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 6
    object Bevel1: TBevel
      Left = 622
      Top = 22
      Width = 542
      Height = 196
      Shape = bsFrame
    end
    object Bevel2: TBevel
      Left = 22
      Top = 22
      Width = 587
      Height = 197
      Shape = bsFrame
    end
    object Label1: TLabel
      Left = 120
      Top = 65
      Width = 49
      Height = 18
      Caption = 'Kategori'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 73
      Top = 128
      Width = 96
      Height = 16
      Caption = 'Pengarang Buku'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 142
      Top = 188
      Width = 27
      Height = 16
      Caption = 'Stok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 135
      Top = 154
      Width = 34
      Height = 16
      Caption = 'Harga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object BcariPengolahan: TLabel
      Left = 1139
      Top = 280
      Width = 24
      Height = 26
      Caption = 'L'
      Color = 6566400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      OnClick = BcariPengolahanClick
    end
    object Label12: TLabel
      Left = 854
      Top = 286
      Width = 58
      Height = 16
      Caption = 'Pencarian'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 741
      Top = 141
      Width = 27
      Height = 16
      Caption = 'Kota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 727
      Top = 104
      Width = 41
      Height = 16
      Caption = 'Negara'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 682
      Top = 72
      Width = 86
      Height = 16
      Caption = 'Nama Penerbit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 125
      Top = 33
      Width = 44
      Height = 18
      Caption = 'ID Buku'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 104
      Top = 97
      Width = 65
      Height = 18
      Caption = 'Nama Buku'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 706
      Top = 40
      Width = 64
      Height = 16
      Caption = 'ID Penerbit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object BCek: TLabel
      Left = 898
      Top = 35
      Width = 37
      Height = 23
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cek'
      Color = 6566400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      OnClick = BCekClick
    end
    object Eharga: TEdit
      Left = 175
      Top = 151
      Width = 274
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      OnKeyPress = EnoOpKeyPress
    end
    object EPengarangBuku: TEdit
      Left = 176
      Top = 123
      Width = 402
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EStok: TEdit
      Left = 174
      Top = 185
      Width = 275
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 4
      OnKeyPress = EnoOpKeyPress
    end
    object ENamaPenerbit: TEdit
      Left = 772
      Top = 68
      Width = 372
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = EnamaKeyPress
    end
    object EIdPenerbit: TEdit
      Left = 774
      Top = 36
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object CariPengolahan: TEdit
      Left = 933
      Top = 283
      Width = 196
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnChange = CariPengolahanChange
    end
    object BHapus: TButton
      Left = 614
      Top = 232
      Width = 100
      Height = 35
      Cursor = crHandPoint
      Caption = 'Hapus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = BHapusClick
    end
    object BBatal: TBitBtn
      Left = 721
      Top = 232
      Width = 100
      Height = 35
      Cursor = crHandPoint
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = BBatalClick
    end
    object BKeluar: TBitBtn
      Left = 829
      Top = 232
      Width = 100
      Height = 35
      Cursor = crHandPoint
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = BkeluarClick
    end
    object BSimpan: TBitBtn
      Left = 400
      Top = 232
      Width = 100
      Height = 35
      Cursor = crHandPoint
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = BsimpanClick
    end
    object GridPengolahan: TDBGrid
      Left = 48
      Top = 315
      Width = 1113
      Height = 163
      DataSource = dm.DataQueryBuku
      FixedColor = 6566400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -16
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      OnCellClick = GridPengolahanCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'IDBuku'
          Title.Alignment = taCenter
          Title.Caption = 'ID Buku'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NamaBuku'
          Title.Alignment = taCenter
          Title.Caption = 'Nama Buku'
          Width = 550
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PengarangBUku'
          Title.Alignment = taCenter
          Title.Caption = 'Pengarang Buku'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Harga'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Stok'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDPenerbit'
          Title.Alignment = taCenter
          Title.Caption = 'ID Penerbit'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NamaPenerbit'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object BUbah: TBitBtn
      Left = 507
      Top = 232
      Width = 100
      Height = 35
      Cursor = crHandPoint
      Caption = 'Ubah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = BUbahClick
    end
    object EIdBuku: TEdit
      Left = 176
      Top = 29
      Width = 273
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnChange = EIdBukuChange
      OnKeyPress = EnamaPemKeyPress
    end
    object EnamaBuku: TEdit
      Left = 176
      Top = 93
      Width = 402
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = EnamaPemKeyPress
    end
    object CBKategori: TComboBox
      Left = 176
      Top = 63
      Width = 273
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        'Contemporerary Fiction'
        'Crime Fiction'
        'Classic'
        'Etc')
    end
    object BTambah: TBitBtn
      Left = 293
      Top = 233
      Width = 100
      Height = 35
      Cursor = crHandPoint
      Caption = 'Tambah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = BTambahClick
    end
    object CBNegara: TComboBox
      Left = 772
      Top = 103
      Width = 273
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 7
      Items.Strings = (
        'United Kingdom'
        'United State')
    end
    object CBKota: TComboBox
      Left = 772
      Top = 135
      Width = 273
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 8
      Items.Strings = (
        'London'
        'New York')
    end
  end
  object Panel2: TPanel
    Left = 342
    Top = 110
    Width = 338
    Height = 41
    Align = alCustom
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 4
    object Label22: TLabel
      Left = 0
      Top = 2
      Width = 337
      Height = 38
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'DATA PENGOLAHAN'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6566400
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      OnClick = Label22Click
      OnMouseEnter = Label22MouseEnter
      OnMouseLeave = Label22MouseLeave
    end
  end
  object Panel5: TPanel
    Left = 342
    Top = 110
    Width = 337
    Height = 41
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 1
    Visible = False
    object Label25: TLabel
      Left = 2
      Top = 2
      Width = 334
      Height = 38
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'DATA PENGOLAHAN'
      Color = 6566400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
  end
  object Panel1: TPanel
    Left = 5
    Top = 110
    Width = 337
    Height = 41
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 3
    object Label4: TLabel
      Left = 2
      Top = 2
      Width = 334
      Height = 38
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'DATA BUKU'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6566400
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      OnClick = Label4Click
      OnMouseEnter = Label4MouseEnter
      OnMouseLeave = Label4MouseLeave
    end
  end
  object Panel16: TPanel
    Left = 0
    Top = 0
    Width = 1215
    Height = 100
    Align = alTop
    BevelOuter = bvNone
    Color = 6566400
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 57343
    Font.Height = -17
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 258
      Top = 11
      Width = 706
      Height = 40
      Caption = 'APLIKASI TOKO BUKU MUHAMMAD REZA RIANSYAH'
      Color = 15460580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object Label6: TLabel
      Left = 278
      Top = 95
      Width = 601
      Height = 40
      Caption = 'DINAS PERHUBUNGAN KABUPATEN BANJAR'
      Color = 15460580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object Label52: TLabel
      Left = 37
      Top = 49
      Width = 1139
      Height = 40
      Caption = 
        'JALAN PEMBANGUNAN KM. 22,500 LANDASAN ULIN TENGAH, KOTA BANJARBA' +
        'RU'
      Color = 15460580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
  end
  object Panel4: TPanel
    Left = 5
    Top = 110
    Width = 337
    Height = 41
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 2
    Visible = False
    object Label24: TLabel
      Left = 2
      Top = 2
      Width = 334
      Height = 38
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'DATA BUKU'
      Color = 6566400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
  end
end
