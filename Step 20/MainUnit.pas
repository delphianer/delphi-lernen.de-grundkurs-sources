unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class( TForm)
    EdPassword: TEdit;
    BtnVigenere: TButton;
    edEingabe: TEdit;
    edAusgabe: TEdit;
    Label1: TLabel;
    rbCodieren: TRadioButton;
    rbDecodieren: TRadioButton;
    procedure BtnVigenereClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainForm: TMainForm;

implementation

uses
  mVigenere;

{$R *.dfm}

procedure TMainForm.BtnVigenereClick(Sender: TObject);
var
  vigenere : TVigenere;
begin
  vigenere := TVigenere.Create(EdPassword.Text);
  try
    edAusgabe.Text := vigenere.DeCode( edEingabe.Text, rbCodieren.Checked);
  finally
    vigenere.Free;
  end;
end;

end.
