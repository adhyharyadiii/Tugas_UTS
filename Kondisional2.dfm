object Form5: TForm5
  Left = 928
  Top = 176
  Width = 384
  Height = 431
  Caption = 'Latihan 02 Kondisional'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 112
    Width = 100
    Height = 16
    Caption = 'NILAI KEHADIRAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 24
    Top = 136
    Width = 74
    Height = 16
    Caption = 'NILAI TUGAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 24
    Top = 160
    Width = 58
    Height = 16
    Caption = 'NILAI UTS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 24
    Top = 184
    Width = 78
    Height = 16
    Caption = 'NILAI HARIAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 24
    Top = 208
    Width = 58
    Height = 16
    Caption = 'NILAI UAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 24
    Top = 296
    Width = 39
    Height = 16
    Caption = 'TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 24
    Top = 328
    Width = 39
    Height = 16
    Caption = 'GRADE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 24
    Top = 360
    Width = 26
    Height = 16
    Caption = 'KET.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object pnl1: TPanel
    Left = 0
    Top = 16
    Width = 353
    Height = 41
    Caption = 'CEK BOBOT NILAI SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnl2: TPanel
    Left = 136
    Top = 72
    Width = 121
    Height = 33
    Caption = 'NILAI'
    Color = clMedGray
    TabOrder = 1
  end
  object pnl3: TPanel
    Left = 264
    Top = 72
    Width = 89
    Height = 33
    Caption = 'BOBOT'
    Color = clMedGray
    TabOrder = 2
  end
  object edt1: TEdit
    Left = 136
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt2: TEdit
    Left = 136
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edt3: TEdit
    Left = 136
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edt4: TEdit
    Left = 136
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edt5: TEdit
    Left = 136
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object edt6: TEdit
    Left = 264
    Top = 112
    Width = 89
    Height = 21
    Enabled = False
    TabOrder = 8
    Text = '15'
  end
  object edt7: TEdit
    Left = 264
    Top = 136
    Width = 89
    Height = 21
    Enabled = False
    TabOrder = 9
    Text = '25'
  end
  object edt8: TEdit
    Left = 264
    Top = 160
    Width = 89
    Height = 21
    Enabled = False
    TabOrder = 10
    Text = '20'
  end
  object edt9: TEdit
    Left = 264
    Top = 184
    Width = 89
    Height = 21
    Enabled = False
    TabOrder = 11
    Text = '10'
  end
  object edt10: TEdit
    Left = 264
    Top = 208
    Width = 89
    Height = 21
    Enabled = False
    TabOrder = 12
    Text = '30'
  end
  object btn1: TButton
    Left = 24
    Top = 248
    Width = 113
    Height = 33
    Caption = 'HITUNG'
    TabOrder = 13
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 152
    Top = 248
    Width = 105
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 14
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 272
    Top = 248
    Width = 81
    Height = 33
    Caption = 'KELUAR'
    TabOrder = 15
    OnClick = btn3Click
  end
  object edt11: TEdit
    Left = 128
    Top = 296
    Width = 225
    Height = 21
    ReadOnly = True
    TabOrder = 16
  end
  object edt12: TEdit
    Left = 128
    Top = 328
    Width = 225
    Height = 21
    ReadOnly = True
    TabOrder = 17
  end
  object edt13: TEdit
    Left = 129
    Top = 360
    Width = 224
    Height = 21
    ReadOnly = True
    TabOrder = 18
  end
end
