unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TImportantColors = (Red, Green, Blue);
  TMainForm = class(TForm)
    EdTag: TEdit;
    BtnBeispiel1: TButton;
    edMonat: TEdit;
    edJahr: TEdit;
    Panel1: TPanel;
    BtnFarbenbeispiel: TButton;
    Label1: TLabel;
    procedure BtnBeispiel1Click(Sender: TObject);
    procedure BtnFarbenbeispielClick(Sender: TObject);
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
  tag, monat, jahr, datum : Integer;
  datumAlsString, msg : String;
begin
  tag := StrToInt(edTag.Text);
  monat := StrToInt(edMonat.Text);
  jahr := StrToInt(edJahr.Text);

  datum := tag*1000000+monat*10000+jahr;
  datumAlsString := IntToStr(tag) + '.'
                    + IntToStr(monat) + '.'
                    + IntToStr(jahr);

  case datum of
    31122021,31122022,31122023 :
    begin
      msg := 'Heute ist Silvester!';
      msg := msg + ' Frohes Neues Jahr 2022!';
    end;
    1012022,1012023,1012024:
    begin
      msg := 'Heute ist Neujahr!';
      msg := msg + ' Frohes Neues Jahr 2022!';
    end;
    else
    begin
      msg := 'Heute ist der ';
      msg := msg + datumAlsString;
      msg := msg + '! Mach was draus ;)';
    end;
  end;

  ShowMessage( msg);
end;

procedure TMainForm.BtnFarbenbeispielClick(Sender: TObject);
var
  cl : TImportantColors;
begin
  cl := Blue;

  // Auch Kurzschreibform ist müglich:
  case cl of
    Red : showMessage('Red');
    Green : showMessage('Green');
    Blue : showMessage('Blue');
    else showMessage('???');
  end;

  // Oder mehrere Werte auflisten und auf eine Anweisung legen:
  case cl of
    Red, Green : showMessage('Not Blue');
    Blue : showMessage('Blue');
    else showMessage('???');
  end;
end;

end.
