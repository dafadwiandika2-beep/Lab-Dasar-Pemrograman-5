program Soal5;
uses crt;

var
  M, N, i, j: integer;
  nilai, totalNilai, rataRata: real;
  lulus, tidakLulus: integer;

begin
  clrscr;
  write('Masukkan jumlah mahasiswa (M): '); 
  readln(M);
  write('Masukkan jumlah tugas (N)    : '); 
  readln(N);
  writeln;

  lulus := 0;
  tidakLulus := 0;

  for i := 1 to M do
  begin
    writeln('--- Mahasiswa ke-', i, ' ---');
    totalNilai := 0;

    for j := 1 to N do
    begin
      write('  Nilai tugas ke-', j, ': '); readln(nilai);
      totalNilai := totalNilai + nilai;
    end;

    rataRata := totalNilai / N;
    write('  Rata-rata: ', rataRata:0:2, ' -> Status: ');

    if rataRata >= 65 then
    begin
      writeln('LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
    writeln;
  end;

  writeln('=== REKAPITULASI AKHIR ===');
  writeln('Total Mahasiswa LULUS      : ', lulus);
  writeln('Total Mahasiswa TIDAK LULUS: ', tidakLulus);
  readln;
end.