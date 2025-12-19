set moduleName pyramidal_hs
set isTopModule 1
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
set C_modelName {pyramidal_hs}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict img1 { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict img2 { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict u { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict v { MEM_WIDTH 16 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ img1 int 16 regular {array 4096 { 1 1 } 1 1 }  }
	{ img2 int 16 regular {array 4096 { 1 1 } 1 1 }  }
	{ u int 16 regular {array 4096 { 2 2 } 1 1 }  }
	{ v int 16 regular {array 4096 { 2 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "img1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "img2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "u", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "v", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 38
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
	{ img2_address1 sc_out sc_lv 12 signal 1 } 
	{ img2_ce1 sc_out sc_logic 1 signal 1 } 
	{ img2_q1 sc_in sc_lv 16 signal 1 } 
	{ u_address0 sc_out sc_lv 12 signal 2 } 
	{ u_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_we0 sc_out sc_logic 1 signal 2 } 
	{ u_d0 sc_out sc_lv 16 signal 2 } 
	{ u_q0 sc_in sc_lv 16 signal 2 } 
	{ u_address1 sc_out sc_lv 12 signal 2 } 
	{ u_ce1 sc_out sc_logic 1 signal 2 } 
	{ u_we1 sc_out sc_logic 1 signal 2 } 
	{ u_d1 sc_out sc_lv 16 signal 2 } 
	{ u_q1 sc_in sc_lv 16 signal 2 } 
	{ v_address0 sc_out sc_lv 12 signal 3 } 
	{ v_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_we0 sc_out sc_logic 1 signal 3 } 
	{ v_d0 sc_out sc_lv 16 signal 3 } 
	{ v_q0 sc_in sc_lv 16 signal 3 } 
	{ v_address1 sc_out sc_lv 12 signal 3 } 
	{ v_ce1 sc_out sc_logic 1 signal 3 } 
	{ v_we1 sc_out sc_logic 1 signal 3 } 
	{ v_d1 sc_out sc_lv 16 signal 3 } 
	{ v_q1 sc_in sc_lv 16 signal 3 } 
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
 	{ "name": "img2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img2", "role": "address1" }} , 
 	{ "name": "img2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img2", "role": "ce1" }} , 
 	{ "name": "img2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img2", "role": "q1" }} , 
 	{ "name": "u_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "u", "role": "address0" }} , 
 	{ "name": "u_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce0" }} , 
 	{ "name": "u_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "we0" }} , 
 	{ "name": "u_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "u", "role": "d0" }} , 
 	{ "name": "u_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "u", "role": "q0" }} , 
 	{ "name": "u_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "u", "role": "address1" }} , 
 	{ "name": "u_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce1" }} , 
 	{ "name": "u_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "we1" }} , 
 	{ "name": "u_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "u", "role": "d1" }} , 
 	{ "name": "u_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "u", "role": "q1" }} , 
 	{ "name": "v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v", "role": "address0" }} , 
 	{ "name": "v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "ce0" }} , 
 	{ "name": "v_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "we0" }} , 
 	{ "name": "v_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "d0" }} , 
 	{ "name": "v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "q0" }} , 
 	{ "name": "v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v", "role": "address1" }} , 
 	{ "name": "v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "ce1" }} , 
 	{ "name": "v_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "we1" }} , 
 	{ "name": "v_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "d1" }} , 
 	{ "name": "v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "v", "role": "q1" }}  ]}

set ArgLastReadFirstWriteLatency {
	pyramidal_hs {
		img1 {Type I LastRead 9 FirstWrite -1}
		img2 {Type I LastRead 2 FirstWrite -1}
		u {Type IO LastRead 2 FirstWrite 1}
		v {Type IO LastRead 2 FirstWrite 1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4 {Type IO LastRead -1 FirstWrite -1}
		pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1 {Type IO LastRead -1 FirstWrite -1}
		pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_9 {Type IO LastRead -1 FirstWrite -1}
		img2_16 {Type IO LastRead -1 FirstWrite -1}
		Ix16 {Type IO LastRead -1 FirstWrite -1}
		Iy16 {Type IO LastRead -1 FirstWrite -1}
		It16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_39 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_37 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_18 {Type IO LastRead -1 FirstWrite -1}
		Ix32 {Type IO LastRead -1 FirstWrite -1}
		Iy32 {Type IO LastRead -1 FirstWrite -1}
		It32 {Type IO LastRead -1 FirstWrite -1}
		Ix64 {Type IO LastRead -1 FirstWrite -1}
		Iy64 {Type IO LastRead -1 FirstWrite -1}
		It64 {Type IO LastRead -1 FirstWrite -1}}
	pyramidal_hs_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_7_2 {
		img1 {Type I LastRead 9 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8 {Type O LastRead -1 FirstWrite 10}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7 {Type O LastRead -1 FirstWrite 10}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6 {Type O LastRead -1 FirstWrite 10}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5 {Type O LastRead -1 FirstWrite 10}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4 {Type O LastRead -1 FirstWrite 10}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3 {Type O LastRead -1 FirstWrite 10}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2 {Type O LastRead -1 FirstWrite 10}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1 {Type O LastRead -1 FirstWrite 10}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4 {Type O LastRead -1 FirstWrite 10}}
	pyramidal_hs_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_7_23 {
		img2 {Type I LastRead 2 FirstWrite -1}
		pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1 {Type O LastRead -1 FirstWrite 3}
		pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64 {Type O LastRead -1 FirstWrite 3}}
	pyramidal_hs_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2 {
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_17 {Type O LastRead -1 FirstWrite 12}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_16 {Type O LastRead -1 FirstWrite 12}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_15 {Type O LastRead -1 FirstWrite 12}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_14 {Type O LastRead -1 FirstWrite 12}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_13 {Type O LastRead -1 FirstWrite 12}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_12 {Type O LastRead -1 FirstWrite 12}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_11 {Type O LastRead -1 FirstWrite 12}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_10 {Type O LastRead -1 FirstWrite 12}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_9 {Type O LastRead -1 FirstWrite 12}}
	pyramidal_hs_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_24 {
		pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1 {Type I LastRead 1 FirstWrite -1}
		pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64 {Type I LastRead 1 FirstWrite -1}
		img2_16 {Type O LastRead -1 FirstWrite 2}}
	compute_derivatives {
		img1 {Type I LastRead 3 FirstWrite -1}
		img2 {Type I LastRead 0 FirstWrite -1}
		Ix64 {Type O LastRead -1 FirstWrite 1}
		Iy64 {Type O LastRead -1 FirstWrite 1}
		It64 {Type O LastRead -1 FirstWrite 3}}
	compute_derivatives_16 {
		Ix16 {Type O LastRead -1 FirstWrite 1}
		Iy16 {Type O LastRead -1 FirstWrite 1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_17 {Type I LastRead 10 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_16 {Type I LastRead 10 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_15 {Type I LastRead 10 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_14 {Type I LastRead 10 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_13 {Type I LastRead 10 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_12 {Type I LastRead 10 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_11 {Type I LastRead 10 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_10 {Type I LastRead 10 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_9 {Type I LastRead 10 FirstWrite -1}
		img2_16 {Type I LastRead 9 FirstWrite -1}
		It16 {Type O LastRead -1 FirstWrite 11}}
	compute_derivatives_32 {
		Ix32 {Type O LastRead -1 FirstWrite 1}
		Iy32 {Type O LastRead -1 FirstWrite 1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1 {Type I LastRead 11 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4 {Type I LastRead 11 FirstWrite -1}
		pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1 {Type I LastRead 10 FirstWrite -1}
		pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64 {Type I LastRead 10 FirstWrite -1}
		It32 {Type O LastRead -1 FirstWrite 12}}
	horn_schunck_16 {
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_41 {Type IO LastRead 2 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_29 {Type IO LastRead 2 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_40 {Type IO LastRead 2 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_28 {Type IO LastRead 2 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_39 {Type IO LastRead 2 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_27 {Type IO LastRead 2 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_38 {Type IO LastRead 2 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_26 {Type IO LastRead 2 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_37 {Type IO LastRead 2 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_25 {Type IO LastRead 2 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_36 {Type IO LastRead 2 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_24 {Type IO LastRead 2 FirstWrite 8}
		Ix16 {Type I LastRead 0 FirstWrite -1}
		Iy16 {Type I LastRead 0 FirstWrite -1}
		It16 {Type I LastRead 0 FirstWrite -1}}
	horn_schunck_16_Pipeline_VITIS_LOOP_110_1_VITIS_LOOP_112_2 {
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_41 {Type O LastRead -1 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_29 {Type O LastRead -1 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_40 {Type O LastRead -1 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_28 {Type O LastRead -1 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_39 {Type O LastRead -1 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_27 {Type O LastRead -1 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_38 {Type O LastRead -1 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_26 {Type O LastRead -1 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_37 {Type O LastRead -1 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_25 {Type O LastRead -1 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_36 {Type O LastRead -1 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_24 {Type O LastRead -1 FirstWrite 8}}
	horn_schunck_16_Pipeline_VITIS_LOOP_123_4_VITIS_LOOP_125_5 {
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_41 {Type IO LastRead 2 FirstWrite 64}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_29 {Type IO LastRead 2 FirstWrite 64}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_40 {Type IO LastRead 2 FirstWrite 64}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_39 {Type IO LastRead 2 FirstWrite 64}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_38 {Type IO LastRead 2 FirstWrite 64}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_37 {Type IO LastRead 2 FirstWrite 64}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_36 {Type IO LastRead 2 FirstWrite 64}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_28 {Type IO LastRead 2 FirstWrite 64}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_27 {Type IO LastRead 2 FirstWrite 64}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_26 {Type IO LastRead 2 FirstWrite 64}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_25 {Type IO LastRead 2 FirstWrite 64}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_24 {Type IO LastRead 2 FirstWrite 64}
		Ix16 {Type I LastRead 0 FirstWrite -1}
		Iy16 {Type I LastRead 0 FirstWrite -1}
		It16 {Type I LastRead 0 FirstWrite -1}}
	pyramidal_hs_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_2 {
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_35 {Type O LastRead -1 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_41 {Type I LastRead 8 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_40 {Type I LastRead 8 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_39 {Type I LastRead 8 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_38 {Type I LastRead 8 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_37 {Type I LastRead 8 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_36 {Type I LastRead 8 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_34 {Type O LastRead -1 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_33 {Type O LastRead -1 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_32 {Type O LastRead -1 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_31 {Type O LastRead -1 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_30 {Type O LastRead -1 FirstWrite 9}}
	pyramidal_hs_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_25 {
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_23 {Type O LastRead -1 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_29 {Type I LastRead 8 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_28 {Type I LastRead 8 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_27 {Type I LastRead 8 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_26 {Type I LastRead 8 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_25 {Type I LastRead 8 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_24 {Type I LastRead 8 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_22 {Type O LastRead -1 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_21 {Type O LastRead -1 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_20 {Type O LastRead -1 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_19 {Type O LastRead -1 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_18 {Type O LastRead -1 FirstWrite 9}}
	pyramidal_hs_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_43_2 {
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_35 {Type IO LastRead 8 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_23 {Type IO LastRead 8 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_34 {Type IO LastRead 8 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_33 {Type IO LastRead 8 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_32 {Type IO LastRead 8 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_31 {Type IO LastRead 8 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_30 {Type IO LastRead 8 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_22 {Type IO LastRead 8 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_21 {Type IO LastRead 8 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_20 {Type IO LastRead 8 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_19 {Type IO LastRead 8 FirstWrite 9}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_18 {Type IO LastRead 8 FirstWrite 9}}
	horn_schunck_32 {
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_35 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_23 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_34 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_33 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_32 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_31 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_30 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_22 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_21 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_20 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_19 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_18 {Type IO LastRead 2 FirstWrite 65}
		Ix32 {Type I LastRead 0 FirstWrite -1}
		Iy32 {Type I LastRead 0 FirstWrite -1}
		It32 {Type I LastRead 0 FirstWrite -1}}
	horn_schunck_32_Pipeline_VITIS_LOOP_78_4_VITIS_LOOP_80_5 {
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_35 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_23 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_34 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_33 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_32 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_31 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_30 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_22 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_21 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_20 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_19 {Type IO LastRead 2 FirstWrite 65}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_18 {Type IO LastRead 2 FirstWrite 65}
		Ix32 {Type I LastRead 0 FirstWrite -1}
		Iy32 {Type I LastRead 0 FirstWrite -1}
		It32 {Type I LastRead 0 FirstWrite -1}}
	pyramidal_hs_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_40_2 {
		u {Type O LastRead -1 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_35 {Type I LastRead 7 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_34 {Type I LastRead 7 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_33 {Type I LastRead 7 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_32 {Type I LastRead 7 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_31 {Type I LastRead 7 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_30 {Type I LastRead 7 FirstWrite -1}}
	pyramidal_hs_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_40_26 {
		v {Type O LastRead -1 FirstWrite 8}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_23 {Type I LastRead 7 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_22 {Type I LastRead 7 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_21 {Type I LastRead 7 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_20 {Type I LastRead 7 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_19 {Type I LastRead 7 FirstWrite -1}
		p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_18 {Type I LastRead 7 FirstWrite -1}}
	pyramidal_hs_Pipeline_VITIS_LOOP_58_3_VITIS_LOOP_60_4 {
		u {Type IO LastRead 0 FirstWrite 1}
		v {Type IO LastRead 0 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "1412689", "Max" : "1412689"}
	, {"Name" : "Interval", "Min" : "1412690", "Max" : "1412690"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img1 { ap_memory {  { img1_address0 mem_address 1 12 }  { img1_ce0 mem_ce 1 1 }  { img1_q0 mem_dout 0 16 }  { img1_address1 MemPortADDR2 1 12 }  { img1_ce1 MemPortCE2 1 1 }  { img1_q1 MemPortDOUT2 0 16 } } }
	img2 { ap_memory {  { img2_address0 mem_address 1 12 }  { img2_ce0 mem_ce 1 1 }  { img2_q0 mem_dout 0 16 }  { img2_address1 MemPortADDR2 1 12 }  { img2_ce1 MemPortCE2 1 1 }  { img2_q1 MemPortDOUT2 0 16 } } }
	u { ap_memory {  { u_address0 mem_address 1 12 }  { u_ce0 mem_ce 1 1 }  { u_we0 mem_we 1 1 }  { u_d0 mem_din 1 16 }  { u_q0 mem_dout 0 16 }  { u_address1 MemPortADDR2 1 12 }  { u_ce1 MemPortCE2 1 1 }  { u_we1 MemPortWE2 1 1 }  { u_d1 MemPortDIN2 1 16 }  { u_q1 MemPortDOUT2 0 16 } } }
	v { ap_memory {  { v_address0 mem_address 1 12 }  { v_ce0 mem_ce 1 1 }  { v_we0 mem_we 1 1 }  { v_d0 mem_din 1 16 }  { v_q0 mem_dout 0 16 }  { v_address1 MemPortADDR2 1 12 }  { v_ce1 MemPortCE2 1 1 }  { v_we1 MemPortWE2 1 1 }  { v_d1 MemPortDIN2 1 16 }  { v_q1 MemPortDOUT2 0 16 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
