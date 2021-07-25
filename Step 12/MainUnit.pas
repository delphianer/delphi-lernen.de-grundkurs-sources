unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    edDividend: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edDivisor: TEdit;
    BtnTeilen: TButton;
    Label3: TLabel;
    EdErgebnis: TEdit;
    procedure BtnTeilenClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}



procedure TMainForm.BtnTeilenClick(Sender: TObject);
var
  dividend,
  divisor,
  ergebnis : Integer;
begin
  dividend := StrToInt( edDividend.Text);
  divisor  := StrToInt( edDivisor.Text);

  while (dividend = divisor) or  (dividend > divisor) do
  begin
    dividend := dividend - divisor;
    ergebnis := ergebnis + 1;
  end;

  // ShowMessage('Lösung: '+ (IntToStr(ergebnis)) + ' Rest: '+(FloatToStr(divident)));
  // Statt ShowMessage, geben wir das Ergebnis im Formular aus :)
  EdErgebnis.Text := IntToStr(ergebnis) + ' Rest: ' + FloatToStr(dividend);
end;




end.
