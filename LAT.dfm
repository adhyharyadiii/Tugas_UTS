object Form9: TForm9
  Left = 560
  Top = 66
  Width = 577
  Height = 633
  Caption = 'TAMBAH DATA JADWAL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 99
    Top = 8
    Width = 363
    Height = 19
    Caption = 'TAMBAH DATA JADWAL PELAJARAN PRAKTIKUM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 16
    Top = 48
    Width = 30
    Height = 13
    Caption = 'KELAS'
  end
  object lbl3: TLabel
    Left = 88
    Top = 48
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl4: TLabel
    Left = 16
    Top = 88
    Width = 67
    Height = 13
    Caption = 'MATA KULIAH'
  end
  object lbl5: TLabel
    Left = 88
    Top = 88
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl6: TLabel
    Left = 16
    Top = 128
    Width = 54
    Height = 13
    Caption = 'JAM MULAI'
  end
  object lbl7: TLabel
    Left = 88
    Top = 128
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl8: TLabel
    Left = 16
    Top = 168
    Width = 54
    Height = 13
    Caption = 'JAM AKHIR'
  end
  object lbl9: TLabel
    Left = 88
    Top = 168
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl10: TLabel
    Left = 16
    Top = 208
    Width = 25
    Height = 13
    Caption = 'HARI'
  end
  object lbl11: TLabel
    Left = 88
    Top = 208
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl12: TLabel
    Left = 16
    Top = 248
    Width = 46
    Height = 13
    Caption = 'TANGGAL'
  end
  object lbl13: TLabel
    Left = 88
    Top = 248
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl14: TLabel
    Left = 16
    Top = 288
    Width = 49
    Height = 13
    Caption = 'RUANGAN'
  end
  object lbl15: TLabel
    Left = 88
    Top = 288
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl16: TLabel
    Left = 16
    Top = 328
    Width = 58
    Height = 13
    Caption = 'KEHADIRAN'
  end
  object lbl17: TLabel
    Left = 88
    Top = 328
    Width = 4
    Height = 13
    Caption = ':'
  end
  object edt1: TEdit
    Left = 112
    Top = 40
    Width = 441
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 112
    Top = 80
    Width = 441
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 112
    Top = 120
    Width = 441
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 112
    Top = 160
    Width = 441
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 48
    Top = 360
    Width = 75
    Height = 49
    Caption = 'BARU'
    TabOrder = 4
  end
  object btn2: TButton
    Left = 136
    Top = 360
    Width = 75
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 224
    Top = 360
    Width = 75
    Height = 49
    Caption = 'UBAH'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 312
    Top = 360
    Width = 75
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 400
    Top = 360
    Width = 75
    Height = 49
    Caption = 'BATAL'
    TabOrder = 8
    OnClick = btn5Click
  end
  object db1: TDBGrid
    Left = 8
    Top = 416
    Width = 545
    Height = 169
    DataSource = ds1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = db1CellClick
  end
  object cbb1: TComboBox
    Left = 112
    Top = 200
    Width = 441
    Height = 21
    ItemHeight = 13
    TabOrder = 10
  end
  object edt5: TEdit
    Left = 112
    Top = 280
    Width = 441
    Height = 21
    TabOrder = 11
  end
  object edt6: TEdit
    Left = 112
    Top = 320
    Width = 441
    Height = 21
    TabOrder = 12
  end
  object edtdtp1: TDateTimePicker
    Left = 112
    Top = 240
    Width = 186
    Height = 21
    Date = 44716.455351006950000000
    Time = 44716.455351006950000000
    TabOrder = 13
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Program Files (x' +
      '86)\Borland\Zeos703\packages\delphi7\UTS\jadwal_db.mdb;Persist S' +
      'ecurity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwal_table')
    Left = 32
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 64
  end
end
