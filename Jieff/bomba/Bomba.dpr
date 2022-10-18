program Bomba;

uses
  Vcl.Forms,
  UBomba in '..\UBomba.pas' {Form1},
  UBombaCombustivel in 'UBombaCombustivel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
