#include <iostream>
#include "pyramidal_hs.h"


int main() {

    static pix_t img1[HEIGHT][WIDTH];
    static pix_t img2[HEIGHT][WIDTH];
    static pix_t Ix[HEIGHT][WIDTH];
    static pix_t Iy[HEIGHT][WIDTH];
    static pix_t It[HEIGHT][WIDTH];
    static pix_t u[HEIGHT][WIDTH];
    static pix_t v[HEIGHT][WIDTH];

    // Simple horizontal motion
    for (int y = 0; y < HEIGHT; y++) {
        for (int x = 0; x < WIDTH; x++) {
            img1[y][x] = (x < WIDTH/2) ? 100 : 0;
            img2[y][x] = (x < WIDTH/2 - 1) ? 100 : 0;
        }
    }

    //compute_derivatives(img1, img2, Ix, Iy, It);
    //horn_schunck(Ix, Iy, It, u, v);
    pyramidal_hs(img1, img2, u, v);

    std::cout << "u[32][32] = " << u[32][32] << std::endl;
    std::cout << "v[32][32] = " << v[32][32] << std::endl;

    return 0;
}
