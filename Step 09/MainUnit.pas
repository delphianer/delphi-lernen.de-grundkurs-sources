unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMainForm = class(TForm)
    BtnErstesBeispiel: TButton;
    edEingabefeld: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    procedure BtnErstesBeispielClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.BtnErstesBeispielClick(Sender: TObject);
var
  i : Integer;
begin
    // ein Wert aus einem Eingabefeld lesen und in Integer umwandeln
    i := StrToInt( edEingabefeld.Text);
    if i = 1 then
        ShowMessage('Ihre Eingabe war Eins')
    else if i < 10 then
        ShowMessage('Ihre Eingabe war kleiner 10')
    else if i <= 20 then
        ShowMessage('Ihre Eingabe war zwischen 10 und 20 oder exakt 10 oder 20')
    else if i <> 21 then
        ShowMessage('Ihre Eingabe war nicht 21')
    else
        ShowMessage('Ihre Eingabe war 21');
end;

procedure TMainForm.Button1Click(Sender: TObject);
var
  b     : Boolean;
  i,k,m : Integer;
begin
  // Benutzerabfrage:

  if Application.MessageBox('Wollen Sie wirklich weitermachen?',
                            'Frage',
                            MB_YESNO+MB_ICONQUESTION)=ID_YES then
    ShowMessage('Gute Wahl!')
  else if Application.MessageBox('Haben Sie Fragen?',
                                'Frage',
                                MB_YESNO+MB_ICONQUESTION)=ID_YES then
    ShowMessage('...dann mailen Sie mir gerne Ihre Fragen ;-)')
  else
    ShowMessage('Wo liegt denn das Problem?');

{
    Hinweis:

        Mehr zu Application.MessageBox findet man in der Hilfe von Delphi
}

  // ein einfaches Beispiel:
  i := 15;
  k := 10;
  b := (i=15) XOR (k=15);

  if b then
    k := i div 3;

  b := ((i+k) = 20) AND ((i-k) > k);

  if not b then
    ShowMessage('Die Bedingung mit der UND-Verknüpfung ist "false"')
  else
    ShowMessage('Die Bedingung mit der UND-Verknüpfung ist "true"');


  // ein bisschen trickreicher! -> kleine Aufgabe:
  // "rechen" den Script in Gedanken durch!
  // kommen wir an die Meldung "Ziel"?
  i := 5;
  k := 18;
  m := k mod i;

  if m=3 then
  begin
    i := k*m - i;

    if i=49 then
    begin
      k := i div m;
      m := (i mod 10) * 3-k;

      if (k=16) XOR (m=k div 2) then
        ShowMessage('Ziel')
      else
        ShowMessage('Nope');
    end
    else
      ShowMessage('Ziel nicht erreicht');
  end
  else
    ShowMessage('So geht es nicht zum Ziel');
end;


end.
