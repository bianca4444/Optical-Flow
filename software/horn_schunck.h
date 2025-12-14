#pragma once

#define W 64
#define H 64
#define N_ITER 10
#define ALPHA 1.0f

void horn_schunck(
    float Ix[H][W],
    float Iy[H][W],
    float It[H][W],
    float u[H][W],
    float v[H][W]
);
