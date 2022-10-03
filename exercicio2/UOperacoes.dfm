object frmOperacoes: TfrmOperacoes
  Left = 0
  Top = 0
  Caption = 'Opera'#231#245'es Aritim'#233'ticas'
  ClientHeight = 281
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
  object lblSoma: TLabel
    Left = 248
    Top = 184
    Width = 26
    Height = 13
    Caption = 'Soma'
  end
  object lblDivisao: TLabel
    Left = 248
    Top = 203
    Width = 34
    Height = 13
    Caption = 'Divis'#227'o'
  end
  object lblMultiplicacao: TLabel
    Left = 248
    Top = 241
    Width = 60
    Height = 13
    Caption = 'Multiplica'#231#227'o'
  end
  object lblSubtracao: TLabel
    Left = 248
    Top = 222
    Width = 49
    Height = 13
    Caption = 'Subtra'#231#227'o'
  end
  object Label1: TLabel
    Left = 72
    Top = 24
    Width = 242
    Height = 25
    Caption = 'Opera'#231#245'es Aritim'#233'ticas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 192
    Top = 184
    Width = 38
    Height = 13
    Caption = 'Soma :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 183
    Top = 203
    Width = 47
    Height = 13
    Caption = 'Divis'#227'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 166
    Top = 222
    Width = 64
    Height = 13
    Caption = 'Subtra'#231#227'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 150
    Top = 241
    Width = 80
    Height = 13
    Caption = 'Multiplica'#231#227'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 56
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 56
    Top = 125
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnOperacoes: TButton
    Left = 240
    Top = 85
    Width = 97
    Height = 61
    Caption = 'Opera'#231#245'es '
    TabOrder = 2
    OnClick = btnOperacoesClick
  end
end
