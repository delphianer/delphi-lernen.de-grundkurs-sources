{
     Autor:       Marco Hetzel

     File:        mCaesar.pas

     Date:        05.08.2007
     
     Source:      http://delphi-lernen.de

     Contact: 	  Marco@delphi-lernen.de
     
     Copyright:   by Marco Hetzel

}

unit mCaesar;

{$MODE Delphi}

interface

type
  TCaesar = class(TObject)
  private
    fAlphabet : String;
  public
    function DeCode(orig:String; move:Byte):String;
    constructor Create;
  end;

implementation

uses
  SysUtils;


function TCaesar.DeCode(orig:String; move:Byte):String;
var
  orig_index, alpha_index:Integer;
  coded: String;
  isInAlphabet:Boolean;
begin
  coded:='';
  for orig_index := 1 to Length(orig) do
  begin
    isInAlphabet:=false;
    for alpha_index := 1 to (Length(fAlphabet) div 2) do
      if orig[orig_index]=fAlphabet[alpha_index] then
      begin
        coded:=coded+fAlphabet[alpha_index+move mod (Length(fAlphabet) div 2)];
        isInAlphabet:=true;
      end
      else if orig[orig_index]=UpperCase(fAlphabet[alpha_index]) then
      begin
        coded:=coded+UpperCase(fAlphabet[alpha_index+move mod (Length(fAlphabet) div 2)]);
        isInAlphabet:=true;
      end;
    if not isInAlphabet then
      coded:=coded+orig[orig_index];
  end;
  result:=coded;
end;




// Constructor implementieren:
constructor TCaesar.Create;
var
  c:Char;
begin
  fAlphabet:='';
  for c:='a' to 'z' do
    fAlphabet:=fAlphabet+c;
  fAlphabet:=fAlphabet+fAlphabet;
  // Constructor von Elternobjekt ausführen:
  inherited Create;
end;



end.