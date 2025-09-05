program Fibonacci;
var
  n, i, a, b, temp: integer;
begin
  write('Ingrese el número de términos (n): ');
  readln(n);

  a := 0;
  b := 1;

  if n >= 1 then
    write(a, ' ');
  if n >= 2 then
    write(b, ' ');

  for i := 3 to n do
  begin
    temp := a + b;
    write(temp, ' ');
    a := b;
    b := temp;
  end;
  writeln;
end.