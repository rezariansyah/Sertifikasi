unit UnitUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,Strutils;

type
  THalAplikasi = class(TForm)
    Panel16: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Panel5: TPanel;
    Label25: TLabel;
    Panel4: TPanel;
    Label24: TLabel;
    Panel1: TPanel;
    Label4: TLabel;
    Panel2: TPanel;
    Label22: TLabel;
    BKen: TLabel;
    PanelBUku: TPanel;
    Label36: TLabel;
    BCari: TLabel;
    Ecari: TEdit;
    Grid1: TDBGrid;
    PanelPengolahan: TPanel;
    Label55: TLabel;
    Label52: TLabel;
    Eharga: TEdit;
    EPengarangBuku: TEdit;
    EStok: TEdit;
    ENamaPenerbit: TEdit;
    EIdPenerbit: TEdit;
    CariPengolahan: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    BcariPengolahan: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    BHapus: TButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    BBatal: TBitBtn;
    BKeluar: TBitBtn;
    BSimpan: TBitBtn;
    GridPengolahan: TDBGrid;
    BUbah: TBitBtn;
    Label17: TLabel;
    EIdBuku: TEdit;
    Label2: TLabel;
    EnamaBuku: TEdit;
    CBKategori: TComboBox;
    BTambah: TBitBtn;
    CBNegara: TComboBox;
    CBKota: TComboBox;
    Label8: TLabel;
    BCek: TLabel;
    BitBtn1: TBitBtn;
    Procedure awal;
    Procedure Buka;
    Procedure Muncul;
    Procedure Bantu;
    procedure BkeluarClick(Sender: TObject);
    procedure GridCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure EidChange(Sender: TObject);
    procedure EhpKeyPress(Sender: TObject; var Key: Char);
    procedure EnoOpKeyPress(Sender: TObject; var Key: Char);
    procedure EnamaKeyPress(Sender: TObject; var Key: Char);
    procedure EnamaPemKeyPress(Sender: TObject; var Key: Char);
    procedure Label4MouseLeave(Sender: TObject);
    procedure Label4MouseEnter(Sender: TObject);
    procedure Label22MouseEnter(Sender: TObject);
    procedure Label23MouseEnter(Sender: TObject);
    procedure Label23MouseLeave(Sender: TObject);
    procedure Label22MouseLeave(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure EcariChange(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BTambahClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BUbahClick(Sender: TObject);
    procedure BHapusClick(Sender: TObject);
    procedure BCekClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GridPengolahanCellClick(Column: TColumn);
    procedure EIdBukuChange(Sender: TObject);
    procedure BcariPengolahanClick(Sender: TObject);
    procedure CariPengolahanChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HalAplikasi: THalAplikasi;
  Tombol: String;

implementation
uses unitModule;
{$R *.dfm}

procedure THalAplikasi.BkeluarClick(Sender: TObject);
begin
close;
end;

procedure THalAplikasi.bantu;
begin
 dm.ADOQuery1.SQL.Clear;
  dm.ADOQuery1.SQL.Add('select * from T_Penerbit where idPenerbit="'+EidPenerbit.text+'"');
  dm.ADOQuery1.Open;
 if dm.ADOQuery1.IsEmpty then
begin
    dm.Adopenerbit.SQL.Clear;
    dm.Adopenerbit.SQL.Add('select * from T_penerbit');
    dm.Adopenerbit.Open;
    dm.ADOQuery1.SQL.Clear;
    dm.ADOQuery1.SQL.Add('insert into T_Penerbit (idPenerbit,NamaPenerbit,Negara,Kota)'+
    'values ("'+eidPenerbit.Text+'","'+ENamaPenerbit.Text+'","'+CBNegara.Text+'","'+CBKota.Text+'")');
    dm.ADOQuery1.ExecSQL;

    dm.AdoPenerbit.SQL.Clear;
    dm.AdoPenerbit.SQL.Add('select * from T_penerbit');
    dm.AdoPenerbit.Open;

 end
else
  begin
      dm.ADOQuery1.SQL.Clear;
    dm.ADOQuery1.SQL.Add('update T_Penerbit set NamaPenerbit="'+ENamaPenerbit.Text+'",Negara="'+CBNegara.Text+'",Kota="'+CBKota.Text+'" where IdPenerbit ="'+EIdPenerbit.Text+'"');
    dm.ADOQuery1.ExecSQL;
	dm.AdoPenerbit.SQL.Clear;
    dm.AdoPenerbit.SQL.Add('select * from T_penerbit');
    dm.AdoPenerbit.Open;
end;
end;
procedure THalAplikasi.awal;
begin
 DM.adoqbuku.Active:=False;
 DM.adoqbuku.sql.text:='select * from Q_Pengolahan order by IDBuku';
 DM.adoqbuku.Active:=True;
 GridPengolahan.Enabled:=True;
  	EidBuku.text:='';
	EnamaBuku.Text:='';
	CBKategori.Text:='';
	EpengarangBuku.Text:='';
	EHarga.Text:='';
	EStok.Text:='';
	EidPenerbit.Text:='';
	Enamapenerbit.Text:='';
	CBNegara.Text:='';
	CBKota.Text:='';
  EidBuku.enabled:=false;
	EnamaBuku.enabled:=false;
	CBKategori.enabled:=false;
	EpengarangBuku.enabled:=false;
	EHarga.enabled:=false;
	EStok.Enabled:=false;
	EidPenerbit.enabled:=false;
	Enamapenerbit.enabled:=false;
	CBNegara.enabled:=false;
	CBKota.enabled:=false;
	BCek.enabled:=false;
	Bcek.font.name:='Arial';
	BCek.Font.size:=10;
  bcEK.Caption:='Cek';
	BTambah.Enabled:=True;
	Bbatal.Enabled:=False;
	Bkeluar.Enabled:=True;
	BSimpan.Enabled:=False;
	BUbah.Enabled:=False;
	BHapus.Enabled:=True;
end;

procedure THalAplikasi.muncul;
begin
  dm.ADOQuery1.SQL.Clear;
  dm.ADOQuery1.SQL.Add('select * from Q_Pengolahan where idBUku="'+EidBuku.text+'"');
  dm.ADOQuery1.Open;

if not dm.ADOQuery1.Eof then
  begin
    CBKategori.Text:=dm.ADOQuery1.FieldValues['Kategori'];
  ENamaBuku.Text:=dm.ADOQuery1.FieldValues['NamaBuku'];
  EPengarangBuku.Text:=dm.ADOQuery1.FieldValues['PengarangBuku'];
  EHarga.Text:=dm.ADOQuery1.FieldValues['Harga'];
  EStok.Text:=dm.ADOQuery1.FieldValues['Stok'];
  EIdPenerbit.Text:=dm.ADOQuery1.FieldValues['IdPenerbit'];
  ENamaPenerbit.Text:=dm.ADOQuery1.FieldValues['NamaPenerbit'];
  CBNegara.Text:=dm.ADOQuery1.FieldValues['Negara'];
  CBKota.Text:=dm.ADOQuery1.FieldValues['Kota'];
      end;
bbatal.Enabled:=true;
bubah.enabled:=true;
end;

procedure THalAplikasi.BUka;
begin
 GridPengolahan.Enabled:=false;
  EidBuku.enabled:=true;
	EnamaBuku.enabled:=true;
	CBKategori.enabled:=true;
	EpengarangBuku.enabled:=true;
	EHarga.enabled:=true;
	EStok.Enabled:=true;
	EidPenerbit.enabled:=true;
	BCek.enabled:=true;
	BTambah.Enabled:=False;
	Bbatal.Enabled:=True;
	Bkeluar.Enabled:=False;
	BSimpan.Enabled:=True;
	BUbah.Enabled:=True;
	BHapus.Enabled:=false;
end;

procedure THalAplikasi.GridCellClick(Column: TColumn);
begin
 //eid.Text:=dm.Aqregistrasi.FieldValues['kdReg'];
end;


procedure THalAplikasi.FormShow(Sender: TObject);
begin
panel4.visible:=true;
panel5.Visible:=false;
PanelBuku.visible:=true;
PanelPengolahan.visible:=false;
end;

procedure THalAplikasi.EidChange(Sender: TObject);
begin
//if btambah.enabled=true then
//muncul;
end;

procedure THalAplikasi.EhpKeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in['0'..'9',#8, #13]) then
   begin
    key:=#0;
    end;
end;

procedure THalAplikasi.EnoOpKeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in['0'..'9',#8, #13]) then
   begin
    key:=#0;
    end;
end;

procedure THalAplikasi.EnamaKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['a'..'z','A'..'Z',#8,#13,#32,#39,#44,#46,#45]) then
 begin
 key:=#0;
 end;
end;

procedure THalAplikasi.EnamaPemKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['a'..'z','A'..'Z',#8,#13,#32,#39,#44,#46,#45]) then
 begin
 key:=#0;
 end;
end;

procedure THalAplikasi.Label4MouseLeave(Sender: TObject);
begin

BEGIN
 LABEL4.COLOR:=clWhite;
LABEL22.Color:=CLWHITE;
 LABEL4.FONT.COLOR:=$00643200;
LABEL22.FONT.Color:=$00643200;
END;
end;

procedure THalAplikasi.Label4MouseEnter(Sender: TObject);
begin

LABEL4.COLOR:=$00643200;
LABEL22.Color:=CLWHITE;
 LABEL4.FONT.COLOR:=CLWHITE;
LABEL22.FONT.Color:=$00643200;
end;

procedure THalAplikasi.Label22MouseEnter(Sender: TObject);
begin

LABEL4.COLOR:=CLWHITE;
LABEL22.Color:=$00643200;
 LABEL4.FONT.COLOR:=$00643200;
LABEL22.FONT.Color:=CLWHITE;
end;

procedure THalAplikasi.Label23MouseEnter(Sender: TObject);
begin

LABEL4.COLOR:=CLWHITE;
LABEL22.Color:=CLWHITE;
 LABEL4.FONT.COLOR:=$00643200;
LABEL22.FONT.Color:=$00643200;
//end;
end;

procedure THalAplikasi.Label23MouseLeave(Sender: TObject);
begin
BEGIN
 LABEL4.COLOR:=clWhite;
LABEL22.Color:=CLWHITE;
 LABEL4.FONT.COLOR:=$00643200;
LABEL22.FONT.Color:=$00643200;
END;
end;

procedure THalAplikasi.Label22MouseLeave(Sender: TObject);
begin

BEGIN
 LABEL4.COLOR:=clWhite;
LABEL22.Color:=CLWHITE;
 LABEL4.FONT.COLOR:=$00643200;
LABEL22.FONT.Color:=$00643200;
END;
end;

procedure THalAplikasi.Label4Click(Sender: TObject);
begin
panel4.visible:=TRUE;
panel5.Visible:=FALSE;
PanelBUku.visible:=true;
PanelPengolahan.visible:=false;
end;

procedure THalAplikasi.Label22Click(Sender: TObject);
begin
panel4.visible:=FALSE;
panel5.Visible:=TRUE;
PanelBUku.visible:=false;
PanelPengolahan.visible:=true;
end;

procedure THalAplikasi.BCariClick(Sender: TObject);
begin
  if Ecari.Text='' then
  begin
    MessageDlg('Kata Kunci Pencarian Belum Diisi',mtWarning,[mbok],0);
    Ecari.SetFocus;
    Exit;
  end;
  DM.adoBuku.active:=False;
  DM.adoBuku.sql.text:='select * from T_Buku where  NamaBuku like "%'+Ecari.Text+'%"';
  DM.adoBuku.Active:=True;
  if DM.adoBuku.isempty then
  begin
    MessageDlg('Data Tidak Ditemukan',mtWarning,[mbok],0);
    Ecari.Text:='';
     exit;
  end;
end;



procedure THalAplikasi.EcariChange(Sender: TObject);
begin
DM.adoBuku.active:=False;
  DM.adoBuku.sql.text:='select * from T_Buku where  NamaBuku like "%'+Ecari.Text+'%"';
  DM.adoBuku.Active:=True;
end;

procedure THalAplikasi.BBatalClick(Sender: TObject);
begin
awal;
end;

procedure THalAplikasi.BTambahClick(Sender: TObject);
var id,a: string;
b : Integer;
begin
tombol:='tambah';
 buka;
 	EidBuku.text:='';
	EnamaBuku.Text:='';
	CBKategori.Text:='';
	EpengarangBuku.Text:='';
	EHarga.Text:='';
	EStok.Text:='';
	EidPenerbit.Text:='';
	Enamapenerbit.Text:='';
	CBNegara.Text:='';
	CBKota.Text:='';

if dm.adoqbuku.Recordset.RecordCount > 0 then
      begin
        dm.adoqbuku.Recordset.MoveFirst;
        b :=1;
        repeat
            a := 'BK'+format('%.3d',[b]);
            if (dm.adoqbuku.Locate('IdBuku',a,[]) = false) then
              begin
                 eIDBuku.Text := a;
                 CBKategori.SetFocus;
                 Exit;
              end
            else
              begin
              dm.adoqbuku.Recordset.MoveNext;
              b := b + 1;
              end;
        until(b > dm.adoqbuku.Recordset.RecordCount + 1);
      end
else
eidbuku.Text := 'BK'+IntToStr(B);//format('%.2d',[1]);

   //Eid.text:='';

  end;

procedure THalAplikasi.BSimpanClick(Sender: TObject);
begin
if CBKategori.Text='' then
begin
    messagedlg('Kategori Tidak Boleh Kosong',mtInformation,[mbOK],0);
    CBKategori.SetFocus;
    exit;
end
else    if EnamaBuku.Text='' then
begin
    messagedlg('Nama Buku Tidak Boleh Kosong',mtInformation,[mbOK],0);
    EnamaBuku.SetFocus;
    exit;
end
else if ePengarangBuku.Text='' then
begin
    messagedlg('Pengarang Buku Tidak Boleh Kosong',mtInformation,[mbOK],0);
    ePengarangBuku.SetFocus;
    exit;
end
else
if eHarga.Text='' then
begin
    messagedlg('Harga Buku Tidak Boleh Kosong',mtInformation,[mbOK],0);
    eHarga.SetFocus;
    exit;
end
else
if eStok.Text='' then
begin
    messagedlg('Stok Buku Tidak Boleh Kosong',mtInformation,[mbOK],0);
    eStok.SetFocus;
    exit;
end
else
if eidpenerbit.Text='' then
begin
    messagedlg('ID Penerbit Buku Tidak Boleh Kosong',mtInformation,[mbOK],0);
    eidpenerbit.SetFocus;
    exit;
end
else
if eNamaPenerbit.Text='' then
begin
    messagedlg('Nama Penerbit Tidak Boleh Kosong',mtInformation,[mbOK],0);
    enamaPenerbit.SetFocus;
    exit;
end
else
if CBNegara.Text='' then
begin
    messagedlg('Negara Tidak Boleh Kosong',mtInformation,[mbOK],0);
    CBNegara.SetFocus;
    exit;
end
else
if CBKota.Text='' then
begin
    messagedlg('Kota Tidak Boleh Kosong',mtInformation,[mbOK],0);
    CBKota.SetFocus;
    exit;
end
else if tombol='tambah' then
  begin
    if messagedlg('Data baru akan disimpan?',mtConfirmation, [mbYes,mbNo], 0)=mrYes then
      begin
    bantu;
  dm.ADOQuery1.SQL.Clear;
    dm.ADOQuery1.SQL.Add('insert into T_Buku (idBuku,Kategori,namaBuku,PengarangBuku,Harga,Stok,IdPenerbit)'+
    'values ("'+eidBuku.Text+'","'+CBKategori.Text+'","'+ENamaBuku.Text+'","'+ePengarangBuku.Text+'","'+eHarga.Text+'","'+eSTok.Text+'","'+eIdPenerbit.Text+'")');
    dm.ADOQuery1.ExecSQL;

    dm.Adobuku.SQL.Clear;
    dm.Adobuku.SQL.Add('select * from T_Buku');
    dm.AdoBuku.Open;

 messagedlg('Data Telah Tersimpan',mtInformation,[mbOK],0);
 	awal;
    end;
 end
else
if tombol='ubah' then
  begin
    if messagedlg('Apakah Anda yakin akan mengedit data ini?',
      mtInformation, [mbYes,mbNo], 0)=mrYes then
      begin
      bantu;

    dm.ADOQuery1.SQL.Clear;
    dm.ADOQuery1.SQL.Add('update T_Buku set Kategori="'+CBKategori.Text+'", NamaBuku="'+ENamaBuku.Text+'",PengarangBuku="'+EPengarangBuku.Text+'",Harga="'+Eharga.Text+'",Stok="'+EStok.Text+'",IdPenerbit="'+EIdpenerbit.text+'" where IdBuku ="'+EIdBuku.Text+'"');
    dm.ADOQuery1.ExecSQL;
	dm.Adobuku.SQL.Clear;
    dm.Adobuku.SQL.Add('select * from T_Buku');
    dm.Adobuku.Open;
  messagedlg('Data Telah Berubah',mtInformation,[mbOK],0);
 	awal;
  end
end;
end;

procedure THalAplikasi.BUbahClick(Sender: TObject);
begin
tombol:='ubah';
buka;
EnamaPenerbit.enabled:=true;
CBNegara.enabled:=true;
CBKota.enabled:=true;
end;

procedure THalAplikasi.BHapusClick(Sender: TObject);
begin
if eidBuku.Text= '' then
  begin
  ShowMessage('Pilih dahulu data yang ingin Anda hapus!');
  Exit;
  end;
if eidBuku.Text<> '' then
begin
if messagedlg('Apakah Anda yakin akan menghapus Data '+dm.adobuku.fieldvalues['NamaBuku']+' ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    dm.adobuku.locate('idBuku',eidBuku.Text, []);
    dm.adobuku.Delete;
    awal;
    messagedlg('Data Telah Terhapus',mtInformation,[mbOK],0);
    end;
end;
end;

procedure THalAplikasi.BCekClick(Sender: TObject);
var id,a: string;
b : Integer;
begin
if eidPenerbit.Text= '' then
  begin
    messagedlg('Tidak ada Data Penerbit, Silahkan di Isi',mtInformation,[mbOK],0);
  Exit;
  end;

dm.ADOQuery1.SQL.Clear;
  dm.ADOQuery1.SQL.Add('select * from T_Penerbit where idPenerbit="'+EidPenerbit.text+'"');
  dm.ADOQuery1.Open;

if not dm.ADOQuery1.Eof then
  begin
  BCek.Font.Name:='Webdings';
  BCek.Font.Size:=15;
  Bcek.caption:='a';
    ENamaPenerbit.Text:=dm.ADOQuery1.FieldValues['NamaPenerbit'];
  CBNegara.Text:=dm.ADOQuery1.FieldValues['Negara'];
  CBKota.Text:=dm.ADOQuery1.FieldValues['Kota'];
  end
  else
  begin
    messagedlg('Tidak ada Data Penerbit, Silahkan di Isi',mtInformation,[mbOK],0);
   BCek.Font.Name:='Webdings';
  BCek.Font.Size:=12;
  Bcek.caption:='r';
   Enamapenerbit.text:='';
CBNegara.text:='';
	CBKota.text:='';
  Enamapenerbit.enabled:=true;
CBNegara.enabled:=true;
	CBKota.enabled:=true;
  end;


end;

procedure THalAplikasi.FormActivate(Sender: TObject);
begin
awal;
end;

procedure THalAplikasi.GridPengolahanCellClick(Column: TColumn);
begin
 eidbuku.Text:=dm.Adoqbuku.FieldValues['idBuku'];
end;

procedure THalAplikasi.EIdBukuChange(Sender: TObject);
begin
if btambah.enabled=true then
muncul;

end;

procedure THalAplikasi.BcariPengolahanClick(Sender: TObject);
begin
  if CariPengolahan.Text='' then
  begin
    MessageDlg('Kata Kunci Pencarian Belum Diisi',mtWarning,[mbok],0);
    CariPengolahan.SetFocus;
    Exit;
  end;
  DM.adoqbuku.active:=False;
  DM.adoqbuku.sql.text:='select * from Q_Pengolahan where IDBuku like "%'+CariPengolahan.Text+'%" or NamaBuku like "%'+CariPengolahan.Text+'%" or Kategori like "%'+CariPengolahan.Text+'%" or NamaPengarang like "%'+CariPengolahan.Text+'%" or IDPenerbit like "%'+CariPengolahan.Text+'%" or NamaPenerbit like "%'+CariPengolahan.Text+'%"';
  DM.adoqBuku.Active:=True;
  if DM.adoqBuku.isempty then
  begin
    MessageDlg('Data Tidak Ditemukan',mtWarning,[mbok],0);
    CariPengolahan .Text:='';
     exit;
end;
end;

procedure THalAplikasi.CariPengolahanChange(Sender: TObject);
begin
 DM.adoqbuku.active:=False;
  DM.adoqbuku.sql.text:='select * from Q_Pengolahan where IDBuku like "%'+CariPengolahan.Text+'%" or NamaBuku like "%'+CariPengolahan.Text+'%" or Kategori like "%'+CariPengolahan.Text+'%" or PengarangBuku like "%'+CariPengolahan.Text+'%" or IDPenerbit like "%'+CariPengolahan.Text+'%" or NamaPenerbit like "%'+CariPengolahan.Text+'%"';
  DM.adoqBuku.Active:=True;
end;

end.
