set SynModuleInfo {
  {SRCNAME lucas_kanade_hls_Pipeline_VITIS_LOOP_27_1_VITIS_LOOP_28_2 MODELNAME lucas_kanade_hls_Pipeline_VITIS_LOOP_27_1_VITIS_LOOP_28_2 RTLNAME lucas_kanade_hls_lucas_kanade_hls_Pipeline_VITIS_LOOP_27_1_VITIS_LOOP_28_2
    SUBMODULES {
      {MODELNAME lucas_kanade_hls_flow_control_loop_pipe_sequential_init RTLNAME lucas_kanade_hls_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME lucas_kanade_hls_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME lucas_kanade_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4 MODELNAME lucas_kanade_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4 RTLNAME lucas_kanade_hls_lucas_kanade_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4
    SUBMODULES {
      {MODELNAME lucas_kanade_hls_sparsemux_121_6_16_1_1 RTLNAME lucas_kanade_hls_sparsemux_121_6_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME lucas_kanade_hls_mul_16s_16s_28_1_1 RTLNAME lucas_kanade_hls_mul_16s_16s_28_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME lucas_kanade_hls_mul_16s_16s_32_1_1 RTLNAME lucas_kanade_hls_mul_16s_16s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME lucas_kanade_hls_sdiv_44ns_16s_44_48_1 RTLNAME lucas_kanade_hls_sdiv_44ns_16s_44_48_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 47 ALLOW_PRAGMA 1}
      {MODELNAME lucas_kanade_hls_mac_muladd_16s_16s_28s_28_4_1 RTLNAME lucas_kanade_hls_mac_muladd_16s_16s_28s_28_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME lucas_kanade_hls_mac_mulsub_16s_16s_28s_28_4_1 RTLNAME lucas_kanade_hls_mac_mulsub_16s_16s_28s_28_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME lucas_kanade_hls_mac_mulsub_16s_16s_32s_32_4_1 RTLNAME lucas_kanade_hls_mac_mulsub_16s_16s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME lucas_kanade_hls MODELNAME lucas_kanade_hls RTLNAME lucas_kanade_hls IS_TOP 1
    SUBMODULES {
      {MODELNAME lucas_kanade_hls_Ix_buf_RAM_1WNR_AUTO_1R1W RTLNAME lucas_kanade_hls_Ix_buf_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lucas_kanade_hls_gmem_m_axi RTLNAME lucas_kanade_hls_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME lucas_kanade_hls_control_s_axi RTLNAME lucas_kanade_hls_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME lucas_kanade_hls_control_r_s_axi RTLNAME lucas_kanade_hls_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
