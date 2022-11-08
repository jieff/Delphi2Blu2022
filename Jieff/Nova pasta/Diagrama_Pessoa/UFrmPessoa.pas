unit UFrmPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UPessoa;

type
  TfrmPessoa = class(TForm)
    edtCPF: TEdit;
    btnCPF: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edtCNPJ: TEdit;
    btnCNPJ: TButton;
    memo: TMemo;
    edtNome: TEdit;
    Label3: TLabel;
    edtEndereco: TEdit;
    Label4: TLabel;
    btnSalvar: TButton;
    procedure btnCPFClick(Sender: TObject);
    procedure btnCNPJClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPessoa: TfrmPessoa;

implementation

{$R *.dfm}


procedure TfrmPessoa.btnCNPJClick(Sender: TObject);
var
  xPessoaJuridica : TPessoa;
  xCNPJ : string;
begin

  xPessoaJuridica:= nil;

  try
    xPessoaJuridica:= TPessoaJuridica.Create;
    TPessoajuridica(xPessoaJuridica).cnpj := edtCNPJ.Text;

    if ( TPessoaJuridica(xPessoaJuridica).IsValidCNPJ(TPessoaJuridica(xPessoaJuridica).cnpj)) then
    memo.Lines.Add('O CNPJ: ' + TPessoaJuridica(xPessoaJuridica).cnpj + ' é válido.')
    else
    memo.Lines.Add('O CNPJ: ' + TPessoaJuridica(xPessoaJuridica).cnpj + ' não é válido.');


  finally
    FreeAndNil(xPessoaJuridica);
  end;

end;

procedure TfrmPessoa.btnCPFClick(Sender: TObject);
var
  xPessoaFisica: TPessoa;
  xCPF: string;
begin
  xPessoaFisica:= nil;

   try
     xPessoaFisica:= TPessoaFisica.Create;
     TPessoaFisica(xPessoaFisica).cpf := edtCPF.Text;

   if ( TPessoaFisica(xPessoaFisica).IsValidCPF(TPessoaFisica(xPessoaFisica).cpf)) then
    memo.Lines.Add('O CPF: ' + TPessoaFisica(xPessoaFisica).cpf +  ' é válido.')
   else
    memo.Lines.Add('O CPF: ' + TPessoaFisica(xPessoaFisica).cpf + ' não é válido.');

   finally
     freeandnil(xPessoaFisica);
   end;


end;

procedure TfrmPessoa.btnSalvarClick(Sender: TObject);
var
   xPessoa : TPessoa;
begin
  xPessoa := nil;

  try
    xPessoa:= TPessoa.Create;
    xPessoa.nome := edtNome.Text;
    xPessoa.endereco := edtEndereco.Text;

    //xPessoa.gravar(xPessoa.nome, xPessoa.endereco);

    memo.Lines.Add('Nome: ' + xPessoa.nome);
    memo.Lines.Add('Endereço: ' + xPessoa.Endereco);
    memo.Lines.Add('********************************');

  finally
    freeandnil(xPessoa);
  end;

end;

end.
