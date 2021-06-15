unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edZahl1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edZahl2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function ggT( z1, z2 : Integer) : Integer;
begin
  while z2 <> 0 do
  begin
    if z1 > z2 then
      z1 := z1-z2
    else
      z2 := z2-z1;
  end;
  result := z1;
end;


procedure TForm1.Button1Click(Sender: TObject);
var
  zahl1, zahl2, ergebnis : Integer;
begin
  try
    zahl1 := StrToInt( edZahl1.Text);
    zahl2 := StrToInt( edZahl2.Text);
    ergebnis := ggT( zahl1, zahl2);
    ShowMessage( 'ggT von ' + IntToStr(zahl1) + ' und ' + IntToStr(zahl2) +
                 ' ist ' + IntToStr(ergebnis));
  except
    on ex:Exception do
      ShowMessage( 'Unbehandelte Ausnahme aufgetreten: ' + ex.Message);

  end;
end;

end.
