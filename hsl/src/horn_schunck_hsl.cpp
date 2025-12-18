#include "horn_schunck_hsl.h"

void horn_schunck_hls(
    fixed_t Ix[H][W],
    fixed_t Iy[H][W],
    fixed_t It[H][W],
    fixed_t u[H][W],
    fixed_t v[H][W]
) {
    // iterațiile Horn–Schunck
    for (int iter = 0; iter < N_ITER; iter++) {
    for (int i = 1; i < H-1; i++) {
        for (int j = 1; j < W-1; j++) {

#pragma HLS PIPELINE II=1

            // === CACHE LOCAL (AICI se pun) ===
            fixed_t u0 = u[i][j-1];
            fixed_t u1 = u[i][j+1];
            fixed_t u2 = u[i-1][j];
            fixed_t u3 = u[i+1][j];

            fixed_t v0 = v[i][j-1];
            fixed_t v1 = v[i][j+1];
            fixed_t v2 = v[i-1][j];
            fixed_t v3 = v[i+1][j];

            // === MEDIE ===
            fixed_t u_bar = (u0 + u1 + u2 + u3) * ONE_QUARTER;
            fixed_t v_bar = (v0 + v1 + v2 + v3) * ONE_QUARTER;

            fixed_t P = Ix[i][j]*u_bar + Iy[i][j]*v_bar + It[i][j];
            fixed_t D = (ALPHA * ALPHA)
                      + Ix[i][j]*Ix[i][j]
                      + Iy[i][j]*Iy[i][j];

            u[i][j] = u_bar - Ix[i][j] * P / D;
            v[i][j] = v_bar - Iy[i][j] * P / D;
        }
    }
}
}
