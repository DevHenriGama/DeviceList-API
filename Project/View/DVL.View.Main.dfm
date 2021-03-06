object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Device List -  API 1.1.2'
  ClientHeight = 209
  ClientWidth = 471
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
  TextHeight = 15
  object Panel3: TPanel
    Left = 293
    Top = 0
    Width = 178
    Height = 168
    Align = alClient
    TabOrder = 2
    object imgSave: TImage
      AlignWithMargins = True
      Left = 4
      Top = 133
      Width = 170
      Height = 24
      Margins.Bottom = 10
      Align = alBottom
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
      ExplicitLeft = 6
      ExplicitTop = 163
    end
    object labelPort: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 71
      Width = 170
      Height = 15
      Margins.Top = 10
      Align = alTop
      Caption = 'Service Port:'
      ExplicitWidth = 65
    end
    object ckAutoStart: TCheckBox
      AlignWithMargins = True
      Left = 4
      Top = 11
      Width = 170
      Height = 17
      Margins.Top = 10
      Align = alTop
      Caption = 'Auto Start'
      TabOrder = 0
    end
    object ckStartOnSys: TCheckBox
      AlignWithMargins = True
      Left = 4
      Top = 41
      Width = 170
      Height = 17
      Margins.Top = 10
      Align = alTop
      Caption = 'Start with System'
      TabOrder = 1
    end
    object edtPort: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 92
      Width = 170
      Height = 23
      Align = alTop
      NumbersOnly = True
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 168
    Width = 471
    Height = 41
    Margins.Right = 10
    Align = alBottom
    TabOrder = 0
    object lblLocalP: TLabel
      AlignWithMargins = True
      Left = 42
      Top = 4
      Width = 44
      Height = 33
      Margins.Left = 10
      Align = alLeft
      Alignment = taCenter
      Caption = '0.0.0.0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      OnClick = lblLocalPClick
      ExplicitHeight = 20
    end
    object labelIP: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 4
      Width = 18
      Height = 33
      Margins.Left = 10
      Align = alLeft
      Alignment = taCenter
      Caption = 'IP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 20
    end
    object tsPower: TToggleSwitch
      AlignWithMargins = True
      Left = 368
      Top = 4
      Width = 92
      Height = 33
      Margins.Left = 10
      Margins.Right = 10
      Align = alRight
      StateCaptions.CaptionOn = 'Online'
      StateCaptions.CaptionOff = 'Offline'
      TabOrder = 0
      OnClick = tsPowerClick
      ExplicitHeight = 20
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 293
    Height = 168
    Align = alLeft
    TabOrder = 1
    object imAPI: TImage
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 285
      Height = 160
      Align = alClient
      AutoSize = True
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000800000
        00800806000000C33E61CB0000000473424954080808087C0864880000000970
        485973000003B1000003B101F583ED490000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A000017864944415478DAED
        5D09781545B63E9D8455210159065164117C82328E02B2F99021ECF246404010
        023A8AA00203E83C645082BB4F4576186410020C0388E880A02688CEA0A080DB
        28A08CC080228B9084B04BD2AFFEDBF7C6BA95DEAA6FF7ED7B93FB7FDFF9A03A
        7D6BE93A5D75B63AAD5002651A8ADF1D48C05FC41A035CCBE8164637326ACCA8
        01A334469732BAC82837483F31FA94D1B620FDDBEF8EC72B6281017EC36830A3
        FE8CAE7058C7378C9607E95BBF07144FF08B01D06E2F460F93F6C6BB898D8C32
        196DF6696C71053F18A005A3E98CDA7ADC4E36A347187DE1C318E306D164800A
        8C9E6634965192C13DA718FD93B4B7F74BD296F363C1EB298C2E63549D517D46
        AD19B561D48A516583FA2E307A82D1F3A4C91009088816033464F43AA35FEBFC
        4D65F42EA3858CD6323A2B59771546FD180D63D4DE604C9F04EF3910A5F1C60D
        A2C1007853DF64544BE76F6B184D66F42F97DA6AC9E8FF18DDAAF3B7438CBA93
        B6B2241084D70CD081D17A2AB944EF63741F69029B1780803997515DE17A3EA3
        DB19BDEFF1B8E3065E320084BC7748D3E17940551BC1E8A4C763ABC9288B5137
        E13AE409681E9F7BDC7E5CC02B06A8479A81865FF6B1D767327A32F8FF688D0F
        82E7A3C2F5EF49DB9A7E88523F62165E3000A4FD8F48B3E6F1F80369EA9F1FC8
        244DD6E0B183342DE2679FFA1413F082019EA1926FDC638C9EF279AC5809260A
        D71E276D452AB3709B01F0D67F4C9ACE1EC20A4603297ACBBE11607B8040DA95
        BB763ED8E7DD8C6E264D68855D017E0808905582FD86DC7028781F568EF748DB
        E28A7C1E53C4709B01F0603A72E5FF306A4EDE0B7C7601C1104E24DEE7B08751
        4546574AD605396209A3D914C7B2849B0C8037EB6DE15A6746397E0F52C0EF18
        BDE1627D5845FE42DA3677C2EFC1C9C24D06C04477E2CAEB48D3C763111F30FA
        6F97EB848BFA41462BFD1E9C0CDC628066A459F3F8FA6EA0D875C4C062F8B1D0
        5FECF358C1C0C8B011C05805C311F679C424203601A6ECDF32EA499A7CA0076C
        09D078E2C2F7E016033CCB68025786852FDDEFC1590002214CC37B194D65B488
        D1699BBF85657310A3FF6574B5CEDFE1D31840F27E8DA8C32D0680747C0D57BE
        9334E93F96011B0056AEC5E4DC16508ED138465348B37FF00013F4A1185F09DC
        608046141E927586516DD296D4B20298BD5F0F8E9BC72C46A3FCEE9C19DC6000
        84732DE1CAB0FF77B3F1BBEB18DD4BDA56513F786D3F697BF002465F59FCDECA
        AE70DA667DB2F609A36706F3F75BC171F1801BFA35C936A20637186006857339
        4CAE4F98DC5F9ED1CBA439848C02430A49F3E68D272DA8430F321367569F5B0C
        008009107BC0AF040868C1F6982BD94E54E0060380EB7B7065E8D97F37B81793
        BF813449DA0E3606EBD66302279645BDFADC6400A05DB01D5E2688D9ADC00D06
        80FAC72F7BCDC938C0032AD20392F5CF64345AE7BA53D3B2589FDB0C00C017F2
        0C5786B1085151871CF6D9333861804AA4EDF170A7C26E8E302CDEF6BF85D156
        D2FCFEDBB8EB6012E8D7C9DCB583A4C508BE1B2C431E804AC96B1458BEA17F7F
        2DF4439C38712C5524EBB35BAF1D60A5DB45DAA4870086F89383BA3C85CCE060
        0881A5EB6ED20233ADD09734C93884698CC670654C3E8C45A2F91475C380C4DB
        EB21338C13EEB33B5176EB93ADD70AC319FD992B1F083EC3987220D9191CDE6E
        8457C3755AD166BD58F2E07829E0AEE18D6BCA95EF60B4DAE0F7909C79932A24
        F8EB857B6426CA4E7D4EEA35C3258C0E537844143C8E9F38ACCF13580D0E1E32
        0474FE46B25E2CE95D856BF008F2E6D3AA14CE2024FC2D9F2B1704AFF1909928
        3BF539A9D70A3086F5E7CAB0963E1F417DAEC36C70F089E370C5553A7FC3F20D
        C68006B03F58C6D286B87D088179A44505F1907DB056F7CBD4971AEC5308D162
        80FB19CDE3CAB007F48BA03ED76166D410F559007EEF4C46AF92264CC9C04F06
        803CC21B63A2B1050058F2B772656847CD23A8CF75E80D0EF6EDF7A9E4D12DE8
        F6B0FA159033F8C500100231098DB96B70FE8C77A99F664050EC11AE0C9771CD
        08EA731D7A83D38B9D83EE0C176724126CB419004B3C0252A006F2938F950B6F
        E14E97FA69061883CE716508C77605E9A8401CDCE58CBE133A8937BF3745AEBE
        78CD007681C8E43FB8D84F3D406E421C24824EBA0B7F43341242E7B025FDE870
        0CAE411C1C1E0E6F25C39E8FA40D4E977D1EB1C000700CC1146CE6FE8D840120
        3B61C5412C40B2C5BD580D9692164AE61B23F0834390C3310A3FC6056FDD5F5C
        6ACB4F06804F1E6668D833AC7CFF4E1900B213E2221ADABC3F84E3A41D935B23
        F93B57C00F0E6FC65B5C19AA1D2C57B2D2BE11A2CD008847D84F9A4D024CBC93
        EC21921500CF709DE46F006CAF50191748FE2E62F01D85A0F7105776DB8315E9
        B98048D4C048FA295BEF0BA4653E81F9793E699EC183C17AEA93E69FC0CA2AC6
        0DA05DA8AB515D09F8C12129433BAE0C6EDEE0625B658501B0156022617A3612
        9C211F8C64F412698EA310B01DC05115B57306FCE010D6D5882BC383E666C2A5
        B2C2003240183D82537926C07675AF876D1A0E0E923EEFB830B3D53B418201F4
        816D76065746B00A5EC4EF3D6EB7C4E0A096F09CE8350344D314EC653F2305B6
        03C80BCDB86B709BCF70569D1CF8C14105ACC195BDDE02120CF00B101433952B
        431BBB2D0AED860D0E27655A7165AF85C00403FC0268047C181DE4B1C60EEB92
        023F38A82CF77165184E1E92ABCE1409063006E224F813D4A7C8F8E899ABE007
        87D33CCBB93284101882DC3AD912AB0CE04550A82C44068003A99207ED980E06
        9D4008136F0A465CDB2B2EB595600063885B000C47F5743BBBE9D694BCC27AA3
        15453D93D669C93C5BB54B0C0693CDEBA00863FE2F8A0F67503C330002545F0A
        15DA36AF95BFFEA5EE8F9E395761F1E5BDE69F095DCFCF1ED65A558A30E93016
        A9AC230FA5A667CD89A461713038E90A9B7939EE1A0E3922B75EACBB83E39501
        A00622796571C0ECD431ADE99E5E4DF0DFA3AC772F16A6142E4FBE98F2275254
        ACC8FC69AA8899406F30CF9176EC9907FC02D04D632AA4B99400CF755AA8502E
        2589BE59D98FAA57AD60F7F71131811E03A065042C882161F072DD45B193EFA7
        34008E2198828B57DCC1DDAEA6590F4B275257158546A776CA9A25FB43A3E50C
        C1A0080A150511042E649296D839A6CFBDC73870D602876CE0392C9EFC1AA915
        E993577F27F3F6F370B41298ED67904C6191D29346E1AD42A8185605A45281D4
        5A96F2013801FC2CF5197561F47B0A3F2443C9490A2D7EBC03DDD6BE9E83AA8B
        21CD0456020D4CC3885DEBE0C2039015E2FCCE2B1835B0E59BA68D6D43437BB8
        62FC9362023B122DD6239CF9471875791BF7DB6D2BC10041D4AE5E89A6DC7713
        F5BEF52AAA50CE2A94D0166C33818C4A835837680710042F71D0A9040358A066
        5A451ADAB3318DECD3942E4B752407F0B0C5044E745AEC65701421C9034EF786
        3EED66B53A2418C02630F94F0E6F4103BB340A6C0F114025457DC0CC62E8A5A3
        2352438D274E99FCF786F4508B94B79CFCF6E091D374CF53FFA06DBB8E19DD02
        3B09B427A8D1C8298CCFD9C19A1A1290F1F2E0EC05ACAB3791F6122167A16EAA
        9C76CD6BD3EC47DA52FD3ACEFD422AA90F574B5FF292D1DFCB1C03A82BFB259F
        AC5EE980AA4D846DBCF3F1F734E2B90F29B7E0BCDE9FE13883F714C9B264E3F9
        90B76008696AA1F88593C06AB06C4A476A7D5D2DC96A03F82235F9400BA5E3FB
        862A7B996300206F63C6B3ACF60976EF5F91B3971E7CE143BA585862574210E7
        24D2EC2217ECD667006CFA500F91BE3E2C0147C5F2C96C2568477D3BD697A9AF
        882D2BEDABA6676D31BBA94C32C0C99C8C2645DA210ECB3A976CF8378D99BA85
        8AD41293FF37D2E2258EBBD5AF20A07A6335E1F30A046481F98FDE42FD7EDBC0
        E6D353E6A5755E3CD2EA363F19C0AF800F3AB47678E5CA95CEC1F56DBAB9BEB7
        FD10F59BB8910A8BC2BA82E514819C468215EA443817D2E64348AE4F9A900C20
        47010C678801849C0059C4C8D38A2D013E82E2FC4B5011DF7CA1B3ADEDA030B9
        F0CACB3A2EB30C2C2D930C909B3D74ACA2A853CDEEF9EE8793D4E9A1F5945710
        B6B223F72FDECC753A3FA9435A1A9D0C32FE90A508B87AFF4A5AD610BD0F6023
        DB3AB28C1407874026C899D9831A5C6E2E18AAAA32AE5AE7C52F5B75A0CC3180
        BA7E5485FCF2F938015DD7E81E2CF75D47BF2D4AFB382287EC1EE2C91DECDDC8
        FE059FBE13FB0880F38A604818DC4429F3B6609BC52B0156800D2F77B352110F
        17543EDBF0CAB6AB4C1356973906C8CB1E3A92E9C6A6C691796B76D184D9DBC4
        CBD84FC5651FFB35125DB9F5ED01086C48307D58B80E5963267F61E6F8B634A4
        FBD556F58D484BCFFAB3D90D654E08CCCBC9C0CCB630FAFB911367E9A6616FD0
        A93361878821F00D146E85B30CAE5CBD4FCDE8E550A2E0BD90E2F0BD016454BD
        42E7B707827F17731BAF222DB35A00F018C273080FA2C923DC9696BEA495C90D
        658B01F2370DBE5A2D4CDA6376CFE45776D0F41561392491C71067247EE2AEC1
        5D0E4612271F3600E449B6E32E87F1076708E112161371810930717C7A1924E0
        FA26F86F0063EFBC8E26DF7BA369234A515293D42E8B0CC75CB6186063C664B6
        BD671AFEFDD405BA6ED06A2A087FFBC5A51FAF1C24F836C2CF9DE6508234B78C
        4A7E5EE743D2CE0EF23241D8560081F0EBE57704EC044650489D9C9ABEE409E3
        BF7B07DF1940CDCC4CCA6DF35DD3A4146ACF26BEBD420A96D634A3FB75F67EA8
        5138A7C7AB0278988F093F8D3487125603646711CF6120DB089FAF090227BE70
        526CC59CF3483B1AD4B59159DD792AA96F31817173D145DA5C6D4BA39D4A6666
        713F4BAD10989B93B156D18EBB57B3FB9B1EE3DEA18FBEE457DD40D2E7E7B832
        543D2CA7BCB4EF560E253001F207F12B01180F297AF672D7C0104F870A2DAFAD
        49D933BBDB6A20F468D883FDB05A7A562FE9872A095F1980097B52DE44087FD7
        0E788DB7F841EDC3DECCDBF6F1CD81115CD9CD1C4A000EE4C2425987BB86135B
        F77365840CC19814702025B1577BF7CA7E54AB9A5CF231A61D28D20F551271C5
        006B3ED84F773FF90FFE12720BF2FB3C3C793F52F8117A37732885202699C697
        4F7E45E1217761E738174CBC85EEB06B220E22C1000232177C4AD3FE16A67961
        999DC495A106FE952BBB9D432904187CF653B8A10A59C7F864D761A1FB0FF46D
        4ACF8C6C61ABF2106281013CFDBD2C03F4999013B0FD7310D3DD8B8767BDFC0A
        88F8610DAC08FCD6037BC0AA50A1E34D7568CDF39DA51A483080805677BF49DF
        1EE4138A070C3DBC4100811E2DB9B2DBC7E779405BE1FD0D58F25B7365E439FE
        32546854B72AED587CBB5403090610D0A4DF4A3A9ACB67750D185CF88F59789D
        40830722867671E5A3149EB8BB46B03F01A45E5A9EFEF3C69D520D24184040ED
        EECBE8FCCF61DB39746E5EFF1753E8C080E3D55908089ABC6621E6180ECB418C
        E364C7DE1E2CD5402C30404C0981B5BA2DA50B17C354792B06703B87120FF103
        17A60C803881231BEE926A20C100021AF45E21C6FBC5CD160093F077AB074835
        E03503881CACD7962C03E0AB1FB60FA6CA32C08D43D7D0DE1FC25E685108F43A
        87120F5108146D12312B0462EF4228D31FA9E497C52265004C3E2C71D081F3C8
        02B20CD097A9811BE5D440B77328F140BC021FCF27AA81611FC1EA72735D5AF9
        7427A906DC6600BCF148338F7467469F9473EB60089665843A218F9EE18A20CB
        0013E66CA379AFF3AB6E09478CD7399442D03304210C6D15578E1943909D890F
        4DD853C2752B069864B35E5D46906580D7DFDF1F38F4C141D4BDF54CC16EE650
        0A016FFA5CAEAC670A0E0B6A59F45807BABDC355F66A0FC20D06886882C89E90
        E798C164190036806BFAAF242EFA1B2A019E2A1F59EB650E2500720E9C41BFE2
        AE993A831017B8E7B5FE16914125E1060344B444939C942FBDC5387107A78F5A
        4FDB77F1813F812DE059AEEC650E254C285CCB3DB96B504BE06DDCC75D43006A
        31B3B76A5A93DE9DE18F3B3822218D9CA9793242A67440C8FC3776D31F67857D
        D8136F3F269DD70FBDC8A184C99F111C1B0FF17BC3250242B8845246F02C2024
        22358D22D3F3EDA89925909F33E471959429467F871DA0D9C0D574E65C985C87
        49E1A388DDCEA184E78690B09EC2757CBF01A23D6F8CC22A383D54B8B47239FA
        6A595F4AAB627C309B3D94C753D3B39E34F9BB63F81DF225FDFBFC7787355693
        8A4C8D3713E76EA739ABC3BE2E832D0DFB3C7F48C0288712F60F2CCF5011ADB4
        0348FBF7909673A98EF037BDA0501C07827C50BCA58D19D02C9058C20C5E0685
        C61D03005661E18711163E740D9D3E1B367FD0B945539B6C0E250051C448B481
        B7FD7F48FF700A261F4626F1F3F6387FD02754A8C2DEFE1D8B7B5B4402791B16
        1E9F0CB071C8085295B966F7CC5CF9353D367F877819469FD9C23537732801F8
        DE3226F988703D2C9720F0ECC89634B2EFB5E6B529EA48AB74B2658E01EC1C0D
        FBF962514023F8620FEF0A082CE9989CB5C2ED6EE450C23EFF22A32954F29839
        0E90E0ED2F8EFDBEF19A1A01C93F25D974C89E1F0D8B4B0600988A384EE172F3
        EA017E810E23D7896704F030B115ACD5F989931C4A30EE20CC0C9AC53E9DBF63
        F2712AA9789D87EFFF83B93D2DB38644E37068DC32C0F14D775D915C987CD0EA
        BEB7B77C4F833337898921B012C01E619495D3288712103A1EFE19699A048E96
        9D36A807CB3E98B4F8CDC71BBFEC898ED4F5E62BC80AD1381E1EB70CC00441EC
        8BF7DBB9170922464FFD884AE68708ECFD50118F4AF6DB0AD030A076F6E12FC2
        E2376B7C5BBAAB9BE581D0E0D3F13E41445C32407ECEB0962A15C1BD9A64E77E
        004C3076DA16BD1431B9A4E5048089F8BCDDFA0C80651EBE05C80161C62ABCF9
        D3C7B6B13FF91A3C4F1113770C808F2DE417D6DB4E5ABE7D29603B18FEDC663A
        795A3715107C02A12451965B8B00A891A12451A23D80AA5E529E5E99D8DED6B2
        AF034F9344C51D03E4E60C19AF90F2A2D301EF3B5410F0187EF6AD615A209858
        C1607C9A38D804F834719849D86E618B809C004B8EEE6A04697FE1A45BE2364D
        9C75DFA2DC97A00D604E246D611B58F0E66E7A7AD1E7A286E01A2A574CA1D1FD
        9BD1B841D753F914DB3B951E7C4D1469DD391FFA929F93F180AA49F011B507F7
        F1CC555FD3C2B5DF885643C7B8A4520AFDBED735348A4D3ED2C64608CF52C546
        D6ABF5A32A9C2C7FF2FE6DBB8E4D6FDA40937576EECBA3964D6B8CAA7AFCEC7C
        A5FFAA48F3ED59222F7BC87D4CACC65B11D1EB15A8ABE002BDB6691FADC8DE4B
        DB771FD3D3164C01E91E277C07746E487D6F6D60EAD89180ED0F484495017EDA
        985137450DD8CF8D84B0CF2F2A745B8D4E599E7F3DDB4D26281E5FFE39FAE7E7
        8769DBCE9F68CFC17CDAFF63011DCF3F5F9C6E06DE3B44F0624F6F522F3530F1
        ED6FA82D1DCC6101A9AF87444D080C9A6011666525817F967AE26C6B1B2B41C4
        5B88174CE033A43F1D133506C8CF193A9A49A4D3C9061452D9DEB564B6C56DAE
        C810A588091C7D37286A0C90979321C6D59B616B5A7A561B8B7B5C13224B0113
        B8FED1285B8DCAD4C51800819397923D9C620C60A5FCBAAA45C43113389E7C20
        6A42A024039C640C901AADBE15F7519F095426D92F65DC36893DE8DEEC813D42
        26AE64977194B53D97B5BD50515418B1602DE453824534F940F418203B632B6B
        ED669BB76F610C20FDF13C3720D809BE50D4A411A99D176D0DFD5DDD34AC627E
        51E130F6E891DA5DEE34866DA8DB58EB0B53CFA7BDAAF49859EC63389993D1A6
        480BBCF5ECD3B19E213F3B6314EBF10C9B9D7A30D2814502580C5555A99C967C
        6086991D1D3186945438502505EEE1348926749B65C2EFCB5494BCDC2C864FFB
        78F4956318639E49EBBC78AE4C037A881A0304D540BC49375874E9D3D41367DA
        44C320E4167273862C65CBB3DCF96CF1F9102DAD969E3524DA7D8FAA33286808
        42A0A40113289FFE5C94DCAB66978587ACEA72D2BE57B09380DA1236E2F7BC40
        D4BD81EACA7EE54F5E566938136E069176CC19F817FBF1D2AA27CE2E9078F363
        86014E640FBB3E4929FA32923A8A0AD5EBAB775DF255247538819FEEE048E177
        FBBF74840901F91B337026A0BAC32A72533737ACC19FD88916120CE012727332
        D629254FF7D81DC8BAD059BD68433E01B3CFDE3CBFDB2F6D906200BFBD797EB7
        5F1A619B013CF0E649C1EFF64B2B6C338007DE3C29F8DD7E69854C2CBDDBDE3C
        29F8DD7E69850C03B8EDCD9382DFED975678C500AE7BF3FC6EBFB4C23E03F8EC
        CDF3BBFDD20AFB42A0CFDE3CBFDB2FAD9055037DF3E6F9DD7E69851343905BDE
        3C69F8DD7E6984BC29D83D6F9E23F8DD7E6983AF0E9404FC478201CA38FE1FDE
        6414F94A83DFB70000000049454E44AE426082}
      ExplicitLeft = 68
      ExplicitTop = 23
      ExplicitWidth = 128
      ExplicitHeight = 128
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
    Left = 32
    Top = 208
  end
  object IdIPWatch1: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 208
    Top = 200
  end
  object SystemIcon: TTrayIcon
    Animate = True
    PopupMenu = menuIcon
    Visible = True
    Left = 152
    Top = 208
  end
  object menuIcon: TPopupMenu
    Left = 104
    Top = 208
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
