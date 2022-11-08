unit UAnimal;

interface

Type

  TEnumAnimal = (stCachorro, stGato, stPassaro);

  TAnimal = class

  private

    Patas: Byte;

    function GetPatas: Byte;
    procedure SetPatas(const aValue: Byte);

  public

    function RetornarSom: String; virtual; abstract;
    property Patas: Byte read GetPatas write SetPatas;

  end;

  TCachorro = class(TAnimal)

  private
  public
    constructor Create;
    function RetornarSom: String; override;
  end;

  TGato = class(TAnimal)
  private
  public
    constructor Create;
    function RetornarSom: String; override;
  end;

  TPassaro = class(TAnimal)
  private
  public
    constructor Create;
    function RetornarSom: String; override;
  end;

implementation

{ TAnimal}
procedure TAnimal.SetPatas(const aValue: Byte);
begin
      Patas := aValue;
end;

function TAnimal.GetPatas: Byte;
begin
  Result := Patas;
end;

{ TCachorro }

function TCachorro.RetornarSom: String;
begin
  Result := 'Au au';
end;

constructor TCachorro.Create;
begin
  Patas := 4;
end;

{TPassaro}

constructor TPassaro.Create;
begin
  Patas := 2;
end;

function TPassaro.RetornarSom: String;
begin
  Result := 'Piu piu';
end;



{ TGato }

constructor TGato.Create;
begin
  FPatas := 4;
end;

function TGato.RetornarSom: String;
begin
   Result := 'miau';
end;

end.
