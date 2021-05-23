unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    BtnBsp1: TButton;
    Panel1: TPanel;
    ListBox1: TListBox;
    BtnBsp3: TButton;
    Panel2: TPanel;
    edEingabe: TEdit;
    BtnBsp4: TButton;
    procedure BtnBsp1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnBsp3Click(Sender: TObject);
    procedure BtnBsp4Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var                           // Hier werden sog. "globale" Variablen deklariert
  Form1: TForm1;
  myArray : Array of Integer; // myArray ist hierdurch überall nutzbar
                              // wie es in der Procedure "initMyArray"
                              // im zweiten Beispiel genutzt wird.

implementation

{$R *.dfm}

(*

    Erstes Beispiel:

                       *)

procedure TForm1.BtnBsp1Click(Sender: TObject);
var
  i:Integer;
begin
  for i:=1 to 10 do
    Memo1.Lines.Add(IntToStr(i*i));
end;


(*

    Zweites Beispiel:

                       *)

procedure initMyArray( myLength : Integer);
var
  i : Integer;                     // Laufvar i muss eine "lokale" Variable sein!
begin
  SetLength( myArray, myLength);   // myArray ist "global" unter deklariert
  for i := 0 to High( myArray) do
    myArray[i] := 0;
end;





(*

    Drittes Beispiel:

                       *)


procedure TForm1.FormCreate(Sender: TObject);
var
  i, k : Integer;
begin
  // Hier kommt der Source aus Beispiel 2 in Einsatz:
  initMyArray(10);

  for k := 0 to High(myArray) do // Dem Array werden Werte von 0-10 zugewiesen:
    myArray[ k] := k;

  //Werte aus dem Array werden in die Listbox geschrieben:
  for I := 0 to High(myArray) do
  begin
    if ListBox1.Items.Count > i then // Der Index i existiert in der Listbox:
      ListBox1.Items.Strings[i] := IntToStr( myArray[ i])
    else                             // Der Index i existiert noch nicht!
      ListBox1.Items.Add( IntToStr( myArray[ i]));
  end;
end;



procedure TForm1.BtnBsp3Click(Sender: TObject);
var
  i, unten, oben : Integer;
begin
  unten := 0;
  oben := High(myArray);

  for i := unten to oben do
  begin
    myArray[oben-i] := StrToInt(ListBox1.Items.Strings[i]);
    // Die Werte der "Laufvariable" werden als Meldung angezeigt:
    ShowMessage( IntToStr( i));
  end;

  //Werte aus dem Array werden erneut in die Listbox geschrieben:
  for i := 0 to High( myArray) do
  begin
    ListBox1.Items.Strings[i] := IntToStr( myArray[ i])
  end;
end;


procedure TForm1.BtnBsp4Click(Sender: TObject);
var
  myStr,
  codeStr : String;
  i : Integer;
begin
  myStr := edEingabe.Text;
  codeStr:='';
  for i:=0 to High(myStr) do
  begin
    codeStr := codeStr + chr( (ord( myStr[i]) + 50) mod 256);
  end;
  ShowMessage('CodeStr = ' + codeStr);
end;

end.

