program m29;

uses
  Forms,
  dsk3m29main in 'dsk3m29main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
