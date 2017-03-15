unit uUpdater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCommandCreator,
  Vcl.ExtCtrls, WinSvc, uDownloader, ShellAPI;

type
  Tfrmupdater = class(TForm)
    btn1: TButton;
    btn2: TButton;
    pnl1: TPanel;
    pnl2: TPanel;
    chkyoutubedl: TCheckBox;
    chkgraphical: TCheckBox;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    function IsAdmin(Host : string = '') : Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
    update : Boolean;
  end;

var
  frmupdater: Tfrmupdater;

implementation

{$R *.dfm}

procedure Tfrmupdater.btn1Click(Sender: TObject);
begin
  update := True;

  if chkyoutubedl.Checked then
    begin
      Form2.mmo1.Clear;
      Form2.mmo1.Lines.Add('@echo off');
      Form2.mmo1.Lines.Add('echo This may take a while...');
      Form2.mmo1.Lines.Add('"C:\Program Files (x86)\YouTube-DL\youtube-dl.exe" --update ');
      Form2.mmo1.Lines.Add('echo Done Downloading Update');
      Form2.mmo1.Lines.SaveToFile('C:\Users\Public\Documents\yt-update.bat');
      CloseModal;
    end;

  if chkgraphical.Checked then
    begin
      ShellExecute(Application.Handle, PChar('open'), PChar('https://github.com/Inforcer25/Graphical-YouTube-DL'), nil, nil, SW_SHOW);
    end;

  if (chkyoutubedl.Checked = False) and (chkgraphical.Checked = False) then
    ShowMessage('Please select at least one option');
end;

procedure Tfrmupdater.btn2Click(Sender: TObject);
begin
  Close;
end;

function Tfrmupdater.IsAdmin(Host: string): Boolean;
var
  H: SC_HANDLE;
begin
  if Win32Platform <> VER_PLATFORM_WIN32_NT then
    Result := True
  else
    begin
      H := OpenSCManager(PChar(Host), nil, SC_MANAGER_ALL_ACCESS);
      Result := H <> 0;
      if Result then
        CloseServiceHandle(H);
    end;
end;

end.
