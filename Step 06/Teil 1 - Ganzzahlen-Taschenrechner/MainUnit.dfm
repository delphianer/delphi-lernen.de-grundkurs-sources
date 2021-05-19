object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Taschenrechner - Teil 1'
  ClientHeight = 130
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblSumme: TLabel
    Left = 143
    Top = 19
    Width = 8
    Height = 13
    Caption = '+'
  end
  object LblDifferenz: TLabel
    Left = 143
    Top = 46
    Width = 4
    Height = 13
    Caption = '-'
  end
  object LblMultiplikation: TLabel
    Left = 143
    Top = 73
    Width = 6
    Height = 13
    Caption = '*'
  end
  object LblDivision: TLabel
    Left = 143
    Top = 100
    Width = 4
    Height = 13
    Caption = '/'
  end
  object EdSummand1: TEdit
    Left = 16
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object BtnSumme: TButton
    Left = 284
    Top = 16
    Width = 29
    Height = 21
    Caption = '='
    TabOrder = 1
    OnClick = BtnSummeClick
  end
  object EdMinuend: TEdit
    Left = 16
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EdFaktor1: TEdit
    Left = 16
    Top = 70
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EdDivident: TEdit
    Left = 16
    Top = 97
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EdSummand2: TEdit
    Left = 157
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EdSubrahend: TEdit
    Left = 157
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object EdFaktor2: TEdit
    Left = 157
    Top = 70
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object EdDivisor: TEdit
    Left = 157
    Top = 97
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object BtnSubtraktion: TButton
    Left = 284
    Top = 43
    Width = 29
    Height = 21
    Caption = '='
    TabOrder = 9
    OnClick = BtnSubtraktionClick
  end
  object BtnMultiplikation: TButton
    Left = 284
    Top = 70
    Width = 29
    Height = 21
    Caption = '='
    TabOrder = 10
    OnClick = BtnMultiplikationClick
  end
  object BtnDivision: TButton
    Left = 284
    Top = 97
    Width = 29
    Height = 21
    Caption = '='
    TabOrder = 11
    OnClick = BtnDivisionClick
  end
  object EdSumme: TEdit
    Left = 319
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object EdDifferenz: TEdit
    Left = 319
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object EdProdukt: TEdit
    Left = 319
    Top = 70
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object EdQuotient: TEdit
    Left = 319
    Top = 97
    Width = 121
    Height = 21
    TabOrder = 15
  end
end
