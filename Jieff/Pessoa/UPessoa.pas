unit UPessoa;

interface

Type

TPessoa = class

  private

    FNome : String;
    FDataNascimento: TDate;
    FAltura : Double;

    function getNome: String;
    procedure setNome(const Value: String);

    function getDataNascimento: TDate;
    procedure setDataNascimento(const Value: TDate);

    function getAltura: Double;
    procedure setAltura(const Value: Double);

  public
    property nome : String read getNome write setNome;
    property dataNascimento : TDate read getDataNascimento write setDataNascimento;
    property altura : Double read getAltura write setAltura;

    function idade: TDate;

end;

implementation

uses
  System.SysUtils;


function TPessoa.idade: TDate;
begin
  Result:= trunc( Date - dataNascimento) / 365.25;
end;

{ TPessoa }

{ gets }


function TPessoa.getAltura: Double;
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

procedure TPessoa.setAltura(const Value: Double);
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
