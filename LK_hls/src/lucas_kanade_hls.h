#pragma once
#include "ap_fixed.h"

#define HEIGHT 64
#define WIDTH 64
#define WINDOW_SIZE 3

typedef ap_fixed<16,4> fixed_t;

void lucas_kanade_hls(
    fixed_t I1[HEIGHT][WIDTH],
    fixed_t I2[HEIGHT][WIDTH],
    fixed_t u[HEIGHT][WIDTH],
    fixed_t v[HEIGHT][WIDTH]
);
