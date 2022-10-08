unit UPessoa;

interface

Type

TPessoa = class

  private

    FNome : String;
    FDataNascimento: TDate;
    FAltura : Integer;

    function getNome: String;
    procedure setNome(const Value: String);

    function getDataNascimento: TDate;
    procedure setDataNascimento(const Value: TDate);

    function getAltura: Integer;
    procedure setAltura(const Value: Integer);

  public
    property nome : String read getNome write setNome;
    property dataNascimento : TDate read getDataNascimento write setDataNascimento;
    property altura : Integer read getAltura write setAltura;



end;

implementation



{ TPessoa }


{ gets }
function TPessoa.getAltura: Integer;
begin
  Result := FAltura;
end;

function TPessoa.getDataNascimento: TDate;
begin
  Result := FDataNascimento;
end;

function TPessoa.getNome: String;
begin
  Result := FNome;
end;


{ sets }

procedure TPessoa.setAltura(const Value: Integer);
begin
   FAltura := Value;
end;

procedure TPessoa.setDataNascimento(const Value: TDate);
begin
   FDataNascimento := Value;
end;

procedure TPessoa.setNome(const Value: String);
begin
  FNome := Value;
end;

end.
