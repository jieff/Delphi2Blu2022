program Bomba;

uses
  Vcl.Forms,
  UBomba in '..\UBomba.pas' {frmBombaCombustivel},
  UBombaCombustivel in 'UBombaCombustivel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmBombaCombustivel, frmBombaCombustivel);
  Application.Run;
end.
