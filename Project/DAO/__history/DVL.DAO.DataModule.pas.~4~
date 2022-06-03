unit DVL.DAO.DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  uDWAbout, uRESTDWServerEvents, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TdmDados = class(TDataModule)
    fdQueryMain: TFDQuery;
    fdMainConnection: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    fdQueryMainID: TFDAutoIncField;
    fdQueryMainNAME: TStringField;
    fdQueryMainADDRESS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation
uses VCL.Forms;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmDados.DataModuleCreate(Sender: TObject);
var Dir : String;
begin
 Dir := ExtractFilePath(Application.ExeName) + '/database/dv_database.db';
 fdMainConnection.Params.Database := Dir;
end;

end.
