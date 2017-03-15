unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DosCommand, uCommands, uCommandCreator, ShellAPI,
  Vcl.ExtDlgs, FileCtrl, WinSvc, uUpdater, wininet, uDownloader;

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
    lbl3: TLabel;
    btn4: TButton;
    btn5: TButton;
    btn2: TButton;
    lbl4: TLabel;
    btn3: TButton;
    lbl5: TLabel;
    btn6: TButton;
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
    procedure btn3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    function IsAdmin(Host : string = '') : Boolean;
    procedure btn6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure mmo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Private declarations }
    sDownloadPath : string;
    connected : Boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  dscmnd1.Stop;
  SelectDirectory('Select a folder to save the video / audio you want to download','',sDownloadPath);
  ShowMessage('Download path has been set to ' + sDownloadPath);
end;

procedure TForm1.btndownloadClick(Sender: TObject);
begin
  dscmnd1.Stop;
  mmo1.Lines.Clear;

  if rbcustom.Checked then
    begin
      Form2.mmo1.Clear;
      mmo1.Lines.Add('Starting Download...');
      Form2.mmo1.Lines.Add('@echo off');
      Form2.mmo1.Lines.Add('"C:\Program Files (x86)\YouTube-DL\youtube-dl.exe" ' + edtcustom.Text);
      Form2.mmo1.Lines.Add('echo Done Performing custom commands');
      Form2.mmo1.Lines.SaveToFile('C:\Users\Public\Documents\yt-download.bat');

      dscmnd1.CommandLine := 'C:\Users\Public\Documents\yt-download.bat';
      dscmnd1.Execute;
    end;

  if rbeasy.Checked then
    begin
      if rbvideo.Checked then
    begin
      Form2.mmo1.Clear;
      mmo1.Lines.Add('Starting Download...');
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
      mmo1.Lines.Add('Starting Download...');
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
  ShellExecute(self.WindowHandle,'open',PChar('https://github.com/Inforcer25/Graphical-YouTube-DL'),nil,nil, SW_SHOWNORMAL);
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to stop the download?', mtconfirmation, [mbYes, mbNo], 0) = mrYes then
    dscmnd1.Stop;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
edturl.Clear;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  edtcustom.Clear;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  if connected = True then
    begin
      if IsAdmin = True then
        begin
          frmupdater.ShowModal;

          if frmupdater.update = True then
            begin
              dscmnd1.Stop;
              mmo1.Clear;
              dscmnd1.CommandLine := 'C:\Users\Public\Documents\yt-update.bat';
              dscmnd1.Execute;
            end;
        end
      else
        ShowMessage('Please run Graphical Youtube-DL as admin!');
    end
  else
    ShowMessage('There does not seem to be an active internet connection. Please check your connection!');
end;



procedure TForm1.btncommandsClick(Sender: TObject);
begin
  frmcommands.Show;
end;

procedure TForm1.FormActivate(Sender: TObject);
var
  origin : Cardinal;
begin
  connected := InternetGetConnectedState(@origin,0);
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageDlg('Are you sure you want to exit?', mtconfirmation, [mbYes, mbNo], 0) = mrYes then
    CanClose:= True
  else
    CanClose:= False;
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
    end;

  if FileExists('C:\Program Files (x86)\YouTube-DL\ffprobe.exe') then
    mmo1.Lines.Add('ffprobe.exe FOUND!')
  else
    begin
      mmo1.Lines.Add('ffprobe.exe NOT FOUND! Please use the YouTube-DL-Installer to fix this issue');
      ShowMessage('ffprobe.exe is missing. Please use the YouTube-DL-Installer to fix this issue');
      btndownload.Enabled := False;
      ffprobe := False;
    end;

  if FileExists('C:\Program Files (x86)\YouTube-DL\youtube-dl.exe') then
    mmo1.Lines.Add('youtube-dl.exe FOUND!')
  else
    begin
      mmo1.Lines.Add('youtube-dl.exe NOT FOUND! Please use the YouTube-DL-Installer to fix this issue');
      ShowMessage('ffprobe.exe is missing. Please use the YouTube-DL-Installer to fix this issue');
      btndownload.Enabled := False;
    end;

  mmo1.Lines.Add(' ');
  mmo1.Lines.Add('If it keeps failing to download a video please click on the "Check for updates" button and update youtube-dl.exe');
end;

function TForm1.IsAdmin(Host: string): Boolean;
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

procedure TForm1.mmo1Change(Sender: TObject);
var
  lineNumber: integer;
begin
  for lineNumber := 0 to mmo1.lines.count-1 do
    if Pos( 'Done Downloading Update', mmo1.lines[lineNumber] ) > 0 then
      begin
        if FileExists('C:\Program Files (x86)\YouTube-DL\youtube-dl-updater.bat') then
          ShellExecute(Handle, 'runas', 'C:\Program Files (x86)\YouTube-DL\youtube-dl-updater.bat', nil, nil, SW_SHOWNORMAL);
      end;
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
