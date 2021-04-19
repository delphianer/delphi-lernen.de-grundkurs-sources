{
     Autor:       Marco Hetzel

     File:        MainUnit.pas

     Date:        05.08.2007
     
     Source:      http://delphi-lernen.de

     Contact: 	  Marco@delphi-lernen.de
     
     Copyright:   by Marco Hetzel

}

unit MainUnit;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TMainForm = class(TForm)
    EdEingabe: TEdit;
    EdAusgabe: TEdit;
    BtnCaesar: TButton;
    EdMoveCount: TEdit;
    procedure BtnCaesarClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainForm: TMainForm;

implementation

uses
  mCaesar;

{$R *.lfm}

procedure TMainForm.BtnCaesarClick(Sender: TObject);
var
  Caesar:TCaesar;
begin
  Caesar:=TCaesar.Create;
  try
    EdAusgabe.Text:=Caesar.DeCode(EdEingabe.Text,StrToInt(EdMoveCount.Text));
  finally
    Caesar.Free;
  end;
end;

end.