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
  a, b, c, d : Integer;
begin
  a := StrToInt( EdDivident.Text);
  b := StrToInt( EdDivisor.Text);
  c := a div b;
  d := a mod b;
  EdQuotient.Text := IntToStr(c) +' Rest '+ IntToStr(d);
end;

procedure TForm1.BtnMultiplikationClick(Sender: TObject);
var
    a, b, c : Integer;
begin
  a := StrToInt( EdFaktor1.Text);
  b := StrToInt( EdFaktor2.Text);
  c := a * b;
  EdProdukt.Text := IntToStr( c);
end;

procedure TForm1.BtnSubtraktionClick(Sender: TObject);
var
    a, b, c : Integer;
begin
  a := StrToInt(EdMinuend.Text);
  b := StrToInt(EdSubrahend.Text);
  c := a - b;
  EdDifferenz.Text := IntToStr(c);
end;

procedure TForm1.BtnSummeClick(Sender: TObject);
var
    a, b, c : Integer;
begin
  a := StrToInt( EdSummand1.Text);
  b := StrToInt( EdSummand2.Text);
  c := a+b;
  EdSumme.Text := IntToStr( c);
end;

end.
