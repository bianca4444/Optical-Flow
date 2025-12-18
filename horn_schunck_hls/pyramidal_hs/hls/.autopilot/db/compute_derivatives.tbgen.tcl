set moduleName compute_derivatives
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
set C_modelName {compute_derivatives}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict img1 { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict img2 { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Ix64 { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict Iy64 { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict It64 { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ img1 int 16 regular {array 4096 { 1 1 } 1 1 }  }
	{ img2 int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ Ix64 int 16 regular {array 4096 { 0 3 } 0 1 } {global 1}  }
	{ Iy64 int 16 regular {array 4096 { 0 3 } 0 1 } {global 1}  }
	{ It64 int 16 regular {array 4096 { 0 3 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "img1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "img2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "Ix64", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "Iy64", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "It64", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img1_address0 sc_out sc_lv 12 signal 0 } 
	{ img1_ce0 sc_out sc_logic 1 signal 0 } 
	{ img1_q0 sc_in sc_lv 16 signal 0 } 
	{ img1_address1 sc_out sc_lv 12 signal 0 } 
	{ img1_ce1 sc_out sc_logic 1 signal 0 } 
	{ img1_q1 sc_in sc_lv 16 signal 0 } 
	{ img2_address0 sc_out sc_lv 12 signal 1 } 
	{ img2_ce0 sc_out sc_logic 1 signal 1 } 
	{ img2_q0 sc_in sc_lv 16 signal 1 } 
	{ Ix64_address0 sc_out sc_lv 12 signal 2 } 
	{ Ix64_ce0 sc_out sc_logic 1 signal 2 } 
	{ Ix64_we0 sc_out sc_logic 1 signal 2 } 
	{ Ix64_d0 sc_out sc_lv 16 signal 2 } 
	{ Iy64_address0 sc_out sc_lv 12 signal 3 } 
	{ Iy64_ce0 sc_out sc_logic 1 signal 3 } 
	{ Iy64_we0 sc_out sc_logic 1 signal 3 } 
	{ Iy64_d0 sc_out sc_lv 16 signal 3 } 
	{ It64_address0 sc_out sc_lv 12 signal 4 } 
	{ It64_ce0 sc_out sc_logic 1 signal 4 } 
	{ It64_we0 sc_out sc_logic 1 signal 4 } 
	{ It64_d0 sc_out sc_lv 16 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img1", "role": "address0" }} , 
 	{ "name": "img1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img1", "role": "ce0" }} , 
 	{ "name": "img1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img1", "role": "q0" }} , 
 	{ "name": "img1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img1", "role": "address1" }} , 
 	{ "name": "img1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img1", "role": "ce1" }} , 
 	{ "name": "img1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img1", "role": "q1" }} , 
 	{ "name": "img2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img2", "role": "address0" }} , 
 	{ "name": "img2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img2", "role": "ce0" }} , 
 	{ "name": "img2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img2", "role": "q0" }} , 
 	{ "name": "Ix64_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Ix64", "role": "address0" }} , 
 	{ "name": "Ix64_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Ix64", "role": "ce0" }} , 
 	{ "name": "Ix64_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Ix64", "role": "we0" }} , 
 	{ "name": "Ix64_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Ix64", "role": "d0" }} , 
 	{ "name": "Iy64_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Iy64", "role": "address0" }} , 
 	{ "name": "Iy64_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Iy64", "role": "ce0" }} , 
 	{ "name": "Iy64_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Iy64", "role": "we0" }} , 
 	{ "name": "Iy64_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Iy64", "role": "d0" }} , 
 	{ "name": "It64_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "It64", "role": "address0" }} , 
 	{ "name": "It64_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "It64", "role": "ce0" }} , 
 	{ "name": "It64_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "It64", "role": "we0" }} , 
 	{ "name": "It64_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "It64", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	compute_derivatives {
		img1 {Type I LastRead 3 FirstWrite -1}
		img2 {Type I LastRead 0 FirstWrite -1}
		Ix64 {Type O LastRead -1 FirstWrite 0}
		Iy64 {Type O LastRead -1 FirstWrite 0}
		It64 {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12290", "Max" : "12290"}
	, {"Name" : "Interval", "Min" : "12289", "Max" : "12289"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img1 { ap_memory {  { img1_address0 mem_address 1 12 }  { img1_ce0 mem_ce 1 1 }  { img1_q0 mem_dout 0 16 }  { img1_address1 MemPortADDR2 1 12 }  { img1_ce1 MemPortCE2 1 1 }  { img1_q1 MemPortDOUT2 0 16 } } }
	img2 { ap_memory {  { img2_address0 mem_address 1 12 }  { img2_ce0 mem_ce 1 1 }  { img2_q0 mem_dout 0 16 } } }
	Ix64 { ap_memory {  { Ix64_address0 mem_address 1 12 }  { Ix64_ce0 mem_ce 1 1 }  { Ix64_we0 mem_we 1 1 }  { Ix64_d0 mem_din 1 16 } } }
	Iy64 { ap_memory {  { Iy64_address0 mem_address 1 12 }  { Iy64_ce0 mem_ce 1 1 }  { Iy64_we0 mem_we 1 1 }  { Iy64_d0 mem_din 1 16 } } }
	It64 { ap_memory {  { It64_address0 mem_address 1 12 }  { It64_ce0 mem_ce 1 1 }  { It64_we0 mem_we 1 1 }  { It64_d0 mem_din 1 16 } } }
}
