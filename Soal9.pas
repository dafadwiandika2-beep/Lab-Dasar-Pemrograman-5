program Soal9;
uses crt;

var
  tahun, bulan, jumlahHari: integer;
  isKabisat: boolean;

begin
  clrscr;
  write('Masukkan Tahun      : '); 
  readln(tahun);
  write('Masukkan Bulan (1-12): '); 
  readln(bulan);

  { Cek Tahun Kabisat }
  if (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
    isKabisat := true
  else
    isKabisat := false;

  { Tentukan Jumlah Hari }
  case bulan of
    1, 3, 5, 7, 8, 10, 12: jumlahHari := 31;
    4, 6, 9, 11: jumlahHari := 30;
    2: begin
         if isKabisat then
           jumlahHari := 29
         else
           jumlahHari := 28;
       end;
  else
    jumlahHari := 0;
  end;

  writeln;
  if jumlahHari <> 0 then
  begin
    write('Status Tahun: ');
    if isKabisat then writeln('Kabisat') else writeln('Bukan Kabisat');
    writeln('Jumlah Hari : ', jumlahHari, ' hari');
  end
  else
    writeln('Nomor bulan tidak valid!');

  readln;
end.