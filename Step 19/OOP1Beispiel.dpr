program OOP1Beispiel;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  mCaesarFuerTest1 in 'mCaesarFuerTest1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
