unit DVL.View.SettingsClass;

interface

uses
  DVL.View.SettingsInterface, System.IniFiles, Registry;

  type
    TSettings = class(TInterfacedObject, ISettings)

    private
      DirFile : String;
    _IniFile : TIniFile;
    public
    constructor Create;
    destructor Destroy;override;
    function StartOnSys : Boolean; overload;
    procedure StartOnSys( _Value : Boolean);overload;
    function ServicePort : Integer; overload;
    procedure ServicePort(_Value : Integer);overload;
    function AutoStart : Boolean;overload;
    procedure AutoStart(_Value : Boolean);overload;
    end;

implementation

uses
  Vcl.Forms, System.SysUtils, Winapi.Windows;

{ TSettings }

function TSettings.AutoStart: Boolean;
begin
 Result :=  StrToBool(_IniFile.ReadString('SETTINGS','AutoStart',''));
end;

procedure TSettings.AutoStart(_Value: Boolean);
begin
 _IniFile.WriteBool('SETTINGS','AutoStart', _Value);
end;

constructor TSettings.Create;
begin
  DirFile := ExtractFilePath(Application.ExeName);
   _IniFile := TIniFile.Create(DirFile + '/Settings.ini');

    if not FileExists(DirFile + '/Settings.ini') then begin
      _IniFile.WriteString('SETTINGS','AutoStart','False');
      _IniFile.WriteString('SETTINGS','ServicePort','8082');
      _IniFile.WriteString('SETTINGS','StartOnSys','False');
    end;
end;

destructor TSettings.Destroy;
begin
    _IniFile.Free;
  inherited;
end;

procedure TSettings.ServicePort(_Value: Integer);
begin
 _IniFile.WriteInteger('SETTINGS','ServicePort',_Value);
end;

function TSettings.ServicePort: Integer;
begin
  Result := _IniFile.ReadInteger('SETTINGS','ServicePort',0);
end;

function TSettings.StartOnSys: Boolean;
begin
Result := _IniFile.ReadBool('SETTINGS','StartOnSyS',False);
end;

procedure TSettings.StartOnSys(_Value: Boolean);
var
Reg : TRegistry;
S, sKey : String;
begin
 _IniFile.WriteBool('SETTINGS','StartOnSys',_Value);
  Reg := TRegistry.Create;
  try
     if _Value then begin
  S:=ExtractFileDir(Application.ExeName)+'\'+ExtractFileName(Application.ExeName);
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run\',false);
  Reg.WriteString('DeviceListAPI',S);
  Reg.CloseKey;
  end
  else
  begin
    S:=ExtractFileDir(Application.ExeName)+'\'+ExtractFileName(Application.ExeName);
    Reg.RootKey:= HKEY_CURRENT_USER;
    Reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run\',false);
    Reg.DeleteValue('DeviceListAPI');
    Reg.CloseKey;
  end;
 finally
    Reg.Free;
 end;
end;

end.
