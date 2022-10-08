unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPessoa = class(TForm)
    edtNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnBuscar: TButton;
    edtDataNascimento: TEdit;
    edtAltura: TEdit;
    Label4: TLabel;
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPessoa: TfrmPessoa;

implementation

uses
  UPessoa;

{$R *.dfm}

procedure TfrmPessoa.btnBuscarClick(Sender: TObject);
var
  xPessoa : TPessoa;
begin
  xPessoa := nil;
end;
  try

  finally

  end;
end.
