program kasirSupermarketAHY;
uses crt;
var 
    hitungUlang, member : char;
    hari, kategoriProduk, namaPelanggan, namaProduk : string;
    poin, diskonMember, diskonHari, diskonH, diskonProduk, diskonVoucher, voucher, jumlahProduk, jumlahP, totalPembayaran, hargaProduk : longint;
    totalDiskon, setelahDiskon : real;

begin
clrscr;
write('Nama pelanggan : '); readln(namaPelanggan);
write('Masukkan hari pembelian (Senin-Sabtu) : '); readln(hari);
write('Apakah pembeli adalah member (y/n) :  '); readln(member);

    repeat
        write ('Masukkan nama produk : '); readln(namaProduk);
        write ('Masukkan kategori produk (Hygiene/Frozen Food/Elektronik/Laktosa) : '); readln(kategoriProduk);
        if hari = 'Senin' then
            begin
                if kategoriProduk = 'Hygiene' then
                begin
                    diskonHari := 10; diskonH := 10;
                end
            else
                    diskonHari := 0;
            end
        else if hari = 'Selasa' then
            begin
                if kategoriProduk = 'Frozen Food' then
                begin
                    diskonHari := 5; diskonH := 5;
                end
            else
                    diskonHari := 0;
            end
        else if hari = 'Rabu' then
            begin
                if kategoriProduk = 'Elektronik' then
                begin
                    diskonHari := 30; diskonH := 30;
                end
            else
                    diskonHari := 0;
            end
        else if hari = 'Kamis' then
            begin
                if kategoriProduk = 'Laktosa' then
                begin
                    diskonHari := 8; diskonH := 8;
                end
            else
                diskonHari := 0;
            end
        else
            diskonHari := 0;

        write ('Masukkan jumlah produk : '); readln(jumlahProduk);
        jumlahP := jumlahP + jumlahProduk;
        write ('Masukkan harga total produk : '); readln(hargaProduk);
        totalPembayaran := totalPembayaran + hargaProduk;
        write('Apakah ada produk lain? (y/n) : '); readln(hitungUlang);
    until (hitungUlang = 'n') or (hitungUlang = 'N');

diskonHari := diskonH;

if (member = 'y') or (member = 'Y') then
    begin
        diskonMember := 10;
        diskonProduk := jumlahP div 10 * 5;
        poin := totalPembayaran div 50000;
        voucher := poin div 50;
        diskonVoucher := 0;
        if (voucher > 0) then
            begin
                diskonVoucher := 20;
            end
        else
    end;

totalDiskon := diskonH + diskonMember + diskonProduk + diskonVoucher;
if (totalDiskon < 0) then
begin
setelahDiskon := totalPembayaran;
end
else
setelahDiskon := totalPembayaran * (1 - totalDiskon / 100);

clrscr;

writeln ('Total pembayaran adalah : ', totalPembayaran);
write('Diskon = ');

  if diskonH > 0 then
    write(diskonH, '%');

  if diskonMember > 0 then
  begin
    if diskonH > 0 then
      write(' + ');
    write(diskonMember, '%');
  end;

  if diskonProduk > 0 then
  begin
    if (diskonH > 0) or (diskonMember > 0) then
      write(' + ');
    write(diskonProduk, '%');
  end;

  if diskonVoucher > 0 then
  begin
    if (diskonH > 0) or (diskonMember > 0) or (diskonProduk > 0) then
      write(' + ');
    write(diskonVoucher, '%');
  end;
writeln;
writeln ('Harga setelah diskon : ', setelahDiskon:0:2);
writeln ('Poin : ',poin);
end.