object Form2: TForm2
  Left = 383
  Top = 205
  Width = 372
  Height = 152
  Caption = 'LATIHAN 1'
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
    Left = 16
    Top = 24
    Width = 28
    Height = 13
    Caption = 'Nilai 1'
  end
  object lbl2: TLabel
    Left = 16
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Nilai 2'
  end
  object lbl3: TLabel
    Left = 16
    Top = 80
    Width = 22
    Height = 13
    Caption = 'Hasil'
  end
  object edt1: TEdit
    Left = 88
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 88
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 88
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 232
    Top = 8
    Width = 81
    Height = 41
    Caption = 'TAMBAH'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 232
    Top = 56
    Width = 81
    Height = 41
    Caption = 'KELUAR'
    TabOrder = 4
    OnClick = btn2Click
  end
end
