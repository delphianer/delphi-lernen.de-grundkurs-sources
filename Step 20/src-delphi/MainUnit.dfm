object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Einfache Verschl'#252'sselungen 2'
  ClientHeight = 101
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object EdEingabe: TEdit
    Left = 8
    Top = 8
    Width = 281
    Height = 21
    TabOrder = 0
    Text = 'abcdefghijklmnopqrstuvwxyz'
  end
  object EdAusgabe: TEdit
    Left = 8
    Top = 35
    Width = 281
    Height = 21
    TabOrder = 1
  end
  object BtnVigenere: TButton
    Left = 160
    Top = 65
    Width = 129
    Height = 25
    Caption = 'Vigenere-verschl'#252'sseln'
    TabOrder = 2
    OnClick = BtnVigenereClick
  end
  object EdPassword: TEdit
    Left = 8
    Top = 67
    Width = 57
    Height = 21
    TabOrder = 3
    Text = 'passwort'
  end
  object CbDecode: TCheckBox
    Left = 71
    Top = 69
    Width = 83
    Height = 17
    Caption = 'decodieren'
    TabOrder = 4
  end
end
