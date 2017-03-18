program GraphicalYouTubeDL;

uses
  Vcl.Forms,
  uGraphicalYouTube in 'uGraphicalYouTube.pas' {frmmain},
  Vcl.Themes,
  Vcl.Styles,
  uCommands in 'uCommands.pas' {frmcommands},
  uCommandCreator in 'uCommandCreator.pas' {Form2},
  uUpdater in 'uUpdater.pas' {frmupdater},
  uDownloader in 'uDownloader.pas' {frmdownload},
  uThemeManager in 'uThemeManager.pas' {frmthememanager},
  uMediaPlayer in 'uMediaPlayer.pas' {frmmediaplayer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Jet');
  Application.CreateForm(Tfrmmain, frmmain);
  Application.CreateForm(Tfrmcommands, frmcommands);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tfrmupdater, frmupdater);
  Application.CreateForm(Tfrmdownload, frmdownload);
  Application.CreateForm(Tfrmthememanager, frmthememanager);
  Application.CreateForm(Tfrmmediaplayer, frmmediaplayer);
  Application.Run;
end.
