program ContaCorrente;

uses
  Vcl.Forms,
  UfrmContaCorrente in '..\..\Embarcadero\Studio\Projects\UfrmContaCorrente.pas' {frmConta},
  UConta in '..\..\Embarcadero\Studio\Projects\UConta.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmConta, frmConta);
  Application.Run;
end.
