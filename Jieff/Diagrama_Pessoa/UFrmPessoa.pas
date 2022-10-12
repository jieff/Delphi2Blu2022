unit UFrmPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UPessoa;

type
  TForm1 = class(TForm)
    edtCPF: TEdit;
    btnCPF: TButton;
    Label1: TLabel;
  private
    { Private declarations }
    Pessoa : TPessoa;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
