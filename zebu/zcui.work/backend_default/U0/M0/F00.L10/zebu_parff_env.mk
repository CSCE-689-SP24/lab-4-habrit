######################################################
##### SmartFPGA Compilation : SmartPARFF feature #####
######################################################
#PARAMETER_FILE  : /opt/coe/synopsys/zebu/Q-2020.03-SP1-4/etc/vivado_v7/fpgaparameterset_v7.xcui
#ZEBU_PARAM_FILE : ./fpgaparameterset_smart.xcui
#LABEL           : L10
#TARGET          : L10

export ZEBU_PARFF_XCUI_FILE_NAME=fpgaparameterset_v7.xcui
export ZEBU_PARFF_XCUI_TARGET_NAME=L10_Vivado_WLBlockPlacement
export ZEBU_DISABLE_TRITON=1
export VIVADO_OPT_DESIGN_OPTIONS=-directive Default
export VIVADO_PLACE_DESIGN_OPTIONS=-directive WLDrivenBlockPlacement
export VIVADO_ROUTE_DESIGN_OPTIONS=-directive MoreGlobalIterations
