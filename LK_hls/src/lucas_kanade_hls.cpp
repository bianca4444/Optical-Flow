#include "lucas_kanade_hls.h"

void lucas_kanade_hls(
    fixed_t I1[HEIGHT][WIDTH],
    fixed_t I2[HEIGHT][WIDTH],
    fixed_t u[HEIGHT][WIDTH],
    fixed_t v[HEIGHT][WIDTH]
) {
#pragma HLS INTERFACE m_axi port=I1 offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=I2 offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=u offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=v offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=return bundle=control

    fixed_t Ix, Iy, It;

    // Loop principal
    for (int i = 1; i < HEIGHT-1; i++) {
        for (int j = 1; j < WIDTH-1; j++) {
#pragma HLS PIPELINE II=1

            // Calcul derivate
            Ix = (I1[i][j+1] - I1[i][j-1] + I2[i][j+1] - I2[i][j-1]) / 4;
            Iy = (I1[i+1][j] - I1[i-1][j] + I2[i+1][j] - I2[i-1][j]) / 4;
            It = I2[i][j] - I1[i][j];

            // Sume pentru fereastra
            fixed_t sum_Ix2=0, sum_Iy2=0, sum_IxIy=0, sum_IxIt=0, sum_IyIt=0;

            for (int wi=-WINDOW_SIZE/2; wi<=WINDOW_SIZE/2; wi++) {
                for (int wj=-WINDOW_SIZE/2; wj<=WINDOW_SIZE/2; wj++) {
#pragma HLS UNROLL
                    fixed_t ix = (I1[i+wi][j+wj+1] - I1[i+wi][j+wj-1] + I2[i+wi][j+wj+1] - I2[i+wi][j+wj-1]) / 4;
                    fixed_t iy = (I1[i+wi+1][j+wj] - I1[i+wi-1][j+wj] + I2[i+wi+1][j+wj] - I2[i+wi-1][j+wj]) / 4;
                    fixed_t it = I2[i+wi][j+wj] - I1[i+wi][j+wj];

                    sum_Ix2  += ix * ix;
                    sum_Iy2  += iy * iy;
                    sum_IxIy += ix * iy;
                    sum_IxIt += ix * it;
                    sum_IyIt += iy * it;
                }
            }

            // Rezolvare sistem 2x2
            fixed_t det = sum_Ix2*sum_Iy2 - sum_IxIy*sum_IxIy;
            if (det != 0) {
                u[i][j] = (sum_Iy2*(-sum_IxIt) - sum_IxIy*(-sum_IyIt)) / det;
                v[i][j] = (sum_Ix2*(-sum_IyIt) - sum_IxIy*(-sum_IxIt)) / det;
            } else {
                u[i][j] = 0;
                v[i][j] = 0;
            }
        }
    }
}
