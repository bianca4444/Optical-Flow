#include <iostream>
#include "horn_schunck.h"

int main() {
    static float Ix[H][W], Iy[H][W], It[H][W];
    static float u[H][W] = {0};
    static float v[H][W] = {0};

    // Inițializare date test
    for (int y = 0; y < H; y++) {
        for (int x = 0; x < W; x++) {
            Ix[y][x] = 1.0f;
            Iy[y][x] = 0.0f;
            It[y][x] = -1.0f;
        }
    }

    horn_schunck(Ix, Iy, It, u, v);

    std::cout << "u[32][32] = " << u[32][32] << std::endl;
    std::cout << "v[32][32] = " << v[32][32] << std::endl;

    return 0;
}
