object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Einfache Verschl'#252'sselungen'
  ClientHeight = 101
  ClientWidth = 299
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
  object EdEingabe: TEdit
    Left = 8
    Top = 8
    Width = 281
    Height = 21
    TabOrder = 0
    Text = 'abcdefghijklmnopqrstuvwxyz'
  end
  object EdAusgabe: TEdit
    Left = 8
    Top = 35
    Width = 281
    Height = 21
    TabOrder = 1
  end
  object BtnCaesar: TButton
    Left = 111
    Top = 65
    Width = 178
    Height = 25
    Caption = 'Caesar-verschl'#252'sseln'
    TabOrder = 2
    OnClick = BtnCaesarClick
  end
  object EdMoveCount: TEdit
    Left = 40
    Top = 67
    Width = 41
    Height = 21
    TabOrder = 3
    Text = '1'
  end
end
