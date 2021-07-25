unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class( TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    edOriginal: TEdit;
    edCoded: TEdit;
    edMove: TEdit;
    procedure Button1Click( Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

uses
  mCaesarFuerTest1, mCaesar;

{$R *.dfm}

procedure TForm1.Button1Click( Sender: TObject);
var
  // Deklaration Caesar:
  caesar : TCaesarFuerTest1;
begin
  // instanziieren:
  caesar := TCaesarFuerTest1.Create;
  // Anschließend können wir die "Eingabe" mit in der "Ausgabe" in
  // einer Zeile abbilden:
  Edit1.Text := caesar.DeCode( 'Hallo ziemlich kleines Beispiel', 1);
  // Jedes Objekt, das wir erstellen, müssen wir auch wieder aus dem
  // Speicher entfernen. Dafür gibt es die Methode "Free".
  caesar.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  // Deklaration
  caesar : TCaesar;
  // move soll die Anzahl an Verschiebungen in umgewandler Weise speichern.
  move : Integer;
begin
  caesar := TCaesar.Create;
  try
    // edMove ist das Eingabefeld für die Anzahl an Verschiebungen.
    move := StrToInt( edMove.Text);
    // edOriginal beinhaltet den Text, der codiert werden soll.
    // edCoded wird den codierten Inhalt ausgeben
    edCoded.Text := caesar.DeCode( edOriginal.Text, move);
  finally
    // Und am Ende, das Objekt
    caesar.Free;
  end;
end;

end.
