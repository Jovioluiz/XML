object frmGerarXML: TfrmGerarXML
  Left = 0
  Top = 0
  Caption = 'frmGerarXML'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnEditarXML: TButton
    Left = 512
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Editar XML'
    TabOrder = 0
    OnClick = btnEditarXMLClick
  end
  object btn2: TButton
    Left = 512
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Gerar XML'
    TabOrder = 1
    OnClick = btn2Click
  end
  object XMLDocument1: TXMLDocument
    Left = 24
    Top = 120
  end
end
