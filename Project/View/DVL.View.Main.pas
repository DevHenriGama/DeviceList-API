unit DVL.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDWAbout, uRESTDWBase, Vcl.StdCtrls,
  DV.Controll.APISource, DVL.View.SettingsInterface, DVL.View.SettingsClass,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls,Winapi.WinSock,
  IdBaseComponent, IdComponent, IdIPWatch, Vcl.Menus, Vcl.Imaging.GIFImg,
  Vcl.WinXCtrls,MIDASLIB;

type
  TfrmMain = class(TForm)
    poolerService: TRESTServicePooler;
    IdIPWatch1: TIdIPWatch;
    SystemIcon: TTrayIcon;
    menuIcon: TPopupMenu;
    Show1: TMenuItem;
    Close1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ckAutoStart: TCheckBox;
    ckStartOnSys: TCheckBox;
    edtPort: TEdit;
    imgSave: TImage;
    imAPI: TImage;
    labelPort: TLabel;
    lblLocalP: TLabel;
    labelIP: TLabel;
    tsPower: TToggleSwitch;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgSaveClick(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tsPowerClick(Sender: TObject);
    procedure lblLocalPClick(Sender: TObject);
  private
    { Private declarations }
    _Settings : ISettings;
    procedure ServicePower;
    procedure UpdateUISettings;
    procedure SaveSettings;

  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  IdWinsock2, ShellAPI;

{$R *.dfm}

procedure TfrmMain.Close1Click(Sender: TObject);
begin
Self.Visible := True; SystemIcon.Visible := False;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
ReportMemoryLeaksOnShutdown := true;
poolerService.ServerMethodClass := TAPISource;
_Settings := TSettings.Create;

     if _Settings.StartOnSys then
       Self.WindowState := TWindowState.wsMinimized
      else
       Self.WindowState := TWindowState.wsNormal;
end;

procedure TfrmMain.FormHide(Sender: TObject);
begin
 Self.Visible := False;
 SystemIcon.Visible := True;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
     poolerService.ServicePort := _Settings.ServicePort;
     UpdateUISettings;

     if _Settings.AutoStart then  begin
        tsPower.State := tssOn;
        ServicePower;
     end;
end;


procedure TfrmMain.Image1Click(Sender: TObject);
begin
Self.Visible := False;
end;

procedure TfrmMain.Image2Click(Sender: TObject);
begin
 if Application.MessageBox('Deseja fechar o Servi?o?','DeviceList', MB_YESNO+MB_ICONQUESTION) = 6 then
  Self.Close;
end;

procedure TfrmMain.imgSaveClick(Sender: TObject);
begin
 if poolerService.Active then begin
   Application.MessageBox('Turn off Service to Change Settings!','DeviceList',MB_OK+MB_ICONEXCLAMATION);
 end
 else
 begin
   SaveSettings;
   UpdateUISettings;
    Application.MessageBox('Settings Save with Sucessful!','DeviceList',MB_OK+MB_ICONINFORMATION);
 end;

end;

procedure TfrmMain.lblLocalPClick(Sender: TObject);
begin
ShellExecute(handle,'open',Pchar(lblLocalP.Caption + '/status'),nil,nil, SW_SHOWMAXIMIZED);
end;

procedure TfrmMain.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const SG = $F012;
begin
 ReleaseCapture;
 Perform(WM_SYSCOMMAND,SG,0);
end;


procedure TfrmMain.SaveSettings;
begin
 with _Settings do begin
   StartOnSys(ckStartOnSys.Checked);
   ServicePort(StrToInt(edtPort.Text));
   AutoStart(ckAutoStart.Checked);
 end;
end;

procedure TfrmMain.ServicePower;
begin
  if tsPower.State = tssOn then begin
  tsPower.State := tssOn;
  lblLocalP.Caption := 'http://' + IdIPWatch1.LocalIP + ':'+ edtPort.Text;
  poolerService.Active := True;
 end
 else
 begin
    tsPower.State := tssOff;
  lblLocalP.Caption := '0.0.0.0';
  poolerService.Active := False;

 end;
end;

procedure TfrmMain.Show1Click(Sender: TObject);
begin
Self.Show;
end;

procedure TfrmMain.tsPowerClick(Sender: TObject);
begin
ServicePower;
end;

procedure TfrmMain.UpdateUISettings;
begin
  with _Settings do begin
     ckAutoStart.Checked := AutoStart;
     ckStartOnSys.Checked := StartOnSys;
     edtPort.Text := IntToStr(ServicePort);
  end;
end;

end.
