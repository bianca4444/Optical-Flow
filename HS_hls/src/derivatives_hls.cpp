#include "derivatives_hls.h"

void compute_derivatives(
    pix_t img1[HEIGHT][WIDTH],
    pix_t img2[HEIGHT][WIDTH],
    pix_t Ix[HEIGHT][WIDTH],
    pix_t Iy[HEIGHT][WIDTH],
    pix_t It[HEIGHT][WIDTH]
) {
#pragma HLS INLINE off

    for (int y = 0; y < HEIGHT; y++) {
        for (int x = 0; x < WIDTH; x++) {
#pragma HLS PIPELINE II=1

            // ----------------------------
            // Border handling
            // ----------------------------
            if (x == 0 || y == 0 || x == WIDTH-1 || y == HEIGHT-1) {
                Ix[y][x] = 0;
                Iy[y][x] = 0;
                It[y][x] = 0;
            }
            else {
                // ----------------------------
                // Central differences
                // ----------------------------
                Ix[y][x] = (img1[y][x+1] - img1[y][x-1]) / 2;
                Iy[y][x] = (img1[y+1][x] - img1[y-1][x]) / 2;

                // Temporal derivative
                It[y][x] = img2[y][x] - img1[y][x];
            }
        }
    }
}

void compute_derivatives_32(
    pix_t img1[HEIGHT/2][WIDTH/2],
    pix_t img2[HEIGHT/2][WIDTH/2],
    pix_t Ix[HEIGHT/2][WIDTH/2],
    pix_t Iy[HEIGHT/2][WIDTH/2],
    pix_t It[HEIGHT/2][WIDTH/2]
) {
#pragma HLS INLINE off
    for (int y = 0; y < HEIGHT/2; y++) {
        for (int x = 0; x < WIDTH/2; x++) {
            #pragma HLS PIPELINE II=1
            if (x == 0 || y == 0 || x == WIDTH/2-1 || y == HEIGHT/2-1) {
                Ix[y][x] = 0;
                Iy[y][x] = 0;
                It[y][x] = 0;
            } else {
                Ix[y][x] = (img1[y][x+1] - img1[y][x-1]) / 2;
                Iy[y][x] = (img1[y+1][x] - img1[y-1][x]) / 2;
                It[y][x] = img2[y][x] - img1[y][x];
            }
        }
    }
}

void compute_derivatives_16(
    pix_t img1[HEIGHT/4][WIDTH/4],
    pix_t img2[HEIGHT/4][WIDTH/4],
    pix_t Ix[HEIGHT/4][WIDTH/4],
    pix_t Iy[HEIGHT/4][WIDTH/4],
    pix_t It[HEIGHT/4][WIDTH/4]
) {
#pragma HLS INLINE off
    for (int y = 0; y < HEIGHT/4; y++) {
        for (int x = 0; x < WIDTH/4; x++) {
            #pragma HLS PIPELINE II=1
            if (x == 0 || y == 0 || x == WIDTH/4-1 || y == HEIGHT/4-1) {
                Ix[y][x] = 0;
                Iy[y][x] = 0;
                It[y][x] = 0;
            } else {
                Ix[y][x] = (img1[y][x+1] - img1[y][x-1]) / 2;
                Iy[y][x] = (img1[y+1][x] - img1[y-1][x]) / 2;
                It[y][x] = img2[y][x] - img1[y][x];
            }
        }
    }
}
