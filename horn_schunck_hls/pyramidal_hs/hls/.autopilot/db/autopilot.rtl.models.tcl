set SynModuleInfo {
  {SRCNAME pyramidal_hs_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_7_2 MODELNAME pyramidal_hs_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_7_2 RTLNAME pyramidal_hs_pyramidal_hs_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_7_2
    SUBMODULES {
      {MODELNAME pyramidal_hs_urem_6ns_3ns_2_10_1 RTLNAME pyramidal_hs_urem_6ns_3ns_2_10_1 BINDTYPE op TYPE urem IMPL auto LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_mul_6ns_8ns_13_1_1 RTLNAME pyramidal_hs_mul_6ns_8ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_mac_muladd_5ns_4ns_5ns_7_4_1 RTLNAME pyramidal_hs_mac_muladd_5ns_4ns_5ns_7_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME pyramidal_hs_flow_control_loop_pipe_sequential_init RTLNAME pyramidal_hs_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME pyramidal_hs_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME pyramidal_hs_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_7_23 MODELNAME pyramidal_hs_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_7_23 RTLNAME pyramidal_hs_pyramidal_hs_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_7_23}
  {SRCNAME pyramidal_hs_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2 MODELNAME pyramidal_hs_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2 RTLNAME pyramidal_hs_pyramidal_hs_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2
    SUBMODULES {
      {MODELNAME pyramidal_hs_sparsemux_7_2_16_1_1 RTLNAME pyramidal_hs_sparsemux_7_2_16_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME pyramidal_hs_urem_5ns_3ns_2_9_1 RTLNAME pyramidal_hs_urem_5ns_3ns_2_9_1 BINDTYPE op TYPE urem IMPL auto LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_mul_5ns_7ns_11_1_1 RTLNAME pyramidal_hs_mul_5ns_7ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_mul_4ns_5ns_7_1_1 RTLNAME pyramidal_hs_mul_4ns_5ns_7_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pyramidal_hs_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_24 MODELNAME pyramidal_hs_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_24 RTLNAME pyramidal_hs_pyramidal_hs_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_24}
  {SRCNAME compute_derivatives_16 MODELNAME compute_derivatives_16 RTLNAME pyramidal_hs_compute_derivatives_16
    SUBMODULES {
      {MODELNAME pyramidal_hs_mul_64ns_66ns_129_5_1 RTLNAME pyramidal_hs_mul_64ns_66ns_129_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_mul_4ns_6ns_9_1_1 RTLNAME pyramidal_hs_mul_4ns_6ns_9_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_sparsemux_7_2_16_1_1_x RTLNAME pyramidal_hs_sparsemux_7_2_16_1_1_x BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME horn_schunck_16_Pipeline_VITIS_LOOP_110_1_VITIS_LOOP_112_2 MODELNAME horn_schunck_16_Pipeline_VITIS_LOOP_110_1_VITIS_LOOP_112_2 RTLNAME pyramidal_hs_horn_schunck_16_Pipeline_VITIS_LOOP_110_1_VITIS_LOOP_112_2}
  {SRCNAME horn_schunck_16_Pipeline_VITIS_LOOP_123_4_VITIS_LOOP_125_5 MODELNAME horn_schunck_16_Pipeline_VITIS_LOOP_123_4_VITIS_LOOP_125_5 RTLNAME pyramidal_hs_horn_schunck_16_Pipeline_VITIS_LOOP_123_4_VITIS_LOOP_125_5
    SUBMODULES {
      {MODELNAME pyramidal_hs_urem_4ns_3ns_2_8_1 RTLNAME pyramidal_hs_urem_4ns_3ns_2_8_1 BINDTYPE op TYPE urem IMPL auto LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_sdiv_53ns_33s_53_57_1 RTLNAME pyramidal_hs_sdiv_53ns_33s_53_57_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 56 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_mac_muladd_16s_16s_21ns_32_4_1 RTLNAME pyramidal_hs_mac_muladd_16s_16s_21ns_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME pyramidal_hs_mac_muladd_16s_16s_32s_33_4_1 RTLNAME pyramidal_hs_mac_muladd_16s_16s_32s_33_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME pyramidal_hs_mac_muladd_16s_16s_33s_33_1_1 RTLNAME pyramidal_hs_mac_muladd_16s_16s_33s_33_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME pyramidal_hs_mac_muladd_16s_16s_26s_33_1_1 RTLNAME pyramidal_hs_mac_muladd_16s_16s_26s_33_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME pyramidal_hs_mac_mulsub_16s_16s_26s_26_1_1 RTLNAME pyramidal_hs_mac_mulsub_16s_16s_26s_26_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
    }
  }
  {SRCNAME horn_schunck_16 MODELNAME horn_schunck_16 RTLNAME pyramidal_hs_horn_schunck_16}
  {SRCNAME pyramidal_hs_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_2 MODELNAME pyramidal_hs_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_2 RTLNAME pyramidal_hs_pyramidal_hs_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_2}
  {SRCNAME pyramidal_hs_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_25 MODELNAME pyramidal_hs_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_25 RTLNAME pyramidal_hs_pyramidal_hs_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_25}
  {SRCNAME pyramidal_hs_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_43_2 MODELNAME pyramidal_hs_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_43_2 RTLNAME pyramidal_hs_pyramidal_hs_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_43_2
    SUBMODULES {
      {MODELNAME pyramidal_hs_sparsemux_7_2_15_1_1 RTLNAME pyramidal_hs_sparsemux_7_2_15_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME compute_derivatives_32 MODELNAME compute_derivatives_32 RTLNAME pyramidal_hs_compute_derivatives_32
    SUBMODULES {
      {MODELNAME pyramidal_hs_mul_5ns_5ns_7_1_1 RTLNAME pyramidal_hs_mul_5ns_5ns_7_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_mac_muladd_7s_4ns_5ns_7_4_1 RTLNAME pyramidal_hs_mac_muladd_7s_4ns_5ns_7_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME horn_schunck_32_Pipeline_VITIS_LOOP_78_4_VITIS_LOOP_80_5 MODELNAME horn_schunck_32_Pipeline_VITIS_LOOP_78_4_VITIS_LOOP_80_5 RTLNAME pyramidal_hs_horn_schunck_32_Pipeline_VITIS_LOOP_78_4_VITIS_LOOP_80_5}
  {SRCNAME horn_schunck_32 MODELNAME horn_schunck_32 RTLNAME pyramidal_hs_horn_schunck_32}
  {SRCNAME pyramidal_hs_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_40_2 MODELNAME pyramidal_hs_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_40_2 RTLNAME pyramidal_hs_pyramidal_hs_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_40_2}
  {SRCNAME pyramidal_hs_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_40_26 MODELNAME pyramidal_hs_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_40_26 RTLNAME pyramidal_hs_pyramidal_hs_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_40_26}
  {SRCNAME pyramidal_hs_Pipeline_VITIS_LOOP_58_3_VITIS_LOOP_60_4 MODELNAME pyramidal_hs_Pipeline_VITIS_LOOP_58_3_VITIS_LOOP_60_4 RTLNAME pyramidal_hs_pyramidal_hs_Pipeline_VITIS_LOOP_58_3_VITIS_LOOP_60_4}
  {SRCNAME compute_derivatives MODELNAME compute_derivatives RTLNAME pyramidal_hs_compute_derivatives}
  {SRCNAME horn_schunck_64_Pipeline_VITIS_LOOP_33_5 MODELNAME horn_schunck_64_Pipeline_VITIS_LOOP_33_5 RTLNAME pyramidal_hs_horn_schunck_64_Pipeline_VITIS_LOOP_33_5}
  {SRCNAME horn_schunck_64 MODELNAME horn_schunck_64 RTLNAME pyramidal_hs_horn_schunck_64}
  {SRCNAME pyramidal_hs MODELNAME pyramidal_hs RTLNAME pyramidal_hs IS_TOP 1
    SUBMODULES {
      {MODELNAME pyramidal_hs_p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_Sbkb RTLNAME pyramidal_hs_p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_Sbkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1_RAM_AUTO_1R1W RTLNAME pyramidal_hs_pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_SkbM RTLNAME pyramidal_hs_p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_SkbM BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_img2_16_RAM_AUTO_1R1W RTLNAME pyramidal_hs_img2_16_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_Ix16_RAM_AUTO_1R1W RTLNAME pyramidal_hs_Ix16_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_Stde RTLNAME pyramidal_hs_p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_Stde BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_Svdy RTLNAME pyramidal_hs_p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_Svdy BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_SFfa RTLNAME pyramidal_hs_p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_SFfa BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_Ix32_RAM_AUTO_1R1W RTLNAME pyramidal_hs_Ix32_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_It32_RAM_AUTO_1R1W RTLNAME pyramidal_hs_It32_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pyramidal_hs_Ix64_RAM_AUTO_1R1W RTLNAME pyramidal_hs_Ix64_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
