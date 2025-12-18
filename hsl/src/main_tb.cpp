#include <stdio.h>
#include "horn_schunck_hsl.h"

int main() {
    fixed_t I1[H][W], I2[H][W];
    fixed_t u[H][W] = {0};
    fixed_t v[H][W] = {0};

    for (int i=0;i<H;i++) {
        for (int j=0;j<W;j++) {
            I1[i][j] = (fixed_t)((i + j) % 32);
            I2[i][j] = (fixed_t)((i + (j-1) + W) % 32); // shift la dreapta
        }
    }

    horn_schunck_hls(I1, I2, u, v);

    printf("u[32][32] = %f\n", (float)u[32][32]);
    printf("v[32][32] = %f\n", (float)v[32][32]);
    return 0;
}
