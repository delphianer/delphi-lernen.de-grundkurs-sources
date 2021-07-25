unit mVigenere;

interface

uses
  mCaesar;

type
  TVigenere = class(TCaesar)
  private
    { private declarations }
    fPassword : String;
  protected
    { protected declarations }
  public
    { public declarations }
    constructor Create(password:String);

    function DeCode(orig:String; decode:Boolean):String;
    
  published
    { published declarations }
  end;

implementation


constructor TVigenere.Create(password:String);
begin
  inherited Create;
  fPassword:=password;
end;


  // initialisierung (vorerst):
function TVigenere.DeCode(orig:String; decode:Boolean):String;
var
    indexOrig,           // Index des Original-Strings
    indexPw,             // Index des Passwort-Strings
    move      : Integer; // Verschiebung
    coded     : String;  // Codierter String
begin
    // Variablen initialisieren:
    indexOrig:=0;
    indexPw:=0;
    coded:='';
    while indexOrig < Length(orig) do // Während noch Buchstaben zu bearbeiten sind
    begin
        Inc(indexOrig); // nächsten Buchstaben behandeln
        Inc(indexPw);   // Passwortindex um eins erhöhen
        // Wenn Passwortindex größer als Länge des Passwortes
        if indexPw > Length(fPassword) then
            // Passwortindex auf 1 zurücksetzen
            indexPw := 1;
        // Buchstabe des Passwortes in ASCII-Zahl codieren und ord('a') abziehen
        // hierbei resuliert für z.B. fPassword[indexPW]='a'  move = 0;
        move := ord(fPassword[indexPw])-97;
        if decode then          // wenn decodiert werden soll
            move := 26-move;    // dann move umdrehen -> Rückwärts verschieben
        // Funktion der Klasse TCaesar mit aktulellem Buchstaben bei indexOrig ausführen
        coded := coded + inherited DeCode(orig[indexOrig],move);
    end;
    // codierten String zurückgeben
    result:=coded;
end;


end.
