unit DVL.View.Tester;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DVL.Controll.Interfaces,
  DVL.Controll.MainClass;

type
  TuFormTester = class(TForm)
    edtName: TEdit;
    edtID: TEdit;
    edtAddress: TEdit;
    Delete: TButton;
    Insert: TButton;
    Update: TButton;
    procedure InsertClick(Sender: TObject);
    procedure UpdateClick(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Device : IControllDevice;
  public
    { Public declarations }
  end;

var
  uFormTester: TuFormTester;

implementation

{$R *.dfm}

procedure TuFormTester.DeleteClick(Sender: TObject);
begin
 Device
 .ID(StrToInt(edtID.Text))
 .DeviceName(edtName.Text)
 .DeviceAddress(edtAddress.Text)
 .DeleteDevice;
end;

procedure TuFormTester.FormCreate(Sender: TObject);
begin
ReportMemoryLeaksOnShutdown := True;
Device := TControllDevice.Create;
end;

procedure TuFormTester.InsertClick(Sender: TObject);
begin

  Device
 .ID(StrToInt(edtID.Text))
 .DeviceName(edtName.Text)
 .DeviceAddress(edtAddress.Text)
 .NewDevice;
end;

procedure TuFormTester.UpdateClick(Sender: TObject);
begin
Device
 .ID(StrToInt(edtID.Text))
 .DeviceName(edtName.Text)
 .DeviceAddress(edtAddress.Text)
 .UpdateDevice;
end;

end.
