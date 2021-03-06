unit DVL.DAO.RequestClass;


interface

uses DVL.DAO.IRequest,DVL.DAO.DataModule, DVL.Model.DeviceClass,
  System.Classes, System.JSON;
  type

    TDAORequest = class(TInterfacedObject, IDAORequest)
    private
     FDevices : TDevices;
     _data : TdmDados;
    public
    constructor Create(DeviceClass :TDevices);
    destructor Destroy; override;
    procedure Update;
    procedure Insert;
    procedure Delete;
    function GetData : string;

    end;

implementation

uses System.SysUtils;



{ TDAORequest }


constructor TDAORequest.Create(DeviceClass: TDevices);
begin
 FDevices := DeviceClass;
 _data := TdmDados.Create(nil);
end;


procedure TDAORequest.Delete;
begin
 with _data.fdQueryMain do begin
   Close;
   SQL.Clear;
   SQL.Add('DELETE FROM DEVICE WHERE ID = :id');
   ParamByName('ID').AsInteger := FDevices.ID_Device;
   ExecSQL;
 end;
end;


destructor TDAORequest.Destroy;
begin
    _data.Free;
  inherited;
end;

function TDAORequest.GetData: String;
var jObject, jDevices : TJSONObject; I : Integer;
JArray : TJSONArray;
begin
 try
    jDevices := TJSONObject.Create;
    jObject := TJSONObject.Create;
    JArray := TJSONArray.Create;


    with _data.fdQueryMain do begin
   Close;
   SQL.Clear;
   SQL.Add('SELECT * FROM DEVICE');
   Open;

   jDevices.AddPair('Total',RecordCount);

   if RecordCount > 0 then begin
     for I := 0 to RecordCount -1 do begin
        jObject.AddPair('DeviceName'+I.ToString,FieldByName('NAME').Text);
        jObject.AddPair('DeviceAddress'+I.ToString,FieldByName('ADDRESS').Text);
       if not EOF then
          Next;
     end;
   end;
  JArray.AddElement(jObject);
  jDevices.AddPair('Devices',JArray);

 end;
 except
  raise Exception.Create('Erro to Load data');
 end;
 Result := jDevices.ToString;
 jDevices.Free;
end;

procedure TDAORequest.Insert;
begin
  with _data.fdQueryMain do begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO DEVICE (NAME, ADDRESS) VALUES '+
        ' (:name, :address)');
    ParamByName('name').AsString := FDevices.Device_Name;
    ParamByName('address').AsString := FDevices.Device_Address;
    ExecSQL;
  end;
end;


procedure TDAORequest.Update;
begin
   with _data.fdQueryMain do begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE DEVICE SET NAME = :name , ADDRESS = :address '+
        'WHERE ID = :id');
    ParamByName('id').AsInteger := FDevices.ID_Device;
    ParamByName('name').AsString := FDevices.Device_Name;
    ParamByName('address').AsString := FDevices.Device_Address;
    ExecSQL;
  end;
end;

end.
