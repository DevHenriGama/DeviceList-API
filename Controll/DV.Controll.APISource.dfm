object APISource: TAPISource
  Encoding = esUtf8
  Height = 201
  Width = 389
  PixelsPerInch = 96
  object ServerEvent: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crAll]
        NeedAuthorization = False
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'status'
        EventName = 'status'
        OnlyPreDefinedParams = False
        OnReplyEvent = ServerEventEventsstatusReplyEvent
      end
      item
        Routes = [crAll]
        NeedAuthorization = False
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'name'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'address'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'new'
        EventName = 'new'
        Description.Strings = (
          'API Device List  - by Henrique.'
          'Insert Method ')
        OnlyPreDefinedParams = False
        OnReplyEvent = ServerEventEventsnewReplyEvent
      end
      item
        Routes = [crAll]
        NeedAuthorization = False
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'data'
        EventName = 'data'
        OnlyPreDefinedParams = False
        OnReplyEvent = ServerEventEventsdataReplyEvent
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'id'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'name'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'address'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'edit'
        EventName = 'edit'
        OnlyPreDefinedParams = False
        OnReplyEvent = ServerEventEventseditReplyEvent
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'id'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'delete'
        EventName = 'delete'
        OnlyPreDefinedParams = False
        OnReplyEvent = ServerEventEventsdeleteReplyEvent
      end>
    Left = 120
    Top = 56
  end
end
