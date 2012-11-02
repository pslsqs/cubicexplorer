object PngImageListEditorDlg: TPngImageListEditorDlg
  Left = 202
  Top = 128
  Width = 469
  Height = 313
  BorderIcons = [biSystemMenu]
  Caption = 'Editing PngImageList'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 461
    Height = 249
    BevelOuter = bvNone
    TabOrder = 0
    object gbxProperties: TGroupBox
      Left = 8
      Top = 4
      Width = 177
      Height = 128
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Image properties'
      TabOrder = 0
      object lblName: TLabel
        Left = 10
        Top = 20
        Width = 31
        Height = 13
        Caption = '&Name:'
        FocusControl = edtName
      end
      object lblBackgroundColor: TLabel
        Left = 10
        Top = 64
        Width = 86
        Height = 13
        Caption = '&Background color:'
        FocusControl = cmbBackgroundColor
      end
      object edtName: TEdit
        Left = 8
        Top = 35
        Width = 161
        Height = 21
        TabOrder = 0
        OnChange = edtNameChange
      end
      object cmbBackgroundColor: TComboBox
        Left = 29
        Top = 79
        Width = 140
        Height = 21
        ItemHeight = 13
        TabOrder = 2
        OnChange = cmbBackgroundColorChange
        OnDblClick = cmbBackgroundColorDblClick
        OnExit = cmbBackgroundColorExit
      end
      object pnlBackgroundColor: TPanel
        Left = 8
        Top = 79
        Width = 20
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsSingle
        TabOrder = 1
        OnClick = cmbBackgroundColorDblClick
      end
    end
    object lbxImages: TListBox
      Left = 276
      Top = 8
      Width = 177
      Height = 209
      Style = lbOwnerDrawVariable
      Anchors = [akLeft, akTop, akRight, akBottom]
      DragCursor = crDefault
      DragMode = dmAutomatic
      ItemHeight = 16
      MultiSelect = True
      TabOrder = 3
      OnClick = lbxImagesClick
      OnDblClick = lbxImagesDblClick
      OnDragOver = lbxImagesDragOver
      OnDrawItem = lbxImagesDrawItem
      OnEnter = lbxImagesEnter
      OnExit = lbxImagesExit
      OnKeyDown = lbxImagesKeyDown
      OnMeasureItem = lbxImagesMeasureItem
      OnMouseUp = lbxImagesMouseUp
      OnStartDrag = lbxImagesStartDrag
    end
    object cmbPreviewBackground: TComboBox
      Left = 276
      Top = 220
      Width = 177
      Height = 21
      Style = csOwnerDrawFixed
      Anchors = [akLeft, akRight, akBottom]
      ItemHeight = 15
      TabOrder = 4
      OnChange = cmbPreviewBackgroundChange
      OnDrawItem = cmbPreviewBackgroundDrawItem
      Items.Strings = (
        'Default background'
        'Checkerboard background'
        'Diamonds background'
        'Slashed background'
        'Backslashed background')
    end
    object gbxImageInfo: TGroupBox
      Left = 8
      Top = 136
      Width = 177
      Height = 105
      Anchors = [akLeft, akBottom]
      Caption = 'Image information'
      TabOrder = 1
      object lblDimensions: TLabel
        Left = 8
        Top = 20
        Width = 70
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Dimensions:'
      end
      object lblColorDepth: TLabel
        Left = 8
        Top = 36
        Width = 70
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Color depth:'
      end
      object lblTransparency: TLabel
        Left = 8
        Top = 52
        Width = 70
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Transparency:'
      end
      object lblCompression: TLabel
        Left = 8
        Top = 68
        Width = 70
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Compression:'
      end
      object lblFiltering: TLabel
        Left = 8
        Top = 84
        Width = 70
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Filtering:'
      end
      object lblDimensionsValue: TLabel
        Left = 82
        Top = 20
        Width = 87
        Height = 13
        AutoSize = False
        ShowAccelChar = False
      end
      object lblColorDepthValue: TLabel
        Left = 82
        Top = 36
        Width = 87
        Height = 13
        AutoSize = False
        ShowAccelChar = False
      end
      object lblTransparencyValue: TLabel
        Left = 82
        Top = 52
        Width = 87
        Height = 13
        AutoSize = False
        ShowAccelChar = False
      end
      object lblCompressionValue: TLabel
        Left = 82
        Top = 68
        Width = 87
        Height = 13
        AutoSize = False
        ShowAccelChar = False
      end
      object lblFilteringValue: TLabel
        Left = 82
        Top = 84
        Width = 87
        Height = 13
        AutoSize = False
        ShowAccelChar = False
      end
    end
    object pnlActionButtons: TPanel
      Left = 193
      Top = 35
      Width = 75
      Height = 178
      Anchors = [akLeft]
      BevelOuter = bvNone
      TabOrder = 2
      object btnAdd: TPngBitBtn
        Left = 0
        Top = 0
        Width = 75
        Height = 25
        Caption = '&Add'
        TabOrder = 0
        OnClick = btnAddClick
        Layout = blGlyphRight
        Margin = 6
        Spacing = 3
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002804944415478DA8D925D48145114C7FF33AEBB7725BF52
          23B31E8D908C08EB210885A8C0879630B132320A3114C2972232049F22E893BE
          E82125A32CF13362C3079505832CB34811524837025B4557F7EBEEECDC3BB7AB
          A3D52846070E773867FEBF39FF734711426021B2CFF454C6547BADA638D29599
          A92FB648A88E33FE8A85A382852958240A1692A77CD6231A04BFBEA85396015B
          4E7BC239FB7625541424A2FECD24FA5EBF178E90FFAAE046CD7F01369579A8EB
          643E797800189E05EADC4174B5F4439D186B8CE3BC5AA79AFFDF8013DD34FFD8
          7E72710F1033005D01DA87389E37F421F8F1934765AC5C4E31B62660637117CD
          2B3944CA738108930D0970DA81FE1F024F1B07E0EBEA1DB569E152A6F1015DDA
          5905D8E072D36D2585E4683610D56136653A1DC04408686B1BC14453874F9DF3
          5719DC6835F80D2B20A3B0936E2E7691822C6981C3128E7820205FEBE9F662BC
          FE8586E9C90B42DCBE6B01A41D6CA5C9454564472AC00C53C88539459C0AD864
          EA36E0C3A00F53B71E4445A8CE6901AC2F7849D523252493008659324FC504E9
          6C6114C03FEEC3FC3D0908AE00A4EC7D4623AE5222F558D263A1A51B660AB950
          7CFD06743469989D9216EE582D24ED7E428387CB088C65F552CAD115B90331F8
          197037FB40035580BD55889BD62526ED7C4C95E36709D89FE529EAA211447A7A
          A1F7BA47C163A540FC8039DD0A404AEE239A71AE8208DDF4ADCAAF72CA30DDD2
          8EE0BBB71E592C973986DFF656005273EED3ED97AB088BCA8D4BBF81F19FF036
          77627E64A85156AA25D2FFF7D5AE02ACCBBA16CE3B7F2A216D6B26BC9E610C37
          3447B5C08CFC5BEC57CCCBB4C62A80CD79A9D2999C589B909E9A3EE7FD3E140B
          856BA45F37D68865C02F696882F0CDD367480000000049454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object btnDelete: TPngBitBtn
        Left = 0
        Top = 29
        Width = 75
        Height = 25
        Caption = '&Delete'
        TabOrder = 1
        OnClick = btnDeleteClick
        Layout = blGlyphRight
        Margin = 6
        Spacing = 3
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000026B4944415478DA8D935948545118C7FF779B7BE7CEA233
          A913068D46E38339916225B43866B48C94630E961562D1438821E44B3D0D483E
          842F06D9824259894942168542055AD04B0D0519D1F2580E895B33317366BBB7
          338E4533B9F487EF5CEE39DFF73BDFF91F0EA3AA2A1262D85608B2085EA75D08
          09BCAC05A793184EE00EC664BD0759391BC578784AA346DA3EDFA8BC325FB712
          003CDB1ED69BCEEF38B08539B93F17D7470378FFDC1BFCDAEBD02D0F904593C2
          729D6ABEAD618FBB0C9E2A03369881A627C0D0AD51E2BBEDD02E0D90259BC2F3
          DD86D292F2A38DDBE1B27310689AC0021DAF80B1FEA7C4D7BF7B3180044EE44A
          E3A2AECFB2B7A2E058C3666C5DC32018051269320FF4BC03BC0323E4FBE0BE54
          004B012CC7D42A99E62E6BBDCB525D5308AB1E08856931929204E0FE17E0D3C0
          6332F9B02AAD03A6E50CB2733BF21A0F8B3B2BF360A473E11852A4E1801713C0
          B77B43646AD89506D07B42592D4D5271B1057C04882D6CCBFC19929F37D34064
          6890CC3E73A7010C9E5046739394B3DE827868219B2EC569286AF2D74FC173B4
          2BD3F05D32337664912398733AF843F5225BB88EF64FEBE3C94E54E5AF735023
          331EDD21732F8FA703CED231520BADB10BCE3A0B4A3601D47D28A93E80FA6078
          7093F8BD8D8B01128A9682D3F40915CE02795745E27EFEE940E9EF2181B7A796
          0224A4DA68741BCAB69567BB6BC0697928D1A4270CBDCAC9ABD7C88FF1D3CB01
          12524CD481CE8C427B83B5AE1AC6FCD58851137909186FBF4C663F34AF044072
          4B442E88C655AD4527EA24ABA308D31F7D787DA937F873E29CEE3F00BF15756A
          F4BAF64CEB5A7B7072662AE40FB4C5C8C5F9E7FC0BBF2FFCE106AF47A6000000
          0049454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object btnReplace: TPngBitBtn
        Left = 0
        Top = 58
        Width = 75
        Height = 25
        Caption = '&Replace'
        TabOrder = 2
        OnClick = btnReplaceClick
        Layout = blGlyphRight
        Margin = 6
        Spacing = 3
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003464944415478DA5D525B4C5457145DE70EC3D0995B2582
          8A112316FBD12698C6F8200A3206A90A43438C3AB5C6D6261325FAD3F4A3F607
          DBFEF92121468D1AA2898FD8001518CC84A94AC6AA959AB64322FED854014306
          9D1106B833F7FD70DF3B62D49DEC7372CED96BEDB5F73EAC7CFFC05185E5B768
          8A9A2E10670EE8B2D6AB4B0AC8161A8CEBD05CDE6A6B3A3DEC1233BB74597DA2
          8B0A0C4986264AB074136C6968305BD3B0D6CB341591CEC1143FF33CA82946CC
          54D490AF6255FB3707D7221A7E8CA15FA3718FAE345282C43B04A5CDFF668E7D
          BFDAB7BD0CD877258B3B5DB713FC6CD22F8B6ADDA70D9B4E477FF9040F93C0FE
          9FE378168EC65C9619342425F5866049E8817028B48E0F7E0C8C668196EE690C
          77FF1ECF9F4A8EAFDCEEFFA2F5BB0A147B80072F8023C7E34847FA7B3851DCAB
          C98AE410947C3B28ECF9BA92DFB20CD04C2029036DE1098C748451B6B9123F1D
          FE0C8487270F187C0E9C68BB874C24729EA96AB3695A3A5BB4EFAEB06D4F15BF
          613120E980DB0508B45FBE3E0AFEC302046B4BE0B2008BBC8048FE22259DADFD
          9007A2672C703FB0E2AFFE10D6EDD8C4571402AA418194CDCD0122030C3A7B69
          37E992D973A1C5E306224F4D0C9FEE02E27FB6B1A2604C280FF8F98FBCB912E6
          8C63B9DD06CF997DA5D3F93E3535F992649E3B9161453B6F09F3EA6AF945C44C
          3D7100D66B02DB5FF33825D80AC7668119C242A5E52C112C68BA2168D5757CBE
          95BB538C1C497E01B94DA0E752DBEA32F6FF7239BA806B9DC0D0FD565618880A
          D3EBB7F2D0904BCD7241ECFFFF607D40752D2975E2E76A60D448ABBF8F4672E3
          2475EB47B6A03E22E835F50E01B3C114608C8C41EBBA88BCAA5AB8366C84F3C6
          E5C0E2CD01A837C3E7A9C066721A63FD75615E4380B7543A521FE4F11798ECB8
          FAB7369118290C34ED9E5FB3D1A99F235553B7EE61B2B7A787BEE05E922939A2
          4A037D99E5C1461FA8F6EC441AA397AE26C4C4845F97D4CFCB76EF3855B2A5D2
          513616BE8DF1EEDF62243B48B0D49BC994545DCAAE39F8A557991131D4DE999A
          1D7B16E45C793179321D5AB1CDDFBEE670131EF7FD8347172EC74D038D943981
          B78CCD2F6F3DEAE67D2DA6A4A4332FA70E701CD7ABCE6661AADAC23C8FBBC357
          5C549D4D4D0EEBAABC8BC04FF09EBD02E1D692A4E09B28E50000000049454E44
          AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object btnClear: TPngBitBtn
        Left = 0
        Top = 87
        Width = 75
        Height = 25
        Caption = '&Clear'
        TabOrder = 3
        OnClick = btnClearClick
        Layout = blGlyphRight
        Margin = 6
        Spacing = 3
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003094944415478DA6D935B48145118C7FFB373E6BA9BDBBA
          ADB58BE1A5A8970CB4A28C8A966EA696DA45ED22452515296A12BD45E14B4545
          0F15223D1414B545216D8558A2A6899544D8432F964611994617775777DD9DE9
          9B59A5A80E733867BE6FFEBFF3FDBFE170400D38DE02A6CA608A0C5E95C06471
          96A6DA6E730E47068B8E76303D560270434C11C1CB426158B137088AE410F570
          1DF70F40163C1126F933B7ADCFCA299A8B2BF5CF11ECED2DE725F1B220F1DE80
          7D862FBF24DBA50912DAEFBF08FD05905C518EF7A514AEF35E39BE00F3938075
          C7DEE0CD83F643B2223E0AD893DA56147B3DD7765AF17000387AF665F0374016
          155D55AF3BF2728B4E1DC9C2E2E9C07018A83DFF1A7D0FDBEE45125DC9199B73
          B2EA364D45AA15F0F501971A9E05E2008E6310C57A6B7EEEDEEAC3CB914DE270
          94268013175EA1BFB51BE9A505A82970234906040BF0F80370E36AB701A8B601
          B1D3CAAA9C83C5B5B95842E23112739489D1F4B57C4660640C651B52318501E3
          3140A1B56B1068BAD169002ACF2173694D464531F2D22D088FD3B1BAF9C042D9
          106D781E50691DD7084C7191DE5F7F079EDF794200F79911ECAFB2254D63584A
          4D635C5C3C390C8831B43F8286857721E0ADBF750270A0CA0691C14EA5A524C4
          4FE02684FA84D898DC049011E00B55FAB3B9C5B470862CD46273B19126E3804D
          8A9F625A216884B691D1B85822B868C40CD09366B3892AB93B89ECB595DCFA8D
          D0A3F8EDC1807CFA086E2C047DF61C136EE68C5204606A7753FC375281C4D4EA
          C535057BD535AB4C886E348C3E8A763D45B4E33184ADBBC1A7A75080727A1CC0
          DA1F4C028C1153C0B1EBCEC2A2A2C4D5CBA0C5E27DF8D1DE896FFEC65BA2DB93
          E62CDDB1484E9E0E8DFC7322E5EEFBFF04982D73911D5FF2A62DDE948295D0A8
          8AC1962E0CF8EE56D03D69563DEEB6D45DDB3D56B783FE2DF0FEA63FF817C0AC
          C463E1E19FB7A72C6BEEC685E8B9D888FEA6D67239D171598BC5BC0969337D99
          FB4A5C925D454FFDCDD07F0026641613E5DB5697332338FCB5231A1E2FB1086C
          484CB05155D142DB34678385AE732410ACFB05147F0B83A25F23860000000049
          454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object btnUp: TPngBitBtn
        Left = 0
        Top = 124
        Width = 75
        Height = 25
        Caption = '&Up'
        TabOrder = 4
        OnClick = btnUpClick
        Layout = blGlyphRight
        Margin = 6
        Spacing = 3
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000021C4944415478DAA5933B68535118C7FFE7DE247D886821
          26197C504C8A5894D2461087BA38A874503B89521F9B858E0AA28BA08B1D1C14
          412D48EB031D62972E6D8DD84987802D8A1645712AA6A995368F7BCFDB737223
          B44171C8E17CE783EF5E7EE7FBFEF77F89D61A8D2CD23020753E0B68BBAB07A0
          ECA121851CF211B9A928835B2A5E9294DE16C50A44C983CDAC5481E6F2EF0025
          44BF1F6A79D27B38DD04A530FD7C863A3F0BA714E599FF038448AF8AD0C48143
          DDF13B27DB400870617411D9B1A97CB357EC931ECBF17F0374CAA37A626BF79E
          8ECB2712D81209E65C12C0B587DF309F99FC1C617E1FAFD02FAC585E03B04BA9
          362ED4787847EAE0E923ED486E02CA3C78B4C180BE9680FB0F7258CEBE9E218C
          1F371DFC5AD781E4629447B70DECEFDD85DD51029F013CD01361076869023E2D
          294C8E4CC37BFB664C7371467155034871BDD81ABB92E8DA8B8EA8032103396C
          4805840C4098CC4C616E41A0F0E8199C8FB337941BBE4A5267A78E5244322BED
          FB9AE3B156386B6CA1AB46017C334AA16C46A2A61036B5FC22F0F49EAF970BFD
          64E7B957EF56E29D5D7C730C9A0437592BB824080BA4352D1C52231B887AFF01
          FE8BC7B324399813A1CE1E574BABA301A00E60BB2075F63345C708FB7DF8AE24
          C981973F123DE9F8C698915DD9B7AB1BEB0C5E07704266A4F905CCDD1AC993ED
          C7C6075DD71DB697492ACDB765904C40D9E036F35AFCA905F3B0B2A7E86AE962
          E33F53A380DF494945E019F9A78D0000000049454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object btnDown: TPngBitBtn
        Left = 0
        Top = 153
        Width = 75
        Height = 25
        Caption = '&Down'
        TabOrder = 5
        OnClick = btnDownClick
        Layout = blGlyphRight
        Margin = 6
        Spacing = 3
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002174944415478DAB5934F68134114C6BFCD6E936AFF482B
          521A3555AC52D4D21EF620586C4104FF1D2C257810ADA5148AC5A35E144F7A50
          111141105A44AD07853482C593158A2749A1912A88550F82D5DA966CB2D96E76
          6667C7994D0824F1161C18DEEEDB79BFF7E6FB5885738E6A965235A07D68E682
          E3A9B719E3014E5D7894C22322120A26222F4617CCFF4EFCC8D2A607C3B8A444
          86DFFD8EE85D2DBBDA1AE079E5F8B257259FD3346021F1137337279695D69184
          3B7A5E574FB50386535153B254592CF6C620F0F207702DFA8029E1E8EBF9B0DE
          DD1DED6B459D0A30AFB25042B500F0C70252A249631D30F5E2233E3D9C4C2A6D
          FD53C7B3448D6D3BDC5B7B68FF26410078D9D812FA6105F8BC0AE404A866750D
          C6DD7B39ACA70694ADC79E83DBCE75AB297C65FB913EEC6856C10A105EE8BE68
          00DF5205A2EB02938F80AFC91B40E8AA123E2A000E0535ADC774E7DE73F53D07
          119417155DA5C32601D67252004914C9780C48CC3E11730C4A7C1E202CA2996C
          13B349DCEE3CD0EB76E9E06EFEBCEF8C1C430887B733C09B57B3E2A91F08F833
          1501C4B4C032D66E97B269D673628FB6AF03ACE04A6003E0BC4F82C49F7E1182
          9C14D9C5A2462500D3064D9B3AD782D35BA2A75BEA3B223E21B3F01D4B13E3CB
          CC324571CD5C89431580EC3A889119A86DDEFCAC73EC6C480A317F67DCB1577E
          9D11F7885558FC2F80BF4DEB62A8B1E1163C8E5CDAB82C54BCFF7F7EA66A017F
          01C92B1C3633E7F2D20000000049454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
    end
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 249
    Width = 461
    Height = 37
    BevelOuter = bvNone
    TabOrder = 1
    object pnlModalButtons: TPanel
      Left = 152
      Top = 4
      Width = 158
      Height = 25
      Anchors = [akBottom]
      BevelOuter = bvNone
      TabOrder = 0
      object btnOK: TPngBitBtn
        Left = 0
        Top = 0
        Width = 75
        Height = 25
        Caption = '&OK'
        Default = True
        ModalResult = 1
        TabOrder = 0
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001D44944415478DAC5934148146118869F7F669ADD550221
          5C5110090FDB25820E2B052D754848F010648487D214098930A443E521F02228
          E52D4AA873744828DA20483A48D6C15B5D4294D2924A6D0F5B63EB36BEF3AF44
          222D8287061E66BEE17B9F9DEF9B1D1386213B39CC8E05DCA49E353E9257F543
          FC146BC213BED8F5D7B5B751FB34FA31BA5C97FD8661A629709D55B26505D1D9
          A58E18E771E85115188F36E30C39AF5DDF6D2C7C2BB44934B145109D43F65049
          77554355673C164F2DCE2C4E4A72C654326FCC35D39FCC24477273B9F9E06D70
          5AEDAF242A050D35929CF4EABD3EF5A4BC658F85C9856CB150ECA6824FA6226A
          E925E337FBCF9D238E1FDC096699E394A2EF44070D7498C3A629914E60A60CF9
          A7F9871AA38738DF05254117493566B9CC41BE28768F198DB14486348754578B
          47E209A3FAD51BEC266747FB23E85451E43617B9404AD71F84236A4534CA036D
          E40DB7B4BCABDA435112360BDAA37D6AB327B8CB513D60B8D1B0221E8B69AE28
          38226C68ABA0D53EC13EF6F292731A277A5DCB625CDAF75C5270CC8612FF12B4
          584174E3859EE318BFECBC2B1AA55FCDF76D205E4E705CC56FFB4719E000837C
          E6ABC267F51A9F6D0A9615948EB41893AC4F4B9CB07762DB10FCF7AF711D7610
          84C5CCB842D50000000049454E44AE426082}
      end
      object btnCancel: TPngBitBtn
        Left = 83
        Top = 0
        Width = 75
        Height = 25
        Cancel = True
        Caption = '&Cancel'
        ModalResult = 2
        TabOrder = 1
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002E24944415478DA6D93CB4F135114C6BF79B5451E022D42
          B0C5C82321206A58812B4AD8B8D2981077B22BB4087F4C1BCA232E64E38618FF
          00096C30411E0B44A031214140A10FFAA02D7DCCDCB99E3B8A4074929399CC9D
          EF37F77EDF39D2D1230012C00DDCA1EA3638964B65A05C02741D600C372EC380
          9773EC98266206AD49478F495C42BDEA541750533198DFCB064837FD3F0089FD
          352E255CCA9A4BD92C1FE640523A7C8066B5D6365FF7EAC590E66EC149F88D99
          DE4C4E3219537AF90A40B07197C7166CEFF7C8D9E30CBE7D4E2CE62E30221D76
          6240BB5FB5DCF03A00D9D104F3C7571CBF7D6F24B7321304991100128FB9DCF6
          506BBF5BD5B802964C636B258E54867BA5C387908A598CDDEA72061B5F3E5315
          471DD8E93E0EDE7DC45924EFD309E074DBE63AFA3D50B80C3D914164FDCC8825
          D8A4AC604600502A02C5738C5777DD0EDD7DEE9514AD0A2C7A80FD0F9BE0BA89
          D63E37344B9C16621E4D98130A1D51986F01CA04289169A53CFCD5ED95E196A7
          BDD0640758220A295F806CC012EF6D9C211637038A8269CB180BD0F33B3201B0
          EE45F86AEF55CCB60D744021217279B0740EBB6B0944636C94C4737F63118055
          273DF0ABA8C8309FCB639F6D7FD20245A7855C810017D8FD92C6CF241F953801
          E8B5F94723ADD6DF10FBC9B0701B1926CECCCE32405E87526428A78AD8FD5EC6
          4901018563FA1F80C8D9E9B185DAFA3C92884A4FA410D94852F798E86CD0A015
          4CE8E706B6D3E0511313B493A94B80441D36E674DB83E4B67AE9F6DEBA65984F
          F451A30373DD0E40CBD28FA8B9B6097B0A4CCAA018576A3040EDB9DCE5BD0799
          ABD0E356544634CE26C8B019EA799419C61A65847A18544DEC966A832A057805
          A0D96697E7DB7BEB872A1D32226B09331A3727AD9CE9120046454336DEC411A4
          D064DA08B680454A7F44FA546B45586FB761C1AE4A83C90C0F9078FAD2D84B00
          4D201887BF0E089370290F0CAB6298048051DE659DC699A15B96B17C7D7CAF03
          44D1A75E05D8A1168889F55F525F839E0094AAF50000000049454E44AE426082}
      end
    end
  end
  object dlgOpenPicture: TOpenPictureDialog
    DefaultExt = 'png'
    Filter = 'Portable Network Graphics (*.png)|*.png'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Browse for a PNG file'
    Left = 40
    Top = 251
  end
  object dlgColor: TColorDialog
    Options = [cdAnyColor]
    Left = 72
    Top = 251
  end
  object Images: TPngImageCollection
    Items = <>
    Left = 8
    Top = 251
  end
end
