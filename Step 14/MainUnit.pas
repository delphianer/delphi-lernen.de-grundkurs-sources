unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TMainForm = class(TForm)
    BtnBeispiel2: TButton;
    btnCallByValue: TButton;
    BtnBeispiel1: TButton;
    btnCallByReference: TButton;
    ReText: TRichEdit;
    BtnColorTags: TButton;
    ReText_Bsp2: TRichEdit;
    BtnColorTags2: TButton;
    ReText_Bsp3: TRichEdit;
    Label1: TLabel;
    procedure BtnBeispiel1Click(Sender: TObject);
    procedure BtnBeispiel2Click(Sender: TObject);
    procedure btnCallByValueClick(Sender: TObject);
    procedure btnCallByReferenceClick(Sender: TObject);
    procedure BtnColorTagsClick(Sender: TObject);
    procedure BtnColorTags2Click(Sender: TObject);
    procedure ReText_Bsp3Change(Sender: TObject);
  private
    { Private-Deklarationen }
    procedure ColorTags(reTextField : TRichEdit; tagBeginSymbol,
      tagEndSymbol: Char; Col: TColor);
  public
    { Public-Deklarationen }
  end;
  TMyClass = class(TComponent)
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }

  published
    { published declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

function getAddition(zahl1 : Integer; zahl2: Integer) : Integer;
begin
  result := zahl1 + zahl2;
end;

function getSubtraktion(zahl1 : Integer; zahl2: Integer) : Integer;
begin
  result := zahl1 - zahl2;
end;


procedure berechneBsp1( addiere : Boolean; zahl1 : Integer; zahl2: Integer);
var
  ergebnis : Integer;
begin
  if addiere then
    ergebnis := getAddition( zahl1, zahl2)
  else
    ergebnis := getSubtraktion( zahl1, zahl2);

  ShowMessage( 'Ergebnis: ' + IntToStr( ergebnis) );
end;



procedure TMainForm.BtnBeispiel1Click(Sender: TObject);
begin
  berechneBsp1(true, 13, 17);
  berechneBsp1(false, 17, 13);
end;


function berechneBsp2( addiere : Boolean; zahl1 : Integer; zahl2: Integer) : Integer;
var
  ergebnis : Integer;
begin
  if addiere then
    ergebnis := getAddition( zahl1, zahl2)
  else
    ergebnis := getSubtraktion( zahl1, zahl2);

  result := ergebnis;
end;



procedure TMainForm.BtnBeispiel2Click(Sender: TObject);
var
  eingabeZahl1, eingabeZahl2 : Integer;
  ergebnisText : String;
begin
  // Eingabe
  eingabeZahl1 := 17;
  eingabeZahl2 := 13;

  // Verarbeitung
  ergebnisText := 'Ergebnis der Addition: ';
  ergebnisText := ergebnisText + IntToStr( berechneBsp2(true, eingabeZahl1, eingabeZahl2));
  ergebnisText := ergebnisText + sLineBreak;   // Zeilenumbruch
  ergebnisText := ergebnisText + 'Ergebnis der Subtraktion: ';
  ergebnisText := ergebnisText + IntToStr( berechneBsp2(false, eingabeZahl1, eingabeZahl2));

  // Ausbage
  ShowMessage( ergebnisText);
end;


// Call by Value Deklaration
function getBothValA(i:Integer):Integer;
begin
  i:=10;
  result:=20;
end;



// Call by Reference Beispiel: Einziger Unterschied: var vor dem Parameter i
function getBothValB(var i:Integer):Integer;
begin
  i:=10;
  result:=20;
end;






procedure TMainForm.btnCallByValueClick(Sender: TObject);
var
  int1, int2 : Integer;
begin
  int2:=0;
  int1 := getBothValA(int2);     // Aufruf und anschließende Ausgabe
  ShowMessage( IntToStr( int1));
  ShowMessage( IntToStr( int2));
end;



// Identische Implementierung, wie Aufruf von "Call by Value"-Implementierung
// mit einem Unterschied: Ausgabe von int2 ist "korrekt" :)
procedure TMainForm.btnCallByReferenceClick(Sender: TObject);
var
  int1, int2 : Integer;
begin
  int2:=0;
  int1 := getBothValB(int2);     // Aufruf und anschließende Ausgabe
  ShowMessage( IntToStr( int1));
  ShowMessage( IntToStr( int2));
end;






procedure TMainForm.BtnColorTagsClick(Sender: TObject);
var
  // hier die Definition der lokalen Variablen
  tagBeginSymbol, tagEndSymbol: Char; Col: TColor;
  sourceCode      : String;
  startPosition,
  endPosition,
  lastPosition,
  lengthOfText    : Integer;

  // hier die Definition der lokalen Methoden
  procedure PaintIt( start, leng : Integer; Color : TColor);
  begin
    ReText.SelStart            := start;
    ReText.SelLength           := leng;
    ReText.SelAttributes.Color := Color;
  end;

  // Da PaintIt nur in dieser Procedure (und das 3 mal) aufgerufen wird, und da
  // man beim Programmieren immer so lokal wie möglich programmieren sollte,
  // sollte diese Procedure auch nur hier stehen.

  // Grundsatz: So global wie nötig, so lokal wie möglich!

begin
  // hier initialisieren wir mal ganz einfach die wichtigen Zeichen:
  tagBeginSymbol := '<';
  tagEndSymbol := '>';
  Col := clRed;
  // ReText ist ein RichEdit-Element. Dieses und ein Button genügen für
  // dieses Beispiel als Test der späteren "ColorTags"-Funktion ;)
  sourceCode := ReText.Text;
  // Zeichenumbrüche können hier gemein werden - sie werden "doppelt" gezählt
  // da sie ein Zusammenschluss von Zwei zeichen sind, aber nur als ein Zeichen
  // dargestellt werden - hier ein kleiner Fix für die weitere Behandlung:
  if ReText.Lines.LineBreak = AnsiString(#13#10) then
    sourceCode := stringreplace( sourceCode, ReText.Lines.LineBreak, '§',
                                 [rfReplaceAll, rfIgnoreCase]);

  lastPosition := 0;
  repeat
    lengthOfText  := Length( sourceCode );

    startPosition := pos( tagBeginSymbol, sourceCode);
    endPosition   := pos( tagEndSymbol, sourceCode);

    // Kein weiterer Tag in Sicht: Ende der Bearbeitung durch Abbruch:
    if (startPosition < 1) or (endPosition < 1) then
    begin
      break; // repeat..until verlassen
    end;

    // Start ist nach dem Ende?! => Abbruch durchführen, da ist was "komisch"...
    if (startPosition > endPosition) then
    begin
      break;
    end;

    // Normaler "Tag" entdeckt:
    if startPosition > 0 then
      PaintIt( lastPosition + startPosition - 1, endPosition - startPosition+1, Col);

    sourceCode := copy( sourceCode,
                        endPosition + Length(tagEndSymbol),
                        lengthOfText);
    lastPosition := lastPosition + endPosition;

    // Falls die Methode lange läuft, sorgt folgende Zeile dafür,
    // dass die Anwendung nicht "einfriert".
    Application.ProcessMessages;
    // Es genügt, die Zeile "sourceCode := copy..." auszukomentieren um
    // Application.ProcessMessages in Aktion zu sehen.
    // Wer App... auch noch auskommentiert, sieht was "einfrieren" bedeutet :)

  until (startPosition<1) or (startPosition=endPosition);
end;





// Beispiel 4: ColorTags (Teil 2)
procedure TMainForm.BtnColorTags2Click(Sender: TObject);
begin
  ColorTags(ReText_Bsp2, '<', '>', clBlue);
end;




procedure TMainForm.ColorTags( reTextField : TRichEdit; tagBeginSymbol,
  tagEndSymbol: Char; Col: TColor);
var
  sourceCode      : String;
  startPosition,
  endPosition,
  lastPosition,
  lengthOfText    : Integer;

  procedure PaintIt( start, leng : Integer; Color : TColor);
  begin
    reTextField.SelStart            := start;
    reTextField.SelLength           := leng;
    reTextField.SelAttributes.Color := Color;
  end;

begin
  // Eine Änderung: die TagBegin-, TagEndSymbole und die Farbe sind per
  // Parameter übergeben. Das ermöglicht es, dass die "Einstellungen" wo
  // anders herkommen können.
  sourceCode := reTextField.Text;
  if reTextField.Lines.LineBreak = AnsiString(#13#10) then
    sourceCode := stringreplace( sourceCode, reTextField.Lines.LineBreak, '§',
                                 [rfReplaceAll, rfIgnoreCase]);

  lastPosition := 0;
  repeat
    lengthOfText  := Length( sourceCode );

    startPosition := pos( tagBeginSymbol, sourceCode);
    endPosition   := pos( tagEndSymbol, sourceCode);

    if (startPosition < 1) or (endPosition < 1) then
    begin
      break;
    end;

    if (startPosition > endPosition) then
    begin
      break;
    end;

    if startPosition > 0 then
      PaintIt( lastPosition + startPosition - 1, endPosition - startPosition+1, Col);

    sourceCode := copy( sourceCode,
                        endPosition + Length(tagEndSymbol),
                        lengthOfText);
    lastPosition := lastPosition + endPosition;

    Application.ProcessMessages;

  until (startPosition<1) or (startPosition=endPosition);
end;



// Beispiel 5: ColorTags (Teil 3)
procedure TMainForm.ReText_Bsp3Change( Sender: TObject);
var
  // hier brauchen wir als Zusatz die "Cursor-Position", da wir beim Ändern des
  // Styles den Cursor auf die letzte Position setzen.
  selStart, selLength : Integer;
begin
  // wir merken uns, was die aktuelle Position bzw. Markierung ist:
  selStart  := ReText_Bsp3.SelStart;
  selLength := ReText_Bsp3.SelLength;
  // damit es nicht flackert, gibt es zwei hacks:
  // der eine ist, mehr Speicher:
  DoubleBuffered := true;
  // der Andere: Kurz verstecken:
  ReText_Bsp3.visible := false;
  // Ändern ggf. die Farbe :
  ColorTags(ReText_Bsp3, '<', '>', clGreen);
  // und zum Schluss, setzen wir wieder die aktuelle Position:
  ReText_Bsp3.visible := true;
  ReText_Bsp3.SetFocus;
  ReText_Bsp3.SelStart := selStart;
  ReText_Bsp3.SelLength := selLength;
end;


end.
