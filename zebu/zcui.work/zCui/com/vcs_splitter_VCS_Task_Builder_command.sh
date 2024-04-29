# /opt/coe/synopsys/zebu/Q-2020.03-SP1-4/bin/vcs_cmd_wrapper.sh /home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/zcui.work/vcs_splitter /home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/src/vcs_cmd.sh
export ZEBU_VCS_CONFIG_FILE='/home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/zcui.work/vcs_splitter/vcs_splitter_config_file'
export SNPS_UTF_ENFORCE_ENABLED_COMMAND='set_perf_flow:ztopbuild'
export SNPS_VCS_INTERNAL_UTF_TRAN_MODE='1'
export SNPS_ZEBU_ADDITIONAL_DEFAULT_COMMANDS='/opt/coe/synopsys/zebu/Q-2020.03-SP1-4/etc/utf/default_commands.utf'
zSendMsg -msg "start:${HOSTNAME}"
/opt/coe/synopsys/zebu/Q-2020.03-SP1-4/bin/vcs_cmd_wrapper.sh /home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/zcui.work/vcs_splitter /home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/src/vcs_cmd.sh
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
