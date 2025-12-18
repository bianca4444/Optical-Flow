#pragma once
#include "lucas_kanade_hls.h"
#include "pyramid_downsample.h"
#include "upscale_flow.h"

template<int H, int W>
void lucas_kanade_pyramid(
    fixed_t I1[H][W],
    fixed_t I2[H][W],
    fixed_t u[H][W],
    fixed_t v[H][W]
);
