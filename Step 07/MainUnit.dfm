object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Demo zu Arrays&Records'
  ClientHeight = 328
  ClientWidth = 408
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
    Left = 39
    Top = 11
    Width = 23
    Height = 13
    Caption = 'Nick:'
  end
  object Label2: TLabel
    Left = 16
    Top = 38
    Width = 46
    Height = 13
    Caption = 'Vorname:'
  end
  object Label3: TLabel
    Left = 8
    Top = 66
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nachname:'
  end
  object Label4: TLabel
    Left = 40
    Top = 92
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = 'UIN:'
  end
  object Label5: TLabel
    Left = 39
    Top = 139
    Width = 23
    Height = 13
    Caption = 'Nick:'
  end
  object Label6: TLabel
    Left = 16
    Top = 166
    Width = 46
    Height = 13
    Caption = 'Vorname:'
  end
  object Label7: TLabel
    Left = 8
    Top = 194
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nachname:'
  end
  object Label8: TLabel
    Left = 40
    Top = 220
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = 'UIN:'
  end
  object Label9: TLabel
    Left = 247
    Top = 11
    Width = 23
    Height = 13
    Caption = 'Nick:'
  end
  object Label10: TLabel
    Left = 224
    Top = 38
    Width = 46
    Height = 13
    Caption = 'Vorname:'
  end
  object Label11: TLabel
    Left = 216
    Top = 66
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nachname:'
  end
  object Label12: TLabel
    Left = 248
    Top = 92
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = 'UIN:'
  end
  object Label13: TLabel
    Left = 247
    Top = 139
    Width = 23
    Height = 13
    Caption = 'Nick:'
  end
  object Label14: TLabel
    Left = 224
    Top = 166
    Width = 46
    Height = 13
    Caption = 'Vorname:'
  end
  object Label15: TLabel
    Left = 216
    Top = 194
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nachname:'
  end
  object Label16: TLabel
    Left = 248
    Top = 220
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = 'UIN:'
  end
  object EdNick1: TEdit
    Left = 68
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EdVorname1: TEdit
    Left = 68
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EdNachname1: TEdit
    Left = 68
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EdIcqNummer1: TEdit
    Left = 68
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EdNick2: TEdit
    Left = 68
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EdVorname2: TEdit
    Left = 68
    Top = 163
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EdNachname2: TEdit
    Left = 68
    Top = 190
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object EdIcqNummer2: TEdit
    Left = 68
    Top = 217
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object EdNick3: TEdit
    Left = 276
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object EdVorname3: TEdit
    Left = 276
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object EdNachname3: TEdit
    Left = 276
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object EdIcqNummer3: TEdit
    Left = 276
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object EdNick4: TEdit
    Left = 276
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object EdVorname4: TEdit
    Left = 276
    Top = 163
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object EdNachname4: TEdit
    Left = 276
    Top = 190
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object EdIcqNummer4: TEdit
    Left = 276
    Top = 217
    Width = 121
    Height = 21
    TabOrder = 15
  end
  object BtnPost: TButton
    Left = 8
    Top = 264
    Width = 137
    Height = 25
    Caption = 'Eingabe '#252'bernehmen'
    TabOrder = 16
    OnClick = BtnPostClick
  end
  object BtnShow: TButton
    Left = 151
    Top = 264
    Width = 119
    Height = 25
    Caption = 'Eingabe anzeigen'
    TabOrder = 17
    OnClick = BtnShowClick
  end
  object BtnSave: TButton
    Left = 8
    Top = 295
    Width = 113
    Height = 25
    Caption = 'Eingabe speichern'
    TabOrder = 18
    OnClick = BtnSaveClick
  end
  object BtnOpen: TButton
    Left = 127
    Top = 295
    Width = 98
    Height = 25
    Caption = 'Eingabe laden'
    TabOrder = 19
    OnClick = BtnOpenClick
  end
end
