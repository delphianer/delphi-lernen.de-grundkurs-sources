{
     Autor:       Marco Hetzel

     File:        MainUnit.pas

     Date:        05.08.2007
     
     Source:      http://delphi-lernen.de

     Contact: 	  Marco@delphi-lernen.de
     
     Copyright:   by Marco Hetzel

}

unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TMainForm = class(TForm)
    EdEingabe: TEdit;
    EdAusgabe: TEdit;
    BtnVigenere: TButton;
    EdPassword: TEdit;
    CbDecode: TCheckBox;
    procedure BtnVigenereClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainForm: TMainForm;

implementation

uses
  mVigenere;

{$R *.dfm}

procedure TMainForm.BtnVigenereClick(Sender: TObject);
var
  Vigenere:TVigenere;
begin
  Vigenere:=TVigenere.Create(EdPassword.Text);
  try
    EdAusgabe.Text:=Vigenere.DeCode(EdEingabe.Text,CbDecode.Checked);
  finally
    Vigenere.Free;
  end;
end;

end.
