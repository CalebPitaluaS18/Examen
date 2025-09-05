#include <iostream>

int main() {
    int n;
    std::cout << "Ingrese el número de términos (n): ";
    std::cin >> n;

    int a = 0;
    int b = 1;

    if (n >= 1) {
        std::cout << a << " ";
    }
    if (n >= 2) {
        std::cout << b << " ";
    }

    for (int i = 3; i <= n; ++i) {
        int temp = a + b;
        std::cout << temp << " ";
        a = b;
        b = temp;
    }
    std::cout << std::endl;

    return 0;
}