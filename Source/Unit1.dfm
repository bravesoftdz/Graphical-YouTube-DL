object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'YouTube-DL'
  ClientHeight = 594
  ClientWidth = 943
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
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
      TabOrder = 1
      TextHint = '[Options] [URL]'
      StyleElements = []
    end
    object btncommands: TButton
      Left = 800
      Top = 13
      Width = 131
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Commands'
      Enabled = False
      TabOrder = 2
      OnClick = btncommandsClick
    end
    object edturl: TEdit
      Left = 446
      Top = 63
      Width = 314
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      TextHint = 'YouTube / Soundcloud URL'
      StyleElements = []
    end
    object btndownload: TButton
      Left = 800
      Top = 46
      Width = 131
      Height = 61
      Anchors = [akTop, akRight]
      Caption = 'Download'
      TabOrder = 4
      OnClick = btndownloadClick
    end
    object btn4: TButton
      Left = 766
      Top = 64
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'X'
      TabOrder = 5
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 766
      Top = 14
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'X'
      TabOrder = 6
      OnClick = btn5Click
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 113
    Width = 249
    Height = 481
    Align = alLeft
    TabOrder = 1
    DesignSize = (
      249
      481)
    object lbl2: TLabel
      Left = 5
      Top = 455
      Width = 177
      Height = 19
      Anchors = [akLeft, akBottom]
      Caption = 'Made by Adriaan Boshoff'
      ExplicitTop = 592
    end
    object lbl4: TLabel
      Left = 16
      Top = 223
      Width = 215
      Height = 57
      Caption = 
        'To Download a playlist simple add the playlist URL instead of th' +
        'e video URL'
      WordWrap = True
    end
    object grp2: TGroupBox
      Left = 16
      Top = 16
      Width = 217
      Height = 201
      Caption = 'Downloading'
      TabOrder = 0
      object lbl3: TLabel
        Left = 16
        Top = 142
        Width = 188
        Height = 57
        Caption = 'If you do not set a path it will be save to the current dir'
        WordWrap = True
      end
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
        Top = 87
        Width = 161
        Height = 49
        Caption = 'Set Download Path'
        TabOrder = 2
        OnClick = btn1Click
      end
    end
    object btninstall: TButton
      Left = 44
      Top = 360
      Width = 161
      Height = 42
      Caption = 'Install Missing Files'
      Enabled = False
      TabOrder = 1
      OnClick = btninstallClick
    end
    object btn2: TButton
      Left = 44
      Top = 408
      Width = 161
      Height = 41
      Caption = 'Github Page'
      TabOrder = 2
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 44
      Top = 312
      Width = 161
      Height = 42
      Caption = 'Stop Downloading'
      TabOrder = 3
      OnClick = btn3Click
    end
  end
  object mmo1: TMemo
    Left = 249
    Top = 113
    Width = 694
    Height = 481
    Align = alClient
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object dscmnd1: TDosCommand
    InputToOutput = False
    MaxTimeAfterBeginning = 0
    MaxTimeAfterLastOutput = 0
    Left = 504
    Top = 192
  end
  object flpndlg1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Title = 'Select a location to save'
    Left = 432
    Top = 241
  end
end
