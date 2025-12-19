#include <iostream>
#include "lucas_kanade_pyramid.h"
#include "lucas_kanade_hls.h"
#include "ap_fixed.h"
#include <cstdlib>

#define HEIGHT 64
#define WIDTH 64

typedef ap_fixed<16,4> fixed_t;

int main() {
    fixed_t I1[HEIGHT][WIDTH] = {0};
    fixed_t I2[HEIGHT][WIDTH] = {0};
    fixed_t u[HEIGHT][WIDTH] = {0};
    fixed_t v[HEIGHT][WIDTH] = {0};

    // ===============================
    // 1️⃣ Creare obiect mobil în imagine
    // ===============================
    for (int i = 30; i < 35; i++) {
        for (int j = 30; j < 35; j++) {
            I1[i][j] = 100;          // pătrat inițial
            I2[i+1][j+1] = 100;      // pătrat deplasat cu +1 pe x și y
        }
    }

    // ===============================
    // 2️⃣ Rulează algoritmul piramidal
    // ===============================
    lucas_kanade_pyramid<64,64>(I1, I2, u, v);

    // ===============================
    // 3️⃣ Print flux pentru zona relevantă
    // ===============================
    std::cout << "=== Flux optic în zona obiectului ===" << std::endl;
    for (int i = 30; i < 36; i++) {
        for (int j = 30; j < 36; j++) {
            std::cout << "u[" << i << "][" << j << "]=" << (float)u[i][j]
                      << " v[" << i << "][" << j << "]=" << (float)v[i][j] << std::endl;
        }
    }

    // ===============================
    // 4️⃣ Print flux pentru colțuri/zero
    // ===============================
    std::cout << "\n=== Flux optic în colțuri (ar trebui 0) ===" << std::endl;
    std::cout << "u[0][0]=" << (float)u[0][0] << " v[0][0]=" << (float)v[0][0] << std::endl;
    std::cout << "u[63][63]=" << (float)u[63][63] << " v[63][63]=" << (float)v[63][63] << std::endl;

    std::cout << "\nPress ENTER to exit..." << std::endl;
    std::cin.get();
    return 0;
}
