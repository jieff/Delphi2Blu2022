unit UAbastracao;

interface

type

  TCarro = class

  private

    FAltura : double;
    FCor : string;
    FPeso: double;
    FTamanho: double;

    function getAltura: double;
    function getCor: string;
    function getPeso: double;
    function getTamanho: double;

    procedure setAltura(const Value: double);
    procedure setCor(const Value: string);
    procedure setPeso(const Value: double);
    procedure setTamanho(const Value: double);


  public

  procedure acelerar;
  procedure parar;
  procedure desligar;
  procedure ligar;

  property tamanho : double read getTamanho write setTamanho;
  property cor :  string read getCor write setCor;
  property peso : double read getPeso write setPeso;
  property altura : double read getAltura write setAltura;

  end;



implementation

uses
  Vcl.Dialogs;

{ TCarro }

procedure TCarro.acelerar;
begin
  showmessage('Acelerar');
end;

procedure TCarro.desligar;
begin
  showmessage('GET - Desligar');
end;

function TCarro.getAltura: double;
begin
   showMessage('GET - Altura');
end;

function TCarro.getCor: string;
begin
  Showmessage('GET - Cor');
end;

function TCarro.getPeso: double;
begin
   Showmessage('GET - Peso');
end;

function TCarro.getTamanho: double;
begin
     Showmessage('GET - Tamanho');
end;

procedure TCarro.ligar;
begin

end;

procedure TCarro.parar;
begin

end;

procedure TCarro.setAltura(const Value: double);
begin
  FAltura := Value;
end;

procedure TCarro.setCor(const Value: string);
begin
   FCor := Value;
end;

procedure TCarro.setPeso(const Value: double);
begin
  FPeso := Value;
end;

procedure TCarro.setTamanho(const Value: double);
begin
   FTamanho := Value;
end;

end.
