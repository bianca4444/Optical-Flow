#ifndef PYRAMIDAL_HS_H
#define PYRAMIDAL_HS_H

#include "derivatives_hls.h"   // for pix_t, WIDTH, HEIGHT

// Top function for pyramidal Horn-Schunck
void pyramidal_hs(
    pix_t img1[HEIGHT][WIDTH],
    pix_t img2[HEIGHT][WIDTH],
    pix_t u[HEIGHT][WIDTH],
    pix_t v[HEIGHT][WIDTH]
);

#endif
