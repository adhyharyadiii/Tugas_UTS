unit Database1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs,
  Chart, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm8 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    db1: TDBGrid;
    cht1: TChart;
    brsrsSeries2: TBarSeries;
    qry2detail: TADOQuery;
    frxDBjadwal: TfrxDBDataset;
    frxDBdetailjadwal: TfrxDBDataset;
    frxjadwal: TfrxReport;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

  uses LAT;

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
var i:Integer;
 begin
   qry1.SQL.Clear;
   qry1.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
   qry1.Open;
   cht1.Series[0].Clear;
    for i:=1 to qry1.RecordCount do
     begin
      cht1.Series[0].Add(StrToInt(qry1.fieldbyname('total_siswa').AsString),qry1.Fields[2].AsString);
      qry1.Next;
     end;
   db1.Columns[2].Width:=90;
end;
procedure TForm8.btn3Click(Sender: TObject);
begin
  qry1.SQL.Clear;
  qry1.SQL.Add('select * from jadwal_table');
  qry1.Open;
  db1.columns[0].Width:=30;
  db1.Columns[3].Width:=90;
  db1.Columns[5].Width:=50;
  db1.Columns[6].Width:=110;
  db1.Columns[7].Width:=90;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
  db1.columns[0].Width:=30;
  db1.Columns[3].Width:=90;
  db1.Columns[5].Width:=50;
  db1.Columns[6].Width:=110;
  db1.Columns[7].Width:=90;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
  Form9.Show;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
  frxjadwal.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ViewReport.fr3');
  frxjadwal.ShowReport();
end;

end.
