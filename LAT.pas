unit LAT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, ComCtrls;

type
  TForm9 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    edt2: TEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    edt3: TEdit;
    lbl8: TLabel;
    lbl9: TLabel;
    edt4: TEdit;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    db1: TDBGrid;
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    cbb1: TComboBox;
    edt5: TEdit;
    edt6: TEdit;
    edtdtp1: TDateTimePicker;
    procedure btn2Click(Sender: TObject);
    procedure bersih;
    procedure db1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  upd:string;

implementation

{$R *.dfm}

procedure TForm9.bersih;
begin
  edt1.Text :='';
  edt2.Text :='';
  edt3.Text :='';
  edt4.Text :='';
  edt5.Text :='';
  edt6.Text :='';
  cbb1.Text :='';

  Form9.qry1.SQL.Clear;
  Form9.qry1.SQL.Add('select * from jadwal_table');
  Form9.qry1.Open;
  db1.columns[0].Width:=30;
  db1.Columns[3].Width:=90;
  db1.Columns[5].Width:=50;
  db1.Columns[6].Width:=110;
  db1.Columns[7].Width:=90;

  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
end;

procedure TForm9.btn2Click(Sender: TObject);
var a:Integer;
begin
  if (edt3.Text='') or (edt3.Text='00:00') or (edt2.Text='') or (edt2.Text='00:00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
  end else
  if (cbb1.Text='') or (cbb1.Text='-') then
  begin
    ShowMessage('HARI BELUM DIISI DENGAN BENAR');
  end else
  if (edt5.Text='') or (edt5.Text='-') or (edt2.Text='') or (edt2.Text='-') then
  begin
    ShowMessage('Inputan Ruangan atau Mata Kuliah masih belum sesuai');
  end else
  if (edt1.Text='') or (edt1.Text='-') or (edt6.Text='') or (edt6.Text='0') then
  begin
    ShowMessage('Inputan Kelas atau Kehadiran masih belum sesuai');
  end else
  if (Form9.qry1.Locate('hari',cbb1.text,[])) and (Form9.qry1.Locate('jam_mulai',edt3.Text,[])) then
  begin
    ShowMessage('DATA SUDAH ADA DIDALAM SISTEM');
    edt3.SetFocus;
  end else

 begin
  a:=Form9.qry1.RecordCount+1;
  with Form9.qry1 do
  begin
    SQL.Clear;
    SQL.Add('insert into jadwal_table values("'+inttostr(a)+'","'+edt3.Text+'","'+edt4.Text+'","'+cbb1.Text+'","'+formatdatetime('yyyy-mm-dd',edtdtp1.Date)+'","'+edt5.Text+'","'+edt2.Text+'","'+edt1.Text+'","'+edt6.Text+'")');
    ExecSQL;
    bersih;
    ShowMessage('DATA BERHASIL DISIMPAN');
  end;
 end;

 end;
procedure TForm9.db1CellClick(Column: TColumn);
var a:Integer;
begin
  try
  upd:= Form9.qry1.Fields[0].AsString;
  edt3.Text := Form9.qry1.Fields[1].AsString;
  edt4.Text := Form9.qry1.Fields[2].AsString;
  cbb1.Text := Form9.qry1.Fields[3].AsString;
  edtdtp1.Date := Form9.qry1.Fields[4].AsDateTime;
  edt5.Text := Form9.qry1.Fields[5].AsString;
  edt2.Text := Form9.qry1.Fields[6].AsString;
  edt1.Text := Form9.qry1.Fields[7].AsString;
  edt6.Text := Form9.qry1.Fields[8].AsString;

  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn2.Enabled:= False;
  except
 end;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
  bersih;
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
  if (edt3.Text='') or (edt3.Text='00:00') or (edt2.Text='') or (edt2.Text='00:00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
  end else
  if (cbb1.Text='') or (cbb1.Text='-') then
  begin
    ShowMessage('HARI BELUM DIISI DENGAN BENAR');
  end else
  if (edt5.Text='') or (edt5.Text='-') or (edt2.Text='') or (edt2.Text='-') then
  begin
    ShowMessage('Inputan Ruangan atau Mata Kuliah masih belum sesuai');
  end else
  if (edt1.Text='') or (edt1.Text='-') or (edt6.Text='') or (edt6.Text='0') then
  begin
    ShowMessage('Inputan Kelas atau Kehadiran masih belum sesuai');
  end else
  if (edt3.Text = Form9.qry1.Fields[1].AsString) and (cbb1.Text = Form9.qry1.Fields[3].AsString) then
  begin
    ShowMessage('Data Tidak Ada Perubahan');
  end else
  begin
    with Form9.qry1 do
    begin
      SQL.Clear;
      SQL.Add('update jadwal_table set jam_mulai="'+edt3.Text+'",jam_akhir="'+edt4.Text+'" where no="'+upd+'"');
      ExecSQL;

      bersih;
      ShowMessage('DATA BERHASIL DIUBAH');
    end;
  end;
end;

procedure TForm9.btn4Click(Sender: TObject);
begin
  if (edt3.Text='') or (edt3.Text='00:00') or (edt2.Text='') or (edt2.Text='00:00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
  end else
  if (cbb1.Text='') or (cbb1.Text='-') then
  begin
    ShowMessage('HARI BELUM DIISI DENGAN BENAR');
  end else
  if (edt5.Text='') or (edt5.Text='-') or (edt2.Text='') or (edt2.Text='-') then
  begin
    ShowMessage('Inputan Ruangan atau Mata Kuliah masih belum sesuai');
  end else
  if (edt1.Text='') or (edt1.Text='-') or (edt6.Text='') or (edt6.Text='0') then
  begin
    ShowMessage('Inputan Kelas atau Kehadiran masih belum sesuai');
  end else
  begin
    if MessageDlg('APAKAH ANDA YAKIN MENGHAPUS DATA INI?',mtWarning, [mbYes,mbNo],0)=mryes then
    begin
      with Form9.qry1 do
      begin
        SQL.Clear;
        SQL.Add('delete from jadwal_table where no="'+upd+'"');
        ExecSQL;

      end;
        ShowMessage('DATA BERHASIL DI HAPUS');
        bersih;
      end else
      
    begin
      ShowMessage('DATA BATAL DIHAPUS!');
    end;
  end;
end;

procedure TForm9.btn5Click(Sender: TObject);
begin
  bersih;
end;

end.
