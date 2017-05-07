object frmmain: Tfrmmain
  Left = 520
  Top = 249
  Caption = 'YouTube-DL'
  ClientHeight = 554
  ClientWidth = 943
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PopupMenu = pmform
  Position = poDesigned
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 943
    Height = 113
    Align = alTop
    TabOrder = 0
    DesignSize = (
      943
      113)
    object lbl1: TLabel
      Left = 5
      Top = 26
      Width = 244
      Height = 54
      Caption = 'YouTube-DL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -45
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object grp1: TGroupBox
      Left = 255
      Top = 2
      Width = 185
      Height = 105
      TabOrder = 0
      object rbcustom: TRadioButton
        Left = 16
        Top = 16
        Width = 166
        Height = 17
        Caption = 'Custom Commands'
        TabOrder = 0
        OnClick = rbcustomClick
      end
      object rbeasy: TRadioButton
        Left = 16
        Top = 66
        Width = 145
        Height = 17
        Caption = 'Just make it easy'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = rbeasyClick
      end
    end
    object edtcustom: TEdit
      Left = 446
      Top = 13
      Width = 314
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      Enabled = False
      PopupMenu = pmedtcustom
      TabOrder = 1
      TextHint = '[Options] [URL]'
    end
    object edturl: TEdit
      Left = 446
      Top = 63
      Width = 314
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      PopupMenu = pmedturl
      TabOrder = 2
      TextHint = 'URL'
    end
    object btndownload: TButton
      Left = 797
      Top = 13
      Width = 131
      Height = 77
      Anchors = [akTop, akRight]
      Caption = 'Download'
      TabOrder = 3
      OnClick = btndownloadClick
    end
    object btn4: TButton
      Left = 766
      Top = 64
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'X'
      TabOrder = 4
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 766
      Top = 14
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'X'
      TabOrder = 5
      OnClick = btn5Click
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 113
    Width = 249
    Height = 441
    Align = alLeft
    TabOrder = 1
    DesignSize = (
      249
      441)
    object lbl2: TLabel
      Left = 5
      Top = 365
      Width = 177
      Height = 19
      Anchors = [akLeft, akBottom]
      Caption = 'Made by Adriaan Boshoff'
      ExplicitTop = 405
    end
    object lbl5: TLabel
      Left = 5
      Top = 390
      Width = 45
      Height = 19
      Anchors = [akLeft, akBottom]
      Caption = 'v2.1.6'
    end
    object lblstatus: TLabel
      Left = 1
      Top = 421
      Width = 247
      Height = 19
      Align = alBottom
      Alignment = taCenter
      Caption = 'lblstatus'
      StyleElements = [seClient, seBorder]
      ExplicitTop = 441
      ExplicitWidth = 58
    end
    object grp2: TGroupBox
      Left = 16
      Top = 6
      Width = 217
      Height = 211
      Caption = 'Downloading'
      TabOrder = 0
      object rbaudio: TRadioButton
        Left = 16
        Top = 32
        Width = 150
        Height = 17
        Caption = 'Download Audio'
        TabOrder = 0
      end
      object rbvideo: TRadioButton
        Left = 16
        Top = 64
        Width = 150
        Height = 17
        Caption = 'Download Video'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object btn1: TButton
        Left = 28
        Top = 95
        Width = 161
        Height = 49
        Caption = 'Set Download Path'
        TabOrder = 2
        OnClick = btn1Click
      end
    end
    object btn3: TButton
      Left = 44
      Top = 156
      Width = 161
      Height = 49
      Caption = 'Stop Downloading'
      TabOrder = 1
      OnClick = btn3Click
    end
    object btn2: TButton
      Left = 44
      Top = 236
      Width = 161
      Height = 49
      Caption = 'Media Player'
      TabOrder = 2
      OnClick = btn2Click
    end
    object btn6: TButton
      Left = 44
      Top = 286
      Width = 161
      Height = 49
      Anchors = [akLeft, akBottom]
      Caption = 'Report Issue'
      TabOrder = 3
      OnClick = btn6Click
    end
  end
  object mmo1: TMemo
    Left = 249
    Top = 113
    Width = 694
    Height = 441
    Align = alClient
    PopupMenu = pmlog
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
    OnChange = mmo1Change
  end
  object dscmnd1: TDosCommand
    InputToOutput = False
    MaxTimeAfterBeginning = 0
    MaxTimeAfterLastOutput = 0
    Left = 864
    Top = 176
  end
  object mm1: TMainMenu
    Left = 864
    Top = 128
    object N11: TMenuItem
      Caption = 'File'
      object hemeManager1: TMenuItem
        Caption = 'Theme Manager'
        OnClick = hemeManager1Click
      end
      object ReportIssue1: TMenuItem
        Caption = 'Report Issue'
        OnClick = ReportIssue1Click
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Options1: TMenuItem
      Caption = 'Options'
      object StopDownloading1: TMenuItem
        Caption = 'Stop Downloading'
        OnClick = StopDownloading1Click
      end
      object SetDownloadPath1: TMenuItem
        Caption = 'Set Download Path'
        OnClick = SetDownloadPath1Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help and Tips'
      object Downloading1: TMenuItem
        Caption = 'Downloading'
        Enabled = False
      end
      object Errors1: TMenuItem
        Caption = 'Errors'
        Enabled = False
      end
      object Commands1: TMenuItem
        Caption = 'Commands'
        OnClick = Commands1Click
      end
    end
    object Updates1: TMenuItem
      Caption = 'Updates'
      object CheckforUpdates1: TMenuItem
        Caption = 'Check for Updates'
        OnClick = CheckforUpdates1Click
      end
    end
    object Links1: TMenuItem
      Caption = 'Links'
      object OpenGithubPage1: TMenuItem
        Caption = 'Open Github Page'
        OnClick = OpenGithubPage1Click
      end
      object YouTube1: TMenuItem
        Caption = 'YouTube'
        OnClick = YouTube1Click
      end
      object VidMe1: TMenuItem
        Caption = 'VidMe'
        OnClick = VidMe1Click
      end
      object Sound1: TMenuItem
        Caption = 'SoundCloud'
        OnClick = Sound1Click
      end
    end
  end
  object pmlog: TPopupMenu
    Left = 864
    Top = 225
    object Clear1: TMenuItem
      Caption = 'Clear'
      OnClick = Clear1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Caption = 'Copy Everything'
      OnClick = Copy1Click
    end
  end
  object pmform: TPopupMenu
    Left = 864
    Top = 272
    object hemeManager2: TMenuItem
      Caption = 'Theme Manager'
      OnClick = hemeManager2Click
    end
  end
  object pmedturl: TPopupMenu
    Left = 864
    Top = 320
    object Clear2: TMenuItem
      Caption = 'Clear'
      OnClick = Clear2Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Copy2: TMenuItem
      Caption = 'Copy'
      OnClick = Copy2Click
    end
    object Cut1: TMenuItem
      Caption = 'Cut'
      OnClick = Cut1Click
    end
    object Paste1: TMenuItem
      Caption = 'Paste'
      OnClick = Paste1Click
    end
  end
  object pmedtcustom: TPopupMenu
    Left = 864
    Top = 376
    object Clear3: TMenuItem
      Caption = 'Clear'
      OnClick = Clear3Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Copy3: TMenuItem
      Caption = 'Copy'
      OnClick = Copy3Click
    end
    object Cut2: TMenuItem
      Caption = 'Cut'
      OnClick = Cut2Click
    end
    object Paste2: TMenuItem
      Caption = 'Paste'
      OnClick = Paste2Click
    end
  end
  object idhtp1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 864
    Top = 440
  end
end
