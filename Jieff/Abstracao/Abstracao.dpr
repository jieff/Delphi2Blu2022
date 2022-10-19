program Abstracao;

uses
  Vcl.Forms,
  UFrmAbstracao in 'UFrmAbstracao.pas' {Form1},
  UAbastracao in 'UAbastracao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
