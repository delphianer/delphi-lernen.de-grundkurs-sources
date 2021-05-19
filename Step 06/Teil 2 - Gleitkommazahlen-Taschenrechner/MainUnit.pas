unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    EdSummand1: TEdit;
    BtnSumme: TButton;
    LblSumme: TLabel;
    EdMinuend: TEdit;
    EdFaktor1: TEdit;
    EdDivident: TEdit;
    LblDifferenz: TLabel;
    LblMultiplikation: TLabel;
    LblDivision: TLabel;
    EdSummand2: TEdit;
    EdSubrahend: TEdit;
    EdFaktor2: TEdit;
    EdDivisor: TEdit;
    BtnSubtraktion: TButton;
    BtnMultiplikation: TButton;
    BtnDivision: TButton;
    EdSumme: TEdit;
    EdDifferenz: TEdit;
    EdProdukt: TEdit;
    EdQuotient: TEdit;
    procedure BtnSummeClick(Sender: TObject);
    procedure BtnSubtraktionClick(Sender: TObject);
    procedure BtnMultiplikationClick(Sender: TObject);
    procedure BtnDivisionClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnDivisionClick(Sender: TObject);
var
  a, b, c, d : Double;
begin
  a := StrToFloat( EdDivident.Text);
  b := StrToFloat( EdDivisor.Text);
  c := a / b;
  EdQuotient.Text := FloatToStr(c);
end;

procedure TForm1.BtnMultiplikationClick(Sender: TObject);
var
    a, b, c : Double;
begin
  a := StrToFloat( EdFaktor1.Text);
  b := StrToFloat( EdFaktor2.Text);
  c := a * b;
  EdProdukt.Text := FloatToStr( c);
end;

procedure TForm1.BtnSubtraktionClick(Sender: TObject);
var
    a, b, c : Double;
begin
  a := StrToFloat(EdMinuend.Text);
  b := StrToFloat(EdSubrahend.Text);
  c := a - b;
  EdDifferenz.Text := FloatToStr(c);
end;

procedure TForm1.BtnSummeClick(Sender: TObject);
var
    a, b, c : Double;
begin
  a := StrToFloat( EdSummand1.Text);
  b := StrToFloat( EdSummand2.Text);
  c := a+b;
  EdSumme.Text := FloatToStr( c);
end;

end.
