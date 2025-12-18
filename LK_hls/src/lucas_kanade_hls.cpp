#include "lucas_kanade_hls.h"

void lucas_kanade_hls(
    fixed_t I1[HEIGHT][WIDTH],
    fixed_t I2[HEIGHT][WIDTH],
    fixed_t u[HEIGHT][WIDTH],
    fixed_t v[HEIGHT][WIDTH]
) {
#pragma HLS INTERFACE m_axi port=I1 offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=I2 offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=u  offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=v  offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=return bundle=control

    // === BUFFERE LOCALE DERIVATE ===
    fixed_t Ix_buf[HEIGHT][WIDTH];
    fixed_t Iy_buf[HEIGHT][WIDTH];
    fixed_t It_buf[HEIGHT][WIDTH];

#pragma HLS ARRAY_PARTITION variable=Ix_buf complete dim=2
#pragma HLS ARRAY_PARTITION variable=Iy_buf complete dim=2
#pragma HLS ARRAY_PARTITION variable=It_buf complete dim=2

    // =====================================================
    // STAGE 1: CALCUL DERIVATE (PIPELINED)
    // =====================================================
    for (int i = 1; i < HEIGHT-1; i++) {
        for (int j = 1; j < WIDTH-1; j++) {
#pragma HLS PIPELINE II=1
            Ix_buf[i][j] =
                (I1[i][j+1] - I1[i][j-1] + I2[i][j+1] - I2[i][j-1]) * fixed_t(0.25);

            Iy_buf[i][j] =
                (I1[i+1][j] - I1[i-1][j] + I2[i+1][j] - I2[i-1][j]) * fixed_t(0.25);

            It_buf[i][j] = I2[i][j] - I1[i][j];
        }
    }

    // =====================================================
    // STAGE 2: LUCAS–KANADE WINDOW + SOLVE
    // =====================================================
    for (int i = 2; i < HEIGHT-2; i++) {
        for (int j = 2; j < WIDTH-2; j++) {
#pragma HLS PIPELINE II=1

            fixed_t sum_Ix2  = 0;
            fixed_t sum_Iy2  = 0;
            fixed_t sum_IxIy = 0;
            fixed_t sum_IxIt = 0;
            fixed_t sum_IyIt = 0;

            // === FEREASTRĂ 3x3 PE DERIVATE CACHE ===
            for (int wi = -1; wi <= 1; wi++) {
#pragma HLS UNROLL
                for (int wj = -1; wj <= 1; wj++) {
#pragma HLS UNROLL
                    fixed_t ix = Ix_buf[i+wi][j+wj];
                    fixed_t iy = Iy_buf[i+wi][j+wj];
                    fixed_t it = It_buf[i+wi][j+wj];

                    sum_Ix2  += ix * ix;
                    sum_Iy2  += iy * iy;
                    sum_IxIy += ix * iy;
                    sum_IxIt += ix * it;
                    sum_IyIt += iy * it;
                }
            }

            // === REZOLVARE SISTEM 2x2 ===
            fixed_t det = sum_Ix2 * sum_Iy2 - sum_IxIy * sum_IxIy;

            if (det != 0) {
                u[i][j] = ( sum_Iy2 * (-sum_IxIt) - sum_IxIy * (-sum_IyIt) ) / det;
                v[i][j] = ( sum_Ix2 * (-sum_IyIt) - sum_IxIy * (-sum_IxIt) ) / det;
            } else {
                u[i][j] = 0;
                v[i][j] = 0;
            }
        }
    }
}
