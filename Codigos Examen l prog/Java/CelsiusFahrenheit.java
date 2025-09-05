import java.util.Scanner;

public class CelsiusFahrenheit {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double celsius, fahrenheit;

        // Solicitar al usuario que ingrese la temperatura en Celsius
        System.out.print("Ingrese la temperatura en grados Celsius: ");
        celsius = input.nextDouble();

        // Calcular la temperatura en Fahrenheit
        fahrenheit = (celsius * 9.0 / 5.0) + 32.0;

        // Mostrar el resultado
        System.out.printf("La temperatura en Fahrenheit es: %.2f%n", fahrenheit); // .2f para dos decimales

        input.close();
    }
}