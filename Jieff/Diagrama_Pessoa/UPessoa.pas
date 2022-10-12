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
        function validaCpf(aNum : string) : boolean;
    public


  end;

  TPessoaJuridica = class(TPessoa)
    FCNPJ: string;
    FIE: String;

    private

    public

  end;



implementation



{ TPessoa }

procedure TPessoa.gravar(aNome, aEndereco: String);
begin
  FNome := aNome;
  FEndereco := aEndereco;
end;


{ TPessoaFisica }

function TPessoaFisica.validaCpf(aNum: string): boolean;
var
  dig10, dig11: string;
  s, i, r, pesso: integer;
begin
  if((CPF = '00000000000') or (CPF = '111111111111') or
      ) then

end;

end.
