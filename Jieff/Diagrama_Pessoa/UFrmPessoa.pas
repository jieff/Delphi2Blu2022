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
    procedure btnCPFClick(Sender: TObject);
  private
    { Private declarations }
    xPessoa : TPessoaFisica;
  public
    { Public declarations }
  end;

var
  frmPessoa: TfrmPessoa;

implementation

{$R *.dfm}

procedure TfrmPessoa.btnCPFClick(Sender: TObject);
var
  xPessoa: TPessoaFisica;
  xCPF: string;
begin
  xPessoa:= nil;

   try
     xPessoa:= TPessoaFisica.Create;
     xPessoa.FCPF:= edtCPF.Text;

   if ( xPessoa.IsValidCPF(xPessoa.FCPF)) then
    ShowMessage('O CPF é válido.')
   else
    ShowMessage('O CPF não é válido.');

   finally
     freeandnil(xPessoa);
   end;


end;

end.
