program Aluno;

uses
  Vcl.Forms,
  UFrmAluno in 'UFrmAluno.pas' {Form1},
  UAluno in 'UAluno.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
