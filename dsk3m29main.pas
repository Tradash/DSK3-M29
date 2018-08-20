unit dsk3m29main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, DBCtrls, ExtCtrls, RpConDS,
  RpCon, RpConBDE, RpDefine, RpRave;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button2: TButton;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    DBGrid3: TDBGrid;
    ADOStoredProc1: TADOStoredProc;
    GroupBox3: TGroupBox;
    DBGrid4: TDBGrid;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    Button3: TButton;
    Button4: TButton;
    ADOStoredProc2: TADOStoredProc;
    DBText1: TDBText;
    Button5: TButton;
    ADOQuery5: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Button6: TButton;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RvProject1: TRvProject;
    RvTableConnection1: TRvTableConnection;
    RvDataSetConnection1: TRvDataSetConnection;
    ADOQuery6: TADOQuery;
    procedure RadioButton7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure tform1.Button1Click(Sender: TObject);
begin
edit1.Text:='';
edit1.Text:='';
form1.radiobutton1.Enabled:=true;
form1.radiobutton2.Enabled:=true;
form1.radiobutton3.Enabled:=true;
form1.radiobutton4.Enabled:=true;
form1.radiobutton5.Enabled:=true;
form1.radiobutton6.Enabled:=true;
form1.radiobutton7.Enabled:=true;
adoconnection1.Connected:=true;
adoquery1.Active:=false;
adoquery1.SQL.Clear;
if form1.radiobutton7.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma');
if form1.radiobutton1.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma where tip=1');
if form1.radiobutton2.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma where tip=2');
if form1.radiobutton3.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma where tip=3');
if form1.radiobutton4.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma where tip=4');
if form1.radiobutton5.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma where tip=5');
if form1.radiobutton6.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma where tip=6');
adoquery1.Active:=true;
adoquery2.Active:=false;
adoquery2.SQL.Clear;
adoquery2.SQL.Add('SELECT select_buh.* FROM select_buh');
adoquery2.Active:=true;
adoquery3.Active:=false;
adoquery3.SQL.Clear;
if form1.radiobutton7.Checked then adoquery3.SQL.Add('select * from sopost1');
if form1.radiobutton1.Checked then adoquery3.SQL.Add('select * from sopost1 where tip=1');
if form1.radiobutton2.Checked then adoquery3.SQL.Add('select * from sopost1 where tip=2');
if form1.radiobutton3.Checked then adoquery3.SQL.Add('select * from sopost1 where tip=3');
if form1.radiobutton4.Checked then adoquery3.SQL.Add('select * from sopost1 where tip=4');
if form1.radiobutton5.Checked then adoquery3.SQL.Add('select * from sopost1 where tip=5');
if form1.radiobutton6.Checked then adoquery3.SQL.Add('select * from sopost1 where tip=6');
adoquery3.Active:=true;
adoquery4.Active:=false;
adoquery4.SQL.Clear;
if form1.radiobutton7.Checked then adoquery4.SQL.Add('select * from select_buh_sopost');
if form1.radiobutton1.Checked then adoquery4.SQL.Add('select * from select_buh_sopost where tip=1');
if form1.radiobutton2.Checked then adoquery4.SQL.Add('select * from select_buh_sopost where tip=2');
if form1.radiobutton3.Checked then adoquery4.SQL.Add('select * from select_buh_sopost where tip=3');
if form1.radiobutton4.Checked then adoquery4.SQL.Add('select * from select_buh_sopost where tip=4');
if form1.radiobutton5.Checked then adoquery4.SQL.Add('select * from select_buh_sopost where tip=5');
if form1.radiobutton6.Checked then adoquery4.SQL.Add('select * from select_buh_sopost where tip=6');
adoquery4.Active:=true;


end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
 if length(edit1.Text)>1
  then
   adoquery1.Active:=false;
   adoquery1.SQL.Clear;
   if form1.radiobutton7.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+')');
   if form1.radiobutton1.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=1');
   if form1.radiobutton2.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=2');
   if form1.radiobutton3.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=3');
   if form1.radiobutton4.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=4');
   if form1.radiobutton5.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=5');
   if form1.radiobutton6.Checked then adoquery1.SQL.Add('SELECT select_norma.* FROM select_norma WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=6');
   adoquery1.Active:=true;
   adoquery2.Active:=false;
   adoquery2.SQL.Clear;
   adoquery2.SQL.Add('SELECT select_buh.* FROM select_buh WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+')');
   adoquery2.Active:=true;
   adoquery3.Active:=false;
   adoquery3.SQL.Clear;
   if form1.radiobutton7.Checked then adoquery3.SQL.Add('SELECT sopost1.* FROM sopost1 WHERE(norma_naim LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+')');
   if form1.radiobutton1.Checked then adoquery3.SQL.Add('SELECT sopost1.* FROM sopost1 WHERE(norma_naim LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=1');
   if form1.radiobutton2.Checked then adoquery3.SQL.Add('SELECT sopost1.* FROM sopost1 WHERE(norma_naim LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=2');
   if form1.radiobutton3.Checked then adoquery3.SQL.Add('SELECT sopost1.* FROM sopost1 WHERE(norma_naim LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=3');
   if form1.radiobutton4.Checked then adoquery3.SQL.Add('SELECT sopost1.* FROM sopost1 WHERE(norma_naim LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=4');
   if form1.radiobutton5.Checked then adoquery3.SQL.Add('SELECT sopost1.* FROM sopost1 WHERE(norma_naim LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=5');
   if form1.radiobutton6.Checked then adoquery3.SQL.Add('SELECT sopost1.* FROM sopost1 WHERE(norma_naim LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=6');
   adoquery3.Active:=true;
   adoquery4.Active:=false;
   adoquery4.SQL.Clear;
   if form1.radiobutton7.Checked then adoquery4.SQL.Add('SELECT select_buh_sopost.* FROM select_buh_sopost WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+')');
   if form1.radiobutton1.Checked then adoquery4.SQL.Add('SELECT select_buh_sopost.* FROM select_buh_sopost WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=1');
   if form1.radiobutton2.Checked then adoquery4.SQL.Add('SELECT select_buh_sopost.* FROM select_buh_sopost WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=2');
   if form1.radiobutton3.Checked then adoquery4.SQL.Add('SELECT select_buh_sopost.* FROM select_buh_sopost WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=3');
   if form1.radiobutton4.Checked then adoquery4.SQL.Add('SELECT select_buh_sopost.* FROM select_buh_sopost WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=4');
   if form1.radiobutton5.Checked then adoquery4.SQL.Add('SELECT select_buh_sopost.* FROM select_buh_sopost WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=5');
   if form1.radiobutton6.Checked then adoquery4.SQL.Add('SELECT select_buh_sopost.* FROM select_buh_sopost WHERE(NAIM LIKE '+chr(39)+'%'+edit1.Text+'%'+chr(39)+') and tip=6');
   adoquery4.Active:=true;
   label1.Caption:=inttostr(adoquery1.recordcount);
   label2.Caption:=inttostr(adoquery2.recordcount);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
