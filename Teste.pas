unit Teste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    conexao: TFDConnection;
    qryTarefa: TFDQuery;
    dsTarefa: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ScrollBox1: TScrollBox;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Shape1: TShape;
    edtPesquisa: TEdit;
    Button1: TButton;
    edtCodigo: TDBEdit;
    edtData: TDBEdit;
    edtTarefa: TDBEdit;
    qryStatus: TFDQuery;
    dsStatus: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    qryTarefaCadastro: TFDQuery;
    dsTarefaCadastro: TDataSource;
    qryUpdTarefaCadastro: TFDQuery;
    updTarefaCadastro: TFDUpdateSQL;
    edtStatus: TDBLookupComboBox;
    edtDescricao: TDBEdit;
    Panel4: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    qryTarefaCódigo: TIntegerField;
    qryTarefaTabela: TStringField;
    qryTarefacd_status: TIntegerField;
    qryTarefaDescrição: TStringField;
    qryTarefaData: TDateField;
    qryTarefaCadastroCódigo: TIntegerField;
    qryTarefaCadastroTabela: TStringField;
    qryTarefaCadastrocd_status: TIntegerField;
    qryTarefaCadastroDescrição: TStringField;
    qryTarefaCadastroData: TDateField;
    qryStatuscd_status: TIntegerField;
    qryStatusnm_status: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure qryTarefaCadastroAfterCancel(DataSet: TDataSet);
    procedure qryTarefaCadastroNewRecord(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirDataSet;
  public
    { Public declarations }
    cd_tarefa : integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AbrirDataSet;
begin
  with qryTarefa do
  begin
    close;
    ParamByName('nm_tarefa').AsString  := edtPesquisa.Text;
    open;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AbrirDataSet;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  qryTarefaCadastro.Insert;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  qryTarefaCadastro.Delete;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  qryTarefaCadastro.Edit;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  qryTarefaCadastro.ApplyUpdates(0);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  qryTarefaCadastro.CancelUpdates;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  qryTarefaCadastro.Open;
  qryTarefa.open;
  qryStatus.Open;
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
 // with qryTarefaCadastro do
//  begin
  //  close;
  //  ParamByName('cd_tarefa').AsInteger := 0;
  //end;
end;

procedure TForm1.qryTarefaCadastroAfterCancel(DataSet: TDataSet);
begin
  qryTarefaCadastro.CancelUpdates;
end;

procedure TForm1.qryTarefaCadastroNewRecord(DataSet: TDataSet);
begin
   qryTarefaCadastro.FieldByName('cd_tarefa').AsInteger  := qryUpdTarefaCadastro.FieldByName('cd_tarefa').AsInteger;
   qryTarefaCadastro.FieldByName('dt_tarefa').AsDateTime := Date;
end;

end.

