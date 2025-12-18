#pragma once
#include "lucas_kanade_hls.h"

template<int H, int W>
void pyramid_downsample(
    fixed_t in[H][W],
    fixed_t out[H/2][W/2]
);
