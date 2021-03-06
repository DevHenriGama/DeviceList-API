program DVLProject;

uses
  Vcl.Forms,
  DVL.View.Main in 'View\DVL.View.Main.pas' {frmMain},
  DVL.DAO.DataModule in 'DAO\DVL.DAO.DataModule.pas' {dmDados: TDataModule},
  DVL.Model.DeviceClass in 'Model\DVL.Model.DeviceClass.pas',
  DVL.Model.Interfaces in 'Model\DVL.Model.Interfaces.pas',
  DVL.DAO.IRequest in 'DAO\DVL.DAO.IRequest.pas',
  DVL.DAO.RequestClass in 'DAO\DVL.DAO.RequestClass.pas',
  DVL.Controll.MainClass in 'Controll\DVL.Controll.MainClass.pas',
  DVL.Controll.Interfaces in 'Controll\DVL.Controll.Interfaces.pas',
  DVL.View.Tester in 'View\DVL.View.Tester.pas' {uFormTester},
  DV.Controll.APISource in 'Controll\DV.Controll.APISource.pas' {APISource: TDataModule},
  DVL.View.SettingsInterface in 'View\Settings\DVL.View.SettingsInterface.pas',
  DVL.View.SettingsClass in 'View\Settings\DVL.View.SettingsClass.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Carbon');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TAPISource, APISource);
  Application.Run;
end.
