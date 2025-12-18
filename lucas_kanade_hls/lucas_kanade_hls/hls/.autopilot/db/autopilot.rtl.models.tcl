set SynModuleInfo {
  {SRCNAME lucas_kanade_hls MODELNAME lucas_kanade_hls RTLNAME lucas_kanade_hls IS_TOP 1
    SUBMODULES {
      {MODELNAME lucas_kanade_hls_mul_16s_16s_26_1_1 RTLNAME lucas_kanade_hls_mul_16s_16s_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME lucas_kanade_hls_mul_16s_16s_32_1_1 RTLNAME lucas_kanade_hls_mul_16s_16s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME lucas_kanade_hls_sdiv_42ns_16s_42_46_1 RTLNAME lucas_kanade_hls_sdiv_42ns_16s_42_46_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 45 ALLOW_PRAGMA 1}
      {MODELNAME lucas_kanade_hls_mac_muladd_16s_16s_26s_26_4_1 RTLNAME lucas_kanade_hls_mac_muladd_16s_16s_26s_26_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME lucas_kanade_hls_mac_mulsub_16s_16s_26s_26_4_1 RTLNAME lucas_kanade_hls_mac_mulsub_16s_16s_26s_26_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME lucas_kanade_hls_mac_mulsub_16s_16s_32s_32_4_1 RTLNAME lucas_kanade_hls_mac_mulsub_16s_16s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME lucas_kanade_hls_gmem_m_axi RTLNAME lucas_kanade_hls_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME lucas_kanade_hls_control_s_axi RTLNAME lucas_kanade_hls_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME lucas_kanade_hls_control_r_s_axi RTLNAME lucas_kanade_hls_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME lucas_kanade_hls_flow_control_loop_pipe RTLNAME lucas_kanade_hls_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME lucas_kanade_hls_flow_control_loop_pipe_U}
    }
  }
}
