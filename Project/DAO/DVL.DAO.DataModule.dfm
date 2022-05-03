object dmDados: TdmDados
  OnCreate = DataModuleCreate
  Height = 356
  Width = 468
  PixelsPerInch = 96
  object fdQueryMain: TFDQuery
    Active = True
    Connection = fdMainConnection
    SQL.Strings = (
      'SELECT * FROM DEVICE')
    Left = 48
    Top = 104
    object fdQueryMainID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdQueryMainNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 32767
    end
    object fdQueryMainADDRESS: TStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 32767
    end
  end
  object fdMainConnection: TFDConnection
    Params.Strings = (
      
        'Database=F:\Progama'#231#227'o\Projects\Delphi\DeviceList API\DeviceList' +
        '-API\dv_database.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 40
    Top = 256
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 176
  end
end
