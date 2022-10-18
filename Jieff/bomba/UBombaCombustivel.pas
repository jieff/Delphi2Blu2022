unit UBombaCombustivel;

interface

type

  TBombaCombustivel = class

    private

    FTipoCombustivel : String;
    FQuantidade : double;
    FValorPorLitro : double;


    function GetQuantidade: double;
    function GetTipo: string;
    function GetValor: double;

    procedure SetQuantidade(const Value: double);
    procedure SetTipo(const Value: string);
    procedure SetValor(const Value: double);

    public

    property tipoCombustivel : string read GetTipo write SetTipo;
    property valorCombustivel : double read GetValor write SetValor;
    property quantidade : double read GetQuantidade write SetQuantidade;

    procedure abastecerPorValor( const aValue: double);
    procedure abastecerPorLitro( const aValue: double);
    procedure alterarValor (const aValue: double);
    procedure alterarCombustivel ( const aValue : string);
    procedure alterarQuantidadeCombustivel ( const aValue : double);

  end;

implementation

{ TBombaCombustivel }

procedure TBombaCombustivel.abastecerPorLitro(const aValue: double);
begin
  FValorPorLitro := FValorPorLitro * aValue ;

end;

procedure TBombaCombustivel.abastecerPorValor(const aValue: double);
begin
  FValorPorLitro := aValue;
  FValorPorLitro := FValorPorLitro * FQuantidade;
end;

procedure TBombaCombustivel.alterarCombustivel(const aValue: string);
begin
  FTipoCombustivel := aValue;
end;

procedure TBombaCombustivel.alterarQuantidadeCombustivel(const aValue: double);
begin
  FQuantidade := aValue;
end;

procedure TBombaCombustivel.alterarValor(const aValue: double);
begin
  //FValorPorLitro := FValorPorLitro * aValue;

    if FValorPorLitro > aValue then
      FValorPorLitro := FValorPorLitro + aValue;

    if FValorPorLitro < aValue then
      FValorPorLitro := FValorPorLitro - aValue;
end;

function TBombaCombustivel.GetQuantidade: double;
begin
  Result :=  FQuantidade;
end;

function TBombaCombustivel.GetTipo: string;
begin
  Result := FTipoCombustivel;
end;

function TBombaCombustivel.GetValor: double;
begin
  Result := FValorPorLitro;
end;

procedure TBombaCombustivel.SetQuantidade(const Value: double);
begin
  FQuantidade := Value;
end;

procedure TBombaCombustivel.SetTipo(const Value: string);
begin
  FTipoCombustivel := Value;
end;

procedure TBombaCombustivel.SetValor(const Value: double);
begin
  FValorPorLitro := Value;
end;

end.
