unit UPrincipal;

interface

uses
  UAnimal,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TEnumAnimal = (stCachorro, stGato, stPassaro);
    TForm1 = class(TForm)
    cmbAnimal: TComboBox;
    btnSom: TButton;
    Label1: TLabel;
    procedure btnSomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSomClick(Sender: TObject);
var
  xAnimal: TAnimal;
begin
  xAnimal := nil;

  try
    case TEnumAnimal(cmbAnimal.ItemIndex) of
      stCachorro:
        xAnimal := TCachorro.Create;
      stGato:
        xAnimal := TGato.Create;
      stPassaro :
        xAnimal := TPassaro.Create;
    end;

    ShowMessage(xAnimal.RetornarSom);
    ShowMessage('Tenho ' + IntToStr(xAnimal.Patas) + ' patas.');
  finally

  end;

end;

end.
