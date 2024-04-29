# make FX=F00 LABEL=L8 MONITORING=YES BACKENDNAME="/home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/zcui.work/backend_default" PARAMETER_FILE="/opt/coe/synopsys/zebu/Q-2020.03-SP1-4/etc/vivado_v7/fpgaparameterset_v7.xcui" FPGA_LOCAL_DISK_COMP=NO FPGA_LOCAL_DISK_COMP_DIR=""
export ZEBU_PARFF_XCUI_FILE_NAME='fpgaparameterset_v7.xcui'
export ZEBU_PARFF_XCUI_TARGET_NAME='L8_Triton_Split_Fanout'
export ZEBU_SPLIT_FANOUT='1'
export ZEBU_SPLIT_FANOUT_OPTIONS='-l1 16 -l2 16 -splitInFWMacro '
export VIVADO_ENABLE_SINGLE_MACHINE_MPF='0'
export VIVADO_ENABLE_MULTI_MACHINE_MPF='0'
export ZEBU_SDF_ANALYSIS='1'
export ZCUI_FPGA_DIR='F00.L8'
export ZCUI_ENABLE_MESSAGE_SYSTEM='0'
export ZEBU_COMPILATION_OBJECTIVE=''
export ZCUI_FPGA_FEATURE_TAGS='Vtx7'
zSendMsg -msg "start:${HOSTNAME}"
make FX=F00 LABEL=L8 MONITORING=YES BACKENDNAME="/home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/zcui.work/backend_default" PARAMETER_FILE="/opt/coe/synopsys/zebu/Q-2020.03-SP1-4/etc/vivado_v7/fpgaparameterset_v7.xcui" FPGA_LOCAL_DISK_COMP=NO FPGA_LOCAL_DISK_COMP_DIR=""
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
