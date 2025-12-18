#pragma once
#include "ap_fixed.h"

#define HEIGHT 64
#define WIDTH 64
#define WINDOW_SIZE 3

typedef ap_fixed<16,4> fixed_t;

template<int H, int W>
void lucas_kanade_hls(
    fixed_t I1[H][W],
    fixed_t I2[H][W],
    fixed_t u[H][W],
    fixed_t v[H][W]
);
