unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm4 = class(TForm)
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure btn1Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id : string;

implementation

{$R *.dfm}

procedure TForm4.bersih;
begin
 edt1.Clear;
 edt2.Clear;
 edt3.Clear;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
 btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
end;

procedure TForm4.posisiawal;
begin
  bersih;
  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := False;
  edt1.Enabled := False;
  edt2.Enabled := False;
  edt3.Enabled := False;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
if edt1.Text =''then
begin
  ShowMessage('NAMA  TIDAK BOLEH KOSONG');
  end else
if edt2.Text =''then
begin
  ShowMessage('TOTAL TIDAK BOLEH KOSONG');
  end else
if edt3.Text =''then
begin
  ShowMessage('STATUS TIDAK BOLEH KOSONG');
  end else
begin
  //simpan
end;

zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_poin values(null,"'+edt1.text+'","'+edt2.text+'","'+edt3.text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_poin');
zqry1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
id:=zqry1.Fields[0].AsString;
  edt1.Text := zqry1.FieldList[1].AsString;
  edt2.Text := zqry1.FieldList[2].AsString;
  edt3.Text := zqry1.FieldList[3].AsString;

  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
end;

end.
