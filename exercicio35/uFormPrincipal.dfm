object frmConsumo: TfrmConsumo
  Left = 0
  Top = 0
  Caption = 'CALCULA CONSUMO KW/h'
  ClientHeight = 417
  ClientWidth = 504
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
    Left = 144
    Top = 53
    Width = 127
    Height = 13
    Caption = 'QUANTIDADE DE  HORAS:'
  end
  object lblResultado: TLabel
    Left = 200
    Top = 352
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object rgConsumo: TRadioGroup
    Left = 144
    Top = 128
    Width = 233
    Height = 129
    Caption = 'Tipo de Cliente valor do KW/h:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Resid'#234'ncia R$ 0,60'
      'Com'#233'rcio R$ 0,48'
      'Industria R$ 1,29')
    ParentFont = False
    TabOrder = 0
  end
  object btbConsumo: TButton
    Left = 144
    Top = 287
    Width = 233
    Height = 25
    Caption = 'CONSUMO'
    TabOrder = 1
    OnClick = btbConsumoClick
  end
  object edtHoras: TEdit
    Left = 144
    Top = 72
    Width = 233
    Height = 21
    TabOrder = 2
  end
end
