program deretFibonacci;
uses crt;
var
    n, i: integer;
    a, b, x: integer;
    sum: integer;

begin
clrscr;
a := 0;
b := 1;
sum := a;

write('Masukkan angka n (suku ke-n) : '); readln(n);
writeln;
writeln('Deret Fibonacci hingga suku ke-', n, ' : ');
    
if n >= 1 then
    begin
        write(a, ' ');
    end;

if n >= 2 then
    begin
        write(b, ' ');
        sum := sum + b;
    end;

    
    for i := 3 to n do
    begin
        x := a + b; 
        write(x, ' '); 
        sum := sum + x; 
        a := b; 
        b := x; 
    end;

    writeln;
    writeln('Total = ', sum);
end.