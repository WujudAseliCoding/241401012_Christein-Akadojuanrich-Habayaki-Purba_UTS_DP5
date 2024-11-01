program kemurunganNala;
uses crt;
var
    n, i: longint;
    hargaMinuman: array[1..500] of longint;

begin
clrscr;
    write('Banyak minuman : '); readln(n);
        for i := 1 to n do
            begin
                write('Minuman ke-', i, ' : '); readln(hargaMinuman[i]);
            end;
clrscr;
    writeln('Minuman yang bisa dibeli Nala :');
        for i := 1 to n do
            begin
                if hargaMinuman[i] < 10000 then
                    writeln('Minuman ke-', i, ' : ', hargaMinuman[i]);
            end;
end.