unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    LblString2: TLabel;
    EdString1: TEdit;
    BtnWechseln: TButton;
    procedure BtnWechselnClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.BtnWechselnClick(Sender: TObject);
var
  stringTausch : String;
begin
  stringTausch := EdString1.Text;
  EdString1.Text := LblString2.Caption;
  LblString2.Caption := stringTausch;
end;

end.
