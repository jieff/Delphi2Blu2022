object frmBombaCombustivel: TfrmBombaCombustivel
  Left = 0
  Top = 0
  Caption = 'BOMBA DE COMBUSTIVEL'
  ClientHeight = 368
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 37
    Height = 13
    Caption = 'VALOR:'
  end
  object Label2: TLabel
    Left = 32
    Top = 70
    Width = 40
    Height = 13
    Caption = 'LITROS:'
  end
  object btnValor: TButton
    Left = 32
    Top = 128
    Width = 193
    Height = 25
    Caption = 'ABASTECER POR VALOR'
    TabOrder = 0
    OnClick = btnValorClick
  end
  object btnLitro: TButton
    Left = 32
    Top = 176
    Width = 193
    Height = 25
    Caption = 'ABASTECER POR LITRO'
    TabOrder = 1
    OnClick = btnLitroClick
  end
  object btnAlterarValor: TButton
    Left = 32
    Top = 216
    Width = 193
    Height = 25
    Caption = 'ALTERAR VALOR'
    TabOrder = 2
    OnClick = btnAlterarValorClick
  end
  object btnAlterarCombustivel: TButton
    Left = 32
    Top = 264
    Width = 193
    Height = 25
    Caption = 'ALTERAR COMBUSTIVEL'
    TabOrder = 3
    OnClick = btnAlterarCombustivelClick
  end
  object btnAlterarQunatidade: TButton
    Left = 32
    Top = 312
    Width = 193
    Height = 25
    Caption = 'ALTERAR QUANTIDADE COMBUSTIVEL'
    TabOrder = 4
    OnClick = btnAlterarQunatidadeClick
  end
  object memo: TMemo
    Left = 264
    Top = 130
    Width = 361
    Height = 207
    Lines.Strings = (
      '')
    TabOrder = 5
  end
  object rgTipo: TRadioGroup
    Left = 264
    Top = 19
    Width = 361
    Height = 105
    Caption = 'Tipo de Combustivel'
    Items.Strings = (
      'Gasolina'
      'Etanol'
      'Diesel')
    TabOrder = 6
  end
  object edtValor: TEdit
    Left = 32
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object edtLitros: TEdit
    Left = 32
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 8
  end
end
