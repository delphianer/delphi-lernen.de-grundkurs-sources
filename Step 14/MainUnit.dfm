object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Methoden und OOP'
  ClientHeight = 779
  ClientWidth = 515
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
    Left = 16
    Top = 568
    Width = 356
    Height = 13
    Caption = 
      'Beispiel 5: ColorTags (Teil 3) - Implementierung direkt als OnCh' +
      'ange Event'
  end
  object BtnBeispiel2: TButton
    Left = 320
    Top = 8
    Width = 177
    Height = 25
    Caption = 'Beispiel 2'
    TabOrder = 0
    OnClick = BtnBeispiel2Click
  end
  object btnCallByValue: TButton
    Left = 8
    Top = 63
    Width = 177
    Height = 25
    Caption = 'GetBothVal - Call by Value'
    TabOrder = 1
    OnClick = btnCallByValueClick
  end
  object BtnBeispiel1: TButton
    Left = 8
    Top = 8
    Width = 177
    Height = 25
    Caption = 'Beispiel 1'
    TabOrder = 2
    OnClick = BtnBeispiel1Click
  end
  object btnCallByReference: TButton
    Left = 320
    Top = 63
    Width = 177
    Height = 25
    Caption = 'GetBothVal - Call by Reference'
    TabOrder = 3
    OnClick = btnCallByReferenceClick
  end
  object ReText: TRichEdit
    Left = 8
    Top = 118
    Width = 489
    Height = 179
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '<!DOCTYPE html>'
      '<html lang="de">'
      '   <head>'
      '    <meta charset="utf-8">'
      
        '    <meta name="viewport" content="width=device-width, initial-s' +
        'cale=1.0">'
      '   <title>Test HTML5</title>'
      '   </head>'
      '<body>'
      '   Hallo HTML-<b>5</b>-Welt!'
      '</body>'
      '</html>')
    ParentFont = False
    TabOrder = 4
    Zoom = 100
  end
  object BtnColorTags: TButton
    Left = 8
    Top = 303
    Width = 489
    Height = 25
    Caption = 'Beispiel 3: ColorTags (Teil 1)'
    TabOrder = 5
    OnClick = BtnColorTagsClick
  end
  object ReText_Bsp2: TRichEdit
    Left = 8
    Top = 334
    Width = 489
    Height = 179
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '<!DOCTYPE html>'
      '<html lang="de">'
      '   <head>'
      '    <meta charset="utf-8">'
      
        '    <meta name="viewport" content="width=device-width, initial-s' +
        'cale=1.0">'
      '   <title>Test HTML5</title>'
      '   </head>'
      '<body>'
      '   Hallo HTML-<b>5</b>-Welt!'
      '</body>'
      '</html>')
    ParentFont = False
    TabOrder = 6
    Zoom = 100
  end
  object BtnColorTags2: TButton
    Left = 8
    Top = 519
    Width = 489
    Height = 25
    Caption = 'Beispiel 4: ColorTags (Teil 2)'
    TabOrder = 7
    OnClick = BtnColorTags2Click
  end
  object ReText_Bsp3: TRichEdit
    Left = 8
    Top = 587
    Width = 489
    Height = 179
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '<!DOCTYPE html>'
      '<html lang="de">'
      '   <head>'
      '    <meta charset="utf-8">'
      
        '    <meta name="viewport" content="width=device-width, initial-s' +
        'cale=1.0">'
      '   <title>Test HTML5</title>'
      '   </head>'
      '<body>'
      '   Hallo HTML-<b>5</b>-Welt!'
      '</body>'
      '</html>')
    ParentFont = False
    TabOrder = 8
    Zoom = 100
    OnChange = ReText_Bsp3Change
  end
end
