object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 306
  ClientWidth = 234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnBeispiel1: TButton
    Left = 10
    Top = 223
    Width = 216
    Height = 25
    Caption = 'Beispiel 1'
    TabOrder = 0
    OnClick = BtnBeispiel1Click
  end
  object mmRepeatUntil: TMemo
    Left = 8
    Top = 8
    Width = 105
    Height = 209
    TabOrder = 1
  end
  object BtnBeispiel2: TButton
    Left = 8
    Top = 273
    Width = 216
    Height = 25
    Caption = 'Beispiel 2'
    TabOrder = 2
    OnClick = BtnBeispiel2Click
  end
  object mmWhile: TMemo
    Left = 119
    Top = 8
    Width = 105
    Height = 209
    TabOrder = 3
  end
end
