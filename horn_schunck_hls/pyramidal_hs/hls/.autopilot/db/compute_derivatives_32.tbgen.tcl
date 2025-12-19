set moduleName compute_derivatives_32
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
set C_modelName {compute_derivatives_32}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict Ix32 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict Iy32 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8 { MEM_WIDTH 16 MEM_SIZE 242 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7 { MEM_WIDTH 16 MEM_SIZE 242 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6 { MEM_WIDTH 16 MEM_SIZE 242 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5 { MEM_WIDTH 16 MEM_SIZE 242 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4 { MEM_WIDTH 16 MEM_SIZE 242 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3 { MEM_WIDTH 16 MEM_SIZE 242 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2 { MEM_WIDTH 16 MEM_SIZE 242 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1 { MEM_WIDTH 16 MEM_SIZE 242 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4 { MEM_WIDTH 16 MEM_SIZE 242 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1 { MEM_WIDTH 16 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64 { MEM_WIDTH 16 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict It32 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ Ix32 int 16 regular {array 1024 { 0 0 } 0 1 } {global 1}  }
	{ Iy32 int 16 regular {array 1024 { 0 0 } 0 1 } {global 1}  }
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8 int 16 regular {array 121 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7 int 16 regular {array 121 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6 int 16 regular {array 121 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5 int 16 regular {array 121 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4 int 16 regular {array 121 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3 int 16 regular {array 121 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2 int 16 regular {array 121 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1 int 16 regular {array 121 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4 int 16 regular {array 121 { 1 3 } 1 1 } {global 0}  }
	{ pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1 int 16 regular {array 512 { 1 3 } 1 1 } {global 0}  }
	{ pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64 int 16 regular {array 512 { 1 3 } 1 1 } {global 0}  }
	{ It32 int 16 regular {array 1024 { 0 3 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "Ix32", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "Iy32", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "It32", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Ix32_address0 sc_out sc_lv 10 signal 0 } 
	{ Ix32_ce0 sc_out sc_logic 1 signal 0 } 
	{ Ix32_we0 sc_out sc_logic 1 signal 0 } 
	{ Ix32_d0 sc_out sc_lv 16 signal 0 } 
	{ Ix32_address1 sc_out sc_lv 10 signal 0 } 
	{ Ix32_ce1 sc_out sc_logic 1 signal 0 } 
	{ Ix32_we1 sc_out sc_logic 1 signal 0 } 
	{ Ix32_d1 sc_out sc_lv 16 signal 0 } 
	{ Iy32_address0 sc_out sc_lv 10 signal 1 } 
	{ Iy32_ce0 sc_out sc_logic 1 signal 1 } 
	{ Iy32_we0 sc_out sc_logic 1 signal 1 } 
	{ Iy32_d0 sc_out sc_lv 16 signal 1 } 
	{ Iy32_address1 sc_out sc_lv 10 signal 1 } 
	{ Iy32_ce1 sc_out sc_logic 1 signal 1 } 
	{ Iy32_we1 sc_out sc_logic 1 signal 1 } 
	{ Iy32_d1 sc_out sc_lv 16 signal 1 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8_address0 sc_out sc_lv 7 signal 2 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8_ce0 sc_out sc_logic 1 signal 2 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8_q0 sc_in sc_lv 16 signal 2 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7_address0 sc_out sc_lv 7 signal 3 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7_ce0 sc_out sc_logic 1 signal 3 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7_q0 sc_in sc_lv 16 signal 3 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6_address0 sc_out sc_lv 7 signal 4 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6_q0 sc_in sc_lv 16 signal 4 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5_address0 sc_out sc_lv 7 signal 5 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5_q0 sc_in sc_lv 16 signal 5 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4_address0 sc_out sc_lv 7 signal 6 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4_q0 sc_in sc_lv 16 signal 6 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3_address0 sc_out sc_lv 7 signal 7 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3_q0 sc_in sc_lv 16 signal 7 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2_address0 sc_out sc_lv 7 signal 8 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2_q0 sc_in sc_lv 16 signal 8 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1_address0 sc_out sc_lv 7 signal 9 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1_q0 sc_in sc_lv 16 signal 9 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_address0 sc_out sc_lv 7 signal 10 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_q0 sc_in sc_lv 16 signal 10 } 
	{ pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1_address0 sc_out sc_lv 9 signal 11 } 
	{ pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1_q0 sc_in sc_lv 16 signal 11 } 
	{ pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_address0 sc_out sc_lv 9 signal 12 } 
	{ pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_ce0 sc_out sc_logic 1 signal 12 } 
	{ pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_q0 sc_in sc_lv 16 signal 12 } 
	{ It32_address0 sc_out sc_lv 10 signal 13 } 
	{ It32_ce0 sc_out sc_logic 1 signal 13 } 
	{ It32_we0 sc_out sc_logic 1 signal 13 } 
	{ It32_d0 sc_out sc_lv 16 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Ix32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix32", "role": "address0" }} , 
 	{ "name": "Ix32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Ix32", "role": "ce0" }} , 
 	{ "name": "Ix32_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Ix32", "role": "we0" }} , 
 	{ "name": "Ix32_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Ix32", "role": "d0" }} , 
 	{ "name": "Ix32_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix32", "role": "address1" }} , 
 	{ "name": "Ix32_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Ix32", "role": "ce1" }} , 
 	{ "name": "Ix32_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Ix32", "role": "we1" }} , 
 	{ "name": "Ix32_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Ix32", "role": "d1" }} , 
 	{ "name": "Iy32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy32", "role": "address0" }} , 
 	{ "name": "Iy32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Iy32", "role": "ce0" }} , 
 	{ "name": "Iy32_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Iy32", "role": "we0" }} , 
 	{ "name": "Iy32_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Iy32", "role": "d0" }} , 
 	{ "name": "Iy32_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy32", "role": "address1" }} , 
 	{ "name": "Iy32_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Iy32", "role": "ce1" }} , 
 	{ "name": "Iy32_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Iy32", "role": "we1" }} , 
 	{ "name": "Iy32_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Iy32", "role": "d1" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8", "role": "address0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8", "role": "ce0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8", "role": "q0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7", "role": "address0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7", "role": "ce0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7", "role": "q0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6", "role": "address0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6", "role": "ce0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6", "role": "q0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5", "role": "address0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5", "role": "ce0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5", "role": "q0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4", "role": "address0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4", "role": "ce0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4", "role": "q0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3", "role": "address0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3", "role": "ce0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3", "role": "q0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2", "role": "address0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2", "role": "ce0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2", "role": "q0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1", "role": "address0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1", "role": "ce0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1", "role": "q0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4", "role": "address0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4", "role": "ce0" }} , 
 	{ "name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4", "role": "q0" }} , 
 	{ "name": "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1", "role": "address0" }} , 
 	{ "name": "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1", "role": "ce0" }} , 
 	{ "name": "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1", "role": "q0" }} , 
 	{ "name": "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64", "role": "address0" }} , 
 	{ "name": "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64", "role": "ce0" }} , 
 	{ "name": "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64", "role": "q0" }} , 
 	{ "name": "It32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "It32", "role": "address0" }} , 
 	{ "name": "It32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "It32", "role": "ce0" }} , 
 	{ "name": "It32_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "It32", "role": "we0" }} , 
 	{ "name": "It32_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "It32", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		It32 {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1037", "Max" : "1037"}
	, {"Name" : "Interval", "Min" : "1025", "Max" : "1025"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Ix32 { ap_memory {  { Ix32_address0 mem_address 1 10 }  { Ix32_ce0 mem_ce 1 1 }  { Ix32_we0 mem_we 1 1 }  { Ix32_d0 mem_din 1 16 }  { Ix32_address1 MemPortADDR2 1 10 }  { Ix32_ce1 MemPortCE2 1 1 }  { Ix32_we1 MemPortWE2 1 1 }  { Ix32_d1 MemPortDIN2 1 16 } } }
	Iy32 { ap_memory {  { Iy32_address0 mem_address 1 10 }  { Iy32_ce0 mem_ce 1 1 }  { Iy32_we0 mem_we 1 1 }  { Iy32_d0 mem_din 1 16 }  { Iy32_address1 MemPortADDR2 1 10 }  { Iy32_ce1 MemPortCE2 1 1 }  { Iy32_we1 MemPortWE2 1 1 }  { Iy32_d1 MemPortDIN2 1 16 } } }
	p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8 { ap_memory {  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8_address0 mem_address 1 7 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8_ce0 mem_ce 1 1 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_8_q0 mem_dout 0 16 } } }
	p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7 { ap_memory {  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7_address0 mem_address 1 7 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7_ce0 mem_ce 1 1 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_7_q0 mem_dout 0 16 } } }
	p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6 { ap_memory {  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6_address0 mem_address 1 7 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6_ce0 mem_ce 1 1 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_6_q0 mem_dout 0 16 } } }
	p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5 { ap_memory {  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5_address0 mem_address 1 7 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5_ce0 mem_ce 1 1 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_5_q0 mem_dout 0 16 } } }
	p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4 { ap_memory {  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4_address0 mem_address 1 7 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4_ce0 mem_ce 1 1 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_4_q0 mem_dout 0 16 } } }
	p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3 { ap_memory {  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3_address0 mem_address 1 7 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3_ce0 mem_ce 1 1 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_3_q0 mem_dout 0 16 } } }
	p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2 { ap_memory {  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2_address0 mem_address 1 7 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2_ce0 mem_ce 1 1 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_2_q0 mem_dout 0 16 } } }
	p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1 { ap_memory {  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1_address0 mem_address 1 7 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1_ce0 mem_ce 1 1 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_1_q0 mem_dout 0 16 } } }
	p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4 { ap_memory {  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_address0 mem_address 1 7 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_ce0 mem_ce 1 1 }  { p_ZZ12pyramidal_hsPA64_8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3ELi0EES4_S4_S4_q0 mem_dout 0 16 } } }
	pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1 { ap_memory {  { pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1_address0 mem_address 1 9 }  { pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1_ce0 mem_ce 1 1 }  { pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_1_q0 mem_dout 0 16 } } }
	pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64 { ap_memory {  { pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_address0 mem_address 1 9 }  { pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_ce0 mem_ce 1 1 }  { pyramidal_hs_ap_fixed_64_ap_fixed_64_ap_fixed_64_ap_fixed_64_q0 mem_dout 0 16 } } }
	It32 { ap_memory {  { It32_address0 mem_address 1 10 }  { It32_ce0 mem_ce 1 1 }  { It32_we0 mem_we 1 1 }  { It32_d0 mem_din 1 16 } } }
}
