{
     Autor:       Marco Hetzel

     File:        OOPProject.dpr

     Date:        05.08.2007

     Source:      http://delphi-lernen.de

     Contact: 	  Marco@delphi-lernen.de

     Copyright:   by Marco Hetzel

}

program OOPProject;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  mCaesar in 'mCaesar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.