object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'with - Beispiel'
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
  object myEdit: TEdit
    Left = 32
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'myEdit'
  end
  object Button2: TButton
    Left = 32
    Top = 82
    Width = 121
    Height = 25
    Caption = 'mit with'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 32
    Top = 51
    Width = 121
    Height = 25
    Caption = 'ohne with'
    TabOrder = 2
    OnClick = Button1Click
  end
end
