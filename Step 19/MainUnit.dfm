object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  object Button1: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Beispiel 1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 105
    Top = 26
    Width = 152
    Height = 21
    TabOrder = 1
  end
  object Button2: TButton
    Left = 56
    Top = 109
    Width = 176
    Height = 25
    Caption = 'Korrektes Beispiel ausf'#252'hren'
    TabOrder = 2
    OnClick = Button2Click
  end
  object edOriginal: TEdit
    Left = 56
    Top = 82
    Width = 145
    Height = 21
    TabOrder = 3
    Text = 'Original'
  end
  object edCoded: TEdit
    Left = 56
    Top = 140
    Width = 176
    Height = 21
    TabOrder = 4
    Text = 'Codiert'
  end
  object edMove: TEdit
    Left = 207
    Top = 82
    Width = 25
    Height = 21
    TabOrder = 5
    Text = '5'
  end
end
