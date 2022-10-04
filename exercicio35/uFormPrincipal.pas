unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEnumCliente = (opResidencia, opComercio, opIndustria, opFazenda);
  TfrmConsumo = class(TForm)
    rgConsumo: TRadioGroup;
    btbConsumo: TButton;
    edtHoras: TEdit;
    Label1: TLabel;
    lblResultado: TLabel;
    Label2: TLabel;
    edtDesconto: TEdit;
    Label3: TLabel;
    procedure btbConsumoClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularConsumo;
  public
    { Public declarations }
  end;

var
  frmConsumo: TfrmConsumo;

implementation

{$R *.dfm}

procedure TfrmConsumo.btbConsumoClick(Sender: TObject);
begin
  self.CalcularConsumo
end;

<<<<<<< HEAD
   if edtHoras.Text = '' then
   ShowMessage('Favor Digite uma Hora válida!!');
   if xHoras = 0 then
   ShowMessage('Favor Digite uma Hora válida!!');

   if rgConsumo.ItemIndex = 0 then
   begin
    xResult:= xHoras * 0.60;
    ShowMessage('Consumo Residência: R$ ' + CurrToStr(xResult));
   end;

   if rgConsumo.ItemIndex = 1 then
   begin
    xResult:= xHoras * 0.48;
    ShowMessage('Consumo Comércio : R$' + CurrToStr(xResult));
   end;

     if rgConsumo.ItemIndex = 2 then
   begin
    xResult:= xHoras * 1.29;
    ShowMessage('Consumo Industria : R$ ' + CurrToStr(xResult));
   end;
=======
procedure TfrmConsumo.CalcularConsumo;
var
  xHoras, xDesconto, xResult : Currency;
begin
  if (TryStrToCurr(edtDesconto.Text, xDesconto)) and (TryStrToCurr(edtHoras.Text, xHoras)) then
  begin

  case TEnumCliente(rgConsumo.ItemIndex) of
    opResidencia :
    begin
       xResult:= (xHoras * 0.60)- xDesconto;
       ShowMessage('Consumo Residência: R$ ' + CurrToStr(xResult));
    end;
>>>>>>> 5db0bb57c853a587b9a03125ca6de04b865be9e4

    opComercio   :
    begin
      xResult:= (xHoras * 0.48)- xDesconto;
      ShowMessage('Consumo Comércio : R$' + CurrToStr(xResult));
    end;

<<<<<<< HEAD
=======
    opIndustria  :
    begin
      xResult:= (xHoras * 1.29)- xDesconto;
      ShowMessage('Consumo Industria : R$ ' + CurrToStr(xResult));
    end;

    opFazenda    :
    begin
      xResult:= (xHoras * 2.18)- xDesconto;
      ShowMessage('Consumo Industria : R$ ' + CurrToStr(xResult));
    end;
    else
    ShowMessage('Selecione uma opção');
  end;
  end
  else
    ShowMessage('Valor Inválido');
>>>>>>> 5db0bb57c853a587b9a03125ca6de04b865be9e4
end;

end.
