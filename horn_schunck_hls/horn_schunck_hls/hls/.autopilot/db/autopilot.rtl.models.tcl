set SynModuleInfo {
  {SRCNAME horn_schunck_hls_Pipeline_VITIS_LOOP_13_3 MODELNAME horn_schunck_hls_Pipeline_VITIS_LOOP_13_3 RTLNAME horn_schunck_hls_horn_schunck_hls_Pipeline_VITIS_LOOP_13_3
    SUBMODULES {
      {MODELNAME horn_schunck_hls_mul_16s_16s_32_1_1 RTLNAME horn_schunck_hls_mul_16s_16s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME horn_schunck_hls_sdiv_44ns_16s_28_48_1 RTLNAME horn_schunck_hls_sdiv_44ns_16s_28_48_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 47 ALLOW_PRAGMA 1}
      {MODELNAME horn_schunck_hls_mac_muladd_16s_16s_25ns_28_4_1 RTLNAME horn_schunck_hls_mac_muladd_16s_16s_25ns_28_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME horn_schunck_hls_mac_muladd_16s_16s_28s_28_4_1 RTLNAME horn_schunck_hls_mac_muladd_16s_16s_28s_28_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME horn_schunck_hls_mac_muladd_16s_16s_28s_28_1_1 RTLNAME horn_schunck_hls_mac_muladd_16s_16s_28s_28_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME horn_schunck_hls_flow_control_loop_pipe_sequential_init RTLNAME horn_schunck_hls_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME horn_schunck_hls_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME horn_schunck_hls MODELNAME horn_schunck_hls RTLNAME horn_schunck_hls IS_TOP 1}
}
