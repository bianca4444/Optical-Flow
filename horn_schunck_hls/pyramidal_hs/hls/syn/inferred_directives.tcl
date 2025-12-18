# Inferred from performance & pipeline pragmas/directives
set_directive_loop_flatten compute_derivatives/VITIS_LOOP_12_1
set_directive_array_partition pyramidal_hs/pyramidal_hs(ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64])::img1_32} -dim=1 -type=cyclic -factor=3 pyramidal_hs(ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64])::img1_32}
set_directive_loop_flatten compute_derivatives_32/VITIS_LOOP_46_1
set_directive_array_partition pyramidal_hs/pyramidal_hs(ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64])::img1_16} -dim=1 -type=cyclic -factor=3 pyramidal_hs(ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64])::img1_16}
set_directive_loop_flatten compute_derivatives_16/VITIS_LOOP_70_1
set_directive_loop_flatten horn_schunck_64/VITIS_LOOP_31_4 -off
set_directive_loop_flatten horn_schunck_32/VITIS_LOOP_76_3 -off
set_directive_array_partition pyramidal_hs/pyramidal_hs(ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64])::u32} -dim=1 -type=cyclic -factor=3 pyramidal_hs(ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64])::u32}
set_directive_loop_flatten horn_schunck_32/VITIS_LOOP_78_4
set_directive_loop_flatten horn_schunck_16/VITIS_LOOP_110_1
set_directive_loop_flatten horn_schunck_16/VITIS_LOOP_121_3 -off
set_directive_array_partition pyramidal_hs/pyramidal_hs(ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64])::u16} -dim=1 -type=cyclic -factor=3 pyramidal_hs(ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64],} ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0> (*) {[64])::u16}
set_directive_loop_flatten horn_schunck_16/VITIS_LOOP_123_4
set_directive_loop_flatten pyramidal_hs/VITIS_LOOP_6_1
set_directive_loop_flatten pyramidal_hs/VITIS_LOOP_17_1
set_directive_loop_flatten pyramidal_hs/VITIS_LOOP_29_1
set_directive_loop_flatten pyramidal_hs/VITIS_LOOP_39_1
set_directive_loop_flatten pyramidal_hs/VITIS_LOOP_41_1
set_directive_loop_flatten pyramidal_hs/VITIS_LOOP_58_3
