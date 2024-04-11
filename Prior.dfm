object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Priority'
  ClientHeight = 467
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 24
  object Splitter1: TSplitter
    Left = 442
    Top = 32
    Width = 2
    Height = 435
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alRight
    ExplicitLeft = 417
    ExplicitTop = 34
    ExplicitHeight = 433
  end
  object Splitter2: TSplitter
    Left = 217
    Top = 32
    Height = 435
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ExplicitLeft = 193
    ExplicitTop = 34
    ExplicitHeight = 433
  end
  object Panel1: TPanel
    Left = 0
    Top = 32
    Width = 217
    Height = 435
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object NewPos: TButton
      Left = 0
      Top = 0
      Width = 217
      Height = 32
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      Caption = #1053#1086#1074#1072#1103' '#1087#1086#1079#1080#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = NewPosClick
      ExplicitWidth = 193
    end
    object AList: TValueListEditor
      Left = 0
      Top = 32
      Width = 217
      Height = 403
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      DefaultRowHeight = 24
      PopupMenu = PopupMenu1
      Strings.Strings = (
        '')
      TabOrder = 1
      TitleCaptions.Strings = (
        #1055#1086#1079#1080#1094#1080#1103
        #1047#1085#1072#1095#1077#1085#1080#1077)
      OnContextPopup = AListContextPopup
      OnValidate = AListValidate
      ExplicitWidth = 188
      ColWidths = (
        119
        92)
    end
  end
  object Panel2: TPanel
    Left = 444
    Top = 32
    Width = 234
    Height = 435
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alRight
    BevelOuter = bvNone
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = 419
    object NewA: TButton
      Left = 0
      Top = 0
      Width = 234
      Height = 32
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      Caption = #1053#1086#1074#1072#1103' '#1072#1083#1100#1090#1077#1088#1085#1072#1090#1080#1074#1072
      TabOrder = 0
      OnClick = NewAClick
    end
    object Search: TComboBox
      Left = 0
      Top = 403
      Width = 234
      Height = 32
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      AutoComplete = False
      Style = csDropDownList
      ItemHeight = 24
      ItemIndex = 0
      TabOrder = 1
      Text = '-------'
      OnChange = SearchChange
      Items.Strings = (
        '-------')
    end
    object UList: TListBox
      Left = 0
      Top = 32
      Width = 234
      Height = 371
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      ItemHeight = 24
      PopupMenu = PopupMenu1
      TabOrder = 2
      OnClick = UListSelect
      OnContextPopup = UListContextPopup
    end
  end
  object Panel3: TPanel
    Left = 220
    Top = 32
    Width = 222
    Height = 435
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 2
    ExplicitLeft = 196
    ExplicitWidth = 221
    object NewS: TButton
      Left = 0
      Top = 0
      Width = 222
      Height = 32
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      Caption = #1053#1086#1074#1086#1077' '#1089#1074#1086#1081#1089#1090#1074#1086
      TabOrder = 0
      OnClick = NewSClick
      ExplicitWidth = 221
    end
    object SList: TCheckListBox
      Left = 0
      Top = 32
      Width = 222
      Height = 403
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      OnClickCheck = SListClickCheck
      Align = alClient
      ItemHeight = 24
      PopupMenu = PopupMenu1
      TabOrder = 1
      OnClick = SListClick
      OnContextPopup = SListContextPopup
      ExplicitWidth = 221
    end
  end
  object Name: TEdit
    Left = 0
    Top = 0
    Width = 678
    Height = 32
    Hint = #1053#1072#1079#1074#1072#1085#1080#1077' '#1101#1083#1077#1084#1077#1085#1090#1072', '#1084#1086#1078#1085#1086' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1095#1077#1088#1077#1079' '#1079#1072#1087#1103#1090#1091#1102
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Text = #1053#1072#1079#1074#1072#1085#1080#1077
    ExplicitWidth = 653
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
    Left = 272
    Top = 96
  end
end
