object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Beispiele f'#252'r case'
  ClientHeight = 120
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 160
    Height = 13
    Caption = 'Gebe hier das heutige Datum ein:'
  end
  object EdTag: TEdit
    Left = 8
    Top = 27
    Width = 49
    Height = 21
    TabOrder = 0
    Text = '22'
  end
  object BtnBeispiel1: TButton
    Left = 173
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Klick mich'
    TabOrder = 1
    OnClick = BtnBeispiel1Click
  end
  object edMonat: TEdit
    Left = 63
    Top = 27
    Width = 49
    Height = 21
    TabOrder = 2
    Text = '05'
  end
  object edJahr: TEdit
    Left = 118
    Top = 27
    Width = 49
    Height = 21
    TabOrder = 3
    Text = '2021'
  end
  object Panel1: TPanel
    Left = 8
    Top = 58
    Width = 241
    Height = 4
    TabOrder = 4
  end
  object BtnFarbenbeispiel: TButton
    Left = 8
    Top = 76
    Width = 240
    Height = 25
    Caption = 'Farbenbeispiel'
    TabOrder = 5
    OnClick = BtnFarbenbeispielClick
  end
end
