program tokoIKLC;
uses crt;
var 
    uangPelanggan, hargaBelanja, BlembaranOrKoin, lembaranOrKoin : longint;

begin
clrscr;
    write ('Masukkan harga snack : '); readln (hargaBelanja);
    write ('Masukkan uang anda : '); readln (uangPelanggan);

if (uangPelanggan < hargaBelanja) then
        begin
        writeln('Uang tidak cukup untuk membeli snack.');
        end
    else
        begin
        uangPelanggan := uangPelanggan - hargaBelanja;
        end;


BlembaranOrKoin := 0;

while uangPelanggan > 0 do
    begin
        if (uangPelanggan >= 100000) then
            begin
            lembaranOrKoin := uangPelanggan div 100000;
            BlembaranOrKoin := BlembaranOrKoin + lembaranOrKoin;
            uangPelanggan := uangPelanggan mod 100000;
            end
        else if (uangPelanggan >= 75000) then
            begin
            lembaranOrKoin := uangPelanggan div 75000;
            BlembaranOrKoin := BlembaranOrKoin + lembaranOrKoin;
            uangPelanggan := uangPelanggan mod 75000;
            end
        else if (uangPelanggan >= 50000) then
            begin
            lembaranOrKoin := uangPelanggan div 50000;
            BlembaranOrKoin := BlembaranOrKoin + lembaranOrKoin;
            uangPelanggan := uangPelanggan mod 50000;
            end
        else if (uangPelanggan >= 20000) then
            begin
            lembaranOrKoin := uangPelanggan div 20000;
            BlembaranOrKoin := BlembaranOrKoin + lembaranOrKoin;
            uangPelanggan := uangPelanggan mod 20000;
            end
        else if (uangPelanggan >= 10000) then
            begin
            lembaranOrKoin := uangPelanggan div 10000;
            BlembaranOrKoin := BlembaranOrKoin + lembaranOrKoin;
            uangPelanggan := uangPelanggan mod 10000;
            end
        else if (uangPelanggan >= 5000) then
            begin
            lembaranOrKoin := uangPelanggan div 5000;
            BlembaranOrKoin := BlembaranOrKoin + lembaranOrKoin;
            uangPelanggan := uangPelanggan mod 5000;
            end
        else if (uangPelanggan >= 2000) then
            begin
            lembaranOrKoin := uangPelanggan div 2000;
            BlembaranOrKoin := BlembaranOrKoin + lembaranOrKoin;
            uangPelanggan := uangPelanggan mod 2000;
            end
        else if (uangPelanggan >= 1000) then
            begin
            lembaranOrKoin := uangPelanggan div 1000;
            BlembaranOrKoin := BlembaranOrKoin + lembaranOrKoin;
            uangPelanggan := uangPelanggan mod 1000;
            end
        else if (uangPelanggan >= 500) then
            begin
            lembaranOrKoin := uangPelanggan div 500;
            BlembaranOrKoin := BlembaranOrKoin + lembaranOrKoin;
            uangPelanggan := uangPelanggan mod 500;
            end
    end;

write ('Lembaran atau koin : ', BlembaranOrKoin);
end.
