object dmDados: TdmDados
  Height = 356
  Width = 468
  PixelsPerInch = 96
  object fdQueryMain: TFDQuery
    Connection = fdMainConnection
    SQL.Strings = (
      'SELECT * FROM DEVICE')
    Left = 48
    Top = 104
  end
  object fdMainConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\darke\Desktop\Projects\Delphi\DeviceListAdapte' +
        'r API\dv_database.db'
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