unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    memo1: TMemo;
    btnCarregar: TButton;
    XMLDocument1: TXMLDocument;
    edtUF: TEdit;
    lbllb: TLabel;
    edtNatOp: TEdit;
    lbl1: TLabel;
    btnGerarXml: TButton;
    procedure btnCarregarClick(Sender: TObject);
    procedure btnGerarXmlClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uGerarXML;

{$R *.dfm}

procedure TForm1.btnCarregarClick(Sender: TObject);
var
  nodeInfNfe: IXMLNode;
  i: Integer;
  nodeIde, nodeDet: IXMLNode;
begin
  XMLDocument1.LoadFromFile('C:\Users\jovio\Documents\xml\nfe.xml');
  nodeInfNfe := XMLDocument1.DocumentElement.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe');
  //memo1.Lines.Add(nodeInfNfe.ChildNodes.FindNode('ide').ChildValues['cUF']);
  nodeIde := nodeInfNfe.ChildNodes.FindNode('ide');

  //lista todos os filhos da tag infNFe
  for i := 0 to nodeInfNfe.ChildNodes.Count - 1 do
    memo1.Lines.Add(nodeInfNfe.ChildNodes[i].NodeName);

  //lista os filhos da tag ide
  for i := 0 to nodeIde.ChildNodes.Count - 1 do
    memo1.Lines.Add(nodeIde.ChildNodes[i].NodeName + '=' + nodeIde.ChildNodes[i].Text);

  //lista os produtos
  //nodeInfNfe.ChildNodes.Count - conta quantos filhos possui o nó infNFe
  for i := 0 to nodeInfNfe.ChildNodes.Count - 1 do
  begin
    if nodeInfNfe.ChildNodes[i].NodeName = 'det' then
    begin
      nodeDet := nodeInfNfe.ChildNodes[i];
      memo1.Lines.Add(nodeDet.Attributes['nItem'] + '-' + nodeDet.ChildNodes.FindNode('prod').ChildValues['xProd']);
    end;

  end;
  edtNatOp.Text := nodeIde.ChildValues['natOp'];
  edtUF.Text := nodeIde.ChildValues['cUF'];
end;

procedure TForm1.btnGerarXmlClick(Sender: TObject);
var
  geraXml: TfrmGerarXML;
begin
  geraXml := TfrmGerarXML.Create(Self);
  geraXml.ShowModal;
end;

end.
