object uFormTester: TuFormTester
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Test Requisitions'
  ClientHeight = 157
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object edtName: TEdit
    Left = 92
    Top = 24
    Width = 157
    Height = 23
    TabOrder = 0
    Text = 'new'
  end
  object edtID: TEdit
    Left = 26
    Top = 24
    Width = 47
    Height = 23
    TabOrder = 1
    Text = '1'
  end
  object edtAddress: TEdit
    Left = 26
    Top = 69
    Width = 223
    Height = 23
    TabOrder = 2
    Text = 'ss'
  end
  object Delete: TButton
    Left = 210
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 3
    OnClick = DeleteClick
  end
  object Insert: TButton
    Left = 26
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 4
    OnClick = InsertClick
  end
  object Update: TButton
    Left = 120
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 5
    OnClick = UpdateClick
  end
end
