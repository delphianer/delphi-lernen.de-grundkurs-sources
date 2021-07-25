unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    mmZeilen: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure Bubble( var zeilen : Array of String);
var
  i,k:Integer;
  speicher:String;

  procedure tausche(a, b : Integer);
  var
    speicher : String;
  begin
    speicher  := zeilen[a];
    zeilen[a] := zeilen[b];
    zeilen[b] := speicher;
  end;

begin
  // da ein dynamisches Array Null-basierend ist,
  // fangen wir bei 0 an und zählen insgesammt bis zum vorletzten
  for i:=0 to high(zeilen)-1 do
    for k:=i+1 to high(zeilen) do
      if zeilen[i]>zeilen[k] then
        tausche(i,k);
end;


procedure TForm1.Button1Click(Sender: TObject);
var
  i : Integer;
  strArr : Array of String;
begin
  // Text aus Memo "konvertieren" in klassisches Array:
  // so kann der Algorithmus oben klassisch mit dem Array bleiben
  // Denkbare Alternative wäre, dass wir Bubble mit "TStrings"
  // statt Array schreiben und entsprechend behandeln
  for i := 0 to mmZeilen.Lines.Count-1 do
  begin
    setLength(strArr, Length( strArr)+1);
    strArr[ high( strArr)] := mmZeilen.Lines.Strings[ i];
  end;

  // aufruf des Algorithmus:
  Bubble(strArr);

  //  Zurückschreiben:
  for i := 0 to high(strArr) do
    mmZeilen.Lines.Strings[ i] := strArr[ i];

end;

end.
