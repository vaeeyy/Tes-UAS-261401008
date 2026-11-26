program soal2;
uses crt;
type
  Larik = array[1..50] of integer;
var
  nilai: Larik;
  n, i: integer;
  tertinggi, terendah: integer;
  indeksMax, indeksMin: integer;
  total: integer;
  rataRata: real;

begin
  clrscr;
  write('Masukkan jumlah peserta: '); readln(n);
  total := 0;

  for i := 1 to n do
  begin
    write('Masukkan nilai peserta ke-', i, ': '); readln(nilai[i]);
    total := total + nilai[i];
  end;

  tertinggi := nilai[1];
  terendah := nilai[1];

  indeksMax := 1;
  indeksMin := 1;

  for i := 2 to n do
  begin
    if nilai[i] > tertinggi then
    begin
      tertinggi := nilai[i];
      indeksMax := i;
    end;

    if nilai[i] < terendah then
    begin
      terendah := nilai[i];
      indeksMin := i;
    end;
  end;

  rataRata := total / n;
  writeln;
  writeln('Nilai tertinggi: ', tertinggi);
  writeln('Berada pada indeks: ', indeksMax);
  writeln('Nilai terendah: ', terendah);
  writeln('Berada pada indeks: ', indeksMin);
  writeln('Rata-rata nilai: ', rataRata:0:2);

  writeln;
  writeln('Indeks peserta di atas rata-rata:');

  for i := 1 to n do
  begin
    if nilai[i] > rataRata then
      write(i, ' ');
  end;

  readln;
end.