//adostoredproc1.Parameters.ParamValues['@id_buh']
adostoredproc1.Parameters.ParamValues['@id_buh']:=adoquery2.FieldValues['id'];
adostoredproc1.Parameters.ParamValues['@id_norma']:=adoquery1.FieldValues['id'];
adostoredproc1.ExecProc;
adoquery1.Active:=false;
adoquery2.Active:=false;
adoquery3.Active:=false;
adoquery4.Active:=false;
adoquery1.Active:=true;
adoquery2.Active:=true;
adoquery3.Active:=true;
adoquery4.Active:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
 Bookmark1,Bookmark2: TBookmark;
begin
//bookmark
Bookmark1:= adoquery4.GetBookmark;
adostoredproc1.Parameters.ParamValues['@id_buh']:=adoquery2.FieldValues['id'];
adostoredproc1.Parameters.ParamValues['@id_norma']:=adoquery4.FieldValues['id'];
adostoredproc1.ExecProc;
adoquery1.Active:=false;
adoquery2.Active:=false;
adoquery3.Active:=false;
adoquery4.Active:=false;
adoquery1.Active:=true;
adoquery2.Active:=true;
adoquery3.Active:=true;
adoquery4.Active:=true;
adoquery4.GotoBookmark(Bookmark1);
adoquery4.FreeBookmark(Bookmark1);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 adoquery1.First;
 while not adoquery1.Eof do
  begin
   adostoredproc2.Parameters.ParamValues['@id_norma']:=adoquery1.FieldValues['id'];
   adostoredproc2.ExecProc;
   adoquery1.Next;
  end;
adoquery1.Active:=false;
adoquery2.Active:=false;
adoquery3.Active:=false;
adoquery4.Active:=false;
adoquery1.Active:=true;
adoquery2.Active:=true;
adoquery3.Active:=true;
adoquery4.Active:=true;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 adoquery5.Parameters.ParamValues['id']:=adoquery3.FieldValues['id'];
 adoquery5.ExecSQL;
adoquery1.Active:=false;
adoquery2.Active:=false;
adoquery3.Active:=false;
adoquery4.Active:=false;
adoquery1.Active:=true;
adoquery2.Active:=true;
adoquery3.Active:=true;
adoquery4.Active:=true;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
   adostoredproc2.Parameters.ParamValues['@id_norma']:=adoquery1.FieldValues['id'];
   adostoredproc2.ExecProc;
   adoquery1.Active:=false;
   adoquery2.Active:=false;
   adoquery3.Active:=false;
   adoquery4.Active:=false;
   adoquery1.Active:=true;
   adoquery2.Active:=true;
   adoquery3.Active:=true;
   adoquery4.Active:=true;
   label1.Caption:=inttostr(adoquery1.recordcount);
   label2.Caption:=inttostr(adoquery2.recordcount);

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
 if length(edit1.Text)>1
  then
   adoquery2.Active:=false;
   adoquery2.SQL.Clear;
   adoquery2.SQL.Add('SELECT select_buh.* FROM select_buh WHERE(NAIM LIKE '+chr(39)+'%'+edit2.Text+'%'+chr(39)+')');
   adoquery2.Active:=true;
   adoquery3.Active:=false;
//   adoquery3.SQL.Clear;
//   adoquery3.SQL.Add('SELECT sopost1.* FROM sopost1 WHERE(buh_naim LIKE '+chr(39)+'%'+edit2.Text+'%'+chr(39)+')');
   adoquery3.Active:=true;
   adoquery4.Active:=false;
//   adoquery4.SQL.Clear;
//   adoquery4.SQL.Add('SELECT select_buh_sopost.* FROM select_buh_sopost WHERE(NAIM LIKE '+chr(39)+'%'+edit2.Text+'%'+chr(39)+')');
   adoquery4.Active:=true;
   label1.Caption:=inttostr(adoquery1.recordcount);
   label2.Caption:=inttostr(adoquery2.recordcount);
end;

procedure TForm1.RadioButton7Click(Sender: TObject);
begin
  Button1Click(sender);
end;

end.
