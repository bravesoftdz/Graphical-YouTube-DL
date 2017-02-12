object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Graphical YouTube-DL'
  ClientHeight = 485
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 623
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 744
    DesignSize = (
      623
      57)
    object edt1: TEdit
      Left = 8
      Top = 16
      Width = 506
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      TextHint = 'Video URL'
    end
    object btn1: TButton
      Left = 520
      Top = 16
      Width = 97
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Download'
      TabOrder = 1
      OnClick = btn1Click
    end
  end
  object mmo1: TMemo
    Left = 145
    Top = 57
    Width = 459
    Height = 396
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 185
    ExplicitTop = 112
    ExplicitWidth = 559
    ExplicitHeight = 382
  end
  object pnl2: TPanel
    Left = 0
    Top = 57
    Width = 145
    Height = 396
    Align = alLeft
    TabOrder = 2
    ExplicitLeft = -6
    ExplicitTop = 63
    ExplicitHeight = 163
    DesignSize = (
      145
      396)
    object grp1: TGroupBox
      Left = 8
      Top = 24
      Width = 131
      Height = 81
      Caption = 'Format'
      TabOrder = 0
      object rbvideo: TRadioButton
        Left = 16
        Top = 24
        Width = 65
        Height = 17
        Caption = 'Video'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbvideoClick
      end
      object rbaudio: TRadioButton
        Left = 16
        Top = 47
        Width = 65
        Height = 17
        Caption = 'Audio'
        TabOrder = 1
        OnClick = rbaudioClick
      end
    end
    object btn2: TButton
      Left = 8
      Top = 357
      Width = 131
      Height = 33
      Anchors = [akLeft, akBottom]
      Caption = 'Close'
      TabOrder = 1
      OnClick = btn2Click
    end
    object grp2: TGroupBox
      Left = 8
      Top = 111
      Width = 131
      Height = 81
      Caption = 'Video Format'
      TabOrder = 2
      object rbmkv: TRadioButton
        Left = 16
        Top = 24
        Width = 65
        Height = 17
        Caption = 'mkv'
        TabOrder = 0
      end
      object rbmp4: TRadioButton
        Left = 16
        Top = 47
        Width = 65
        Height = 17
        Caption = 'mp4'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object grp3: TGroupBox
      Left = 8
      Top = 191
      Width = 131
      Height = 66
      Caption = 'Audio Format'
      TabOrder = 3
      object rbmp3: TRadioButton
        Left = 16
        Top = 32
        Width = 115
        Height = 17
        Caption = 'mp3'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
    end
    object btn4: TButton
      Left = 8
      Top = 313
      Width = 131
      Height = 38
      Caption = 'Fix DosCommand'
      TabOrder = 4
      OnClick = btn4Click
    end
  end
  object pnl3: TPanel
    Left = 604
    Top = 57
    Width = 19
    Height = 396
    Align = alRight
    TabOrder = 3
    ExplicitLeft = 528
    ExplicitHeight = 163
  end
  object pnl4: TPanel
    Left = 0
    Top = 453
    Width = 623
    Height = 32
    Align = alBottom
    TabOrder = 4
    ExplicitTop = 232
    ExplicitWidth = 537
    object lbl1: TLabel
      Left = 8
      Top = 6
      Width = 268
      Height = 19
      Caption = 'Made by Adriaan Boshoff (Inforcer25)'
    end
    object btn3: TButton
      Left = 547
      Top = 1
      Width = 75
      Height = 30
      Align = alRight
      Caption = 'Github'
      TabOrder = 0
      OnClick = btn3Click
      ExplicitLeft = 462
      ExplicitTop = 6
      ExplicitHeight = 27
    end
  end
  object dscmnd1: TDosCommand
    InputToOutput = False
    MaxTimeAfterBeginning = 0
    MaxTimeAfterLastOutput = 0
    Left = 96
    Top = 208
  end
end
