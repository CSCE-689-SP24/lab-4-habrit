# make FX=IF LABEL=L12 MONITORING=YES BACKENDNAME="/home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/zcui.work/backend_default" PARAMETER_FILE="/opt/coe/synopsys/zebu/Q-2020.03-SP1-4/etc/vivado_v7/fpgaparameterset_v7.xcui" FPGA_LOCAL_DISK_COMP=NO FPGA_LOCAL_DISK_COMP_DIR=""
export VIVADO_TRITON_GP_SLL_UPDATE_YLOC='1'
export VIVADO_TRITON_GP_SPREAD_SLL='1'
export VIVADO_TRITON_PARTITION_LUTFF='1'
export VIVADO_TRITON_PARTITION_UTIL_ADJUST_FIRST_SECOND='1'
export ZEBU_MDTMX_PARTONLY='1'
export ZEBU_MDTMX_TOOL='zBlockPartitioning'
export ZEBU_MDTMX_USE='1'
export ZEBU_PARFF_XCUI_FILE_NAME='fpgaparameterset_v7.xcui'
export ZEBU_PARFF_XCUI_TARGET_NAME='L12_DAP_Triton_GP_SLL_SpreadAll'
export VIVADO_ENABLE_SINGLE_MACHINE_MPF='0'
export VIVADO_ENABLE_MULTI_MACHINE_MPF='0'
export ZEBU_SDF_ANALYSIS='1'
export ZCUI_FPGA_DIR='IF.L12'
export ZCUI_ENABLE_MESSAGE_SYSTEM='0'
export ZEBU_COMPILATION_OBJECTIVE=''
export ZCUI_FPGA_FEATURE_TAGS='Vtx7'
zSendMsg -msg "start:${HOSTNAME}"
make FX=IF LABEL=L12 MONITORING=YES BACKENDNAME="/home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/zcui.work/backend_default" PARAMETER_FILE="/opt/coe/synopsys/zebu/Q-2020.03-SP1-4/etc/vivado_v7/fpgaparameterset_v7.xcui" FPGA_LOCAL_DISK_COMP=NO FPGA_LOCAL_DISK_COMP_DIR=""
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
