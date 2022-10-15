unit UPessoa;

interface

type

  TPessoa = class
    private

      FNome : String;
      FEndereco : String;

      function GetEndereco: string;
      function GetNome: string;
      procedure SetEndereco(const Value: string);
      procedure SetNome(const Value: string);


    public

      procedure gravar(aNome, aEndereco : String);

      property nome : string read GetNome write SetNome;
      property endereco : string read GetEndereco write SetEndereco;

  end;

  TPessoaFisica = class(TPessoa)
    private
      FCPF : String;
      FIdade : Byte;
    function GetCPF: string;
    function Getidade: byte;
    procedure SetCPF(const Value: string);
    procedure SetIdade(const Value: byte);

    public
      function IsValidCPF(pCPF: string): Boolean;

      property cpf : string read GetCPF write SetCPF;
      property idade : byte read Getidade write SetIdade;

  end;

  TPessoaJuridica = class(TPessoa)
    private
      FCNPJ: string;
      FIE: String;
      function GetCnpj: string;
      function GetIe: string;
      procedure SetCnpj(const Value: string);
      procedure SetIe(const Value: string);


    public
      function IsValidCNPJ(pCNPJ: string): Boolean;

      property cnpj : string read GetCnpj write SetCnpj;
      property ie : string read GetIe write SetIe;

  end;

implementation

uses SysUtils, Math;


{ TPessoa }

function TPessoa.GetEndereco: string;
begin
  Result := FEndereco;
end;

function TPessoa.GetNome: string;
begin
  Result := FNome;
end;

procedure TPessoa.gravar(aNome, aEndereco: String);
begin
  FNome := aNome;
  FEndereco := aEndereco;
end;



procedure TPessoa.SetEndereco(const Value: string);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;



{ TPessoaFisica }

function TPessoaFisica.GetCPF: string;
begin
  Result := FCPF;
end;

function TPessoaFisica.Getidade: byte;
begin
  Result := FIdade;
end;

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

  { Conferindo se todos dígitos são iguais }
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
    // Nota: Calcula o primeiro dígito de verificação.
    v[0] := 10 * cpf[0] + 9 * cpf[1] + 8 * cpf[2];
    v[0] := v[0] + 7 * cpf[3] + 6 * cpf[4] + 5 * cpf[5];
    v[0] := v[0] + 4 * cpf[6] + 3 * cpf[7] + 2 * cpf[8];
    v[0] := 11 - v[0] mod 11;
     v[0] := IfThen(v[0] >= 10, 0, v[0]);
    // Nota: Calcula o segundo dígito de verificação.
    v[1] := 11 * cpf[0] + 10 * cpf[1] + 9 * cpf[2];
    v[1] := v[1] + 8 * cpf[3] + 7 * cpf[4] + 6 * cpf[5];
    v[1] := v[1] + 5 * cpf[6] + 4 * cpf[7] + 3 * cpf[8];
    v[1] := v[1] + 2 * v[0];
    v[1] := 11 - v[1] mod 11;
    v[1] := IfThen(v[1] >= 10, 0, v[1]);
    // Nota: Verdadeiro se os dígitos de verificação são os esperados.
    Result := ((v[0] = cpf[9]) and (v[1] = cpf[10]));
  except
    on E: Exception do
      Result := False;
  end;
end;

procedure TPessoaFisica.SetCPF(const Value: string);
begin
   FCPF := Value;
end;

procedure TPessoaFisica.SetIdade(const Value: byte);
begin
  FIdade := Value;
end;

{ TPessoaJuridica }

function TPessoaJuridica.GetCnpj: string;
begin
  Result := FCNPJ;
end;

function TPessoaJuridica.GetIe: string;
begin
  Result := FIE;
end;

function TPessoaJuridica.IsValidCNPJ(pCNPJ: string): Boolean;
var
  v: array[1..2] of Word;
  cnpj: array[1..14] of Byte;
  I: Byte;
begin
  Result := False;

  { Verificando se tem 11 caracteres }
  if Length(pCNPJ) <> 14 then
  begin
    Exit;
  end;

  { Conferindo se todos dígitos são iguais }
  if pCNPJ = StringOfChar('0', 14) then
    Exit;

  if pCNPJ = StringOfChar('1', 14) then
    Exit;

  if pCNPJ = StringOfChar('2', 14) then
    Exit;

  if pCNPJ = StringOfChar('3', 14) then
    Exit;

  if pCNPJ = StringOfChar('4', 14) then
    Exit;

  if pCNPJ = StringOfChar('5', 14) then
    Exit;

  if pCNPJ = StringOfChar('6', 14) then
    Exit;

  if pCNPJ = StringOfChar('7', 14) then
    Exit;

  if pCNPJ = StringOfChar('8', 14) then
    Exit;

  if pCNPJ = StringOfChar('9', 14) then
    Exit;

  try
    for I := 1 to 14 do
      cnpj[i] := StrToInt(pCNPJ[i]);

    //Nota: Calcula o primeiro dígito de verificação.
    v[1] := 5*cnpj[1] + 4*cnpj[2]  + 3*cnpj[3]  + 2*cnpj[4];
    v[1] := v[1] + 9*cnpj[5] + 8*cnpj[6]  + 7*cnpj[7]  + 6*cnpj[8];
    v[1] := v[1] + 5*cnpj[9] + 4*cnpj[10] + 3*cnpj[11] + 2*cnpj[12];
    v[1] := 11 - v[1] mod 11;
    v[1] := IfThen(v[1] >= 10, 0, v[1]);

    //Nota: Calcula o segundo dígito de verificação.
    v[2] := 6*cnpj[1] + 5*cnpj[2]  + 4*cnpj[3]  + 3*cnpj[4];
    v[2] := v[2] + 2*cnpj[5] + 9*cnpj[6]  + 8*cnpj[7]  + 7*cnpj[8];
    v[2] := v[2] + 6*cnpj[9] + 5*cnpj[10] + 4*cnpj[11] + 3*cnpj[12];
    v[2] := v[2] + 2*v[1];
    v[2] := 11 - v[2] mod 11;
    v[2] := IfThen(v[2] >= 10, 0, v[2]);

    //Nota: Verdadeiro se os dígitos de verificação são os esperados.
    Result := ((v[1] = cnpj[13]) and (v[2] = cnpj[14]));
  except on E: Exception do
    Result := False;
  end;
end;

procedure TPessoaJuridica.SetCnpj(const Value: string);
begin
   FCNPJ := Value;
end;

procedure TPessoaJuridica.SetIe(const Value: string);
begin
  FIE := Value;
end;

end.
