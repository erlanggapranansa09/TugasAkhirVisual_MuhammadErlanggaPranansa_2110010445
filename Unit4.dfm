object Form4: TForm4
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel
    Left = 128
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl3: TLabel
    Left = 128
    Top = 56
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object lbl4: TLabel
    Left = 128
    Top = 88
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object lbl1: TLabel
    Left = 432
    Top = 16
    Width = 118
    Height = 23
    Caption = 'TABEL POIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 96
    Top = 312
    Width = 721
    Height = 161
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt1: TEdit
    Left = 200
    Top = 16
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 200
    Top = 48
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object edt3: TEdit
    Left = 200
    Top = 80
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 128
    Top = 248
    Width = 89
    Height = 49
    Caption = 'BARU'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 240
    Top = 248
    Width = 81
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 344
    Top = 248
    Width = 81
    Height = 49
    Caption = 'EDIT'
    TabOrder = 6
  end
  object btn4: TButton
    Left = 448
    Top = 248
    Width = 81
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 7
  end
  object btn5: TButton
    Left = 552
    Top = 248
    Width = 81
    Height = 49
    Caption = 'BATAL'
    TabOrder = 8
  end
  object btn6: TButton
    Left = 656
    Top = 248
    Width = 75
    Height = 49
    Caption = 'LAPORAN'
    TabOrder = 9
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'laporan_siswa'
    User = 'root'
    Protocol = 'mysql-5'
    LibraryLocation = 
      'C:\Users\User\OneDrive\Documents\Kuliah_Uniska\laporan_siswa\lib' +
      'mysql.dll'
    Left = 128
    Top = 376
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM tabel_poin')
    Params = <>
    Left = 176
    Top = 376
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 224
    Top = 384
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45110.626206342590000000
    ReportOptions.LastChange = 45110.626206342590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 288
    Top = 392
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSource = ds1
    Left = 352
    Top = 392
  end
end
