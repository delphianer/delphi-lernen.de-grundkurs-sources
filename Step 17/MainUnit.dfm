object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Algorithmik - Beispiel: ggT-Suche nach Euklid'
  ClientHeight = 106
  ClientWidth = 452
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
    Left = 24
    Top = 24
    Width = 37
    Height = 13
    Caption = '1. Zahl:'
  end
  object Label2: TLabel
    Left = 232
    Top = 24
    Width = 37
    Height = 13
    Caption = '2. Zahl:'
  end
  object edZahl1: TEdit
    Left = 80
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '54'
  end
  object edZahl2: TEdit
    Left = 288
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '42'
  end
  object Button1: TButton
    Left = 24
    Top = 56
    Width = 385
    Height = 25
    Caption = 'berechne ggT ...'
    TabOrder = 2
    OnClick = Button1Click
  end
end
