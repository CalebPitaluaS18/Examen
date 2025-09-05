import java.util.Scanner;

public class ContarVocalesConsonantes {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Introduce una cadena: ");
        String cadena = scanner.nextLine();

        int vocalCount = 0;
        int consonantCount = 0;

        for (int i = 0; i < cadena.length(); i++) {
            char caracter = Character.toUpperCase(cadena.charAt(i)); // Convertir a mayúsculas

            if (caracter >= 'A' && caracter <= 'Z') {
                if (caracter == 'A' || caracter == 'E' || caracter == 'I' || caracter == 'O' || caracter == 'U') {
                    vocalCount++;
                } else {
                    consonantCount++;
                }
            }
        }

        System.out.println("Número de vocales: " + vocalCount);
        System.out.println("Número de consonantes: " + consonantCount);

        scanner.close();
    }
}