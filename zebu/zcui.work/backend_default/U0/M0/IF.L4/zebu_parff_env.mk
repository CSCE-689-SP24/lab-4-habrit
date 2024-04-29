######################################################
##### SmartFPGA Compilation : SmartPARFF feature #####
######################################################
#PARAMETER_FILE  : /opt/coe/synopsys/zebu/Q-2020.03-SP1-4/etc/vivado_v7/fpgaparameterset_v7.xcui
#ZEBU_PARAM_FILE : ./fpgaparameterset_smart.xcui
#LABEL           : L4
#TARGET          : L4

export ZEBU_PARFF_XCUI_FILE_NAME=fpgaparameterset_v7.xcui
export ZEBU_PARFF_XCUI_TARGET_NAME=L4_Vivado_Param_LutPinSwapping
export ZEBU_DISABLE_TRITON=1
export VIVADO_SETPARAM_NAME=place.enableLutPinSwapping
export VIVADO_SETPARAM_VALUE=0
