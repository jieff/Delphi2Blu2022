unit UBomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls, UBombaCombustivel, VcL.Dialogs;

type
  TfrmBombaCombustivel = class(TForm)
    btnValor: TButton;
    btnLitro: TButton;
    btnAlterarValor: TButton;
    btnAlterarCombustivel: TButton;
    btnAlterarQunatidade: TButton;
    memo: TMemo;
    rgTipo: TRadioGroup;
    edtValor: TEdit;
    edtLitros: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnValorClick(Sender: TObject);
    procedure btnLitroClick(Sender: TObject);
    procedure btnAlterarValorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBombaCombustivel: TfrmBombaCombustivel;

implementation


{$R *.dfm}

procedure TfrmBombaCombustivel.btnAlterarValorClick(Sender: TObject);
var
  xValor : TBombaCombustivel;
  xTipo : integer;
  xNome : string;
  xResult : double;
begin

  xValor := nil;

  try

    xValor := TBombaCombustivel.Create;

    xValor.valorCombustivel := StrToFloat(edtValor.Text);

    xValor.alterarValor(xValor.valorCombustivel);
    xResult := xValor.valorCombustivel;

     xTipo := rgTipo.ItemIndex;

     if xTipo = 0 then
      xNome := 'Gasolina';
     if xTipo = 1 then
      xNome := 'Etanol';
     if xTipo = 2 then
      xNome := 'Diesel';

  memo.Lines.Add(' ');
  memo.Lines.Add('Tipo de Combustível: ' + xNome);
  memo.Lines.Add('Valor Alterado: ' + FloatToStr(xResult) );
  memo.Lines.Add('************************');

  finally
    FreeAndNil(xValor);
  end;

end;

procedure TfrmBombaCombustivel.btnLitroClick(Sender: TObject);
var
  xValor : TBombaCombustivel;

begin

  xValor := nil;

  try

  xValor := TBombaCombustivel.Create;

  xValor.valorCombustivel := StrToFloat(edtValor.Text);
  xValor.quantidade := StrToFloat(edtLitros.Text);

  xValor.abastecerPorLitro(xValor.quantidade);



  finally
    FreeAndNil(xValor);
  end;

end;

procedure TfrmBombaCombustivel.btnValorClick(Sender: TObject);
var
  xValor : TBombaCombustivel;
  xTipo, xResult : double;
  xNome : string;
begin
  xValor := nil;

  try

    xValor := TBombaCombustivel.Create;

    xValor.valorCombustivel := StrToFloat(edtValor.Text);

    xValor.quantidade := StrToFloat(edtLitros.Text);

    xValor.abastecerPorValor(xValor.valorCombustivel);

    xResult := xValor.valorCombustivel;

     xTipo := rgTipo.ItemIndex;

     if xTipo = 0 then
      xNome := 'Gasolina';
     if xTipo = 1 then
      xNome := 'Etanol';
     if xTipo = 2 then
      xNome := 'Diesel';

    memo.Lines.Add(' ');
    memo.Lines.Add('Tipo de Combustível: ' + xNome);
    memo.Lines.Add('Cálculo realizado por valor: ' + FloatToStr(xResult) );
    memo.Lines.Add('************************');
  finally
     FreeAndNil(xValor);
  end;
end;

end.
