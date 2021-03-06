unit DVL.Controll.MainClass;

interface

uses DVL.Controll.Interfaces, DVL.Model.DeviceClass, DVL.Model.Interfaces,
  System.Classes;

  type
    TControllDevice = class(TInterfacedObject, IControllDevice)
    private
    FDeviceAddress: String;
    FDeviceName: String;
    FID: Integer;
    Device : IDevice;

    public
    constructor Create;
    function ID( _ID : Integer) : IControllDevice;
    function DeviceName(_Name : String) : IControllDevice;
    function DeviceAddress(_Address : String) : IControllDevice;
    function GetDevices : String;
    procedure NewDevice;
    procedure UpdateDevice;
    procedure DeleteDevice;

    end;

implementation

{ TControllDevice }


constructor TControllDevice.Create;
begin
 Device := TDevices.Create;
end;

procedure TControllDevice.DeleteDevice;
begin
  Device.ID_Device(FID)
    .Device_Name(FDeviceName)
      .Device_Address(FDeviceAddress)
        .DeleteRegister;
end;

function TControllDevice.DeviceAddress(_Address: String): IControllDevice;
begin
Result := Self;
FDeviceAddress := _Address;
end;

function TControllDevice.DeviceName(_Name: String): IControllDevice;
begin
Result := Self;
FDeviceName := _Name;
end;

function TControllDevice.GetDevices: String;
begin
 Result := Device.GetData;
end;

function TControllDevice.ID(_ID: Integer): IControllDevice;
begin
Result := Self;
FID := _ID;
end;


procedure TControllDevice.NewDevice;
begin
   Device.ID_Device(FID)
    .Device_Name(FDeviceName)
      .Device_Address(FDeviceAddress)
        .InsertRegister;
end;

procedure TControllDevice.UpdateDevice;
begin
  Device.ID_Device(FID)
    .Device_Name(FDeviceName)
      .Device_Address(FDeviceAddress)
        .UpdateRegister;
end;

end.
