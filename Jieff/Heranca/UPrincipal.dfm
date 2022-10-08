object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'OOP'
  ClientHeight = 191
  ClientWidth = 445
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
    Left = 112
    Top = 37
    Width = 35
    Height = 13
    Caption = 'Animal:'
  end
  object cmbAnimal: TComboBox
    Left = 112
    Top = 56
    Width = 201
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Cachorro'
      'Gato'
      'P'#225'ssaro')
  end
  object btnSom: TButton
    Left = 112
    Top = 96
    Width = 201
    Height = 25
    Caption = 'Que som eu fa'#231'o?'
    TabOrder = 1
    OnClick = btnSomClick
  end
end
