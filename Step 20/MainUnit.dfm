object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Vigenere-Beispielanwendung'
  ClientHeight = 262
  ClientWidth = 290
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
    Left = 52
    Top = 27
    Width = 48
    Height = 13
    Caption = 'Passwort:'
  end
  object EdPassword: TEdit
    Left = 52
    Top = 46
    Width = 176
    Height = 21
    TabOrder = 0
  end
  object BtnVigenere: TButton
    Left = 54
    Top = 133
    Width = 176
    Height = 25
    Caption = 'Vigenere anwenden'
    TabOrder = 1
    OnClick = BtnVigenereClick
  end
  object edEingabe: TEdit
    Left = 54
    Top = 106
    Width = 176
    Height = 21
    TabOrder = 2
    Text = 'Eingabe'
  end
  object edAusgabe: TEdit
    Left = 54
    Top = 164
    Width = 176
    Height = 21
    TabOrder = 3
    Text = 'Ausgabe'
  end
  object rbCodieren: TRadioButton
    Left = 54
    Top = 75
    Width = 68
    Height = 17
    Caption = 'Codieren'
    Checked = True
    TabOrder = 4
    TabStop = True
  end
  object rbDecodieren: TRadioButton
    Left = 143
    Top = 75
    Width = 82
    Height = 17
    Caption = 'Decodieren'
    TabOrder = 5
  end
end
