unit DVL.Model.DeviceClass;

interface

uses DVL.Model.Interfaces, DVL.DAO.IRequest, System.Classes;

  type
    TDevices = class(TInterfacedObject, IDevice)

    private
        _FDID :Integer;
        _FName : String;
        _FAddress : String;
        _FRequest : IDAORequest;
    public
     constructor Create;
      function ID_Device( _ID : Integer) : IDevice; overload;
      function ID_Device : Integer; overload;
      function Device_Name : String; overload;
      function Device_Name( _Name : String) : IDevice; overload;
      function Device_Address : String; overload;
      function Device_Address( _Address : String) : IDevice; overload;
      procedure UpdateRegister;
      procedure DeleteRegister;
      procedure InsertRegister;
      function GetData : String;
    end;

implementation



{ TDevices }

uses DVL.DAO.RequestClass;



constructor TDevices.Create;
begin
_FRequest := TDAORequest.Create(Self);
end;

procedure TDevices.DeleteRegister;
begin
_FRequest.Delete;
end;

function TDevices.Device_Address(_Address: String): IDevice;
begin
 Result := Self;
 _FAddress := _Address;
end;

function TDevices.Device_Address: String;
begin
 Result := _FAddress;
end;

function TDevices.Device_Name: String;
begin
Result := _FName;
end;

function TDevices.Device_Name(_Name: String): IDevice;
begin
 Result := Self;
 _FName := _Name;
end;

function TDevices.GetData: String;
begin
 Result := _FRequest.GetData;
end;

function TDevices.ID_Device(_ID: Integer): IDevice;
begin
Result := Self;
_FDID := _ID;
end;

function TDevices.ID_Device: Integer;
begin
Result := _FDID;
end;

procedure TDevices.InsertRegister;
begin
_FRequest.Insert;
end;

procedure TDevices.UpdateRegister;
begin
_FRequest.Update;
end;

end.
