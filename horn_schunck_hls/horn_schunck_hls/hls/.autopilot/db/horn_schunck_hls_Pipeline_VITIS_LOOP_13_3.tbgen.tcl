set moduleName horn_schunck_hls_Pipeline_VITIS_LOOP_13_3
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
set cdfgNum 4
set C_modelName {horn_schunck_hls_Pipeline_VITIS_LOOP_13_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict Ix { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Iy { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict It { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict u { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict v { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ u_load int 16 regular  }
	{ v_load int 16 regular  }
	{ i int 6 regular  }
	{ Ix int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ Iy int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ It int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ add_ln20 int 6 regular  }
	{ u int 16 regular {array 4096 { 1 2 } 1 1 }  }
	{ add_ln21 int 6 regular  }
	{ v int 16 regular {array 4096 { 1 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "u_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "v_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "i", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "Ix", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "Iy", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "It", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln20", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "u", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "add_ln21", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "v", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ u_load sc_in sc_lv 16 signal 0 } 
	{ v_load sc_in sc_lv 16 signal 1 } 
	{ i sc_in sc_lv 6 signal 2 } 
	{ Ix_address0 sc_out sc_lv 12 signal 3 } 
	{ Ix_ce0 sc_out sc_logic 1 signal 3 } 
	{ Ix_q0 sc_in sc_lv 16 signal 3 } 
	{ Iy_address0 sc_out sc_lv 12 signal 4 } 
	{ Iy_ce0 sc_out sc_logic 1 signal 4 } 
	{ Iy_q0 sc_in sc_lv 16 signal 4 } 
	{ It_address0 sc_out sc_lv 12 signal 5 } 
	{ It_ce0 sc_out sc_logic 1 signal 5 } 
	{ It_q0 sc_in sc_lv 16 signal 5 } 
	{ add_ln20 sc_in sc_lv 6 signal 6 } 
	{ u_address0 sc_out sc_lv 12 signal 7 } 
	{ u_ce0 sc_out sc_logic 1 signal 7 } 
	{ u_q0 sc_in sc_lv 16 signal 7 } 
	{ u_address1 sc_out sc_lv 12 signal 7 } 
	{ u_ce1 sc_out sc_logic 1 signal 7 } 
	{ u_we1 sc_out sc_logic 1 signal 7 } 
	{ u_d1 sc_out sc_lv 16 signal 7 } 
	{ u_q1 sc_in sc_lv 16 signal 7 } 
	{ add_ln21 sc_in sc_lv 6 signal 8 } 
	{ v_address0 sc_out sc_lv 12 signal 9 } 
	{ v_ce0 sc_out sc_logic 1 signal 9 } 
	{ v_q0 sc_in sc_lv 16 signal 9 } 
	{ v_address1 sc_out sc_lv 12 signal 9 } 
	{ v_ce1 sc_out sc_logic 1 signal 9 } 
	{ v_we1 sc_out sc_logic 1 signal 9 } 
	{ v_d1 sc_out sc_lv 16 signal 9 } 
	{ v_q1 sc_in sc_lv 16 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "u_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "u_load", "role": "default" }} , 
 	{ "name": "v_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v_load", "role": "default" }} , 
 	{ "name": "i", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "i", "role": "default" }} , 
 	{ "name": "Ix_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Ix", "role": "address0" }} , 
 	{ "name": "Ix_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Ix", "role": "ce0" }} , 
 	{ "name": "Ix_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Ix", "role": "q0" }} , 
 	{ "name": "Iy_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Iy", "role": "address0" }} , 
 	{ "name": "Iy_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Iy", "role": "ce0" }} , 
 	{ "name": "Iy_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Iy", "role": "q0" }} , 
 	{ "name": "It_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "It", "role": "address0" }} , 
 	{ "name": "It_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "It", "role": "ce0" }} , 
 	{ "name": "It_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "It", "role": "q0" }} , 
 	{ "name": "add_ln20", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "add_ln20", "role": "default" }} , 
 	{ "name": "u_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "u", "role": "address0" }} , 
 	{ "name": "u_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce0" }} , 
 	{ "name": "u_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "u", "role": "q0" }} , 
 	{ "name": "u_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "u", "role": "address1" }} , 
 	{ "name": "u_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce1" }} , 
 	{ "name": "u_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "we1" }} , 
 	{ "name": "u_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "u", "role": "d1" }} , 
 	{ "name": "u_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "u", "role": "q1" }} , 
 	{ "name": "add_ln21", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "add_ln21", "role": "default" }} , 
 	{ "name": "v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v", "role": "address0" }} , 
 	{ "name": "v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "ce0" }} , 
 	{ "name": "v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "q0" }} , 
 	{ "name": "v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v", "role": "address1" }} , 
 	{ "name": "v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "ce1" }} , 
 	{ "name": "v_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "we1" }} , 
 	{ "name": "v_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "d1" }} , 
 	{ "name": "v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "q1" }}  ]}

set ArgLastReadFirstWriteLatency {
	horn_schunck_hls_Pipeline_VITIS_LOOP_13_3 {
		u_load {Type I LastRead 0 FirstWrite -1}
		v_load {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		Ix {Type I LastRead 0 FirstWrite -1}
		Iy {Type I LastRead 0 FirstWrite -1}
		It {Type I LastRead 0 FirstWrite -1}
		add_ln20 {Type I LastRead 0 FirstWrite -1}
		u {Type IO LastRead 1 FirstWrite 52}
		add_ln21 {Type I LastRead 0 FirstWrite -1}
		v {Type IO LastRead 1 FirstWrite 52}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2921", "Max" : "2921"}
	, {"Name" : "Interval", "Min" : "2920", "Max" : "2920"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	u_load { ap_none {  { u_load in_data 0 16 } } }
	v_load { ap_none {  { v_load in_data 0 16 } } }
	i { ap_none {  { i in_data 0 6 } } }
	Ix { ap_memory {  { Ix_address0 mem_address 1 12 }  { Ix_ce0 mem_ce 1 1 }  { Ix_q0 mem_dout 0 16 } } }
	Iy { ap_memory {  { Iy_address0 mem_address 1 12 }  { Iy_ce0 mem_ce 1 1 }  { Iy_q0 mem_dout 0 16 } } }
	It { ap_memory {  { It_address0 mem_address 1 12 }  { It_ce0 mem_ce 1 1 }  { It_q0 mem_dout 0 16 } } }
	add_ln20 { ap_none {  { add_ln20 in_data 0 6 } } }
	u { ap_memory {  { u_address0 mem_address 1 12 }  { u_ce0 mem_ce 1 1 }  { u_q0 mem_dout 0 16 }  { u_address1 MemPortADDR2 1 12 }  { u_ce1 MemPortCE2 1 1 }  { u_we1 MemPortWE2 1 1 }  { u_d1 MemPortDIN2 1 16 }  { u_q1 MemPortDOUT2 0 16 } } }
	add_ln21 { ap_none {  { add_ln21 in_data 0 6 } } }
	v { ap_memory {  { v_address0 mem_address 1 12 }  { v_ce0 mem_ce 1 1 }  { v_q0 mem_dout 0 16 }  { v_address1 MemPortADDR2 1 12 }  { v_ce1 MemPortCE2 1 1 }  { v_we1 MemPortWE2 1 1 }  { v_d1 MemPortDIN2 1 16 }  { v_q1 MemPortDOUT2 0 16 } } }
}
