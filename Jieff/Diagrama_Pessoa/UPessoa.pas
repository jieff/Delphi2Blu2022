unit UPessoa;

interface

type

  TPessoa = class
    FNome : String;
    FEndereco : String;

    private
        procedure gravar(aNome, aEndereco : String);
    public


  end;

  TPessoaFisica = class(TPessoa)
    FCPF : String;
    FIdade : Byte;

    private


    public
          function IsValidCPF(pCPF: string): Boolean;

  end;

  TPessoaJuridica = class(TPessoa)
    FCNPJ: string;
    FIE: String;

    private

    public

  end;

implementation

uses SysUtils, Math;


{ TPessoa }

procedure TPessoa.gravar(aNome, aEndereco: String);
begin
  FNome := aNome;
  FEndereco := aEndereco;
end;



{ TPessoaFisica }

function TPessoaFisica.IsValidCPF(pCPF: string): Boolean;

  var
  v: array [0 .. 1] of Word;
  cpf: array [0 .. 10] of Byte;
  I: Byte;
begin
  Result := False;

  { Verificando se tem 11 caracteres }
  if Length(pCPF) <> 11 then
  begin
    Exit;
  end;

  { Conferindo se todos d�gitos s�o iguais }
  if pCPF = StringOfChar('0', 11) then
    Exit;

  if pCPF = StringOfChar('1', 11) then
    Exit;

  if pCPF = StringOfChar('2', 11) then
    Exit;

  if pCPF = StringOfChar('3', 11) then
    Exit;

  if pCPF = StringOfChar('4', 11) then
    Exit;

  if pCPF = StringOfChar('5', 11) then
    Exit;

  if pCPF = StringOfChar('6', 11) then
    Exit;

  if pCPF = StringOfChar('7', 11) then
    Exit;

  if pCPF = StringOfChar('8', 11) then
    Exit;

  if pCPF = StringOfChar('9', 11) then
    Exit;

  try
    for I := 1 to 11 do
      cpf[I - 1] := StrToInt(pCPF[I]);
    // Nota: Calcula o primeiro d�gito de verifica��o.
    v[0] := 10 * cpf[0] + 9 * cpf[1] + 8 * cpf[2];
    v[0] := v[0] + 7 * cpf[3] + 6 * cpf[4] + 5 * cpf[5];
    v[0] := v[0] + 4 * cpf[6] + 3 * cpf[7] + 2 * cpf[8];
    v[0] := 11 - v[0] mod 11;
     v[0] := IfThen(v[0] >= 10, 0, v[0]);
    // Nota: Calcula o segundo d�gito de verifica��o.
    v[1] := 11 * cpf[0] + 10 * cpf[1] + 9 * cpf[2];
    v[1] := v[1] + 8 * cpf[3] + 7 * cpf[4] + 6 * cpf[5];
    v[1] := v[1] + 5 * cpf[6] + 4 * cpf[7] + 3 * cpf[8];
    v[1] := v[1] + 2 * v[0];
    v[1] := 11 - v[1] mod 11;
    v[1] := IfThen(v[1] >= 10, 0, v[1]);
    // Nota: Verdadeiro se os d�gitos de verifica��o s�o os esperados.
    Result := ((v[0] = cpf[9]) and (v[1] = cpf[10]));
  except
    on E: Exception do
      Result := False;
  end;
end;

end.
