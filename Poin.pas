unit Poin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TFormPoin = class(TForm)
    lblnamapoin: TLabel;
    lblbobot: TLabel;
    lbljenis: TLabel;
    lblstatus: TLabel;
    Edtnamapoin: TEdit;
    Edtbobot: TEdit;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bhapus: TButton;
    bbatal: TButton;
    dbgrd1: TDBGrid;
    cbbjenis: TComboBox;
    cbbstatus: TComboBox;
    b1: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure edtbersih;
    procedure edtenable;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure bbaruClick(Sender: TObject);
    procedure bbatalClick(Sender: TObject);
    procedure bsimpanClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure beditClick(Sender: TObject);
    procedure bhapusClick(Sender: TObject);
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPoin: TFormPoin;
  id : string;

implementation

{$R *.dfm}

procedure TFormPoin.edtbersih;
begin
Edtnamapoin.Clear;
Edtbobot.Clear;

end;

procedure TFormPoin.edtenable;
begin
Edtnamapoin.Enabled:= True;
Edtbobot.Enabled:= True;
cbbjenis.Enabled:= True;
cbbstatus.Enabled:= True;

end;

procedure TFormPoin.posisiawal;
begin
edtbersih;
Edtnamapoin.Enabled:= False;
Edtbobot.Enabled:= False;
cbbjenis.Enabled:= False;
cbbstatus.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;

end;

procedure TFormPoin.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormPoin.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;

end;

procedure TFormPoin.bbatalClick(Sender: TObject);
begin
posisiawal;
end;

procedure TFormPoin.bsimpanClick(Sender: TObject);
begin
if (Edtnamapoin.Text='') or (Edtbobot.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (ZQuery1.Locate('nama_poin', Edtnamapoin.Text,[])) then
  begin
    ShowMessage('DATA Poin SUDAH DIGUNAKAN!');
    posisiawal;
  end else
  begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into poin values (null,"'+Edtnamapoin.Text+'","'+Edtbobot.Text+'","'+cbbjenis.Text+'","'+cbbstatus.Text+'")');
  ZQuery1.ExecSQL;


  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from poin');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  posisiawal;

  end;


end;

procedure TFormPoin.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

Edtnamapoin.Text:= ZQuery1.FieldList[1].AsString;
Edtbobot.Text:= ZQuery1.FieldList[2].AsString;
cbbjenis.Text:= ZQuery1.FieldList[3].AsString;
cbbstatus.Text:= ZQuery1.FieldList[4].AsString;


end;

procedure TFormPoin.beditClick(Sender: TObject);
begin
  if (Edtnamapoin.Text='') or (Edtbobot.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (Edtnamapoin.Text = ZQuery1.FieldList[1].AsString) and (Edtbobot.Text = ZQuery1.FieldList[2].AsString) and (cbbjenis.Text = ZQuery1.FieldList[3].AsString) and (cbbstatus.Text = ZQuery1.FieldList[4].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
    id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update poin set nama_poin="'+Edtnamapoin.Text+'", bobot="'+Edtbobot.Text+'", jenis="'+cbbjenis.Text+'", status="'+cbbstatus.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from poin');
  ZQuery1.Open;
  posisiawal;
  end;

end;

procedure TFormPoin.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from poin where id="'+id+'"');
ZQuery1.ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from poin');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;

end;

end;

procedure TFormPoin.b1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
