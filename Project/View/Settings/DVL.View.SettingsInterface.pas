unit DVL.View.SettingsInterface;

interface

type
  ISettings = interface
    ['{D1425B5A-09D7-435F-9A4E-96220CEA29D2}']
    function StartOnSys : Boolean; overload;
    procedure StartOnSys( _Value : Boolean);overload;
    function ServicePort : Integer; overload;
    procedure ServicePort(_Value : Integer);overload;
    function AutoStart : Boolean;overload;
    procedure AutoStart(_Value : Boolean);overload;
  end;

implementation

end.
