unit uGerarXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.StdCtrls,
  Xml.XMLDoc;

type
  TfrmGerarXML = class(TForm)
    XMLDocument1: TXMLDocument;
    btnEditarXML: TButton;
    btn2: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btnEditarXMLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerarXML: TfrmGerarXML;

implementation

{$R *.dfm}

procedure TfrmGerarXML.btnEditarXMLClick(Sender: TObject);
var
  venda, itens, item: IXMLNode;
begin
  XMLDocument1.LoadFromFile('C:\Users\jovio\Documents\xml\xmlexemplo.xml');
  venda := XMLDocument1.ChildNodes.FindNode('venda');
  itens := venda.ChildNodes.FindNode('itens');

  for var i := 0 to itens.ChildNodes.Count-1 do
    if itens.ChildNodes[i].Attributes['numero'] = '1' then
    begin
      item := itens.ChildNodes[i];
      item.ChildNodes.FindNode('codigo').Text := '66666';
    end;

  XMLDocument1.SaveToFile('C:\Users\jovio\Documents\xml\xmlexemplo.xml');


end;

procedure TfrmGerarXML.btn2Click(Sender: TObject);
var
  venda, cabecalho, cliente, itens, item: IXMLNode;
begin
  XMLDocument1.Active := True;
  XMLDocument1.Version := '1.0';
  XMLDocument1.Encoding := 'UTF-8';

  venda := XMLDocument1.AddChild('venda');
  cabecalho := venda.AddChild('cabecalho');
  cabecalho.AddChild('numero').Text := '20';
  cabecalho.AddChild('data').Text := '31/10/2020';
  cliente := cabecalho.AddChild('cliente');
  cliente.AddChild('codigo').Text := '7';
  cliente.AddChild('nome').Text := 'Jóvio';
  cliente.AddChild('endereco').Text := 'Rua Teste';
  itens := venda.AddChild('itens');
  item := itens.AddChild('item');

  item.Attributes['numero'] := '1';
  item.AddChild('codigo').Text := '1234';
  item.AddChild('descricao').Text := 'celular';
  item.AddChild('valor').Text := '700.99';

  item := itens.AddChild('item');
  item.Attributes['numero'] := '2';
  item.AddChild('codigo').Text := '666';
  item.AddChild('descricao').Text := 'pc';
  item.AddChild('valor').Text := '1700.99';

  XMLDocument1.SaveToFile('C:\Users\jovio\Documents\xml\xmlexemplo.xml');
end;

end.
