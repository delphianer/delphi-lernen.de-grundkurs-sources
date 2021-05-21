object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'MainForm'
  ClientHeight = 91
  ClientWidth = 446
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
  object LblString2: TLabel
    Left = 32
    Top = 24
    Width = 318
    Height = 16
    Caption = 'Eingabe:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Lucida Console'
    Font.Style = []
    ParentFont = False
  end
  object EdString1: TEdit
    Left = 32
    Top = 46
    Width = 318
    Height = 21
    Color = clSkyBlue
    TabOrder = 0
  end
  object BtnWechseln: TButton
    Left = 356
    Top = 24
    Width = 82
    Height = 43
    Caption = 'Wechsle!'
    TabOrder = 1
    OnClick = BtnWechselnClick
  end
end
