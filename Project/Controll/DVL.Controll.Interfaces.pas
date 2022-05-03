unit DVL.Controll.Interfaces;

interface

uses
  System.Classes;

type
  IControllDevice = interface
    ['{CC512E88-EA24-41CD-865E-0BE879AC9BD9}']
    procedure NewDevice;
    procedure UpdateDevice;
    procedure DeleteDevice;
    function GetDevices : TStringList;
    function ID( _ID : Integer) : IControllDevice;
    function DeviceName(_Name : String) : IControllDevice;
    function DeviceAddress(_Address : String) : IControllDevice;
  end;

implementation

end.
