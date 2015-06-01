unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  DBGrids, ExtCtrls, ComCtrls, EditBtn, ZConnection, ZDataset, types;

type

  { Ttugas_5 }

  Ttugas_5 = class(TForm)
    Tambah: TButton;
    Ubah: TButton;
    Hapus: TButton;
    Keluar: TButton;
    progress: TProgressBar;
    Tentang: TCheckBox;
    Datasource1: TDatasource;
    DBGrid1: TDBGrid;
    nis: TEdit;
    nama: TEdit;
    kelas: TEdit;
    email: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure TambahClick(Sender: TObject);
    procedure UbahClick(Sender: TObject);
    procedure HapusClick(Sender: TObject);
    procedure KeluarClick(Sender: TObject);
    procedure nisChange(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure progressContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TentangChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  tugas_5: Ttugas_5;

implementation

{$R *.lfm}

{ Ttugas_5 }

procedure Ttugas_5.nisChange(Sender: TObject);
begin

end;

procedure Ttugas_5.Panel1Click(Sender: TObject);
begin

end;

procedure Ttugas_5.progressContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

procedure Ttugas_5.TentangChange(Sender: TObject);
begin
  ShowMessage('program ini dibuat oleh deny_tkj2') ;
end;

procedure Ttugas_5.TambahClick(Sender: TObject);
begin
  ZQuery2.SQL.clear;
  try
  ZQuery2.SQL.Add('insert into Tugaspd values("'+nis.Text+'","'+nama.Text+'","'+kelas.Text+'","'+email.Text+'")');
  ZQuery2.ExecSQL;
  showmessage('Berhasil dimasukan');
  except
    showmessage('Gagal memasukan data. Periksa kembali!');
  end;
  ZQuery1.refresh;
end;

procedure Ttugas_5.UbahClick(Sender: TObject);
begin
   ZQuery2.SQL.Clear;
    try
    ZQuery2.SQL.Add('update Tugaspd set Nis="'+nis.Text+'",Nama="'+nama.Text+'",Kelas="'+kelas.Text+'",email="'+email.Text+'" where Nis="'+nis.text+'"');
    ZQuery2.ExecSQL;
    except
      showmessage('Gagal dirubah. Pastikan  penulisan data!.     Data  Nis tidak bisa dirubah');
    end;
    showmessage('Berhasil dirubah');
    ZQuery1.Refresh;
end;

procedure Ttugas_5.HapusClick(Sender: TObject);
begin
  ZQuery2.SQL.Clear;
     try
     ZQuery2.SQL.Add('delete from Tugaspd where Nis="'+nis.text+'"');
     ZQuery2.ExecSQL;
     Showmessage('Berhasil dihapus');
     except
       showmessage('Gagal menghapus data. Periksa kembali!');
     end;
     ZQuery1.Refresh
end;

procedure Ttugas_5.KeluarClick(Sender: TObject);
begin
  if MessageDlg('Konfirmasi', 'Anda yakin untuk keluar?', mtConfirmation,
   [mbYes, mbNo],0) = mrYes
  then Application.terminate;
  ShowMessage('Terima Kasih') ;
end;

end.

