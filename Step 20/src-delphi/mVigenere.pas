unit mVigenere;

interface

uses
  mCaesar;

type
  TVigenere = class(TCaesar)
  private
    { private-Deklarationen }
    fPassword : String;
  protected
    { protected-Deklarationen }
  public
    { public-Deklarationen }
    function DeCode(orig:String; decode:Boolean):String;

    constructor Create(password:String);
  published
    { published-Deklarationen }
  end;

implementation

uses
  SysUtils;



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
  while indexOrig < Length(orig) do // W�hrend noch Buchstaben zu bearbeiten sind
  begin
    Inc(indexOrig); // n�chsten Buchstaben behandeln
    Inc(indexPw);   // Passwortindex um eins erh�hen
    // Wenn Passwortindex gr��er als L�nge des Passwortes
    if indexPw > Length(fPassword) then
      // Passwortindex auf 1 zur�cksetzen
      indexPw:=1;
    // Buchstabe des Passwortes in ASCII-Zahl codieren und ord('a') abziehen
    // hierbei resuliert f�r z.B. fPassword[indexPW]='a'  move = 0; 
    move:=ord(fPassword[indexPw])-97;
    if decode then      // wenn decodiert werden soll
      move:=26-move;    // dann move umdrehen -> R�ckw�rts verschieben
    // Funktion der Klasse TCaesar mit aktulellem Buchstaben bei indexOrig ausf�hren
    coded:=coded+inherited DeCode(orig[indexOrig],move);
  end;
  // codierten String zur�ckgeben
  result:=coded;
end;



Constructor TVigenere.Create(password:String);
begin
  fPassword := LowerCase(password);
  inherited Create;
end;



end.
