#ifndef DERIVATIVES_HLS_H
#define DERIVATIVES_HLS_H

#include <ap_fixed.h>

#define WIDTH  64
#define HEIGHT 64

typedef ap_fixed<16,6> pix_t;

// 64x64
void compute_derivatives(
    pix_t img1[HEIGHT][WIDTH],
    pix_t img2[HEIGHT][WIDTH],
    pix_t Ix[HEIGHT][WIDTH],
    pix_t Iy[HEIGHT][WIDTH],
    pix_t It[HEIGHT][WIDTH]
);

// 32x32
void compute_derivatives_32(
    pix_t img1[HEIGHT/2][WIDTH/2],
    pix_t img2[HEIGHT/2][WIDTH/2],
    pix_t Ix[HEIGHT/2][WIDTH/2],
    pix_t Iy[HEIGHT/2][WIDTH/2],
    pix_t It[HEIGHT/2][WIDTH/2]
);

// 16x16
void compute_derivatives_16(
    pix_t img1[HEIGHT/4][WIDTH/4],
    pix_t img2[HEIGHT/4][WIDTH/4],
    pix_t Ix[HEIGHT/4][WIDTH/4],
    pix_t Iy[HEIGHT/4][WIDTH/4],
    pix_t It[HEIGHT/4][WIDTH/4]
);

#endif
