
set TopModule "pyramidal_hs"
set ClockPeriod 10
set ClockList ap_clk
set AxiliteClockList {}
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix pyramidal_hs_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set RtlWriterOptions {}
set CbcGenFlag 0
set CasGenFlag 0
set CasMonitorFlag 0
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcku115:-flva1517:-3-e
set SourceFiles {sc {} c {../../../HS_hls/src/pyramidal_hs.cpp ../../../HS_hls/src/pyramid_hls.cpp ../../../HS_hls/src/horn_schunck_hsl.cpp ../../../HS_hls/src/derivatives_hls.cpp}}
set SourceFlags {sc {} c {{} {} {} {}}}
set DirectiveFile {}
set TBFiles {verilog C:/Users/Diaxxa/Desktop/Optical-Flow/HS_hls/src/main_tb.cpp bc C:/Users/Diaxxa/Desktop/Optical-Flow/HS_hls/src/main_tb.cpp vhdl C:/Users/Diaxxa/Desktop/Optical-Flow/HS_hls/src/main_tb.cpp sc C:/Users/Diaxxa/Desktop/Optical-Flow/HS_hls/src/main_tb.cpp cas C:/Users/Diaxxa/Desktop/Optical-Flow/HS_hls/src/main_tb.cpp c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile {}
set ApsFile hls.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/kintexu/kintexu}}}
set HPFPO 0
