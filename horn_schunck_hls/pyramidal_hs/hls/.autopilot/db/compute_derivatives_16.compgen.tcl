# This script segment is generated automatically by AutoPilot

set name pyramidal_hs_mul_64ns_66ns_129_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


set name pyramidal_hs_mul_4ns_6ns_9_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler pyramidal_hs_sparsemux_7_2_16_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
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
    id 93 \
    name Ix16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Ix16 \
    op interface \
    ports { Ix16_address0 { O 8 vector } Ix16_ce0 { O 1 bit } Ix16_we0 { O 1 bit } Ix16_d0 { O 16 vector } Ix16_address1 { O 8 vector } Ix16_ce1 { O 1 bit } Ix16_we1 { O 1 bit } Ix16_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 94 \
    name Iy16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Iy16 \
    op interface \
    ports { Iy16_address0 { O 8 vector } Iy16_ce0 { O 1 bit } Iy16_we0 { O 1 bit } Iy16_d0 { O 16 vector } Iy16_address1 { O 8 vector } Iy16_ce1 { O 1 bit } Iy16_we1 { O 1 bit } Iy16_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 95 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_17 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_17_address0 { O 6 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_17_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_17_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 96 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_16 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_16_address0 { O 6 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_16_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_16_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 97 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_15 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_15_address0 { O 6 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_15_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_15_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_14 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_14_address0 { O 6 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_14_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_14_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 99 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_13 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_13_address0 { O 6 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_13_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_13_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 100 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_12 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_12_address0 { O 6 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_12_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_12_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 101 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_11 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_11_address0 { O 6 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_11_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_11_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 102 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_10 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_10_address0 { O 6 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_10_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_10_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 103 \
    name p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_9 \
    op interface \
    ports { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_9_address0 { O 6 vector } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_9_ce0 { O 1 bit } p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_9_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name img2_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename img2_16 \
    op interface \
    ports { img2_16_address0 { O 8 vector } img2_16_ce0 { O 1 bit } img2_16_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'img2_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 105 \
    name It16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename It16 \
    op interface \
    ports { It16_address0 { O 8 vector } It16_ce0 { O 1 bit } It16_we0 { O 1 bit } It16_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'It16'"
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


