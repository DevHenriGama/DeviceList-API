unit DV.Controll.APISource;

interface

uses
  System.SysUtils, System.Classes, uDWAbout, uRESTDWServerEvents,UDWDataModule,
  DVL.Controll.Interfaces, DVL.Controll.MainClass, uDWJSONObject;

type
  TAPISource = class(TServerMethodDataModule)
    ServerEvent: TDWServerEvents;
    procedure ServerEventEventsstatusReplyEvent(var Params: TDWParams;
      var Result: string);
    procedure ServerEventEventsnewReplyEvent(var Params: TDWParams;
      var Result: string);
    procedure ServerEventEventseditReplyEvent(var Params: TDWParams;
      var Result: string);
    procedure ServerEventEventsdeleteReplyEvent(var Params: TDWParams;
      var Result: string);
    procedure ServerEventEventsdataReplyEvent(var Params: TDWParams;
      var Result: string);
  private
    { Private declarations }
    _Device : IControllDevice;
  public
    { Public declarations }
  end;

 //EndPoints CRUDs - Insert - Update - Delete
 //data - View All Sources in DB


var
  APISource: TAPISource;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TAPISource.ServerEventEventsdataReplyEvent(var Params: TDWParams;
  var Result: string);
begin
 _Device := TControllDevice.Create;
  try
     Result := _Device.GetDevices;
  except
    Result := '{"Request":"ERRO"}';
  end;
end;

procedure TAPISource.ServerEventEventsdeleteReplyEvent(var Params: TDWParams;
  var Result: string);
begin
 _Device := TControllDevice.Create;
  try
    _Device.ID(Params[0].AsInteger)
    .DeleteDevice;
    Result := '{"Request":"OK"}';
  except
   Result := '{"Request":"ERRO"}';
  end;
end;

procedure TAPISource.ServerEventEventseditReplyEvent(var Params: TDWParams;
  var Result: string);
begin
 _Device := TControllDevice.Create;
  try
    _Device.ID(Params[0].AsInteger)
    .DeviceName(Params[1].AsString)
    .DeviceAddress(Params[2].AsString)
    .UpdateDevice;
    Result := '{"Request":"OK"}';
  except
   Result := '{"Request":"ERRO"}';
  end;
end;

procedure TAPISource.ServerEventEventsnewReplyEvent(var Params: TDWParams;
  var Result: string);
begin
 _Device := TControllDevice.Create;
  try
    _Device
    .DeviceName(Params[0].AsString)
    .DeviceAddress(Params[1].AsString)
    .NewDevice;
    Result := '{"Request":"OK"}';
  except
   Result := '{"Request":"ERRO"}';
  end;
end;

procedure TAPISource.ServerEventEventsstatusReplyEvent(var Params: TDWParams;
  var Result: string);
begin
 Result := '{"Status": OK,"Time":'+FormatDateTime('hh:mm:ss',TIME) +'}';
end;

end.
