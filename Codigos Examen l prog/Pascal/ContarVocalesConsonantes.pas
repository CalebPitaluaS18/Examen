program ContarVocalesConsonantes;

var
  cadena: string;
  i: integer;
  longitud: integer;
  vocalCount: integer;
  consonantCount: integer;
  caracter: char;

begin
  writeln('Introduce una cadena:');
  readln(cadena);

  longitud := length(cadena);
  vocalCount := 0;
  consonantCount := 0;

  for i := 1 to longitud do
  begin
    caracter := upcase(cadena[i]); // Convertir a mayúsculas para simplificar la comparación

    if (caracter >= 'A') and (caracter <= 'Z') then
    begin
      if (caracter = 'A') or (caracter = 'E') or (caracter = 'I') or (caracter = 'O') or (caracter = 'U') then
      begin
        vocalCount := vocalCount + 1;
      end
      else
      begin
        consonantCount := consonantCount + 1;
      end;
    end;
  end;

  writeln('Número de vocales: ', vocalCount);
  writeln('Número de consonantes: ', consonantCount);
  readln; // Espera a que el usuario presione Enter para cerrar la consola
end.