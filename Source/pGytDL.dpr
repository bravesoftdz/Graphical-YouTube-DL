program pGytDL;

uses
  Vcl.Forms,
  gYTdl in 'gYTdl.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  batcreator in 'batcreator.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Ruby Graphite');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
