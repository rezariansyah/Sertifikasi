unit UnitModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdm = class(TDataModule)
    ADOQuery1: TADOQuery;
    AdoKoneksi: TADOConnection;
    ADOQuery2: TADOQuery;
    DataBuku: TDataSource;
    DataQueryBuku: TDataSource;
    AdoBuku: TADOQuery;
    ADOQBuku: TADOQuery;
    AdoPenerbit: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

end.
