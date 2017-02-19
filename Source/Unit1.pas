unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DosCommand, uCommands, uCommandCreator, ShellAPI;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    mmo1: TMemo;
    dscmnd1: TDosCommand;
    lbl1: TLabel;
    grp1: TGroupBox;
    rbcustom: TRadioButton;
    rbeasy: TRadioButton;
    edtcustom: TEdit;
    btncommands: TButton;
    edturl: TEdit;
    btndownload: TButton;
    lbl2: TLabel;
    grp2: TGroupBox;
    rbaudio: TRadioButton;
    rbvideo: TRadioButton;
    btn1: TButton;
    flpndlg1: TFileOpenDialog;
    lbl3: TLabel;
    btninstall: TButton;
    btn4: TButton;
    btn5: TButton;
    btn2: TButton;
    lbl4: TLabel;
    procedure rbeasyClick(Sender: TObject);
    procedure rbcustomClick(Sender: TObject);
    procedure btncommandsClick(Sender: TObject);
    procedure btndownloadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btninstallClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sDownloadPath : string;

implementation

{$R *.dfm}


function GetCurrentUserName: string;
const
  cnMaxUserNameLen = 254;
var
  sUserName: string;
  dwUserNameLen: DWORD;
begin
  dwUserNameLen := cnMaxUserNameLen - 1;
  SetLength(sUserName, cnMaxUserNameLen);
  GetUserName(PChar(sUserName), dwUserNameLen);
  SetLength(sUserName, dwUserNameLen);
  Result := sUserName;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  with flpndlg1.Create(nil) do
  try
    Options := [fdoPickFolders];
    if Execute then
      sDownloadPath := flpndlg1.FileName;
  finally
    Free;
  end;
end;

procedure TForm1.btndownloadClick(Sender: TObject);
begin
  dscmnd1.Stop;
  mmo1.Lines.Clear;

  if rbcustom.Checked then
    begin
      Form2.mmo1.Clear;
      Form2.mmo1.Lines.Add('@echo off');
      Form2.mmo1.Lines.Add('"C:\Program Files (x86)\YouTube-DL\youtube-dl.exe"' + edtcustom.Text);
      Form2.mmo1.Lines.Add('echo Done Performing custom commands');
      Form2.mmo1.Lines.SaveToFile('C:\Users\Public\Documents\yt-download.bat');
      dscmnd1.CommandLine := 'C:\Users\Public\Documents\yt-download.bat';
    end;

  if rbeasy.Checked then
    begin
      if rbvideo.Checked then
    begin
      Form2.mmo1.Clear;
      Form2.mmo1.Lines.Add('@echo off');
      Form2.mmo1.Lines.Add('cd ' + sDownloadPath);
      Form2.mmo1.Lines.Add('"C:\Program Files (x86)\YouTube-DL\youtube-dl.exe" --format mp4 ' + edturl.Text);
      Form2.mmo1.Lines.Add('echo Done');
      Form2.mmo1.Lines.SaveToFile('C:\Users\Public\Documents\yt-download.bat');

      dscmnd1.CommandLine := 'C:\Users\Public\Documents\yt-download.bat';
      dscmnd1.Execute;
    end;

  if rbaudio.Checked then
    begin
      Form2.mmo1.Clear;
      Form2.mmo1.Lines.Add('@echo off');
      Form2.mmo1.Lines.Add('cd ' + sDownloadPath);
      Form2.mmo1.Lines.Add('"C:\Program Files (x86)\YouTube-DL\youtube-dl.exe" --extract-audio --audio-format mp3 ' + edturl.Text);
      Form2.mmo1.Lines.Add('echo Done');
      Form2.mmo1.Lines.SaveToFile('C:\Users\Public\Documents\yt-download.bat');

      dscmnd1.CommandLine := 'C:\Users\Public\Documents\yt-download.bat';
      dscmnd1.Execute;
    end;
  end;
end;

procedure TForm1.btninstallClick(Sender: TObject);
begin
  ShowMessage('To install missing file please use the "YouTube-DL Installer.exe" that was provided');
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  ShellExecute(self.WindowHandle,'open',PChar('https://github.com/Inforcer25'),nil,nil, SW_SHOWNORMAL);
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
edturl.Clear;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  edtcustom.Clear;
end;

procedure TForm1.btncommandsClick(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  ffmpeg, ffprobe, youtube : Boolean;
begin
  Application.Title := 'Graphical YouTube-DL';
  dscmnd1.OutputLines := mmo1.Lines;
  sDownloadPath := 'Current Dir';

  if FileExists('C:\Program Files (x86)\YouTube-DL\ffmpeg.exe') then
    mmo1.Lines.Add('ffmpeg.exe FOUND!')
  else
    begin
      mmo1.Lines.Add('ffmpeg.exe NOT FOUND! Please use the YouTube-DL-Installer to fix this issue');
      ShowMessage('ffmpeg.exe is missing. Please use the YouTube-DL-Installer to fix this issue');
      btndownload.Enabled := False;
      ffmpeg := False;
      if ffmpeg = False then
        btninstall.Enabled := True;
    end;

  if FileExists('C:\Program Files (x86)\YouTube-DL\ffprobe.exe') then
    mmo1.Lines.Add('ffprobe.exe FOUND!')
  else
    begin
      mmo1.Lines.Add('ffprobe.exe NOT FOUND! Please use the YouTube-DL-Installer to fix this issue');
      ShowMessage('ffprobe.exe is missing. Please use the YouTube-DL-Installer to fix this issue');
      btndownload.Enabled := False;
      ffprobe := False;
      if ffprobe = False then
        btninstall.Enabled := True;
    end;

  if FileExists('C:\Program Files (x86)\YouTube-DL\youtube-dl.exe') then
    mmo1.Lines.Add('youtube-dl.exe FOUND!')
  else
    begin
      mmo1.Lines.Add('youtube-dl.exe NOT FOUND! Please use the YouTube-DL-Installer to fix this issue');
      ShowMessage('ffprobe.exe is missing. Please use the YouTube-DL-Installer to fix this issue');
      btndownload.Enabled := False;
      youtube := False;
      if youtube = False then
        btninstall.Enabled := True;
    end;

  mmo1.Lines.Add(' ');
  mmo1.Lines.Add('If it keeps failing to download a video please go to the github page and see if there is an update');
end;

procedure TForm1.rbcustomClick(Sender: TObject);
begin
  if rbcustom.Checked then
    begin
      edtcustom.Enabled := True;
      edturl.Enabled := False;
      btncommands.Enabled := True;
    end;
end;

procedure TForm1.rbeasyClick(Sender: TObject);
begin
  if rbeasy.Checked then
    begin
      edtcustom.Enabled := False;
      edturl.Enabled := True;
      btncommands.Enabled := False;
    end;
end;

end.
