{
     Autor:       Marco Hetzel

     File:        OOPProject.dpr

     Date:        18.08.2007

     Source:      http://delphi-lernen.de

     Contact: 	  Marco@delphi-lernen.de

     Copyright:   by Marco Hetzel

}

program OOPProject2;

{$MODE Delphi}

uses
  Forms, Interfaces,
  MainUnit in 'MainUnit.pas' {MainForm},
  mCaesar in 'mCaesar.pas',
  mVigenere in 'mVigenere.pas';

{.$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.