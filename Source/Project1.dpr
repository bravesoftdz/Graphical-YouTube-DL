program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  uCommands in 'uCommands.pas' {frmcommands},
  uCommandCreator in 'uCommandCreator.pas' {Form2},
  uUpdater in 'uUpdater.pas' {frmupdater},
  uDownloader in 'uDownloader.pas' {frmdownload};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfrmcommands, frmcommands);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tfrmupdater, frmupdater);
  Application.CreateForm(Tfrmdownload, frmdownload);
  Application.Run;
end.
