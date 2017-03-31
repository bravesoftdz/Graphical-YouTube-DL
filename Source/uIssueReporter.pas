unit uIssueReporter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdRawBase,
  IdRawClient, IdIcmpClient, System.Win.ScktComp;

type
  Tfrmissuereport = class(TForm)
    btn1: TButton;
    btn2: TButton;
    pnl1: TPanel;
    mmo1: TMemo;
    lbl1: TLabel;
    clntsckt1: TClientSocket;
    pnl2: TPanel;
    lbl2: TLabel;
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure clntsckt1Connect(Sender: TObject; Socket: TCustomWinSocket);
    procedure clntsckt1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmissuereport: Tfrmissuereport;

implementation

{$R *.dfm}

procedure Tfrmissuereport.btn1Click(Sender: TObject);
begin
  clntsckt1.Socket.SendText(mmo1.Lines.Text);
  ShowMessage('Issue Reported!');
end;

procedure Tfrmissuereport.btn2Click(Sender: TObject);
begin
  CloseModal;
end;

procedure Tfrmissuereport.clntsckt1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  ShowMessage('Connected to the reporting server');
end;

procedure Tfrmissuereport.clntsckt1Error(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  ShowMessage('Error connecting to the reporting server!');
  Close;
end;

procedure Tfrmissuereport.FormShow(Sender: TObject);
begin
  clntsckt1.Active := True;
end;

end.
