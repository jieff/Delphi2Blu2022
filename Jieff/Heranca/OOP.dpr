program OOP;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  UAnimal in 'UAnimal.pas',
  UAnimais in 'UAnimais.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
