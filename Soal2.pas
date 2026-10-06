program Soal2;
uses crt;

const
    SANDI_RAHASIA = 'pascal123'; // 

var
    inputSandi : string;
    percobaan  : integer;

begin
    clrscr;
    percobaan := 0;

    repeat
        percobaan := percobaan + 1;
        write('Masukkan kata sandi (Percobaan ke-', percobaan, '): ');
        readln(inputSandi);

        if (inputSandi = SANDI_RAHASIA) then
        begin
            writeln('Login berhasil! Selamat datang');
            break;
        end
        else
        begin
            if (percobaan < 3) then
            begin
                writeln('Kata sandi salah. Silakan coba lagi.');
                writeln;
            end
            else
            begin
                writeln('Akses ditolak! Akun terkunci');
            end;
        end;

    until (percobaan = 3);

    readln;
end.
