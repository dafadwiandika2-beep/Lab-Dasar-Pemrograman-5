program Soal7;
uses crt;

var
  kode: char;
  lama: integer;
  totalTarif: longint;

begin
  clrscr;
  writeln('=== SISTEM TARIF PARKIR ===');
  write('Masukkan Kode Kendaraan (M/K/B): '); 
  readln(kode);
  write('Masukkan Lama Parkir (Jam)     : '); 
  readln(lama);

  kode := upcase(kode);
  totalTarif := 0;

  case kode of
    'M': { Mobil }
      begin
        if lama > 10 then
          totalTarif := 30000
        else if lama >= 1 then
          totalTarif := 5000 + (lama - 1) * 3000;
      end;
    'K': { Motor }
      begin
        if lama > 10 then
          totalTarif := 10000
        else if lama >= 1 then
          totalTarif := 2000 + (lama - 1) * 1000;
      end;
    'B': { Bus }
      begin
        if lama > 10 then
          totalTarif := 50000
        else if lama >= 1 then
          totalTarif := 10000 + (lama - 1) * 5000;
      end;
  else
    writeln('Kode kendaraan tidak valid!');
  end;

  if (kode = 'M') or (kode = 'K') or (kode = 'B') then
  begin
    writeln;
    writeln('Total Tarif Parkir: Rp', totalTarif);
  end;

  readln;
end.