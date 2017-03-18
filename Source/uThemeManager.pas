unit uThemeManager;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, VCL.Themes;

type
  Tfrmthememanager = class(TForm)
    btn1: TButton;
    btn2: TButton;
    pnl1: TPanel;
    pnl2: TPanel;
    cbbthemelist: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmthememanager: Tfrmthememanager;
  txttheme : TextFile;
  stylename : string;
implementation

{$R *.dfm}

procedure Tfrmthememanager.btn1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(cbbthemelist.Text);
  AssignFile(txttheme,'C:\Users\Public\Documents\graphicalyt-theme.txt');
  Rewrite(txttheme);
  Writeln(txttheme, cbbthemelist.Text);
  CloseFile(txttheme);
  Close;
end;

procedure Tfrmthememanager.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrmthememanager.FormCreate(Sender: TObject);
begin
  for stylename in TStylemanager.StyleNames do
    cbbthemelist.Items.Add(stylename);

  cbbthemelist.ItemIndex := cbbthemelist.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

end.
