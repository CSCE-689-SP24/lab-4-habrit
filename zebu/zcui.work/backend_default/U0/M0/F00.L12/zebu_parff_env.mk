######################################################
##### SmartFPGA Compilation : SmartPARFF feature #####
######################################################
#PARAMETER_FILE  : /opt/coe/synopsys/zebu/Q-2020.03-SP1-4/etc/vivado_v7/fpgaparameterset_v7.xcui
#ZEBU_PARAM_FILE : ./fpgaparameterset_smart.xcui
#LABEL           : L12
#TARGET          : L12

export ZEBU_PARFF_XCUI_FILE_NAME=fpgaparameterset_v7.xcui
export ZEBU_PARFF_XCUI_TARGET_NAME=L12_DAP_Triton_GP_SLL_SpreadAll
export ZEBU_MDTMX_USE=1
export ZEBU_MDTMX_PARTONLY=1
export ZEBU_MDTMX_TOOL=zBlockPartitioning
export VIVADO_TRITON_GP_SPREAD_SLL=1
export VIVADO_TRITON_GP_SLL_UPDATE_YLOC=1
export VIVADO_TRITON_PARTITION_UTIL_ADJUST_FIRST_SECOND=1
export VIVADO_TRITON_PARTITION_LUTFF=1
