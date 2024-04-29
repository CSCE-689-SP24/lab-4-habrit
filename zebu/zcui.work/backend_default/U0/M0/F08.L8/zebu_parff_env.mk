######################################################
##### SmartFPGA Compilation : SmartPARFF feature #####
######################################################
#PARAMETER_FILE  : /opt/coe/synopsys/zebu/Q-2020.03-SP1-4/etc/vivado_v7/fpgaparameterset_v7.xcui
#ZEBU_PARAM_FILE : ./fpgaparameterset_smart.xcui
#LABEL           : L8
#TARGET          : L8

export ZEBU_PARFF_XCUI_FILE_NAME=fpgaparameterset_v7.xcui
export ZEBU_PARFF_XCUI_TARGET_NAME=L8_Triton_Split_Fanout
export ZEBU_SPLIT_FANOUT=1
export ZEBU_SPLIT_FANOUT_OPTIONS=-l1 16 -l2 16 -splitInFWMacro
