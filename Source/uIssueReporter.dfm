object frmissuereport: Tfrmissuereport
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Issue Reporter'
  ClientHeight = 247
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object pnl1: TPanel
    Left = 0
    Top = 210
    Width = 629
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 308
    DesignSize = (
      629
      37)
    object lbl1: TLabel
      Left = 16
      Top = 6
      Width = 310
      Height = 19
      Caption = 'Note: Your IP is logged and can be banned!'
    end
    object btn1: TButton
      Left = 453
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Send'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 534
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      OnClick = btn2Click
    end
  end
  object mmo1: TMemo
    Left = 0
    Top = 41
    Width = 629
    Height = 169
    Align = alClient
    Lines.Strings = (
      ''
      'What is the issue? :'
      ''
      ''
      ''
      'When and how did you discover the issue? :')
    TabOrder = 1
    ExplicitTop = 0
    ExplicitHeight = 308
  end
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 629
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 328
    ExplicitTop = 160
    ExplicitWidth = 185
    object lbl2: TLabel
      Left = 16
      Top = 11
      Width = 240
      Height = 19
      Caption = 'Please full in all the details below:'
    end
  end
  object clntsckt1: TClientSocket
    Active = False
    Address = '10.0.0.10'
    ClientType = ctNonBlocking
    Host = '10.0.0.10'
    Port = 4554
    OnConnect = clntsckt1Connect
    OnError = clntsckt1Error
    Left = 560
    Top = 72
  end
end
