#include "pyramid_downsample.h"

template<int H, int W>
void pyramid_downsample(
    fixed_t in[H][W],
    fixed_t out[H/2][W/2]
) {
    for (int i=0; i<H; i+=2) {
        for (int j=0; j<W; j+=2) {
#pragma HLS PIPELINE II=1
            out[i/2][j/2] = (in[i][j] + in[i][j+1] + in[i+1][j] + in[i+1][j+1]) * fixed_t(0.25);
        }
    }
}

// Explicit instantiation
template void pyramid_downsample<64,64>(fixed_t[64][64], fixed_t[32][32]);
