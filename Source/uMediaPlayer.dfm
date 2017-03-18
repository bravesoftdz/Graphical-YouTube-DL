object frmmediaplayer: Tfrmmediaplayer
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Graphical YouTube-DL Media Player'
  ClientHeight = 560
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object pnl1: TPanel
    Left = 0
    Top = 488
    Width = 862
    Height = 72
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      862
      72)
    object btn2: TButton
      Left = 8
      Top = 6
      Width = 130
      Height = 59
      Anchors = [akLeft, akBottom]
      Caption = 'Select and Play'
      TabOrder = 0
      OnClick = btn2Click
    end
    object chk1: TCheckBox
      Left = 152
      Top = 6
      Width = 249
      Height = 59
      Caption = 'Play in background after closing this window'
      TabOrder = 1
    end
    object chk2: TCheckBox
      Left = 424
      Top = 6
      Width = 153
      Height = 59
      Caption = 'Make Transparent'
      TabOrder = 2
      OnClick = chk2Click
    end
  end
  object wndwsmdplyr1: TWindowsMediaPlayer
    Left = 0
    Top = 0
    Width = 862
    Height = 488
    Align = alClient
    PopupMenu = pmmediaplayer
    TabOrder = 0
    ExplicitWidth = 245
    ExplicitHeight = 240
    ControlData = {
      000300000800000000000500000000000000F03F030000000000050000000000
      0000000008000200000000000300010000000B00FFFF0300000000000B00FFFF
      08000200000000000300320000000B00000008000A000000660075006C006C00
      00000B0000000B0000000B00FFFF0B00FFFF0B00000008000200000000000800
      020000000000080002000000000008000200000000000B000000175900007032
      0000}
  end
  object dlgOpen1: TOpenDialog
    Left = 584
    Top = 288
  end
  object pmmediaplayer: TPopupMenu
    Left = 632
    Top = 120
    object SelectandPlay1: TMenuItem
      Caption = 'Select and Play'
      OnClick = SelectandPlay1Click
    end
  end
end
