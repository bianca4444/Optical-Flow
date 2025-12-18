// horn_schunck_hsl.h
#pragma once
#include <ap_fixed.h>

#define W 32
#define H 32
#define N_ITER 10

typedef ap_fixed<16,4> fixed_t;

// constante fixed-point
const fixed_t ALPHA = fixed_t(1.0);
const fixed_t ONE_QUARTER = fixed_t(0.25);
const fixed_t HALF = fixed_t(0.5);

// top function: primește două cadre (I1, I2)
void horn_schunck_hls(
    fixed_t I1[H][W],
    fixed_t I2[H][W],
    fixed_t u[H][W],
    fixed_t v[H][W]
);