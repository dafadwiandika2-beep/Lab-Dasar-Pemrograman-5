program Soal6;
uses crt;

var
  tugas, uts, uas, kehadiran, nilaiAkhir: real;
  indeks: char;

begin
  clrscr;
  write('Masukkan Nilai Tugas (0-100) : '); 
  readln(tugas);
  write('Masukkan Nilai UTS (0-100)   : '); 
  readln(uts);
  write('Masukkan Nilai UAS (0-100)   : '); 
  readln(uas);
  write('Masukkan Persentase Kehadiran (%): '); 
  readln(kehadiran);

  { Perhitungan Nilai Akhir }
  nilaiAkhir := (0.3 * tugas) + (0.3 * uts) + (0.4 * uas);

  { Penentuan Indeks Huruf }
  if nilaiAkhir >= 85 then indeks := 'A'
  else if nilaiAkhir >= 75 then indeks := 'B'
  else if nilaiAkhir >= 60 then indeks := 'C'
  else if nilaiAkhir >= 50 then indeks := 'D'
  else indeks := 'E';

  writeln;
  writeln('=== HASIL PENILAIAN ===');
  writeln('Nilai Akhir : ', nilaiAkhir:0:2);
  writeln('Indeks Huruf: ', indeks);

  { Penentuan Status Kelulusan }
  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    writeln('Status      : LULUS')
  else
    writeln('Status      : TIDAK LULUS');

  readln;
end.