object frmPessoa: TfrmPessoa
  Left = 0
  Top = 0
  Caption = 'CLASSE PESSOA'
  ClientHeight = 278
  ClientWidth = 416
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
    Left = 48
    Top = 53
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 48
    Top = 120
    Width = 100
    Height = 13
    Caption = 'Data de Nascimento:'
  end
  object Label3: TLabel
    Left = 232
    Top = 120
    Width = 33
    Height = 13
    Caption = 'Altura:'
  end
  object Label4: TLabel
    Left = 131
    Top = 16
    Width = 132
    Height = 19
    Caption = 'CLASSE PESSOA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 48
    Top = 72
    Width = 305
    Height = 21
    TabOrder = 0
  end
  object btnBuscar: TButton
    Left = 48
    Top = 184
    Width = 305
    Height = 25
    Caption = 'Busca os Valores da Classe'
    TabOrder = 1
    OnClick = btnBuscarClick
  end
  object edtDataNascimento: TEdit
    Left = 48
    Top = 139
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtAltura: TEdit
    Left = 232
    Top = 139
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
