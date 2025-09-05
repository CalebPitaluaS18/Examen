program ArregloDesordenado;

const
  MAX_SIZE = 10;

type
  TArreglo = array[1..MAX_SIZE] of Integer;

var
  arreglo: TArreglo;
  tamActual: Integer;
  opcion: Integer;
  valor: Integer;
  posicion: Integer;

procedure InicializarArreglo(var arr: TArreglo; var tam: Integer);
begin
  tam := 0; // El arreglo está vacío
  Writeln('Arreglo inicializado.');
end;

procedure MostrarArreglo(const arr: TArreglo; tam: Integer);
var
  i: Integer;
begin
  if tam = 0 then
  begin
    Writeln('El arreglo esta vacio.');
    exit;
  end;
  Write('Arreglo: [');
  for i := 1 to tam do
  begin
    Write(arr[i]);
    if i < tam then
      Write(', ');
  end;
  Writeln(']');
end;

procedure InsertarElemento(var arr: TArreglo; var tam: Integer; elemento: Integer);
begin
  if tam < MAX_SIZE then
  begin
    inc(tam);
    arr[tam] := elemento;
    Writeln('Elemento ', elemento, ' insertado.');
  end
  else
  begin
    Writeln('El arreglo esta lleno, no se puede insertar.');
  end;
end;

function BuscarElemento(const arr: TArreglo; tam: Integer; elemento: Integer): Integer;
var
  i: Integer;
begin
  BuscarElemento := -1; // No encontrado
  for i := 1 to tam do
  begin
    if arr[i] = elemento then
    begin
      BuscarElemento := i; // Devuelve la posicion (1-based)
      exit;
    end;
  end;
end;

procedure EliminarElemento(var arr: TArreglo; var tam: Integer; elemento: Integer);
var
  pos: Integer;
  i: Integer;
begin
  pos := BuscarElemento(arr, tam, elemento);
  if pos <> -1 then
  begin
    // Mover el ultimo elemento a la posicion del eliminado
    for i := pos to tam - 1 do
    begin
      arr[i] := arr[i + 1];
    end;
    dec(tam);
    Writeln('Elemento ', elemento, ' eliminado.');
  end
  else
  begin
    Writeln('Elemento ', elemento, ' no encontrado para eliminar.');
  end;
end;

begin
  InicializarArreglo(arreglo, tamActual);

  repeat
    Writeln('');
    Writeln('--- MENU ARREGLO DESORDENADO ---');
    Writeln('1. Crear/Reinicializar Arreglo');
    Writeln('2. Insertar Elemento');
    Writeln('3. Buscar Elemento');
    Writeln('4. Eliminar Elemento');
    Writeln('5. Mostrar Arreglo');
    Writeln('0. Salir');
    Write('Ingrese su opcion: ');
    Readln(opcion);

    case opcion of
      1: InicializarArreglo(arreglo, tamActual);
      2:
        begin
          Write('Ingrese el valor a insertar: ');
          Readln(valor);
          InsertarElemento(arreglo, tamActual, valor);
        end;
      3:
        begin
          Write('Ingrese el valor a buscar: ');
          Readln(valor);
          posicion := BuscarElemento(arreglo, tamActual, valor);
          if posicion <> -1 then
            Writeln('Elemento ', valor, ' encontrado en la posicion ', posicion, '.')
          else
            Writeln('Elemento ', valor, ' no encontrado.');
        end;
      4:
        begin
          Write('Ingrese el valor a eliminar: ');
          Readln(valor);
          EliminarElemento(arreglo, tamActual, valor);
        end;
      5: MostrarArreglo(arreglo, tamActual);
      0: Writeln('Saliendo del programa.');
      else Writeln('Opcion invalida. Intente de nuevo.');
    end;
  until opcion = 0;
end.