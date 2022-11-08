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
    memo: TMemo;
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
  xData: Integer;
begin
  xPessoa := nil;

  try
   xPessoa:= TPessoa.Create;

   xPessoa.nome:= edtNome.Text;
   xPessoa.dataNascimento := StrToDate(edtDataNascimento.Text);
   xPessoa.altura := StrToFloat(edtAltura.Text);

   xData := trunc((Date - xPessoa.dataNascimento) / 365.25);

   //xData:= xPessoa.idade;

   xPessoa.altura:= StrToFloat(edtAltura.Text);

   memo.Lines.add('######################');
   memo.Lines.Add('');
   memo.Lines.Add('Nome: ' + xPessoa.nome);
   memo.Lines.Add('Data de Nascimento: ' + DateToStr(xPessoa.dataNascimento));
   memo.Lines.Add('Altura: ' + FloatToStr(xPessoa.altura ));
   memo.Lines.Add('');
   memo.Lines.Add('######################');
   memo.Lines.Add('');
   memo.Lines.Add('Idade: '+ FloatToStr(xData));

  finally
     freeandnil(xPessoa);
  end;
end;

end.
