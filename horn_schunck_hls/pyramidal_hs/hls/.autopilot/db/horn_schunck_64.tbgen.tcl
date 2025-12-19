set moduleName horn_schunck_64
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {horn_schunck_64}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict u { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict v { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Ix64 { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Iy64 { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict It64 { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ u int 16 regular {array 4096 { 1 2 } 1 1 }  }
	{ v int 16 regular {array 4096 { 1 2 } 1 1 }  }
	{ Ix64 int 16 regular {array 4096 { 1 3 } 1 1 } {global 0}  }
	{ Iy64 int 16 regular {array 4096 { 1 3 } 1 1 } {global 0}  }
	{ It64 int 16 regular {array 4096 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "u", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "v", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "Ix64", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "Iy64", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "It64", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ u_address0 sc_out sc_lv 12 signal 0 } 
	{ u_ce0 sc_out sc_logic 1 signal 0 } 
	{ u_q0 sc_in sc_lv 16 signal 0 } 
	{ u_address1 sc_out sc_lv 12 signal 0 } 
	{ u_ce1 sc_out sc_logic 1 signal 0 } 
	{ u_we1 sc_out sc_logic 1 signal 0 } 
	{ u_d1 sc_out sc_lv 16 signal 0 } 
	{ u_q1 sc_in sc_lv 16 signal 0 } 
	{ v_address0 sc_out sc_lv 12 signal 1 } 
	{ v_ce0 sc_out sc_logic 1 signal 1 } 
	{ v_q0 sc_in sc_lv 16 signal 1 } 
	{ v_address1 sc_out sc_lv 12 signal 1 } 
	{ v_ce1 sc_out sc_logic 1 signal 1 } 
	{ v_we1 sc_out sc_logic 1 signal 1 } 
	{ v_d1 sc_out sc_lv 16 signal 1 } 
	{ v_q1 sc_in sc_lv 16 signal 1 } 
	{ Ix64_address0 sc_out sc_lv 12 signal 2 } 
	{ Ix64_ce0 sc_out sc_logic 1 signal 2 } 
	{ Ix64_q0 sc_in sc_lv 16 signal 2 } 
	{ Iy64_address0 sc_out sc_lv 12 signal 3 } 
	{ Iy64_ce0 sc_out sc_logic 1 signal 3 } 
	{ Iy64_q0 sc_in sc_lv 16 signal 3 } 
	{ It64_address0 sc_out sc_lv 12 signal 4 } 
	{ It64_ce0 sc_out sc_logic 1 signal 4 } 
	{ It64_q0 sc_in sc_lv 16 signal 4 } 
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
 	{ "name": "u_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "u", "role": "q0" }} , 
 	{ "name": "u_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "u", "role": "address1" }} , 
 	{ "name": "u_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce1" }} , 
 	{ "name": "u_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "we1" }} , 
 	{ "name": "u_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "u", "role": "d1" }} , 
 	{ "name": "u_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "u", "role": "q1" }} , 
 	{ "name": "v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v", "role": "address0" }} , 
 	{ "name": "v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "ce0" }} , 
 	{ "name": "v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "q0" }} , 
 	{ "name": "v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v", "role": "address1" }} , 
 	{ "name": "v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "ce1" }} , 
 	{ "name": "v_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "we1" }} , 
 	{ "name": "v_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "d1" }} , 
 	{ "name": "v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "q1" }} , 
 	{ "name": "Ix64_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Ix64", "role": "address0" }} , 
 	{ "name": "Ix64_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Ix64", "role": "ce0" }} , 
 	{ "name": "Ix64_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Ix64", "role": "q0" }} , 
 	{ "name": "Iy64_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Iy64", "role": "address0" }} , 
 	{ "name": "Iy64_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Iy64", "role": "ce0" }} , 
 	{ "name": "Iy64_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Iy64", "role": "q0" }} , 
 	{ "name": "It64_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "It64", "role": "address0" }} , 
 	{ "name": "It64_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "It64", "role": "ce0" }} , 
 	{ "name": "It64_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "It64", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	horn_schunck_64 {
		u {Type IO LastRead 2 FirstWrite 61}
		v {Type IO LastRead 2 FirstWrite 61}
		Ix64 {Type I LastRead 0 FirstWrite -1}
		Iy64 {Type I LastRead 0 FirstWrite -1}
		It64 {Type I LastRead 0 FirstWrite -1}}
	horn_schunck_64_Pipeline_VITIS_LOOP_33_5 {
		u_load {Type I LastRead 0 FirstWrite -1}
		v_load {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}
		add_ln37 {Type I LastRead 0 FirstWrite -1}
		u {Type IO LastRead 1 FirstWrite 61}
		add_ln37_1 {Type I LastRead 0 FirstWrite -1}
		v {Type IO LastRead 1 FirstWrite 61}
		Ix64 {Type I LastRead 0 FirstWrite -1}
		Iy64 {Type I LastRead 0 FirstWrite -1}
		It64 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1079741", "Max" : "1079741"}
	, {"Name" : "Interval", "Min" : "1079741", "Max" : "1079741"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	u { ap_memory {  { u_address0 mem_address 1 12 }  { u_ce0 mem_ce 1 1 }  { u_q0 mem_dout 0 16 }  { u_address1 MemPortADDR2 1 12 }  { u_ce1 MemPortCE2 1 1 }  { u_we1 MemPortWE2 1 1 }  { u_d1 MemPortDIN2 1 16 }  { u_q1 MemPortDOUT2 0 16 } } }
	v { ap_memory {  { v_address0 mem_address 1 12 }  { v_ce0 mem_ce 1 1 }  { v_q0 mem_dout 0 16 }  { v_address1 MemPortADDR2 1 12 }  { v_ce1 MemPortCE2 1 1 }  { v_we1 MemPortWE2 1 1 }  { v_d1 MemPortDIN2 1 16 }  { v_q1 MemPortDOUT2 0 16 } } }
	Ix64 { ap_memory {  { Ix64_address0 mem_address 1 12 }  { Ix64_ce0 mem_ce 1 1 }  { Ix64_q0 mem_dout 0 16 } } }
	Iy64 { ap_memory {  { Iy64_address0 mem_address 1 12 }  { Iy64_ce0 mem_ce 1 1 }  { Iy64_q0 mem_dout 0 16 } } }
	It64 { ap_memory {  { It64_address0 mem_address 1 12 }  { It64_ce0 mem_ce 1 1 }  { It64_q0 mem_dout 0 16 } } }
}
