unit uCommands;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tfrmcommands = class(TForm)
    pnl1: TPanel;
    mmo1: TMemo;
    btn1: TButton;
    lbl1: TLabel;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcommands: Tfrmcommands;

implementation

{$R *.dfm}

procedure Tfrmcommands.btn1Click(Sender: TObject);
begin
  Close;
end;

end.
