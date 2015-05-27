unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  DBGrids, ExtCtrls, ZConnection, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Datasource1: TDatasource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ZQuery2.SQL.clear;
  try
  ZQuery2.SQL.Add('insert into Tugaspd values("'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'")');
  ZQuery2.ExecSQL;
  showmessage('Berhasil dimasukan');
  except
    showmessage('Gagal memasukan data. Periksa kembali!');
  end;
  ZQuery1.refresh;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   ZQuery2.SQL.Clear;
    try
    ZQuery2.SQL.Add('update Tugaspd set Nis="'+Edit1.Text+'",Nama="'+Edit2.Text+'",Kelas="'+Edit3.Text+'",email="'+Edit4.Text+'" where Nis="'+Edit1.text+'"');
    ZQuery2.ExecSQL;
    except
      showmessage('Gagal dirubah. Pastikan  penulisan data!.     Data  Nis tidak bisa dirubah');
    end;
    showmessage('Berhasil dirubah');
    ZQuery1.Refresh;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ZQuery2.SQL.Clear;
     try
     ZQuery2.SQL.Add('delete from Tugaspd where Nis="'+Edit1.text+'"');
     ZQuery2.ExecSQL;
     Showmessage('Berhasil dihapus');
     except
       showmessage('Gagal menghapus data. Periksa kembali!');
     end;
     ZQuery1.Refresh
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if MessageDlg('Konfirmasi', 'Anda yakin untuk keluar?', mtConfirmation,
   [mbYes, mbNo],0) = mrYes
  then Application.terminate;
end;

end.

