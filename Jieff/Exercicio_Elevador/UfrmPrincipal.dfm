object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Elevador'
  ClientHeight = 369
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblAndar: TLabel
    Left = 412
    Top = 161
    Width = 9
    Height = 16
    Caption = '#'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 332
    Top = 161
    Width = 49
    Height = 16
    Caption = 'Andar :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPessoas: TLabel
    Left = 412
    Top = 124
    Width = 9
    Height = 16
    Caption = '#'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 332
    Top = 124
    Width = 62
    Height = 16
    Caption = 'Pessoas :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 221
    Top = 8
    Width = 248
    Height = 42
    Alignment = taCenter
    Caption = 'ELEVADOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cmAndares: TComboBox
    Left = 276
    Top = 81
    Width = 105
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'T'#233'rreo'
    Items.Strings = (
      'T'#233'rreo')
  end
  object btnSelecionar: TButton
    Left = 387
    Top = 199
    Width = 105
    Height = 38
    Caption = 'Seleciona #'
    TabOrder = 1
    OnClick = btnSelecionarClick
  end
  object btnDescer: TButton
    Left = 143
    Top = 179
    Width = 105
    Height = 78
    Caption = 'Desce #'
    TabOrder = 2
    OnClick = btnDescerClick
  end
  object btnEntrar: TButton
    Left = 32
    Top = 77
    Width = 216
    Height = 76
    Caption = 'Entra  #'
    TabOrder = 3
    OnClick = btnEntrarClick
  end
  object btnCriarElevador: TButton
    Left = 387
    Top = 74
    Width = 105
    Height = 36
    Caption = 'Cria #'
    TabOrder = 4
    OnClick = btnCriarElevadorClick
  end
  object btnSair: TButton
    Left = 32
    Top = 278
    Width = 216
    Height = 77
    Caption = 'Sai #'
    TabOrder = 5
    OnClick = btnSairClick
  end
  object btnSobe: TButton
    Left = 32
    Top = 179
    Width = 105
    Height = 78
    Caption = 'Sobe #'
    TabOrder = 6
    OnClick = btnSobeClick
  end
end
