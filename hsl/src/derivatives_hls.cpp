#include "derivatives_hls.h"

static const fixed_t HALF = fixed_t(0.5);

void compute_derivatives_hls(
    fixed_t I1[H][W],
    fixed_t I2[H][W],
    fixed_t Ix[H][W],
    fixed_t Iy[H][W],
    fixed_t It[H][W]
) {
#pragma HLS INLINE off

    for (int y = 0; y < H; y++) {
        for (int x = 0; x < W; x++) {
#pragma HLS PIPELINE II=1

            // border handling simplu: clamp la margine
            int xm1 = (x == 0)    ? 0    : x - 1;
            int xp1 = (x == W-1)  ? W-1  : x + 1;
            int ym1 = (y == 0)    ? 0    : y - 1;
            int yp1 = (y == H-1)  ? H-1  : y + 1;

            fixed_t c  = I1[y][x];
            fixed_t cx1 = I1[y][xp1];
            fixed_t cx0 = I1[y][xm1];
            fixed_t cy1 = I1[yp1][x];
            fixed_t cy0 = I1[ym1][x];

            // diferențe centrale (gradient spațial)
            Ix[y][x] = (cx1 - cx0) * HALF;
            Iy[y][x] = (cy1 - cy0) * HALF;

            // derivată temporală
            It[y][x] = I2[y][x] - I1[y][x];
        }
    }
}