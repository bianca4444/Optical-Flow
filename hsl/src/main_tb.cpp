#include <stdio.h>
#include "horn_schunck_hsl.h"

int main() {
    fixed_t Ix[H][W], Iy[H][W], It[H][W];
    fixed_t u[H][W] = {0};
    fixed_t v[H][W] = {0};

    for (int y=0; y<H; y++) {
        for (int x=0; x<W; x++) {
            Ix[y][x] = 1.0;
            Iy[y][x] = 0.0;
            It[y][x] = -1.0;
        }
    }

    horn_schunck_hls(Ix, Iy, It, u, v);

    printf("u[32][32] = %f\n", (float)u[32][32]);
    printf("v[32][32] = %f\n", (float)v[32][32]);

    return 0;
}
