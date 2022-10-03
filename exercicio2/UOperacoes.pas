unit UOperacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmOperacoes = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    btnOperacoes: TButton;
    lblSoma: TLabel;
    lblDivisao: TLabel;
    lblMultiplicacao: TLabel;
    lblSubtracao: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnOperacoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOperacoes: TfrmOperacoes;

implementation

{$R *.dfm}

procedure TfrmOperacoes.btnOperacoesClick(Sender: TObject);
var
  xSoma, xMultiplica, xDivide, xSubtrai: Integer;
  xValor1, xValor2: String;
begin
  xValor1 := edt1.Text;
  xValor2 := edt2.Text;

  xSoma:= StrToInt(xValor1) + StrToInt(xValor2);
  lblSoma.Caption:= IntToStr(xSoma);

  xMultiplica:= StrToInt(xValor1) * StrToInt(xValor2);
  lblMultiplicacao.Caption:= IntToStr(xMultiplica);

  xDivide:= StrToInt(xValor1) div StrToInt(xValor2);
  lblDivisao.Caption:= IntToStr(xDivide);

  xSubtrai:= StrToInt(xValor1) - StrToInt(xValor2);
  lblSubtracao.Caption:= IntToStr(xSubtrai);


end;

end.
