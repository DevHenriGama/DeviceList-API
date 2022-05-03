object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Device List -  API'
  ClientHeight = 143
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object lblStatus: TLabel
    Left = 135
    Top = 52
    Width = 36
    Height = 15
    Caption = 'Offline'
  end
  object imgSave: TImage
    AlignWithMargins = True
    Left = 391
    Top = 95
    Width = 24
    Height = 24
    AutoSize = True
    Center = True
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
      00180806000000E0773DF80000000473424954080808087C0864880000000970
      485973000000A6000000A601DD7DFF380000001974455874536F667477617265
      007777772E696E6B73636170652E6F72679BEE3C1A0000010C4944415478DA63
      646060380CC4360C08E008C40240BC9E81306804E20940FC1ECAFF0AC409FFFF
      FF5F0353C008C4FFD13451620108FC01E2489825B4B000C5125A5900B7849616
      80C0575A5B80350E5C1920294B90080BBE00310710BF26C582DB40BC8C08C361
      C009886D49B180AA60D402B22D780BC45748344B07888589B56023309B0790E4
      5246C60D40CA9F240B809ADA80EC200266AF03AAAD22D7024F20DB9D80053B81
      6AB7936B01489E9D80053F816AFF936B0128474712B06039506D14B916A803D9
      96042C380E547B935C0B84806C350216DC02AA7D47AE05EB80EC400216AC07AA
      0D22D7027E205B918005F7816A3F926AC145209EC1401AC800627D6C16A0375B
      A8098E00004FFF9A09ECCDCD800000000049454E44AE426082}
    OnClick = imgSaveClick
  end
  object lblLocalP: TLabel
    Left = 200
    Top = 52
    Width = 33
    Height = 15
    Caption = '0.0.0.0'
  end
  object btnService: TButton
    Left = 16
    Top = 48
    Width = 89
    Height = 25
    Caption = 'Start Service'
    TabOrder = 0
    OnClick = btnServiceClick
  end
  object ckAutoStart: TCheckBox
    Left = 16
    Top = 95
    Width = 97
    Height = 17
    Caption = 'Auto Start'
    TabOrder = 1
  end
  object ckStartOnSys: TCheckBox
    Left = 111
    Top = 95
    Width = 114
    Height = 17
    Caption = 'Start with System'
    TabOrder = 2
  end
  object edtPort: TEdit
    Left = 248
    Top = 92
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 440
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 3158064
    ParentBackground = False
    TabOrder = 4
    ExplicitWidth = 662
    object Image1: TImage
      AlignWithMargins = True
      Left = 383
      Top = 3
      Width = 24
      Height = 27
      Align = alRight
      AutoSize = True
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000000473424954080808087C0864880000000970
        485973000000B1000000B101C62D498D0000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A0000003C4944415478DA63
        64A031601CB560D482510BE863810B10F702B12C95CD7E0CC4458C50860C8D3C
        F084D6163CA64B10D1148C5A306AC1A80574B000000AA008641EFD7187000000
        0049454E44AE426082}
      OnClick = Image1Click
      ExplicitLeft = 447
      ExplicitTop = 9
      ExplicitHeight = 24
    end
    object Image2: TImage
      AlignWithMargins = True
      Left = 413
      Top = 3
      Width = 24
      Height = 27
      Align = alRight
      AutoSize = True
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000000473424954080808087C0864880000000970
        485973000000B1000000B101C62D498D0000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A000000F54944415478DA9D
        95BB0EC2300C45E3999D2F05065E03AF81F2BB488889388A8B098E63FB4A5652
        B53DA74D9A14D26FCEB9DEB58D649D6B59DB1268E0FBDA3F062408BDD7FE8324
        24E0708A47C2E19422810EDC2391E0B30405AB5C9302D0241A1C73A0218A4886
        F05C173EC91E89098E1D684E6C735D951B77B51D5D73A303102E18BD8996F9C9
        354154F207D7045E89081F09AC922EDC22187D2D1875316A020B7C28E9093C70
        55220922F0AEA4155856E82B39B6152E302FFFE4D85648E081534C1208C2CD12
        149C2AC40BB748261A224962816B123CDEF049E6120F5C92143876DACF14F7F9
        6762FBB933F83F59A4EF7F237D00AB394B270DC92E070000000049454E44AE42
        6082}
      OnClick = Image2Click
      ExplicitLeft = 488
      ExplicitTop = 9
      ExplicitHeight = 24
    end
  end
  object poolerService: TRESTServicePooler
    Active = False
    CORS = False
    CORS_CustomHeaders.Strings = (
      'Access-Control-Allow-Origin=*'
      
        'Access-Control-Allow-Methods=GET, POST, PATCH, PUT, DELETE, OPTI' +
        'ONS'
      
        'Access-Control-Allow-Headers=Content-Type, Origin, Accept, Autho' +
        'rization, X-CUSTOM-HEADER')
    PathTraversalRaiseError = True
    RequestTimeout = -1
    ServicePort = 8082
    ProxyOptions.Port = 8888
    AuthenticationOptions.AuthorizationOption = rdwAONone
    SSLMethod = sslvSSLv2
    SSLVersions = []
    Encoding = esUtf8
    RootPath = '/'
    SSLVerifyMode = []
    SSLVerifyDepth = 0
    ForceWelcomeAccess = False
    CriptOptions.Use = False
    CriptOptions.Key = 'RDWBASEKEY256'
    Left = 16
    Top = 152
  end
  object IdIPWatch1: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 192
    Top = 144
  end
  object SystemIcon: TTrayIcon
    Animate = True
    PopupMenu = menuIcon
    Visible = True
    Left = 136
    Top = 152
  end
  object menuIcon: TPopupMenu
    Left = 88
    Top = 152
    object Show1: TMenuItem
      Caption = 'Show '
      OnClick = Show1Click
    end
    object Close1: TMenuItem
      Caption = 'Close'
      OnClick = Close1Click
    end
  end
end
