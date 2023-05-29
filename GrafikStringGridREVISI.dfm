object Form7: TForm7
  Left = 8
  Top = 214
  Width = 658
  Height = 441
  Caption = 'GRAFIK REVISI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 16
    Width = 91
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object lbl2: TLabel
    Left = 16
    Top = 40
    Width = 101
    Height = 13
    Caption = 'JUMLAH TERDAFTAR'
  end
  object lbl3: TLabel
    Left = 16
    Top = 64
    Width = 50
    Height = 13
    Caption = 'FAKULTAS'
  end
  object cbb1: TComboBox
    Left = 136
    Top = 8
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      '2019'
      '2020'
      '2021'
      '2022'
      '2023')
  end
  object edt1: TEdit
    Left = 136
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object cbb2: TComboBox
    Left = 136
    Top = 56
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Teknologi Informasi'
      'Teknik'
      'Ekonomi'
      'Pertanian'
      'Studi Islam')
  end
  object btn1: TButton
    Left = 16
    Top = 88
    Width = 73
    Height = 33
    Caption = 'ADD DATA'
    TabOrder = 3
    OnClick = btn1Click
  end
  object cht1: TChart
    Left = 16
    Top = 144
    Width = 609
    Height = 250
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 4
    object psrsSeries1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      Title = 'Series1'
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
  object strngrd1: TStringGrid
    Left = 264
    Top = 8
    Width = 361
    Height = 113
    TabOrder = 5
    ColWidths = (
      64
      70
      81
      72
      80)
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object btn2: TButton
    Left = 192
    Top = 88
    Width = 65
    Height = 33
    Caption = 'CLEAR ALL'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 120
    Top = 88
    Width = 65
    Height = 33
    Caption = 'CLEAR'
    TabOrder = 7
    OnClick = btn3Click
  end
end
