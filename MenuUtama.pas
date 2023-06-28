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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuUtama: TFormMenuUtama;

implementation
uses User, Kelas, Siswa;

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

end.
