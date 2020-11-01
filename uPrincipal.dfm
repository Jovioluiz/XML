object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 404
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbllb: TLabel
    Left = 40
    Top = 352
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object lbl1: TLabel
    Left = 40
    Top = 325
    Width = 44
    Height = 13
    Caption = 'Natureza'
  end
  object memo1: TMemo
    Left = 24
    Top = 32
    Width = 521
    Height = 259
    Lines.Strings = (
      'memo1')
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object btnCarregar: TButton
    Left = 548
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 1
    OnClick = btnCarregarClick
  end
  object edtUF: TEdit
    Left = 104
    Top = 349
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtNatOp: TEdit
    Left = 104
    Top = 322
    Width = 281
    Height = 21
    TabOrder = 3
  end
  object btnGerarXml: TButton
    Left = 528
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Gerar Xml'
    TabOrder = 4
    OnClick = btnGerarXmlClick
  end
  object XMLDocument1: TXMLDocument
    Left = 328
    Top = 136
  end
end
