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

procedure TAPISource.ServerEventEventsnewReplyEvent(var Params: TDWParams;
  var Result: string);
begin
 _Device := TControllDevice.Create;
  try
    _Device.ID(0)
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
