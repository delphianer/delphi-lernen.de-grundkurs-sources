unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TICQKontakt = record
    Nick : String[10]; // die Zahl in den Eckigen Klammern gibt
    Vorname : String[25]; // die maximale Größe des "Strings" an!
    Nachname : String[25];
    UIN : Integer;
  end;

  T4ICQKontaktBuch = Array[0..3] of TICQKontakt;

  TForm1 = class(TForm)
    Label1: TLabel;
    EdNick1: TEdit;
    Label2: TLabel;
    EdVorname1: TEdit;
    Label3: TLabel;
    EdNachname1: TEdit;
    Label4: TLabel;
    EdIcqNummer1: TEdit;
    Label5: TLabel;
    EdNick2: TEdit;
    Label6: TLabel;
    EdVorname2: TEdit;
    Label7: TLabel;
    EdNachname2: TEdit;
    Label8: TLabel;
    EdIcqNummer2: TEdit;
    Label9: TLabel;
    EdNick3: TEdit;
    Label10: TLabel;
    EdVorname3: TEdit;
    Label11: TLabel;
    EdNachname3: TEdit;
    Label12: TLabel;
    EdIcqNummer3: TEdit;
    Label13: TLabel;
    EdNick4: TEdit;
    Label14: TLabel;
    EdVorname4: TEdit;
    Label15: TLabel;
    EdNachname4: TEdit;
    Label16: TLabel;
    EdIcqNummer4: TEdit;
    BtnPost: TButton;
    BtnShow: TButton;
    BtnSave: TButton;
    BtnOpen: TButton;
    procedure BtnPostClick(Sender: TObject);
    procedure BtnShowClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
  private
    { Private-Deklarationen }
    ICQKontaktBuch : T4ICQKontaktBuch;
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

{ Click-Procedure des Buttons, der die Eingaben übernehmen soll: }


procedure TForm1.BtnPostClick(Sender: TObject);
begin
  ICQKontaktBuch[0].Nick     := EdNick1.Text;
  ICQKontaktBuch[0].Vorname  := EdVorname1.Text;
  ICQKontaktBuch[0].Nachname := EdNachname1.Text;
  ICQKontaktBuch[0].UIN      := StrToInt( EdIcqNummer1.Text);

  ICQKontaktBuch[1].Nick     := EdNick2.Text;
  ICQKontaktBuch[1].Vorname  := EdVorname2.Text;
  ICQKontaktBuch[1].Nachname := EdNachname2.Text;
  ICQKontaktBuch[1].UIN      := StrToInt( EdIcqNummer2.Text);

  ICQKontaktBuch[2].Nick     := EdNick3.Text;
  ICQKontaktBuch[2].Vorname  := EdVorname3.Text;
  ICQKontaktBuch[2].Nachname := EdNachname3.Text;
  ICQKontaktBuch[2].UIN      := StrToInt( EdIcqNummer3.Text);

  ICQKontaktBuch[3].Nick     := EdNick4.Text;
  ICQKontaktBuch[3].Vorname  := EdVorname4.Text;
  ICQKontaktBuch[3].Nachname := EdNachname4.Text;
  ICQKontaktBuch[3].UIN      := StrToInt( EdIcqNummer4.Text);
end;


{Click-Procedure des Buttons, der die geladene Eingaben anzeigen soll: }
procedure TForm1.BtnShowClick(Sender: TObject);
begin
  EdNick1.Text      := ICQKontaktBuch[0].Nick;
  EdVorname1.Text   := ICQKontaktBuch[0].Vorname;
  EdNachname1.Text  := ICQKontaktBuch[0].Nachname;
  EdIcqNummer1.Text := IntToStr( ICQKontaktBuch[0].UIN);

  EdNick2.Text      := ICQKontaktBuch[1].Nick;
  EdVorname2.Text   := ICQKontaktBuch[1].Vorname;
  EdNachname2.Text  := ICQKontaktBuch[1].Nachname;
  EdIcqNummer2.Text := IntToStr( ICQKontaktBuch[1].UIN);

  EdNick3.Text      := ICQKontaktBuch[2].Nick;
  EdVorname3.Text   := ICQKontaktBuch[2].Vorname;
  EdNachname3.Text  := ICQKontaktBuch[2].Nachname;
  EdIcqNummer3.Text := IntToStr( ICQKontaktBuch[2].UIN);

  EdNick4.Text      := ICQKontaktBuch[3].Nick;
  EdVorname4.Text   := ICQKontaktBuch[3].Vorname;
  EdNachname4.Text  := ICQKontaktBuch[3].Nachname;
  EdIcqNummer4.Text := IntToStr( ICQKontaktBuch[3].UIN);
end;

{Click-Procedure des Buttons, der alles speichern soll: }
procedure TForm1.BtnSaveClick(Sender: TObject);
var
  f : file of T4ICQKontaktBuch;
begin
  // Dateihandling ist neu - nehmt euch Zeit um euch das kurz anzuschauen

  // wir definieren hier quasi erst einen sogenannten "Zeiger" f
  // auf die Datei "demofile.dat" um mit diesem weiter zu arbeiten
  // Damit die Datei im gleichen Verzeichnis landet, wie unsere Exe-Datei
  // ist hier noch ExtractFilePath als Hilfsfunktion dabei.
  AssignFile(f, ExtractFilePath(Application.Exename) + 'demofile.dat');

  // da wir in diesem Fall "neu" speichern wollen, nutzen wir Rewrite() um
  // die Datei zu leeren
  ReWrite(f);

  // nun schreiben wir unser Kontaktbuch in die Datei
  Write(f,ICQKontaktBuch);

  // und zu guter Letzt, schließen wir den Zeiger auf die Datei, so dass ggf.
  // jemand Anderes darauf zugreifen kann :)
  CloseFile(f);
end;

{ Click-Procedure des Buttons, der alles laden soll: }
procedure TForm1.BtnOpenClick(Sender: TObject);
var
  f : file of T4ICQKontaktBuch;
begin
  // auch hier definieren wir erst den Zeiger auf die Datei
  AssignFile(f, ExtractFilePath(Application.Exename) + 'demofile.dat');

  // nun stellen wir sicher, dass der Zeiger auf den Anfang zeigt
  ReSet(f);

  // Und jetzt lesen wir unser Kontaktbuch aus der Datei
  Read(f,ICQKontaktBuch);

  // Wie oben, alles wieder schließen
  CloseFile(f);
end;

end.
