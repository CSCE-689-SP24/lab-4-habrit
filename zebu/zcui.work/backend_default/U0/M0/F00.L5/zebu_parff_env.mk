######################################################
##### SmartFPGA Compilation : SmartPARFF feature #####
######################################################
#PARAMETER_FILE  : /opt/coe/synopsys/zebu/Q-2020.03-SP1-4/etc/vivado_v7/fpgaparameterset_v7.xcui
#ZEBU_PARAM_FILE : ./fpgaparameterset_smart.xcui
#LABEL           : L5
#TARGET          : L5

export ZEBU_PARFF_XCUI_FILE_NAME=fpgaparameterset_v7.xcui
export ZEBU_PARFF_XCUI_TARGET_NAME=L5_Vivado_Remove_muxcy_xorcy
export ZEBU_DISABLE_TRITON=1
export ZEBU_REMOVE_ALL_MUXCY_XORCY=1
export ZEBU_NO_INSTR_MUXCY_XORCY=1
