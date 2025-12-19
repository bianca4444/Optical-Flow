#include <iostream>
#include <fstream>
#include <cstdlib>

#include "pyramidal_hs.h"

#include <hls_math.h>   // for hls::sqrt

int main() {

    static pix_t img1[HEIGHT][WIDTH];
    static pix_t img2[HEIGHT][WIDTH];
    static pix_t u[HEIGHT][WIDTH];
    static pix_t v[HEIGHT][WIDTH];

    // -------------------------------------------------
    // Synthetic test: horizontal shift
    // -------------------------------------------------
    for (int y = 0; y < HEIGHT; y++) {
        for (int x = 0; x < WIDTH; x++) {
            img1[y][x] = (x < WIDTH/2) ? 100 : 0;
            img2[y][x] = (x < WIDTH/2 - 3) ? 100 : 0; // 3-pixel shift
        }
    }

    // -------------------------------------------------
    // Run pyramidal Horn–Schunck
    // -------------------------------------------------
    pyramidal_hs(img1, img2, u, v);

    // -------------------------------------------------
    // Print selected flow values
    // -------------------------------------------------
    std::cout << "u[10][10] = " << u[10][10] << "  v[10][10] = " << v[10][10] << std::endl;
    std::cout << "u[20][20] = " << u[20][20] << "  v[20][20] = " << v[20][20] << std::endl;
    std::cout << "u[32][32] = " << u[32][32] << "  v[32][32] = " << v[32][32] << std::endl;
    std::cout << "u[45][45] = " << u[45][45] << "  v[45][45] = " << v[45][45] << std::endl;

    // -------------------------------------------------
    // Compute max flow magnitude (global sanity check)
    // -------------------------------------------------
    pix_t max_mag = 0;

    for (int y = 0; y < HEIGHT; y++) {
        for (int x = 0; x < WIDTH; x++) {
            pix_t mag = hls::sqrt(u[y][x]*u[y][x] + v[y][x]*v[y][x]);
            if (mag > max_mag) max_mag = mag;
        }
    }

    std::cout << "Max flow magnitude = " << max_mag << std::endl;

    std::cout << "\nPress ENTER to exit..." << std::endl;
    std::cin.get();
    return 0;
}