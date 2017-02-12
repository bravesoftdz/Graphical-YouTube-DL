unit gYTdl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ovceditf, ovcedpop,
  ovcedsld, Vcl.ExtCtrls, DosCommand, batcreator, ShellAPI;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    mmo1: TMemo;
    pnl2: TPanel;
    edt1: TEdit;
    grp1: TGroupBox;
    btn1: TButton;
    rbvideo: TRadioButton;
    rbaudio: TRadioButton;
    pnl3: TPanel;
    pnl4: TPanel;
    btn2: TButton;
    dscmnd1: TDosCommand;
    lbl1: TLabel;
    btn3: TButton;
    grp2: TGroupBox;
    grp3: TGroupBox;
    rbmkv: TRadioButton;
    rbmp4: TRadioButton;
    rbmp3: TRadioButton;
    btn4: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbvideoClick(Sender: TObject);
    procedure rbaudioClick(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  format : string;
begin
  if rbmkv.Checked then
    format := 'mkv';

  if rbmp4.Checked then
    format := 'mp4';

  if edt1.Text = '' then
    ShowMessage('URL bar cannot be empty');

  mmo1.Clear;

  if rbvideo.Checked then
    begin
      Form2.mmo1.Clear;
      Form2.mmo1.Lines.Add('@echo off');
      Form2.mmo1.Lines.Add('youtube-dl.exe --format ' + format + ' ' + edt1.Text);
      Form2.mmo1.Lines.Add('echo Done');
      Form2.mmo1.Lines.Add('exit');
      Form2.mmo1.Lines.SaveToFile('command.bat');

      dscmnd1.CommandLine := 'command.bat';
      dscmnd1.Execute;
    end;

  if rbaudio.Checked then
    begin
      Form2.mmo1.Clear;
      Form2.mmo1.Lines.Add('@echo off');
      Form2.mmo1.Lines.Add('youtube-dl.exe --extract-audio --audio-format mp3 ' + edt1.Text);
      Form2.mmo1.Lines.Add('echo Done');
      Form2.mmo1.Lines.Add('exit');
      Form2.mmo1.Lines.SaveToFile('command.bat');

      dscmnd1.CommandLine := 'command.bat';
      dscmnd1.Execute;
    end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  ShellExecute(self.WindowHandle,'open',PChar('https://github.com/Inforcer25'),nil,nil, SW_SHOWNORMAL);
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  dscmnd1.Stop;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  btn1.SetFocus;

  dscmnd1.OutputLines := mmo1.Lines;

  if FileExists('ffmpeg.exe') then
    mmo1.Lines.Add('ffmpeg.exe FOUND!')
  else
    begin
      mmo1.Lines.Add('ffmpeg.exe NOT FOUND!');
      ShowMessage('ffmpeg.exe is missing. Please redownload Graphical YouTube-DL');
    end;

  if FileExists('ffprobe.exe') then
    mmo1.Lines.Add('ffprobe.exe FOUND!')
  else
    begin
      mmo1.Lines.Add('ffprobe.exe NOT FOUND!');
      ShowMessage('ffprobe.exe is missing. Please redownload Graphical YouTube-DL');
    end;

  if FileExists('youtube-dl.exe') then
    mmo1.Lines.Add('youtube-dl.exe FOUND!')
  else
    begin
      mmo1.Lines.Add('youtube-dl.exe NOT FOUND!');
      ShowMessage('ffprobe.exe is missing. Please redownload Graphical YouTube-DL');
    end;
end;

procedure TForm1.rbaudioClick(Sender: TObject);
begin
  if rbaudio.Checked then
    begin
      rbmkv.Enabled := False;
      rbmp4.Enabled := False;
    end;
end;

procedure TForm1.rbvideoClick(Sender: TObject);
begin
  if rbvideo.Checked then
    begin
      rbmkv.Enabled := True;
      rbmp4.Enabled := True;
    end;
end;

end.
