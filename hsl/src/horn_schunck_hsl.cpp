// horn_schunck_hsl.cpp
#include "horn_schunck_hsl.h"

void horn_schunck_hls(
    fixed_t I1[H][W],
    fixed_t I2[H][W],
    fixed_t u[H][W],
    fixed_t v[H][W]
) {
    for (int iter = 0; iter < N_ITER; iter++) {
        for (int i = 1; i < H-1; i++) {
            for (int j = 1; j < W-1; j++) {

#pragma HLS PIPELINE II=1

                // --- cache u/v (cum ai deja) ---
                fixed_t u0 = u[i][j-1];
                fixed_t u1 = u[i][j+1];
                fixed_t u2 = u[i-1][j];
                fixed_t u3 = u[i+1][j];

                fixed_t v0 = v[i][j-1];
                fixed_t v1 = v[i][j+1];
                fixed_t v2 = v[i-1][j];
                fixed_t v3 = v[i+1][j];

                fixed_t u_bar = (u0 + u1 + u2 + u3) * ONE_QUARTER;
                fixed_t v_bar = (v0 + v1 + v2 + v3) * ONE_QUARTER;

                // --- DERIVATE din I1/I2 (pipeline derivatives) ---
                fixed_t I1_l = I1[i][j-1];
                fixed_t I1_r = I1[i][j+1];
                fixed_t I1_u = I1[i-1][j];
                fixed_t I1_d = I1[i+1][j];

                fixed_t I2_l = I2[i][j-1];
                fixed_t I2_r = I2[i][j+1];
                fixed_t I2_u = I2[i-1][j];
                fixed_t I2_d = I2[i+1][j];

                fixed_t I1_c = I1[i][j];
                fixed_t I2_c = I2[i][j];

                fixed_t Ix = ((I1_r - I1_l) + (I2_r - I2_l)) * ONE_QUARTER; // /4
                fixed_t Iy = ((I1_d - I1_u) + (I2_d - I2_u)) * ONE_QUARTER; // /4
                fixed_t It = (I2_c - I1_c);

                // --- Horn–Schunck update ---
                fixed_t P = Ix*u_bar + Iy*v_bar + It;
                fixed_t D = (ALPHA * ALPHA) + Ix*Ix + Iy*Iy;

                u[i][j] = u_bar - Ix * P / D;
                v[i][j] = v_bar - Iy * P / D;
            }
        }
    }
}
