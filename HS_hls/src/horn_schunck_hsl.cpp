#include "horn_schunck_hsl.h"

void horn_schunck_64(
    pix_t Ix[HEIGHT][WIDTH],
    pix_t Iy[HEIGHT][WIDTH],
    pix_t It[HEIGHT][WIDTH],
    pix_t u[HEIGHT][WIDTH],
    pix_t v[HEIGHT][WIDTH],
    bool init_zero)
{
#pragma HLS INLINE off

    pix_t u_avg, v_avg;
    pix_t P;
    const pix_t alpha = 1;
    if (init_zero)
    {
        for (int y = 0; y < HEIGHT; y++)
        {
            for (int x = 0; x < WIDTH; x++)
            {
#pragma HLS PIPELINE II = 1
                u[y][x] = 0;
                v[y][x] = 0;
            }
        }
    }

    for (int iter = 0; iter < HS_ITER; iter++)
    {
        for (int y = 1; y < HEIGHT - 1; y++)
        {
            for (int x = 1; x < WIDTH - 1; x++)
            {
#pragma HLS PIPELINE II = 1

                u_avg = (u[y][x - 1] + u[y][x + 1] + u[y - 1][x] + u[y + 1][x]) / 4;
                v_avg = (v[y][x - 1] + v[y][x + 1] + v[y - 1][x] + v[y + 1][x]) / 4;

                P = (Ix[y][x] * u_avg + Iy[y][x] * v_avg + It[y][x]) /
                    (alpha * alpha + Ix[y][x] * Ix[y][x] + Iy[y][x] * Iy[y][x]);

                u[y][x] = u_avg - Ix[y][x] * P;
                v[y][x] = v_avg - Iy[y][x] * P;
            }
        }
    }
}

void horn_schunck_32(
    pix_t Ix[HEIGHT / 2][WIDTH / 2],
    pix_t Iy[HEIGHT / 2][WIDTH / 2],
    pix_t It[HEIGHT / 2][WIDTH / 2],
    pix_t u[HEIGHT / 2][WIDTH / 2],
    pix_t v[HEIGHT / 2][WIDTH / 2],
    bool init_zero)
{
#pragma HLS INLINE off

    pix_t u_avg, v_avg;
    pix_t P;
    const pix_t alpha = 1;
    if (init_zero)
    {
        for (int y = 0; y < HEIGHT / 2; y++)
        {
            for (int x = 0; x < WIDTH / 2; x++)
            {
#pragma HLS PIPELINE II = 1
                u[y][x] = 0;
                v[y][x] = 0;
            }
        }
    }

    for (int iter = 0; iter < HS_ITER; iter++)
    {
        for (int y = 1; y < HEIGHT / 2 - 1; y++)
        {
            for (int x = 1; x < WIDTH / 2 - 1; x++)
            {
#pragma HLS PIPELINE II = 1

                u_avg = (u[y][x - 1] + u[y][x + 1] + u[y - 1][x] + u[y + 1][x]) / 4;
                v_avg = (v[y][x - 1] + v[y][x + 1] + v[y - 1][x] + v[y + 1][x]) / 4;

                P = (Ix[y][x] * u_avg + Iy[y][x] * v_avg + It[y][x]) /
                    (alpha * alpha + Ix[y][x] * Ix[y][x] + Iy[y][x] * Iy[y][x]);

                u[y][x] = u_avg - Ix[y][x] * P;
                v[y][x] = v_avg - Iy[y][x] * P;
            }
        }
    }
}

void horn_schunck_16(
    pix_t Ix[HEIGHT / 4][WIDTH / 4],
    pix_t Iy[HEIGHT / 4][WIDTH / 4],
    pix_t It[HEIGHT / 4][WIDTH / 4],
    pix_t u[HEIGHT / 4][WIDTH / 4],
    pix_t v[HEIGHT / 4][WIDTH / 4],
    bool init_zero)
{
#pragma HLS INLINE off
    pix_t u_avg, v_avg, P;
    const pix_t alpha = 1;
    if (init_zero)
    {
        for (int y = 0; y < HEIGHT / 4; y++)
        {
            for (int x = 0; x < WIDTH / 4; x++)
            {
#pragma HLS PIPELINE II = 1
                u[y][x] = 0;
                v[y][x] = 0;
            }
        }
    }

    for (int iter = 0; iter < HS_ITER; iter++)
    {
        for (int y = 1; y < HEIGHT / 4 - 1; y++)
        {
            for (int x = 1; x < WIDTH / 4 - 1; x++)
            {
#pragma HLS PIPELINE II = 1

                u_avg = (u[y][x - 1] + u[y][x + 1] + u[y - 1][x] + u[y + 1][x]) / 4;
                v_avg = (v[y][x - 1] + v[y][x + 1] + v[y - 1][x] + v[y + 1][x]) / 4;

                P = (Ix[y][x] * u_avg + Iy[y][x] * v_avg + It[y][x]) /
                    (alpha * alpha + Ix[y][x] * Ix[y][x] + Iy[y][x] * Iy[y][x]);

                u[y][x] = u_avg - Ix[y][x] * P;
                v[y][x] = v_avg - Iy[y][x] * P;
            }
        }
    }
}
