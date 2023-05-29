object Form3: TForm3
  Left = 193
  Top = 152
  Width = 386
  Height = 313
  Caption = 'LATIHAN 2'
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
    Left = 40
    Top = 24
    Width = 36
    Height = 13
    Caption = 'NILAI 1'
  end
  object lbl2: TLabel
    Left = 40
    Top = 48
    Width = 36
    Height = 13
    Caption = 'NILAI 2'
  end
  object edt1: TEdit
    Left = 96
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 96
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 256
    Top = 24
    Width = 89
    Height = 41
    Caption = 'PROSES ALL'
    TabOrder = 2
    OnClick = btn1Click
  end
  object pnl1: TPanel
    Left = 40
    Top = 80
    Width = 305
    Height = 169
    TabOrder = 3
    object lbl3: TLabel
      Left = 16
      Top = 32
      Width = 41
      Height = 13
      Caption = 'TAMBAH'
    end
    object lbl4: TLabel
      Left = 16
      Top = 64
      Width = 41
      Height = 13
      Caption = 'KURANG'
    end
    object lbl5: TLabel
      Left = 16
      Top = 96
      Width = 55
      Height = 13
      Caption = 'PERKALIAN'
    end
    object lbl6: TLabel
      Left = 16
      Top = 128
      Width = 58
      Height = 13
      Caption = 'PEMBAGIAN'
    end
    object edt3: TEdit
      Left = 80
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt4: TEdit
      Left = 80
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edt5: TEdit
      Left = 80
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edt6: TEdit
      Left = 80
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object btn2: TButton
      Left = 216
      Top = 24
      Width = 75
      Height = 25
      Caption = '+'
      TabOrder = 4
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 216
      Top = 56
      Width = 75
      Height = 25
      Caption = '-'
      TabOrder = 5
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 216
      Top = 88
      Width = 75
      Height = 25
      Caption = 'x'
      TabOrder = 6
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 216
      Top = 120
      Width = 75
      Height = 25
      Caption = '/'
      TabOrder = 7
      OnClick = btn5Click
    end
  end
end
