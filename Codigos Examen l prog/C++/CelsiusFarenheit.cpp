#include <stdio.h>

int main() {
    float celsius, fahrenheit;

    // Solicitar al usuario que ingrese la temperatura en Celsius
    printf("Ingrese la temperatura en grados Celsius: ");
    scanf("%f", &celsius);

    // Calcular la temperatura en Fahrenheit
    fahrenheit = (celsius * 9.0 / 5.0) + 32.0;

    // Mostrar el resultado
    printf("La temperatura en Fahrenheit es: %.2f\n", fahrenheit); // .2f para dos decimales

    return 0;
}