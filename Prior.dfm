object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Fluhtuaschs'
  ClientHeight = 370
  ClientWidth = 517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Splitter1: TSplitter
    Left = 330
    Top = 27
    Width = 2
    Height = 343
    Align = alRight
    ExplicitLeft = 329
    ExplicitTop = 0
  end
  object Splitter2: TSplitter
    Left = 153
    Top = 27
    Width = 2
    Height = 343
    ExplicitTop = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 27
    Width = 153
    Height = 343
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object NewPos: TButton
      Left = 0
      Top = 0
      Width = 153
      Height = 25
      Align = alTop
      Caption = #1053#1086#1074#1072#1103' '#1087#1086#1079#1080#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = NewPosClick
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 151
    end
    object AList: TValueListEditor
      Left = 0
      Top = 25
      Width = 153
      Height = 318
      Align = alClient
      DefaultRowHeight = 22
      PopupMenu = PopupMenu1
      Strings.Strings = (
        '')
      TabOrder = 1
      OnContextPopup = AListContextPopup
      OnValidate = AListValidate
      ExplicitLeft = 1
      ExplicitTop = 26
      ExplicitWidth = 151
      ExplicitHeight = 316
      ColWidths = (
        86
        61)
    end
  end
  object Panel2: TPanel
    Left = 332
    Top = 27
    Width = 185
    Height = 343
    Align = alRight
    BevelOuter = bvNone
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 0
    object NewA: TButton
      Left = 0
      Top = 0
      Width = 185
      Height = 25
      Align = alTop
      Caption = #1053#1086#1074#1072#1103' '#1072#1083#1100#1090#1077#1088#1085#1072#1090#1080#1074#1072
      TabOrder = 0
      OnClick = NewAClick
      ExplicitLeft = 3
      ExplicitTop = 6
      ExplicitWidth = 183
    end
    object Search: TComboBox
      Left = 0
      Top = 316
      Width = 185
      Height = 27
      Align = alBottom
      AutoComplete = False
      Style = csDropDownList
      ItemHeight = 19
      ItemIndex = 0
      TabOrder = 1
      Text = '-------'
      OnChange = SearchChange
      Items.Strings = (
        '-------')
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 183
    end
    object UList: TListBox
      Left = 0
      Top = 25
      Width = 185
      Height = 291
      Align = alClient
      ItemHeight = 19
      PopupMenu = PopupMenu1
      TabOrder = 2
      OnClick = UListSelect
      OnContextPopup = UListContextPopup
      ExplicitLeft = 1
      ExplicitTop = 28
      ExplicitWidth = 183
      ExplicitHeight = 289
    end
  end
  object Panel3: TPanel
    Left = 155
    Top = 27
    Width = 175
    Height = 343
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 2
    ExplicitTop = 0
    object NewS: TButton
      Left = 0
      Top = 0
      Width = 175
      Height = 25
      Align = alTop
      Caption = #1053#1086#1074#1086#1077' '#1089#1074#1086#1081#1089#1090#1074#1086
      TabOrder = 0
      OnClick = NewSClick
      ExplicitLeft = 1
      ExplicitTop = 317
      ExplicitWidth = 173
    end
    object SList: TCheckListBox
      Left = 0
      Top = 25
      Width = 175
      Height = 318
      OnClickCheck = SListClickCheck
      Align = alClient
      ItemHeight = 19
      PopupMenu = PopupMenu1
      TabOrder = 1
      OnClick = SListClick
      OnContextPopup = SListContextPopup
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 173
      ExplicitHeight = 316
    end
  end
  object Name: TEdit
    Left = 0
    Top = 0
    Width = 517
    Height = 27
    Hint = #1053#1072#1079#1074#1072#1085#1080#1077' '#1101#1083#1077#1084#1077#1085#1090#1072', '#1084#1086#1078#1085#1086' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1095#1077#1088#1077#1079' '#1079#1072#1087#1103#1090#1091#1102
    Align = alTop
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Text = #1053#1072#1079#1074#1072#1085#1080#1077
    ExplicitTop = 343
  end
  object PopupMenu1: TPopupMenu
    Left = 64
    Top = 168
    object NLoad: TMenuItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1092#1072#1081#1083#1072
      OnClick = NLoadClick
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'txt'
    Filter = #1041#1083#1086#1082#1085#1086#1090'-'#1092#1072#1081#1083'|*.txt'
    Left = 224
    Top = 64
  end
end
