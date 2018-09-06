object dm: Tdm
  OldCreateOrder = False
  Left = 658
  Top = 69
  Height = 406
  Width = 538
  object ADOQuery1: TADOQuery
    Connection = AdoKoneksi
    Parameters = <>
    Left = 184
    Top = 32
  end
  object AdoKoneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=databaseSKKNI.accd' +
      'b;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 48
    Top = 48
  end
  object ADOQuery2: TADOQuery
    Connection = AdoKoneksi
    Parameters = <>
    Left = 184
    Top = 88
  end
  object DataBuku: TDataSource
    DataSet = AdoBuku
    Left = 144
    Top = 192
  end
  object DataQueryBuku: TDataSource
    DataSet = ADOQBuku
    Left = 176
    Top = 248
  end
  object AdoBuku: TADOQuery
    Active = True
    Connection = AdoKoneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From T_Buku')
    Left = 40
    Top = 120
  end
  object ADOQBuku: TADOQuery
    Active = True
    Connection = AdoKoneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Q_Pengolahan')
    Left = 40
    Top = 176
  end
  object AdoPenerbit: TADOQuery
    Active = True
    Connection = AdoKoneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From T_Penerbit')
    Left = 120
    Top = 120
  end
end
