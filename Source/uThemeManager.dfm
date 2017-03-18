object frmthememanager: Tfrmthememanager
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Theme Manager'
  ClientHeight = 224
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object pnl1: TPanel
    Left = 0
    Top = 187
    Width = 433
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      433
      37)
    object btn1: TButton
      Left = 265
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 352
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
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 187
    Align = alClient
    TabOrder = 1
    object cbbthemelist: TComboBox
      Left = 16
      Top = 16
      Width = 393
      Height = 27
      TabOrder = 0
      Text = 'cbbthemelist'
    end
  end
end
