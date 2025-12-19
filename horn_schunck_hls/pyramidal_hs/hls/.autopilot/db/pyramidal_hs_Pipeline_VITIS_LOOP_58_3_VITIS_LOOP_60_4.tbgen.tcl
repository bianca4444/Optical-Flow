set moduleName pyramidal_hs_Pipeline_VITIS_LOOP_58_3_VITIS_LOOP_60_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 23
set C_modelName {pyramidal_hs_Pipeline_VITIS_LOOP_58_3_VITIS_LOOP_60_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict u { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict v { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ u int 16 regular {array 4096 { 0 1 } 1 1 }  }
	{ v int 16 regular {array 4096 { 0 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "u", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "v", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ u_address0 sc_out sc_lv 12 signal 0 } 
	{ u_ce0 sc_out sc_logic 1 signal 0 } 
	{ u_we0 sc_out sc_logic 1 signal 0 } 
	{ u_d0 sc_out sc_lv 16 signal 0 } 
	{ u_address1 sc_out sc_lv 12 signal 0 } 
	{ u_ce1 sc_out sc_logic 1 signal 0 } 
	{ u_q1 sc_in sc_lv 16 signal 0 } 
	{ v_address0 sc_out sc_lv 12 signal 1 } 
	{ v_ce0 sc_out sc_logic 1 signal 1 } 
	{ v_we0 sc_out sc_logic 1 signal 1 } 
	{ v_d0 sc_out sc_lv 16 signal 1 } 
	{ v_address1 sc_out sc_lv 12 signal 1 } 
	{ v_ce1 sc_out sc_logic 1 signal 1 } 
	{ v_q1 sc_in sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "u_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "u", "role": "address0" }} , 
 	{ "name": "u_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce0" }} , 
 	{ "name": "u_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "we0" }} , 
 	{ "name": "u_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "u", "role": "d0" }} , 
 	{ "name": "u_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "u", "role": "address1" }} , 
 	{ "name": "u_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce1" }} , 
 	{ "name": "u_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "u", "role": "q1" }} , 
 	{ "name": "v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v", "role": "address0" }} , 
 	{ "name": "v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "ce0" }} , 
 	{ "name": "v_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "we0" }} , 
 	{ "name": "v_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "d0" }} , 
 	{ "name": "v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v", "role": "address1" }} , 
 	{ "name": "v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "ce1" }} , 
 	{ "name": "v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "q1" }}  ]}

set ArgLastReadFirstWriteLatency {
	pyramidal_hs_Pipeline_VITIS_LOOP_58_3_VITIS_LOOP_60_4 {
		u {Type IO LastRead 0 FirstWrite 1}
		v {Type IO LastRead 0 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4098", "Max" : "4098"}
	, {"Name" : "Interval", "Min" : "4097", "Max" : "4097"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	u { ap_memory {  { u_address0 mem_address 1 12 }  { u_ce0 mem_ce 1 1 }  { u_we0 mem_we 1 1 }  { u_d0 mem_din 1 16 }  { u_address1 MemPortADDR2 1 12 }  { u_ce1 MemPortCE2 1 1 }  { u_q1 MemPortDOUT2 0 16 } } }
	v { ap_memory {  { v_address0 mem_address 1 12 }  { v_ce0 mem_ce 1 1 }  { v_we0 mem_we 1 1 }  { v_d0 mem_din 1 16 }  { v_address1 MemPortADDR2 1 12 }  { v_ce1 MemPortCE2 1 1 }  { v_q1 MemPortDOUT2 0 16 } } }
}
