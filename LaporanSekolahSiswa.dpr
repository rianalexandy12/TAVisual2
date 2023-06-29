program LaporanSekolahSiswa;

uses
  Forms,
  MenuUtama in 'MenuUtama.pas' {FormMenuUtama},
  User in 'User.pas' {FormUser},
  Kelas in 'Kelas.pas' {FormKelas},
  Siswa in 'Siswa.pas' {FormSiswa},
  OrangTua in 'OrangTua.pas' {FormOrangTua},
  Poin in 'Poin.pas' {FormPoin},
  WaliKelas in 'WaliKelas.pas' {FormWakel},
  Hubungan in 'Hubungan.pas' {FormHubungan},
  Semester in 'Semester.pas' {FormSemester};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMenuUtama, FormMenuUtama);
  Application.CreateForm(TFormUser, FormUser);
  Application.CreateForm(TFormKelas, FormKelas);
  Application.CreateForm(TFormSiswa, FormSiswa);
  Application.CreateForm(TFormOrangTua, FormOrangTua);
  Application.CreateForm(TFormPoin, FormPoin);
  Application.CreateForm(TFormWakel, FormWakel);
  Application.CreateForm(TFormHubungan, FormHubungan);
  Application.CreateForm(TFormSemester, FormSemester);
  Application.Run;
end.
