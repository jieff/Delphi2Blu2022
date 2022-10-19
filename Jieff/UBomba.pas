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
    procedure btnAlterarCombustivelClick(Sender: TObject);
    procedure btnAlterarQunatidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    xValor : TBombaCombustivel;
  public
    { Public declarations }

  end;



var
  frmBombaCombustivel: TfrmBombaCombustivel;

implementation


{$R *.dfm}


procedure TfrmBombaCombustivel.btnAlterarCombustivelClick(Sender: TObject);
var
  xResult : double;
  xTipo : integer;
  xNome : string;
begin

  try
    xValor.quantidade := StrToFloat(edtLitros.Text);

    xValor.abastecerPorLitro(xValor.quantidade);

    xResult := xValor.quantidade;

     if xTipo = 0 then
      xNome := 'Gasolina';
     if xTipo = 1 then
      xNome := 'Etanol';
     if xTipo = 2 then
      xNome := 'Diesel';

  memo.Lines.Add(' ');
  memo.Lines.Add('Tipo de Combustível: ' + xNome);
  memo.Lines.Add('Alterado valor do Combustível: ' + FloatToStr(xResult) );
  memo.Lines.Add('************************');


  finally
   // FreeAndNil(xCombustivel);
  end;

end;

procedure TfrmBombaCombustivel.btnAlterarQunatidadeClick(Sender: TObject);
var
  xResult : double;
  xTipo : integer;
  xNome : string;
begin


  try
  xValor.quantidade := StrToFloat(edtLitros.Text);

  xValor.alterarQuantidadeCombustivel(xValor.quantidade);

  xResult := xValor.quantidade;

   xTipo := rgTipo.ItemIndex;

     if xTipo = 0 then
      xNome := 'Gasolina';
     if xTipo = 1 then
      xNome := 'Etanol';
     if xTipo = 2 then
      xNome := 'Diesel';

  memo.Lines.Add(' ');
  memo.Lines.Add('Tipo de Combustível: ' + xNome);
  memo.Lines.Add('Valor em Litros: ' + FloatToStr(xResult) );
  memo.Lines.Add('************************');

  finally
    // FreeAndNil(xQtdCombustivel);
  end;
end;

procedure TfrmBombaCombustivel.btnAlterarValorClick(Sender: TObject);
var
  xTipo : integer;
  xNome : string;
  xResult : double;
begin


  try
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
  memo.Lines.Add('Valor em Litros: ' + FloatToStr(xResult) );
  memo.Lines.Add('************************');

  finally
   // FreeAndNil(xValor);
  end;

end;





{ ok }
procedure TfrmBombaCombustivel.btnLitroClick(Sender: TObject);
var
  xResult : double;
  xNome : string;
  xTipo : integer;

begin


  try
  xValor.valorCombustivel := StrToFloat(edtValor.Text);
  xValor.quantidade := StrToFloat(edtLitros.Text);

  xValor.abastecerPorLitro(xValor.quantidade);

    xResult := xValor.quantidade;

     xTipo := rgTipo.ItemIndex;

     if xTipo = 0 then
      xNome := 'Gasolina';
     if xTipo = 1 then
      xNome := 'Etanol';
     if xTipo = 2 then
      xNome := 'Diesel';

    memo.Lines.Add(' ');
    memo.Lines.Add('Tipo de Combustível: ' + xNome);
    memo.Lines.Add('Total em Litros: ' + FloatToStr(xResult) );
    memo.Lines.Add('************************');



  finally
    //FreeAndNil(xValor);
  end;

end;

procedure TfrmBombaCombustivel.btnValorClick(Sender: TObject);
var
  xTipo, xResult : double;
  xNome : string;
begin
  try
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
    memo.Lines.Add('Total em Litros: ' + FloatToStr(xResult) );
    //memo.Lines.Add('Total em R$: ' + (StrToFloat(edtValor.Text));
    memo.Lines.Add('************************');
  finally
     //FreeAndNil(xValor);
  end;
end;

procedure TfrmBombaCombustivel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(xValor);
end;

procedure TfrmBombaCombustivel.FormCreate(Sender: TObject);
begin
  xValor := TBombaCombustivel.Create;
end;

end.
