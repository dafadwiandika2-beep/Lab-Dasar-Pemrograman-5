program Soal8;
uses crt;

var
  golongan: char;
  jamKerja, jamLembur: integer;
  gajiPokok, lembur, bonus, totalGaji: longint;

begin
  clrscr;
  write('Masukkan Golongan Karyawan (A/B/C): '); 
  readln(golongan);
  write('Masukkan Total Jam Kerja/Minggu   : '); 
  readln(jamKerja);

  golongan := upcase(golongan);
  gajiPokok := 0;
  lembur := 0;
  bonus := 0;

  case golongan of
    'A': gajiPokok := 1500000;
    'B': gajiPokok := 2000000;
    'C': gajiPokok := 2500000;
  else
    writeln('Golongan tidak valid!');
  end;

  if (golongan = 'A') or (golongan = 'B') or (golongan = 'C') then
  begin
    { Hitung Lembur }
    if jamKerja > 40 then
    begin
      jamLembur := jamKerja - 40;
      lembur := jamLembur * 20000;
    end;

    { Bonus Khusus Golongan C }
    if (golongan = 'C') and (jamKerja > 50) then
      bonus := 100000;

    totalGaji := gajiPokok + lembur + bonus;

    writeln;
    writeln('=== RINCIAN GAJI KARYAWAN ===');
    writeln('Gaji Pokok : Rp', gajiPokok);
    writeln('Uang Lembur: Rp', lembur);
    writeln('Bonus      : Rp', bonus);
    writeln('---------------------------');
    writeln('Total Gaji : Rp', totalGaji);
  end;

  readln;
end.