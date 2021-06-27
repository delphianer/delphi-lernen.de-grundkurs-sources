program OOP2Beispiel;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  mCaesarFuerTest1 in 'mCaesarFuerTest1.pas',
  mVigenere in 'mVigenere.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
