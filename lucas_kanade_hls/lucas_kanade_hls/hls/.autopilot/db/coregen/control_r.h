// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of I1
//        bit 31~0 - I1[31:0] (Read/Write)
// 0x14 : Data signal of I1
//        bit 31~0 - I1[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of I2
//        bit 31~0 - I2[31:0] (Read/Write)
// 0x20 : Data signal of I2
//        bit 31~0 - I2[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of u
//        bit 31~0 - u[31:0] (Read/Write)
// 0x2c : Data signal of u
//        bit 31~0 - u[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of v
//        bit 31~0 - v[31:0] (Read/Write)
// 0x38 : Data signal of v
//        bit 31~0 - v[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_R_ADDR_I1_DATA 0x10
#define CONTROL_R_BITS_I1_DATA 64
#define CONTROL_R_ADDR_I2_DATA 0x1c
#define CONTROL_R_BITS_I2_DATA 64
#define CONTROL_R_ADDR_U_DATA  0x28
#define CONTROL_R_BITS_U_DATA  64
#define CONTROL_R_ADDR_V_DATA  0x34
#define CONTROL_R_BITS_V_DATA  64
