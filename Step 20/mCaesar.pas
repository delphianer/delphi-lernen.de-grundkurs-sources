unit mCaesar;

interface

type
  TCaesar = class(TObject)
  private
    { private declarations }
    fAlphabet : String;
  protected
    { protected declarations }
  public
    { public declarations }
    constructor Create;

    function DeCode( orig : String; move : Integer) : String;
  end;

implementation

uses
  System.SysUtils;



constructor TCaesar.Create;
var
  c : Char;
begin
  fAlphabet := '';
  for c := 'a' to 'z' do
    fAlphabet := fAlphabet + c;
end;



function TCaesar.DeCode( orig : String; move : Integer) : String;
var
  // (1)
  originalChr, codedChr : Char;
  isUpperCase : Boolean;
  index, index_coded : Integer;
  coded : String;
begin
  coded := '';
  for index := 1 to Length( orig) do
  begin
    // (2)
    originalChr := orig[ index];
    isUpperCase := (originalChr = UpperCase(originalChr));
    // (3)
    if isUpperCase then
      originalChr := LowerCase( originalChr)[1];
    codedChr := #0;
    for index_coded := 1 to Length( fAlphabet) do
      // (4)
      if originalChr = fAlphabet[ index_coded] then
      begin
        if index_coded + move > Length( fAlphabet) then
          // (5)
          codedChr := fAlphabet[ (index_coded + move) mod Length( fAlphabet)]
        else
          codedChr := fAlphabet[ index_coded + move];
      end;
    // (6)
    if codedChr <> #0 then
    begin
      // (7)
      if isUpperCase then
        coded := coded + UpperCase( codedChr)
      else
        coded := coded + codedChr;
    end
    else // keine codierung durchgeführt:
    begin
      coded := coded + originalChr;
    end;
  end;
  result := coded;
end;

end.
