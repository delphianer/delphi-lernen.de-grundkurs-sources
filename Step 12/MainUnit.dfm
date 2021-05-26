object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 411
  ClientWidth = 852
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
    Width = 45
    Height = 13
    Caption = 'Dividend:'
  end
  object Label2: TLabel
    Left = 136
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Divisor'
  end
  object Label3: TLabel
    Left = 352
    Top = 8
    Width = 45
    Height = 13
    Caption = 'Ergebnis:'
  end
  object edDividend: TEdit
    Left = 16
    Top = 27
    Width = 97
    Height = 21
    TabOrder = 0
    Text = '45554'
  end
  object edDivisor: TEdit
    Left = 136
    Top = 27
    Width = 97
    Height = 21
    TabOrder = 1
    Text = '444'
  end
  object BtnTeilen: TButton
    Left = 255
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Teilen'
    TabOrder = 2
    OnClick = BtnTeilenClick
  end
  object EdErgebnis: TEdit
    Left = 352
    Top = 27
    Width = 209
    Height = 21
    TabOrder = 3
    Text = '444'
  end
end
