#ifndef LUCAS_KANADE_HLS_H
#define LUCAS_KANADE_HLS_H

#include <ap_fixed.h>

#define WIDTH  128   // lățimea imaginii
#define HEIGHT 128   // înălțimea imaginii
#define WINDOW_SIZE 3

typedef ap_fixed<16,6> fixed_t; // 16 biți, 6 biți pentru partea întreagă

void lucas_kanade_hls(
    fixed_t I1[HEIGHT][WIDTH],
    fixed_t I2[HEIGHT][WIDTH],
    fixed_t u[HEIGHT][WIDTH],
    fixed_t v[HEIGHT][WIDTH]
);

#endif
