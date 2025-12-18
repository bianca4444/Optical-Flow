#ifndef PYRAMID_HLS_H
#define PYRAMID_HLS_H

#include "derivatives_hls.h"

// Downsample 64x64 -> 32x32
void downsample2x_64_to_32(pix_t in[HEIGHT][WIDTH],
                           pix_t out[HEIGHT/2][WIDTH/2]);

// Downsample 32x32 -> 16x16
void downsample2x_32_to_16(pix_t in[HEIGHT/2][WIDTH/2],
                           pix_t out[HEIGHT/4][WIDTH/4]);

// Upsample 16x16 -> 32x32
void upsample2x_16_to_32(pix_t in[HEIGHT/4][WIDTH/4],
                         pix_t out[HEIGHT/2][WIDTH/2]);

// Upsample 32x32 -> 64x64
void upsample2x_32_to_64(pix_t in[HEIGHT/2][WIDTH/2],
                         pix_t out[HEIGHT][WIDTH]);

#endif
