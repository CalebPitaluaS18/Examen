#include <iostream>
#include <vector> // Usaremos std::vector para un manejo más flexible del tamaño,
                  // pero puedes usar un arreglo C-style si lo prefieres para la limitación.

// Para un arreglo C-style de tamaño fijo:
// const int MAX_SIZE = 10;
// int arreglo[MAX_SIZE];
// int tamActual = 0;

void inicializarArreglo(std::vector<int>& arr) {
    arr.clear(); // Vacía el vector
    std::cout << "Arreglo inicializado." << std::endl;
}

void mostrarArreglo(const std::vector<int>& arr) {
    if (arr.empty()) {
        std::cout << "El arreglo esta vacio." << std::endl;
        return;
    }
    std::cout << "Arreglo: [";
    for (size_t i = 0; i < arr.size(); ++i) {
        std::cout << arr[i];
        if (i < arr.size() - 1) {
            std::cout << ", ";
        }
    }
    std::cout << "]" << std::endl;
}

void insertarElemento(std::vector<int>& arr, int elemento) {
    // Si usaras un arreglo C-style con MAX_SIZE:
    // if (tamActual < MAX_SIZE) {
    //     arreglo[tamActual++] = elemento;
    //     std::cout << "Elemento " << elemento << " insertado." << std::endl;
    // } else {
    //     std::cout << "El arreglo esta lleno, no se puede insertar." << std::endl;
    // }

    arr.push_back(elemento); // std::vector maneja el tamaño dinámicamente
    std::cout << "Elemento " << elemento << " insertado." << std::endl;
}

int buscarElemento(const std::vector<int>& arr, int elemento) {
    for (size_t i = 0; i < arr.size(); ++i) {
        if (arr[i] == elemento) {
            return i; // Devuelve la posicion (0-based)
        }
    }
    return -1; // No encontrado
}

void eliminarElemento(std::vector<int>& arr, int elemento) {
    int pos = buscarElemento(arr, elemento);
    if (pos != -1) {
        arr.erase(arr.begin() + pos); // Elimina el elemento en la posición
        std::cout << "Elemento " << elemento << " eliminado." << std::endl;
    } else {
        std::cout << "Elemento " << elemento << " no encontrado para eliminar." << std::endl;
    }
}

int main() {
    std::vector<int> arreglo; // Usamos std::vector
    int opcion;
    int valor;
    int posicion;

    inicializarArreglo(arreglo);

    do {
        std::cout << "\n--- MENU ARREGLO DESORDENADO ---" << std::endl;
        std::cout << "1. Crear/Reinicializar Arreglo" << std::endl;
        std::cout << "2. Insertar Elemento" << std::endl;
        std::cout << "3. Buscar Elemento" << std::endl;
        std::cout << "4. Eliminar Elemento" << std::endl;
        std::cout << "5. Mostrar Arreglo" << std::endl;
        std::cout << "0. Salir" << std::endl;
        std::cout << "Ingrese su opcion: ";
        std::cin >> opcion;

        switch (opcion) {
            case 1:
                inicializarArreglo(arreglo);
                break;
            case 2:
                std::cout << "Ingrese el valor a insertar: ";
                std::cin >> valor;
                insertarElemento(arreglo, valor);
                break;
            case 3:
                std::cout << "Ingrese el valor a buscar: ";
                std::cin >> valor;
                posicion = buscarElemento(arreglo, valor);
                if (posicion != -1) {
                    std::cout << "Elemento " << valor << " encontrado en la posicion " << posicion << "." << std::endl;
                } else {
                    std::cout << "Elemento " << valor << " no encontrado." << std::endl;
                }
                break;
            case 4:
                std::cout << "Ingrese el valor a eliminar: ";
                std::cin >> valor;
                eliminarElemento(arreglo, valor);
                break;
            case 5:
                mostrarArreglo(arreglo);
                break;
            case 0:
                std::cout << "Saliendo del programa." << std::endl;
                break;
            default:
                std::cout << "Opcion invalida. Intente de nuevo." << std::endl;
        }
    } while (opcion != 0);

    return 0;
}