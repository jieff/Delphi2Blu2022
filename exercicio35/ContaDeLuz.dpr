program ContaDeLuz;

uses
  Vcl.Forms,
  uFormPrincipal in 'uFormPrincipal.pas' {frmConsumo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmConsumo, frmConsumo);
  Application.Run;
end.
