program LaporanSekolahSiswa;

uses
  Forms,
  MenuUtama in 'MenuUtama.pas' {FormMenuUtama},
  User in 'User.pas' {FormUser},
  Kelas in 'Kelas.pas' {FormKelas},
  Siswa in 'Siswa.pas' {FormSiswa};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMenuUtama, FormMenuUtama);
  Application.CreateForm(TFormUser, FormUser);
  Application.CreateForm(TFormKelas, FormKelas);
  Application.CreateForm(TFormSiswa, FormSiswa);
  Application.Run;
end.
