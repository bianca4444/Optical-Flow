#pragma once
#include "lucas_kanade_hls.h" // pentru fixed_t

template<int H, int W>
void upscale_flow_2x(
    fixed_t u_in[H][W],
    fixed_t v_in[H][W],
    fixed_t u_out[H*2][W*2],
    fixed_t v_out[H*2][W*2]
) {
    for (int i = 0; i < H; i++) {
        for (int j = 0; j < W; j++) {
#pragma HLS PIPELINE II=1
            fixed_t uu = u_in[i][j] * 2;
            fixed_t vv = v_in[i][j] * 2;

            u_out[2*i][2*j]     = uu;
            u_out[2*i+1][2*j]   = uu;
            u_out[2*i][2*j+1]   = uu;
            u_out[2*i+1][2*j+1] = uu;

            v_out[2*i][2*j]     = vv;
            v_out[2*i+1][2*j]   = vv;
            v_out[2*i][2*j+1]   = vv;
            v_out[2*i+1][2*j+1] = vv;
        }
    }
}
