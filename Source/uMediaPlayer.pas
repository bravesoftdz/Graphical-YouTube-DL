unit uMediaPlayer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.OleCtrls, WMPLib_TLB,
  Vcl.StdCtrls, Vcl.Menus;

type
  Tfrmmediaplayer = class(TForm)
    wndwsmdplyr1: TWindowsMediaPlayer;
    btn2: TButton;
    dlgOpen1: TOpenDialog;
    pmmediaplayer: TPopupMenu;
    SelectandPlay1: TMenuItem;
    chk1: TCheckBox;
    pnl1: TPanel;
    chk2: TCheckBox;
    procedure btn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SelectandPlay1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmediaplayer: Tfrmmediaplayer;

implementation

{$R *.dfm}

procedure Tfrmmediaplayer.btn2Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
    wndwsmdplyr1.URL := dlgOpen1.FileName;
end;

procedure Tfrmmediaplayer.chk2Click(Sender: TObject);
begin
  if chk2.Checked then
    AlphaBlendValue := 230
  else
    AlphaBlendValue := 255;
end;

procedure Tfrmmediaplayer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if chk1.Checked = False then
    wndwsmdplyr1.close;
end;

procedure Tfrmmediaplayer.SelectandPlay1Click(Sender: TObject);
begin
  btn2.Click;
end;

end.
