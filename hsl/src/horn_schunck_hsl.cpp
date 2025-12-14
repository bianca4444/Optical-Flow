#include "horn_schunck_hsl.h"

void horn_schunck_hls(
    fixed_t Ix[H][W],
    fixed_t Iy[H][W],
    fixed_t It[H][W],
    fixed_t u[H][W],
    fixed_t v[H][W]
) {
    for (int iter = 0; iter < N_ITER; iter++) {
        for (int y = 1; y < H-1; y++) {
            for (int x = 1; x < W-1; x++) {

#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=64 max=64

                fixed_t u_bar = (u[y][x-1] + u[y][x+1] + u[y-1][x] + u[y+1][x]) * 0.25;
                fixed_t v_bar = (v[y][x-1] + v[y][x+1] + v[y-1][x] + v[y+1][x]) * 0.25;

                fixed_t P = Ix[y][x]*u_bar + Iy[y][x]*v_bar + It[y][x];
                fixed_t D = ALPHA*ALPHA + Ix[y][x]*Ix[y][x] + Iy[y][x]*Iy[y][x];

                u[y][x] = u_bar - Ix[y][x] * P / D;
                v[y][x] = v_bar - Iy[y][x] * P / D;
            }
        }
    }
}
