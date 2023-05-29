program ProjectMenu;

uses
  Forms,
  Menu in 'Menu.pas' {Form1},
  Latihan1 in 'Latihan1.pas' {Form2},
  Latihan2 in 'Latihan2.pas' {Form3},
  Kondisional1 in 'Kondisional1.pas' {Form4},
  Kondisional2 in 'Kondisional2.pas' {Form5},
  GrafikStringGrid in 'GrafikStringGrid.pas' {Form6},
  GrafikStringGridREVISI in 'GrafikStringGridREVISI.pas' {Form7},
  LAT in 'LAT.pas' {Form9},
  Database1 in 'Database1.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
