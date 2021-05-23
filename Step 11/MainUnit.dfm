object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 579
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 201
    Height = 395
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object BtnBsp1: TButton
    Left = 215
    Top = 8
    Width = 75
    Height = 25
    Caption = 'BtnBsp1'
    TabOrder = 1
    OnClick = BtnBsp1Click
  end
  object Panel1: TPanel
    Left = 296
    Top = 8
    Width = 4
    Height = 393
    TabOrder = 2
  end
  object ListBox1: TListBox
    Left = 312
    Top = 8
    Width = 169
    Height = 395
    ItemHeight = 13
    TabOrder = 3
  end
  object BtnBsp3: TButton
    Left = 487
    Top = 8
    Width = 75
    Height = 25
    Caption = 'BtnBsp3'
    TabOrder = 4
    OnClick = BtnBsp3Click
  end
  object Panel2: TPanel
    Left = 8
    Top = 409
    Width = 554
    Height = 5
    TabOrder = 5
  end
  object edEingabe: TEdit
    Left = 8
    Top = 420
    Width = 473
    Height = 21
    TabOrder = 6
    Text = 'Ein ganz langer Text ist das hier usw :)'
  end
  object BtnBsp4: TButton
    Left = 487
    Top = 420
    Width = 75
    Height = 25
    Caption = 'BtnBsp4'
    TabOrder = 7
    OnClick = BtnBsp4Click
  end
end
