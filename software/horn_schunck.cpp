#include "horn_schunck.h"

void horn_schunck(
    float Ix[H][W],
    float Iy[H][W],
    float It[H][W],
    float u[H][W],
    float v[H][W]
) {
    for (int iter = 0; iter < N_ITER; iter++) {
        for (int y = 1; y < H-1; y++) {
            for (int x = 1; x < W-1; x++) {

                float u_bar =
                  (u[y][x-1] + u[y][x+1] +
                   u[y-1][x] + u[y+1][x]) * 0.25f;

                float v_bar =
                  (v[y][x-1] + v[y][x+1] +
                   v[y-1][x] + v[y+1][x]) * 0.25f;

                float P = Ix[y][x]*u_bar +
                          Iy[y][x]*v_bar +
                          It[y][x];

                float D = ALPHA*ALPHA +
                          Ix[y][x]*Ix[y][x] +
                          Iy[y][x]*Iy[y][x];

                u[y][x] = u_bar - Ix[y][x] * P / D;
                v[y][x] = v_bar - Iy[y][x] * P / D;
            }
        }
    }
}
