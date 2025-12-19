# This script segment is generated automatically by AutoPilot

set name pyramidal_hs_urem_6ns_3ns_2_10_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 9 ALLOW_PRAGMA 1
}


set name pyramidal_hs_mul_6ns_8ns_13_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler pyramidal_hs_mac_muladd_5ns_4ns_5ns_7_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 9 \
    name img1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename img1 \
    op interface \
    ports { img1_address0 { O 12 vector } img1_ce0 { O 1 bit } img1_q0 { I 16 vector } img1_address1 { O 12 vector } img1_ce1 { O 1 bit } img1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'img1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 10 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8_address0 { O 7 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8_we0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 11 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7_address0 { O 7 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7_we0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 12 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6_address0 { O 7 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6_we0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 13 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5_address0 { O 7 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5_we0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 14 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4_address0 { O 7 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4_we0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 15 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3_address0 { O 7 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3_we0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 16 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2_address0 { O 7 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2_we0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 17 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1_address0 { O 7 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1_we0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_address0 { O 7 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_we0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName pyramidal_hs_flow_control_loop_pipe_sequential_init_U
set CompName pyramidal_hs_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix pyramidal_hs_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


