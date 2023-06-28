unit MenuUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TFormMenuUtama = class(TForm)
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    b7: TButton;
    b8: TButton;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure b7Click(Sender: TObject);
    procedure b8Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuUtama: TFormMenuUtama;

implementation
uses User, Kelas, Siswa, OrangTua, Poin, WaliKelas;

{$R *.dfm}



procedure TFormMenuUtama.b1Click(Sender: TObject);
begin
FormUser.ShowModal;
end;

procedure TFormMenuUtama.b2Click(Sender: TObject);
begin
FormKelas.ShowModal;
end;

procedure TFormMenuUtama.b5Click(Sender: TObject);
begin
FormSiswa.ShowModal;
end;

procedure TFormMenuUtama.b7Click(Sender: TObject);
begin
FormOrangTua.ShowModal;
end;

procedure TFormMenuUtama.b8Click(Sender: TObject);
begin
FormPoin.ShowModal;
end;

procedure TFormMenuUtama.b4Click(Sender: TObject);
begin
FormWakel.ShowModal;
end;

end.
