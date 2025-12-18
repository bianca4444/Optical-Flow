#pragma once
#include <ap_fixed.h>

#define W 64
#define H 64

#define N_ITER 10
typedef ap_fixed<16,4> fixed_t;

void horn_schunck_hls(
    fixed_t Ix[H][W],
    fixed_t Iy[H][W],
    fixed_t It[H][W],
    fixed_t u[H][W],
    fixed_t v[H][W]
);

void hs_top_hls(
    fixed_t I1[H][W],
    fixed_t I2[H][W],
    fixed_t u[H][W],
    fixed_t v[H][W]
);