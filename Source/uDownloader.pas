unit uDownloader;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw;

type
  Tfrmdownload = class(TForm)
    wb1: TWebBrowser;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdownload: Tfrmdownload;

implementation

{$R *.dfm}

end.
