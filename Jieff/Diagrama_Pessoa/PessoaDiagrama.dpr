program PessoaDiagrama;

uses
  Vcl.Forms,
  UFrmPessoa in 'UFrmPessoa.pas' {frmPessoa},
  UPessoa in 'UPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPessoa, frmPessoa);
  Application.Run;
end.
