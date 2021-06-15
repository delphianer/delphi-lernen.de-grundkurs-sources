object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Beispiel Except'
  ClientHeight = 163
  ClientWidth = 337
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
    Left = 26
    Top = 54
    Width = 8
    Height = 13
    Caption = '+'
  end
  object Label2: TLabel
    Left = 178
    Top = 54
    Width = 4
    Height = 13
    Caption = '/'
  end
  object Button1: TButton
    Left = 40
    Top = 78
    Width = 121
    Height = 25
    Caption = '='
    TabOrder = 0
    OnClick = Button1Click
  end
  object EdSummand1: TEdit
    Left = 40
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '2 '#196'pfel'
  end
  object EdSummand2: TEdit
    Left = 40
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '5 Birnen'
  end
  object EdSumme: TEdit
    Left = 40
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '? Obst'
  end
  object Button2: TButton
    Left = 192
    Top = 78
    Width = 121
    Height = 25
    Caption = '='
    TabOrder = 4
    OnClick = Button2Click
  end
  object EdDivident: TEdit
    Left = 192
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '100'
  end
  object EdDivisor: TEdit
    Left = 192
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object EdQuotient: TEdit
    Left = 192
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '? (Integer?)'
  end
end
