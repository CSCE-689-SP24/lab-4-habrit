# tracean3.py --top-delay=5 --syn-details=5 --pr-summary-by-time=5 --hhmm --local-time=detect --show-memory --fix-graph --cpu-time /home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/zcui.work |tee zCui/log/profiled_compilations_ZParAnalyzer.log
zSendMsg -msg "start:${HOSTNAME}"
tracean3.py --top-delay=5 --syn-details=5 --pr-summary-by-time=5 --hhmm --local-time=detect --show-memory --fix-graph --cpu-time /home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/zcui.work |tee zCui/log/profiled_compilations_ZParAnalyzer.log
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
