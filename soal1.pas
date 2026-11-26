program soal1;
uses crt;
var
N, kategori, i, total : integer;
begin
    clrscr;
    repeat
        write('masukan N (1-100): '); readln(N);
        if (N <= 0) or (N > 100) then
        writeln('input tidak valid! masukan ulang. ');
    until (N >= 1) and (N <= 100);

    repeat
        writeln('1.ganjil');
        writeln('2.genap');
        write('pilih kategori: '); readln (kategori);
        if (kategori <> 1) and (kategori <> 2) then
        writeln ('pilihan tidak valid! ');
    until (kategori = 1) or (kategori = 2);

    i := 1;
    total := 0;

    while i <= N do 
    begin
        if (kategori = 1) and (i mod 2 = 0) then
        begin
            i := i + 1;
            continue;
        end;
        if i mod 5 = 0 then
        begin
            i := i + 1;
            continue;
        end;
        write (i, ' ');
        total := total + i;
        i := i + 1;
    end;

    writeln;
    writeln('Total Penjumlahan: ',total);
    readln;
end.