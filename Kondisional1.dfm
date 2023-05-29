object Form4: TForm4
  Left = 259
  Top = 169
  Width = 208
  Height = 206
  Caption = 'Contoh Kondisional'
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
    Top = 16
    Width = 36
    Height = 13
    Caption = 'NILAI 1'
  end
  object lbl2: TLabel
    Left = 16
    Top = 40
    Width = 36
    Height = 13
    Caption = 'NILAI 2'
  end
  object lbl3: TLabel
    Left = 16
    Top = 64
    Width = 36
    Height = 13
    Caption = 'NILAI 3'
  end
  object lbl4: TLabel
    Left = 16
    Top = 88
    Width = 32
    Height = 13
    Caption = 'TOTAL'
  end
  object lbl5: TLabel
    Left = 16
    Top = 112
    Width = 34
    Height = 13
    Caption = 'GRADE'
  end
  object edt1: TEdit
    Left = 64
    Top = 8
    Width = 41
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 64
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 64
    Top = 56
    Width = 41
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 112
    Top = 8
    Width = 41
    Height = 21
    Enabled = False
    TabOrder = 3
    Text = '30'
  end
  object edt5: TEdit
    Left = 112
    Top = 32
    Width = 41
    Height = 21
    Enabled = False
    TabOrder = 4
    Text = '30'
  end
  object edt6: TEdit
    Left = 112
    Top = 56
    Width = 41
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = '40'
  end
  object edt7: TEdit
    Left = 64
    Top = 80
    Width = 89
    Height = 21
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 64
    Top = 104
    Width = 89
    Height = 21
    TabOrder = 7
  end
  object btn1: TButton
    Left = 24
    Top = 136
    Width = 49
    Height = 25
    Caption = 'PROSES'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 80
    Top = 136
    Width = 49
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 136
    Top = 136
    Width = 49
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 10
    OnClick = btn3Click
  end
end
