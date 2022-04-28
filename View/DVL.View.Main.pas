unit DVL.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDWAbout, uRESTDWBase, Vcl.StdCtrls,
  DV.Controll.APISource;

type
  TfrmMain = class(TForm)
    btnService: TButton;
    lblStatus: TLabel;
    poolerService: TRESTServicePooler;
    procedure FormCreate(Sender: TObject);
    procedure btnServiceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnServiceClick(Sender: TObject);
begin
 if poolerService.Active then begin
  btnService.Caption := 'Start Server';
  lblStatus.Caption := 'Offline';
  poolerService.Active := False;
 end
 else
 begin
  btnService.Caption := 'Stop Server';
  lblStatus.Caption := 'Online';
  poolerService.Active := True;
 end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
poolerService.ServerMethodClass := TAPISource;
end;

end.
