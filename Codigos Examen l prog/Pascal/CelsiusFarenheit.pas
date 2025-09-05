PROGRAM CelsiusToFahrenheit;
VAR
  celsius, fahrenheit: Real;
BEGIN
  // Solicitar al usuario que ingrese la temperatura en Celsius
  WriteLn('Ingrese la temperatura en grados Celsius:');
  ReadLn(celsius);

  // Calcular la temperatura en Fahrenheit
  fahrenheit := (celsius * 9.0 / 5.0) + 32.0;

  // Mostrar el resultado
  WriteLn('La temperatura en Fahrenheit es: ', fahrenheit:0:2); // :0:2 para dos decimales
END.