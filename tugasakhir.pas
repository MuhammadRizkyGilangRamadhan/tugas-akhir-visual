unit tugasakhir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, frxClass, frxPreview, ADODB, DB, frxDBSet ;

var
  Report: TfrxReport;
  Connection: TADOConnection;
  Query: TADOQuery;
  Table: TADOTable;
type
  TForm1 = class(TForm)
    Label1: TLabel;
    lbl1: TLabel;
    ALAMAT: TLabel;
    KODEPOS: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    stringgrid1: TStringGrid;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    con1: TADOConnection;
    tbl1: TADOTable;
    qry1: TADOQuery;
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure stringgrid1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
 edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
end;


procedure TForm1.btn5Click(Sender: TObject);
begin
edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
end;


procedure TForm1.btn2Click(Sender: TObject);
var
  Row: Integer;
begin
  // Mencari baris kosong di StringGrid
  Row := StringGrid1.RowCount;
  while (Row > 0) and (StringGrid1.Cells[0, Row] <> '') do
    Dec(Row);

  // Memasukkan data kustomer ke dalam StringGrid
  StringGrid1.Cells[0, Row] := edt1.Text;  // Nama Kustomer
  StringGrid1.Cells[1, Row] := edt2.Text;  // Telepon
  StringGrid1.Cells[2, Row] := edt3.Text;  // Alamat
  StringGrid1.Cells[3, Row] := edt4.Text;  // Kota
  StringGrid1.Cells[4, Row] := edt5.Text;  // Kode Pos

  // Membersihkan input setelah data dimasukkan ke StringGrid
  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
end;

procedure TForm1.btn3Click(Sender: TObject);
var
  Row: Integer;
begin
  // Mendapatkan baris yang dipilih di StringGrid
  Row := StringGrid1.Row;

  // Memperbarui data kustomer yang dipilih di StringGrid
  StringGrid1.Cells[0, Row] := edt1.Text;  // Nama Kustomer
  StringGrid1.Cells[1, Row] := edt2.Text;  // Telepon
  StringGrid1.Cells[2, Row] := edt3.Text;  // Alamat
  StringGrid1.Cells[3, Row] := edt4.Text;  // Kota
  StringGrid1.Cells[4, Row] := edt5.Text;  // Kode Pos

  // Membersihkan input setelah data diperbarui
  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
end;


procedure TForm1.stringgrid1Click(Sender: TObject);
begin
 StringGrid1.ColCount := 5;

  // Menambahkan header kolom
  StringGrid1.Cells[0, 0] := 'Nama Kustomer';
  StringGrid1.Cells[1, 0] := 'Telepon';
  StringGrid1.Cells[2, 0] := 'Alamat';
  StringGrid1.Cells[3, 0] := 'Kota';
  StringGrid1.Cells[4, 0] := 'Kode Pos';

  // Menambahkan data kustomer
  StringGrid1.RowCount := 6;  // Jumlah baris data kustomer

  StringGrid1.Cells[0, 1] := 'John Doe';
  StringGrid1.Cells[1, 1] := '123456789';
  StringGrid1.Cells[2, 1] := '123 Main Street';
  StringGrid1.Cells[3, 1] := 'City';
  StringGrid1.Cells[4, 1] := '12345';

  StringGrid1.Cells[0, 2] := 'Jane Smith';
  StringGrid1.Cells[1, 2] := '987654321';
  StringGrid1.Cells[2, 2] := '456 Elm Street';
  StringGrid1.Cells[3, 2] := 'Town';
  StringGrid1.Cells[4, 2] := '54321';

end;



procedure TForm1.btn4Click(Sender: TObject);
var
  SelectedRow, Row: Integer;
begin
  // Memastikan ada baris yang dipilih
  if StringGrid1.Selection.Top <> -1 then
  begin
    // Mendapatkan baris yang dipilih
    SelectedRow := StringGrid1.Selection.Top;

    // Menggeser baris-baris di bawah baris yang dihapus
    for Row := SelectedRow to StringGrid1.RowCount - 2 do
    begin
      StringGrid1.Rows[Row].Assign(StringGrid1.Rows[Row + 1]);
    end;

    // Mengosongkan baris terakhir
    for Row := 0 to StringGrid1.ColCount - 1 do
    begin
      StringGrid1.Cells[Row, StringGrid1.RowCount - 1] := '';
    end;

    // Mengurangi jumlah baris
    StringGrid1.RowCount := StringGrid1.RowCount - 1;
  end;

end;

end.
