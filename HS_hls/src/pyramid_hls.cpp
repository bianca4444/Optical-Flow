#include "pyramid_hls.h"

// 2x2 average
void downsample2x_64_to_32(pix_t in[HEIGHT][WIDTH],
                           pix_t out[HEIGHT/2][WIDTH/2]) {
    for (int y = 0; y < HEIGHT/2; y++) {
        for (int x = 0; x < WIDTH/2; x++) {
#pragma HLS PIPELINE II=1
            out[y][x] = (in[2*y][2*x] + in[2*y+1][2*x] +
                         in[2*y][2*x+1] + in[2*y+1][2*x+1]) / 4;
        }
    }
}

void downsample2x_32_to_16(pix_t in[HEIGHT/2][WIDTH/2],
                           pix_t out[HEIGHT/4][WIDTH/4]) {
    for (int y = 0; y < HEIGHT/4; y++) {
        for (int x = 0; x < WIDTH/4; x++) {
#pragma HLS PIPELINE II=1
            out[y][x] = (in[2*y][2*x] + in[2*y+1][2*x] +
                         in[2*y][2*x+1] + in[2*y+1][2*x+1]) / 4;
        }
    }
}

// Nearest neighbor
void upsample2x_16_to_32(pix_t in[HEIGHT/4][WIDTH/4],
                         pix_t out[HEIGHT/2][WIDTH/2]) {
    for (int y = 0; y < HEIGHT/2; y++) {
        for (int x = 0; x < WIDTH/2; x++) {
#pragma HLS PIPELINE II=1
            out[y][x] = in[y/2][x/2];
        }
    }
}

void upsample2x_32_to_64(pix_t in[HEIGHT/2][WIDTH/2],
                         pix_t out[HEIGHT][WIDTH]) {
    for (int y = 0; y < HEIGHT; y++) {
        for (int x = 0; x < WIDTH; x++) {
#pragma HLS PIPELINE II=1
            out[y][x] = in[y/2][x/2];
        }
    }
}
