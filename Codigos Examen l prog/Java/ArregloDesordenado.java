import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ArregloDesordenado {

    private List<Integer> arreglo; // Usamos ArrayList para flexibilidad
    private Scanner scanner;

    public ArregloDesordenado() {
        arreglo = new ArrayList<>();
        scanner = new Scanner(System.in);
    }

    public void inicializarArreglo() {
        arreglo.clear(); // Vacía el ArrayList
        System.out.println("Arreglo inicializado.");
    }

    public void mostrarArreglo() {
        if (arreglo.isEmpty()) {
            System.out.println("El arreglo esta vacio.");
            return;
        }
        System.out.println("Arreglo: " + arreglo.toString());
    }

    public void insertarElemento(int elemento) {
        arreglo.add(elemento); // Agrega al final
        System.out.println("Elemento " + elemento + " insertado.");
    }

    public int buscarElemento(int elemento) {
        // indexOf devuelve la primera ocurrencia del elemento, o -1 si no se encuentra
        return arreglo.indexOf(elemento);
    }

    public void eliminarElemento(int elemento) {
        boolean eliminado = arreglo.remove(Integer.valueOf(elemento)); // remove(Object)
        if (eliminado) {
            System.out.println("Elemento " + elemento + " eliminado.");
        } else {
            System.out.println("Elemento " + elemento + " no encontrado para eliminar.");
        }
    }

    public void mostrarMenu() {
        int opcion;
        do {
            System.out.println("\n--- MENU ARREGLO DESORDENADO ---");
            System.out.println("1. Crear/Reinicializar Arreglo");
            System.out.println("2. Insertar Elemento");
            System.out.println("3. Buscar Elemento");
            System.out.println("4. Eliminar Elemento");
            System.out.println("5. Mostrar Arreglo");
            System.out.println("0. Salir");
            System.out.print("Ingrese su opcion: ");
            opcion = scanner.nextInt();

            switch (opcion) {
                case 1:
                    inicializarArreglo();
                    break;
                case 2:
                    System.out.print("Ingrese el valor a insertar: ");
                    int valorInsertar = scanner.nextInt();
                    insertarElemento(valorInsertar);
                    break;
                case 3:
                    System.out.print("Ingrese el valor a buscar: ");
                    int valorBuscar = scanner.nextInt();
                    int posicion = buscarElemento(valorBuscar);
                    if (posicion != -1) {
                        System.out.println("Elemento " + valorBuscar + " encontrado en la posicion " + posicion + ".");
                    } else {
                        System.out.println("Elemento " + valorBuscar + " no encontrado.");
                    }
                    break;
                case 4:
                    System.out.print("Ingrese el valor a eliminar: ");
                    int valorEliminar = scanner.nextInt();
                    eliminarElemento(valorEliminar);
                    break;
                case 5:
                    mostrarArreglo();
                    break;
                case 0:
                    System.out.println("Saliendo del programa.");
                    break;
                default:
                    System.out.println("Opcion invalida. Intente de nuevo.");
            }
        } while (opcion != 0);
        scanner.close(); // Cerrar el scanner al salir
    }

    public static void main(String[] args) {
        ArregloDesordenado programa = new ArregloDesordenado();
        programa.inicializarArreglo(); // Inicializa el arreglo al iniciar el programa
        programa.mostrarMenu();
    }
}