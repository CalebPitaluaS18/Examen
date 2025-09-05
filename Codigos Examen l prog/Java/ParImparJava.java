import java.util.Scanner;
//Caleb Pitalua
public class ParImparJava {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Introduce un número entero:");
        int numeros = scanner.nextInt();

        if (numeros % 2 == 0) {
            System.out.println(numeros + " es un número par.");
        } else {
            System.out.println(numeros + " es un número impar.");
        }

        scanner.close();
    }
}