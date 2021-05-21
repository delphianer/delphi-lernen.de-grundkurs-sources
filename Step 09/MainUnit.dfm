object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 271
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnErstesBeispiel: TButton
    Left = 328
    Top = 8
    Width = 137
    Height = 25
    Caption = 'Erstes Beispiel ausf'#252'hren'
    TabOrder = 0
    OnClick = BtnErstesBeispielClick
  end
  object edEingabefeld: TEdit
    Left = 8
    Top = 10
    Width = 314
    Height = 21
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 8
    Top = 39
    Width = 457
    Height = 3
    TabOrder = 2
  end
  object Button1: TButton
    Left = 168
    Top = 128
    Width = 137
    Height = 41
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
end
