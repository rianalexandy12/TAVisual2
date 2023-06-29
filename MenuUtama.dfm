object FormMenuUtama: TFormMenuUtama
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'MENU UTAMA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object b1: TButton
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = 'USER'
    TabOrder = 0
    OnClick = b1Click
  end
  object b2: TButton
    Left = 24
    Top = 56
    Width = 75
    Height = 25
    Caption = 'KELAS'
    TabOrder = 1
    OnClick = b2Click
  end
  object b3: TButton
    Left = 24
    Top = 96
    Width = 75
    Height = 25
    Caption = 'HUBUNGAN'
    TabOrder = 2
    OnClick = b3Click
  end
  object b4: TButton
    Left = 24
    Top = 136
    Width = 75
    Height = 25
    Caption = 'WALI KELAS'
    TabOrder = 3
    OnClick = b4Click
  end
  object b5: TButton
    Left = 120
    Top = 16
    Width = 75
    Height = 25
    Caption = 'SISWA'
    TabOrder = 4
    OnClick = b5Click
  end
  object b6: TButton
    Left = 120
    Top = 56
    Width = 75
    Height = 25
    Caption = 'SEMESTER'
    TabOrder = 5
  end
  object b7: TButton
    Left = 120
    Top = 96
    Width = 75
    Height = 25
    Caption = 'ORANG TUA'
    TabOrder = 6
    OnClick = b7Click
  end
  object b8: TButton
    Left = 120
    Top = 136
    Width = 75
    Height = 25
    Caption = 'POIN'
    TabOrder = 7
    OnClick = b8Click
  end
end
