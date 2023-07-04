object Form1: TForm1
  Left = 192
  Top = 121
  Width = 1044
  Height = 544
  Caption = 'LAPORAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 86
    Height = 13
    Caption = 'NAMA KUSTOMER'
  end
  object lbl1: TLabel
    Left = 40
    Top = 56
    Width = 44
    Height = 13
    Caption = 'TELEPON'
  end
  object ALAMAT: TLabel
    Left = 40
    Top = 88
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object KODEPOS: TLabel
    Left = 40
    Top = 128
    Width = 27
    Height = 13
    Caption = 'KOTA'
  end
  object lbl2: TLabel
    Left = 40
    Top = 160
    Width = 50
    Height = 13
    Caption = 'KODE POS'
  end
  object edt1: TEdit
    Left = 176
    Top = 32
    Width = 225
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 176
    Top = 56
    Width = 225
    Height = 21
    TabOrder = 1
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 176
    Top = 88
    Width = 225
    Height = 21
    TabOrder = 2
    Text = 'edt3'
  end
  object edt4: TEdit
    Left = 176
    Top = 120
    Width = 225
    Height = 21
    TabOrder = 3
    Text = 'edt4'
  end
  object edt5: TEdit
    Left = 176
    Top = 152
    Width = 225
    Height = 21
    TabOrder = 4
    Text = 'edt5'
  end
  object btn1: TButton
    Left = 40
    Top = 200
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 144
    Top = 200
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 248
    Top = 200
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 352
    Top = 200
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 448
    Top = 200
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 552
    Top = 200
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 10
  end
  object stringgrid1: TStringGrid
    Left = 32
    Top = 272
    Width = 601
    Height = 120
    TabOrder = 11
    OnClick = stringgrid1Click
    ColWidths = (
      64
      64
      64
      64
      64)
  end
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45111.749830648150000000
    ReportOptions.LastChange = 45111.753806099540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 48
    Datasets = <
      item
        DataSet = frxReport1.ADOTable1
        DataSetName = 'ADOTable1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object ADODatabase1: TfrxADODatabase
        DatabaseName = 
          'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\tu' +
          'gasakhirdelphi\laporandatakustomer.mdb;Mode=Share Deny None;Jet ' +
          'OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Da' +
          'tabase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lo' +
          'cking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Globa' +
          'l Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLE' +
          'DB:Create System Database=False;Jet OLEDB:Encrypt Database=False' +
          ';Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact ' +
          'Without Replica Repair=False;Jet OLEDB:SFP=False;'
        Connected = True
        pLeft = 52
        pTop = 36
      end
      object ADOTable1: TfrxADOTable
        UserName = 'ADOTable1'
        CloseDataSource = True
        Database = frxReport1.ADODatabase1
        pLeft = 128
        pTop = 40
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 793.701300000000000000
        DataSet = frxReport1.ADOTable1
        DataSetName = 'ADOTable1'
        RowCount = 0
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    Left = 536
    Top = 48
  end
  object con1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\tugasakhirdelphi' +
      '\laporandatakustomer.mdb;Persist Security Info=False'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 624
    Top = 64
  end
  object tbl1: TADOTable
    Left = 696
    Top = 80
  end
  object qry1: TADOQuery
    Parameters = <>
    Left = 760
    Top = 88
  end
end
