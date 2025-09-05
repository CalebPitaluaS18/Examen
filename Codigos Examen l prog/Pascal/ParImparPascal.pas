PROGRAM ParImparPascal;
VAR
  numero: INTEGER;
BEGIN
  WriteLn('Introduce un número entero:');
  ReadLn(numero);

  IF (numero MOD 2 = 0) THEN
    WriteLn(numero, ' es un número par.')
  ELSE
    WriteLn(numero, ' es un número impar.');
END.