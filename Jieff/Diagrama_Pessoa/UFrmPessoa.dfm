object frmPessoa: TfrmPessoa
  Left = 0
  Top = 0
  Caption = 'FORMUL'#193'RIO VALIDA CPF'
  ClientHeight = 417
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 173
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label2: TLabel
    Left = 80
    Top = 277
    Width = 29
    Height = 13
    Caption = 'CNPJ:'
  end
  object Label3: TLabel
    Left = 80
    Top = 29
    Width = 33
    Height = 13
    Caption = 'NOME:'
  end
  object Label4: TLabel
    Left = 80
    Top = 77
    Width = 58
    Height = 13
    Caption = 'ENDERE'#199'O:'
  end
  object edtCPF: TEdit
    Left = 80
    Top = 192
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object btnCPF: TButton
    Left = 80
    Top = 232
    Width = 169
    Height = 25
    Caption = 'VALIDA CPF'
    TabOrder = 1
    OnClick = btnCPFClick
  end
  object edtCNPJ: TEdit
    Left = 80
    Top = 296
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object btnCNPJ: TButton
    Left = 80
    Top = 328
    Width = 169
    Height = 25
    Caption = 'VALIDA CNPJ'
    TabOrder = 3
    OnClick = btnCNPJClick
  end
  object memo: TMemo
    Left = 272
    Top = 192
    Width = 217
    Height = 161
    Lines.Strings = (
      '')
    TabOrder = 4
  end
  object edtNome: TEdit
    Left = 80
    Top = 48
    Width = 409
    Height = 21
    TabOrder = 5
  end
  object edtEndereco: TEdit
    Left = 80
    Top = 96
    Width = 409
    Height = 21
    TabOrder = 6
  end
  object btnSalvar: TButton
    Left = 272
    Top = 136
    Width = 217
    Height = 25
    Caption = 'Salvar Dados'
    TabOrder = 7
    OnClick = btnSalvarClick
  end
end
