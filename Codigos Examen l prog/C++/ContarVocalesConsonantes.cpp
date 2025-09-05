#include <iostream>
#include <string>
#include <cctype> // Para la función toupper

int main() {
    std::string cadena;
    int vocalCount = 0;
    int consonantCount = 0;

    std::cout << "Introduce una cadena: ";
    std::getline(std::cin, cadena);

    for (char caracter : cadena) {
        caracter = std::toupper(caracter); // Convertir a mayúsculas para simplificar la comparación

        if (caracter >= 'A' && caracter <= 'Z') {
            if (caracter == 'A' || caracter == 'E' || caracter == 'I' || caracter == 'O' || caracter == 'U') {
                vocalCount++;
            } else {
                consonantCount++;
            }
        }
    }

    std::cout << "Número de vocales: " << vocalCount << std::endl;
    std::cout << "Número de consonantes: " << consonantCount << std::endl;

    return 0;
}