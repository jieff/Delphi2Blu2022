unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UElevador;

type
  TfrmPrincipal = class(TForm)
    lblAndar: TLabel;
    Label1: TLabel;
    cmAndares: TComboBox;
    btnSelecionar: TButton;
    lblPessoas: TLabel;
    Label3: TLabel;
    btnDescer: TButton;
    btnEntrar: TButton;
    btnCriarElevador: TButton;
    Label2: TLabel;
    btnSair: TButton;
    btnSobe: TButton;
    procedure btnCriarElevadorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnSobeClick(Sender: TObject);
    procedure btnDescerClick(Sender: TObject);
  private
    { Private declarations }
    FElevador : TElevador;
    procedure CriarElevador;
    procedure PopularAndares;
    procedure Subir;
    procedure Descer;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnCriarElevadorClick(Sender: TObject);
begin
  Self.CriarElevador;
  Self.PopularAndares;
  ShowMessage('Elevador Instalado!!!');
end;

procedure TfrmPrincipal.btnDescerClick(Sender: TObject);
begin
  cmAndares.ItemIndex := StrToInt(inputBox('Elevador em descida', 'Informe o andar', ''));

  if cmAndares.ItemIndex < FElevador.Andar_Atual then
    self.Descer
  else
    ShowMessage('Selecione uma andar diferente');

end;

procedure TfrmPrincipal.btnEntrarClick(Sender: TObject);
var
  xPessoas : integer;
begin
  if (FElevador = nil ) then
    raise Exception.Create('Favor criar o elevador');
  xPessoas := StrToInt(inputBox('Quantidade de Pessoas', 'Informe a quantidade de entrantes', ''));
  lblPessoas.Caption := IntToStr(xPessoas);
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
var
  xPessoas, xValor : integer;
begin
  xPessoas := StrToInt(inputBox('Quantidade de Pessoas', 'Informe a quantidade de saintes', ''));
  xValor := StrToInt(lblPessoas.Caption);
  if xPessoas > xValor then
    ShowMessage('Valor informado maior que a quantidade de pessoas no elevador')
  else
    lblPessoas.Caption := IntToStr(xValor - xPessoas);
end;

procedure TfrmPrincipal.btnSelecionarClick(Sender: TObject);
begin
  if (cmAndares.ItemIndex > FElevador.Andar_Atual) then
    Self.Descer
  else if (cmAndares.ItemIndex < FElevador.Andar_Atual) then
    Self.Subir
  else
    ShowMessage('Selecione um Andar diferente!');
end;

procedure TfrmPrincipal.btnSobeClick(Sender: TObject);
begin

  cmAndares.ItemIndex := StrToInt(inputBox('Elevador em Subida', 'Informe o andar', ''));

  if (cmAndares.ItemIndex > FElevador.Andar_Atual) then
    self.Subir
  else
    ShowMessage('Selecione um andar diferente');
end;

procedure TfrmPrincipal.CriarElevador;
var
  xCapacidade : Integer;
  xTotalAndares : Integer;
begin
  xCapacidade   := StrToInt(inputBox('Capacidade' ,'Informe a Capaciadade Maxima de Pessoas no Elevador', ''));
  xTotalAndares := StrToInt(inputBox('Andares' ,'Informe Quantos Andares o Pr�dio Possui', ''));
  FElevador := TElevador.Create(xCapacidade, xTotalAndares);
end;

procedure TfrmPrincipal.Descer;
begin
  FElevador.Descer(cmAndares.ItemIndex);
  lblAndar.Caption := FElevador.Andar_Atual.ToString + '�';
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FElevador);
end;

procedure TfrmPrincipal.PopularAndares;
var
  I : Integer;
begin
  for I := 0 to (FElevador.Total_Andares-1) do
  begin
    cmAndares.Items.Add((I+1).ToString + '� Andar');
  end;
end;

procedure TfrmPrincipal.Subir;
begin
  FElevador.Sobe(cmAndares.ItemIndex);
  lblAndar.Caption := FElevador.Andar_Atual.ToString + '�';
end;

end.
