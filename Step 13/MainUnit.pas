unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    BtnBeispiel1: TButton;
    mmRepeatUntil: TMemo;
    BtnBeispiel2: TButton;
    mmWhile: TMemo;
    procedure BtnBeispiel1Click(Sender: TObject);
    procedure BtnBeispiel2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainForm: TMainForm;

implementation


{$R *.dfm}



procedure TMainForm.BtnBeispiel1Click(Sender: TObject);
var
  i : Integer;
begin

  // Erster Teil: Repeat ... Until:

  mmRepeatUntil.Lines.Clear; // Alles was drin steht löschen

  i := 10; // Initialisierung von i
  repeat

    mmRepeatUntil.Lines.Add( IntToStr( i));

    dec( i);

  until i = 0;

  // Erster Teil: While:

  mmWhile.Lines.Clear; // Alles was drin steht löschen

  i := 10; // Erneute Initialisierung von i
  while i > 0 do
  begin

    mmWhile.Lines.Add( IntToStr( i));

    dec( i);

  end;

end;






procedure TMainForm.BtnBeispiel2Click(Sender: TObject);
var
  id : Integer;
begin
  repeat
     id := Application.MessageBox( 'Wollen Sie diesen Monat Ihr Gehalt Ihrem Chef spenden?',
                                   'Frage:',
                                   MB_YESNO+MB_ICONQUESTION);
  until id = ID_YES;
  ShowMessage('Eine Sehr gute Wahl!');
end;





end.
