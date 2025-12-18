#ifndef HORN_SCHUNCK_HLS_H
#define HORN_SCHUNCK_HLS_H

#include "derivatives_hls.h"

#define HS_ITER 5

void horn_schunck_64(
    pix_t Ix[HEIGHT][WIDTH],
    pix_t Iy[HEIGHT][WIDTH],
    pix_t It[HEIGHT][WIDTH],
    pix_t u[HEIGHT][WIDTH],
    pix_t v[HEIGHT][WIDTH],
    bool init_zero
);

void horn_schunck_32(
    pix_t Ix[HEIGHT/2][WIDTH/2],
    pix_t Iy[HEIGHT/2][WIDTH/2],
    pix_t It[HEIGHT/2][WIDTH/2],
    pix_t u[HEIGHT/2][WIDTH/2],
    pix_t v[HEIGHT/2][WIDTH/2],
    bool init_zero
);

void horn_schunck_16(
    pix_t Ix[HEIGHT/4][WIDTH/4],
    pix_t Iy[HEIGHT/4][WIDTH/4],
    pix_t It[HEIGHT/4][WIDTH/4],
    pix_t u[HEIGHT/4][WIDTH/4],
    pix_t v[HEIGHT/4][WIDTH/4],
    bool init_zero
);

#endif
