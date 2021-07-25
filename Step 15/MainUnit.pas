unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    Button1: TButton;
    EdSummand1: TEdit;
    EdSummand2: TEdit;
    Label1: TLabel;
    Button2: TButton;
    EdDivident: TEdit;
    EdDivisor: TEdit;
    Label2: TLabel;
    EdSumme: TEdit;
    EdQuotient: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}




procedure TMainForm.Button1Click(Sender: TObject);
var
    a, b, c : Integer;
begin
  try                             // versuche
    a := StrToInt( EdSummand1.Text);
    b := StrToInt( EdSummand2.Text);
    c := a+b;
    EdSumme.Text := IntToStr( c);
  except                          //ansonsten ...
    ShowMessage( 'Ihre Eingabe konnte nicht verarbeitet werden. Bitte geben Sie eine ganze Zahl ein.'); // Fehlerausgabe
  end;
end;




procedure TMainForm.Button2Click(Sender: TObject);
var
    a, b, c : Integer;
    msg : String;
begin
  try                             // versuche
    a := StrToInt( EdDivident.Text);
    b := StrToInt( EdDivisor.Text);
    c := a div b;
    EdQuotient.Text := IntToStr( c);
  except                          // ansonsten

    on ex:EDivByZero do           // bei Division durch 0

      ShowMessage('Division durch 0!?! Exception-Meldung:' + ex.Message);

    on ex:EIntOverflow do         // bei Integer Überlauf

      ShowMessage('Integer Überlauf!?! Exception-Meldung:' + ex.Message);

    on ex:EIntfCastError do       // bei einem Casting-Ausnahmen

      ShowMessage('Integer Cast Fehler?!? Exception-Meldung:' + ex.Message);

    // ... die Aufzählung kann beliebig erweitert werden ...

    on ex:Exception do               // bei allen anderen Ausnahmen

      // alternativ, falls wir auf ex nicht zugreifen können müssen,
      // können wir für "alle anderen Ausnahmen" auch "else" verwenden,
      // wie bei der if-Anweisung

      // Mehr als eine Zeile? => Umschließe mit begin...end;
      begin
        msg := 'Unbekannter Fehler:' + ex.ClassName + sLineBreak;
        msg := msg + 'a = ' + IntToStr(b) + sLineBreak;
        msg := msg + 'b = ' + IntToStr(b) + sLineBreak;
        msg := msg + 'c = ' + IntToStr(c);
        ShowMessage( msg);
      end;

  end; // von try...except
end;

end.
