unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    myEdit: TEdit;
    Button2: TButton;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
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




procedure TForm1.Button1Click(Sender: TObject);
begin
  MyEdit.Text:='test ohne with';
  MyEdit.Font.Color:= clRed;
  MyEdit.Font.Name:= 'Verdana';
  MyEdit.Font.Size:= 10;
  MyEdit.PasswordChar:= '*';
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
  with MyEdit do
  begin
    Text:='test mit with';
    with Font do
    begin
      Color:= clBlue;
      Name:= 'Verdana';
      Size:= 10;
    end;
    PasswordChar:= '#';
  end;
end;


end.
