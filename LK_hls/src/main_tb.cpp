#include <iostream>
#include "lucas_kanade_hls.h"

int main() {
    fixed_t I1[HEIGHT][WIDTH];
    fixed_t I2[HEIGHT][WIDTH];
    fixed_t u[HEIGHT][WIDTH];
    fixed_t v[HEIGHT][WIDTH];

    // Inițializare imagini cu valori test
    for (int i=0;i<HEIGHT;i++) {
        for (int j=0;j<WIDTH;j++) {
            I1[i][j] = (i+j) % 256;
            I2[i][j] = (i+j+1) % 256; // mic shift pentru simulare mișcare
            u[i][j] = 0;
            v[i][j] = 0;
        }
    }

    lucas_kanade_hls(I1, I2, u, v);

    // Print câteva valori
    for (int i=60;i<65;i++) {
        for (int j=60;j<65;j++) {
            std::cout << "u["<<i<<"]["<<j<<"]=" << (float)u[i][j] 
                      << " v["<<i<<"]["<<j<<"]=" << (float)v[i][j] << std::endl;
        }
    }

    return 0;
}
