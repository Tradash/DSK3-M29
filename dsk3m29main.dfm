object Form1: TForm1
  Left = 92
  Top = 147
  Caption = 'Form1'
  ClientHeight = 737
  ClientWidth = 930
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 13
    Top = 306
    Width = 781
    Height = 13
    DataField = 'naim'
    DataSource = DataSource1
  end
  object Label1: TLabel
    Left = 787
    Top = 7
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 832
    Top = 7
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object GroupBox2: TGroupBox
    Left = 488
    Top = 40
    Width = 425
    Height = 253
    Caption = #1041#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103
    TabOrder = 5
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 40
    Width = 474
    Height = 253
    Caption = #1053#1086#1088#1084#1072#1090#1080#1074#1085#1099#1081' '#1086#1090#1076#1077#1083
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 20
    Top = 56
    Width = 462
    Height = 231
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'naim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 417
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'koll'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'edizm'
        Title.Caption = #1045#1076'.'#1080#1079#1084
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 97
    Height = 25
    Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid2: TDBGrid
    Left = 496
    Top = 56
    Width = 417
    Height = 231
    DataSource = DataSource2
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'naim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 406
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'koll'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'edizm'
        Title.Caption = #1045#1076'.'#1080#1079#1084
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 115
    Top = 8
    Width = 137
    Height = 21
    TabOrder = 3
    OnChange = Edit1Change
  end
  object Button2: TButton
    Left = 488
    Top = 8
    Width = 86
    Height = 33
    Caption = #1057#1086#1087#1086#1089#1090#1072#1074#1080#1090#1100
    TabOrder = 6
    OnClick = Button2Click
  end
  object DBGrid3: TDBGrid
    Left = 2
    Top = 577
    Width = 841
    Height = 153
    DataSource = DataSource3
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'norma_naim'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1053#1054#1056#1052
        Width = 348
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'buh_naim'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1041#1059#1061
        Width = 297
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'buh_edizm'
        Title.Caption = #1045#1076'. '#1080#1079#1084'.'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'buh_koll'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'norma_edizm'
        Title.Caption = #1045#1076'. '#1080#1079#1084'.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'norma_koll'
        Visible = False
      end>
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 326
    Width = 474
    Height = 240
    Caption = #1059#1078#1077' '#1085#1072#1081#1076#1077#1085#1086
    TabOrder = 8
  end
  object DBGrid4: TDBGrid
    Left = 20
    Top = 342
    Width = 455
    Height = 218
    DataSource = DataSource4
    ReadOnly = True
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NAIM'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 476
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOLL'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Visible = True
      end>
  end
  object Button3: TButton
    Left = 496
    Top = 318
    Width = 169
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082' '#1089#1086#1087#1086#1089#1090#1072#1074#1083#1077#1085#1085#1099#1084
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 721
    Top = 354
    Width = 98
    Height = 33
    Caption = #1057#1082#1088#1099#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1074#1099#1073#1086#1088#1082#1091
    Enabled = False
    TabOrder = 11
    WordWrap = True
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 488
    Top = 551
    Width = 61
    Height = 20
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 12
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 267
    Top = 7
    Width = 117
    Height = 20
    Caption = #1057#1082#1088#1099#1090#1100' '#1079#1072#1087#1080#1089#1100
    Enabled = False
    TabOrder = 13
    WordWrap = True
    OnClick = Button6Click
  end
  object Edit2: TEdit
    Left = 609
    Top = 8
    Width = 137
    Height = 21
    TabOrder = 14
    OnChange = Edit2Change
  end
  object RadioGroup1: TRadioGroup
    Left = 488
    Top = 360
    Width = 201
    Height = 185
    Enabled = False
    TabOrder = 15
  end
  object RadioButton1: TRadioButton
    Left = 496
    Top = 393
    Width = 177
    Height = 17
    Caption = #1069#1083#1077#1082#1090#1088#1080#1082#1072
    Enabled = False
    TabOrder = 16
    OnClick = RadioButton7Click
  end
  object RadioButton2: TRadioButton
    Left = 496
    Top = 416
    Width = 177
    Height = 17
    Caption = #1054#1073#1097#1077#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1077
    Enabled = False
    TabOrder = 17
    OnClick = RadioButton7Click
  end
  object RadioButton3: TRadioButton
    Left = 496
    Top = 439
    Width = 177
    Height = 17
    Caption = #1052#1077#1090#1072#1083#1083
    Enabled = False
    TabOrder = 18
    OnClick = RadioButton7Click
  end
  object RadioButton4: TRadioButton
    Left = 496
    Top = 462
    Width = 177
    Height = 17
    Caption = #1057#1090#1086#1083#1103#1088#1082#1072
    Enabled = False
    TabOrder = 19
    OnClick = RadioButton7Click
  end
  object RadioButton5: TRadioButton
    Left = 496
    Top = 485
    Width = 177
    Height = 17
    Caption = #1054#1090#1076#1077#1083#1082#1072
    Enabled = False
    TabOrder = 20
    OnClick = RadioButton7Click
  end
  object RadioButton6: TRadioButton
    Left = 496
    Top = 508
    Width = 177
    Height = 17
    Caption = #1057#1072#1085#1090#1077#1093#1085#1080#1082#1072
    Enabled = False
    TabOrder = 21
    OnClick = RadioButton7Click
  end
  object RadioButton7: TRadioButton
    Left = 496
    Top = 370
    Width = 177
    Height = 17
    Caption = #1042#1089#1077
    Checked = True
    Enabled = False
    TabOrder = 22
    TabStop = True
    OnClick = RadioButton7Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=beton;Persist Security Info=True;Us' +
      'er ID=yahat;Initial Catalog=dsk3;Data Source=SQLSRV'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 8
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 8
    Top = 72
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     norma.*'
      'FROM         norma')
    Left = 8
    Top = 112
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM  buh')
    Left = 40
    Top = 112
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 40
    Top = 72
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 72
    Top = 72
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sopost1')
    Left = 72
    Top = 112
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'add_sopost;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_buh'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@id_norma'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end>
    Left = 8
    Top = 152
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 104
    Top = 72
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 104
    Top = 112
  end
  object ADOStoredProc2: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'add_hidden_norma;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_norma'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end>
    Left = 136
    Top = 112
  end
  object ADOQuery5: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'delete from sopost where id=:id')
    Left = 80
    Top = 160
  end
  object RvProject1: TRvProject
    Left = 248
    Top = 304
  end
  object RvTableConnection1: TRvTableConnection
    RuntimeVisibility = rtDeveloper
    Left = 312
    Top = 304
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQuery6
    Left = 384
    Top = 304
  end
  object ADOQuery6: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from rez_1')
    Left = 176
    Top = 112
  end
end
