object NewItem: TNewItem
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'New Item'
  ClientHeight = 110
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Name: TEdit
    Left = 0
    Top = 0
    Width = 277
    Height = 27
    Align = alTop
    TabOrder = 0
    Text = #1053#1072#1079#1074#1072#1085#1080#1077
    ExplicitLeft = 104
    ExplicitTop = 56
    ExplicitWidth = 121
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 77
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 194
    Top = 77
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 2
  end
end
