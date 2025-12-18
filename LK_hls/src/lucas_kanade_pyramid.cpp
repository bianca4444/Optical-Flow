#include "lucas_kanade_pyramid.h"

template<int H, int W>
void lucas_kanade_pyramid(
    fixed_t I1[H][W],
    fixed_t I2[H][W],
    fixed_t u[H][W],
    fixed_t v[H][W]
) {
    // --- nivel 2: H/2 x W/2 ---
    fixed_t I1_small[H/2][W/2];
    fixed_t I2_small[H/2][W/2];
    fixed_t u_small[H/2][W/2] = {0};
    fixed_t v_small[H/2][W/2] = {0};

    pyramid_downsample<H,W>(I1, I1_small);
    pyramid_downsample<H,W>(I2, I2_small);

    // Apel Lucas-Kanade pe dimensiune mica
    lucas_kanade_hls<H/2, W/2>(I1_small, I2_small, u_small, v_small);

    // Upscale flow
    upscale_flow_2x<H/2, W/2>(u_small, v_small, u, v);

    // Optional: aplica LK pe nivelul complet cu flow inițializat
    lucas_kanade_hls<H, W>(I1, I2, u, v);
}

// Explicit instantiations
template void lucas_kanade_pyramid<64,64>(fixed_t[64][64], fixed_t[64][64], fixed_t[64][64], fixed_t[64][64]);
