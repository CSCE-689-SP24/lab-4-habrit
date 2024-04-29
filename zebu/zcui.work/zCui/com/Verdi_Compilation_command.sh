# /home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/zcui.work/vcs_splitter/kdb_postelab.csh
zSendMsg -msg "start:${HOSTNAME}"
/home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/zcui.work/vcs_splitter/kdb_postelab.csh
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
