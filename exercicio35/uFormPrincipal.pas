unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmConsumo = class(TForm)
    rgConsumo: TRadioGroup;
    btbConsumo: TButton;
    edtHoras: TEdit;
    Label1: TLabel;
    lblResultado: TLabel;
    procedure btbConsumoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsumo: TfrmConsumo;

implementation

{$R *.dfm}

procedure TfrmConsumo.btbConsumoClick(Sender: TObject);
var
  xHoras, xResult : Currency;
begin
  xHoras:= StrToInt(edtHoras.Text);

   if edtHoras.Text = '' then
   ShowMessage('Favor Digite uma Hora v�lida!!');
   if xHoras = 0 then
   ShowMessage('Favor Digite uma Hora v�lida!!');

   if rgConsumo.ItemIndex = 0 then
   begin
    xResult:= xHoras * 0.60;
    ShowMessage('Consumo Resid�ncia: R$ ' + CurrToStr(xResult));
   end;

   if rgConsumo.ItemIndex = 1 then
   begin
    xResult:= xHoras * 0.48;
    ShowMessage('Consumo Com�rcio : R$' + CurrToStr(xResult));
   end;

     if rgConsumo.ItemIndex = 2 then
   begin
    xResult:= xHoras * 1.29;
    ShowMessage('Consumo Industria : R$ ' + CurrToStr(xResult));
   end;


end;

end.
