object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Algorithmik 2 - Beispiel: Sortierung mit BubbleSort'
  ClientHeight = 225
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
  object Button1: TButton
    Left = 16
    Top = 175
    Width = 417
    Height = 25
    Caption = 'Sortiere ...'
    TabOrder = 0
    OnClick = Button1Click
  end
  object mmZeilen: TMemo
    Left = 16
    Top = 16
    Width = 417
    Height = 153
    Lines.Strings = (
      'xyz'
      'hallo'
      'abc'
      'fgh')
    TabOrder = 1
  end
end
