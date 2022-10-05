object frmConsumo: TfrmConsumo
  Left = 0
  Top = 0
  Caption = 'CALCULA CONSUMO KW/h'
  ClientHeight = 295
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
    Left = 263
    Top = 77
    Width = 127
    Height = 13
    Caption = 'QUANTIDADE DE  HORAS:'
  end
  object lblResultado: TLabel
    Left = 56
    Top = 248
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object Label2: TLabel
    Left = 263
    Top = 107
    Width = 108
    Height = 13
    Caption = 'INFORME DESCONTO:'
  end
  object Label3: TLabel
    Left = 135
    Top = 29
    Width = 221
    Height = 18
    Caption = 'CALCULAR CONSUMO DE LUZ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rgConsumo: TRadioGroup
    Left = 8
    Top = 72
    Width = 233
    Height = 129
    Caption = 'Tipo de Cliente valor do KW/h:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Resid'#234'ncia R$ 0,80'
      'Com'#233'rcio R$ 0,68'
      'Industria R$ 1,49'
      'Fazenda R$ 3,18')
    ParentFont = False
    TabOrder = 0
  end
  object btbConsumo: TButton
    Left = 263
    Top = 176
    Width = 233
    Height = 25
    Caption = 'CONSUMO'
    TabOrder = 1
    OnClick = btbConsumoClick
  end
  object edtHoras: TEdit
    Left = 396
    Top = 74
    Width = 62
    Height = 21
    TabOrder = 2
  end
  object edtDesconto: TEdit
    Left = 396
    Top = 101
    Width = 62
    Height = 21
    TabOrder = 3
  end
end
