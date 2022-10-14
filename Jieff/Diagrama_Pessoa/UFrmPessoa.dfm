object frmPessoa: TfrmPessoa
  Left = 0
  Top = 0
  Caption = 'FORMUL'#193'RIO VALIDA CPF'
  ClientHeight = 219
  ClientWidth = 418
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
    Top = 53
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object edtCPF: TEdit
    Left = 80
    Top = 72
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object btnCPF: TButton
    Left = 80
    Top = 112
    Width = 201
    Height = 25
    Caption = 'VALIDA CPF'
    TabOrder = 1
    OnClick = btnCPFClick
  end
end
