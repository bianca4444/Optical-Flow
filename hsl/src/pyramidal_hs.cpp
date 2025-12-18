#include "pyramidal_hs.h"
#include "pyramid_hls.h"
#include "horn_schunck_hsl.h"
#include "derivatives_hls.h"

void pyramidal_hs(
    pix_t img1[HEIGHT][WIDTH],
    pix_t img2[HEIGHT][WIDTH],
    pix_t u[HEIGHT][WIDTH],
    pix_t v[HEIGHT][WIDTH])
{
#pragma HLS INLINE off

  // Pyramid images
  static pix_t img1_32[HEIGHT / 2][WIDTH / 2], img2_32[HEIGHT / 2][WIDTH / 2];
  static pix_t img1_16[HEIGHT / 4][WIDTH / 4], img2_16[HEIGHT / 4][WIDTH / 4];

  // Derivatives
  static pix_t Ix64[HEIGHT][WIDTH], Iy64[HEIGHT][WIDTH], It64[HEIGHT][WIDTH];
  static pix_t Ix32[HEIGHT / 2][WIDTH / 2], Iy32[HEIGHT / 2][WIDTH / 2], It32[HEIGHT / 2][WIDTH / 2];
  static pix_t Ix16[HEIGHT / 4][WIDTH / 4], Iy16[HEIGHT / 4][WIDTH / 4], It16[HEIGHT / 4][WIDTH / 4];

  // Flow at intermediate levels
  static pix_t u32[HEIGHT / 2][WIDTH / 2], v32[HEIGHT / 2][WIDTH / 2];
  static pix_t u16[HEIGHT / 4][WIDTH / 4], v16[HEIGHT / 4][WIDTH / 4];

  // 1) Build pyramid
  downsample2x_64_to_32(img1, img1_32);
  downsample2x_64_to_32(img2, img2_32);
  downsample2x_32_to_16(img1_32, img1_16);
  downsample2x_32_to_16(img2_32, img2_16);

  // 2) Coarse (16)
  compute_derivatives_16(img1_16, img2_16, Ix16, Iy16, It16);
  horn_schunck_16(Ix16, Iy16, It16, u16, v16, true);

  // 3) Upsample to 32 and refine
  upsample2x_16_to_32(u16, u32);
  upsample2x_16_to_32(v16, v32);

  for (int y = 0; y < HEIGHT / 2; y++)
  {
    for (int x = 0; x < WIDTH / 2; x++)
    {
#pragma HLS PIPELINE II = 1
      u32[y][x] = u32[y][x] * 2;
      v32[y][x] = v32[y][x] * 2;
    }
  }

  compute_derivatives_32(img1_32, img2_32, Ix32, Iy32, It32);
  horn_schunck_32(Ix32, Iy32, It32, u32, v32, false);

  // 4) Upsample to 64 and refine
  upsample2x_32_to_64(u32, u);
  upsample2x_32_to_64(v32, v);

  for (int y = 0; y < HEIGHT; y++)
  {
    for (int x = 0; x < WIDTH; x++)
    {
#pragma HLS PIPELINE II = 1
      u[y][x] = u[y][x] * 2;
      v[y][x] = v[y][x] * 2;
    }
  }

  compute_derivatives(img1, img2, Ix64, Iy64, It64);
  horn_schunck_64(Ix64, Iy64, It64, u, v, false);
}
