unit mCaesarFuerTest1;

interface

type
  TCaesarFuerTest1 = class(TObject)
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



constructor TCaesarFuerTest1.Create;
var
  c : Char;
begin
  fAlphabet := '';
  for c := 'a' to 'z' do
    fAlphabet := fAlphabet + c;
end;



function TCaesarFuerTest1.DeCode( orig : String; move : Integer) : String;
var
  index, index_coded : Integer;
  coded : String;
begin
  coded := '';
  // (1)
  for index := 1 to Length( orig) do
    // (2)
    for index_coded := 1 to Length( fAlphabet) do
      // (3)
      if orig[ index] = fAlphabet[ index_coded] then
      begin
        // (5)
        if index_coded + move > Length( fAlphabet) then
          // (4) - Teil 1 mit Modulo
          coded := coded + fAlphabet[ (index_coded + move) mod Length( fAlphabet)]
        else
          // (4) - Teil 2
          coded := coded + fAlphabet[ index_coded + move];
      end;
  result := coded;
end;

end.
